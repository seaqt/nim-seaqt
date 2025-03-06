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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qrubberband.cpp", cflags).}


type QRubberBandShapeEnum* = distinct cint
template Line*(_: type QRubberBandShapeEnum): untyped = 0
template Rectangle*(_: type QRubberBandShapeEnum): untyped = 1


import ./gen_qrubberband_types
export gen_qrubberband_types

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
  ./gen_qstyleoption_types,
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
  gen_qstyleoption_types,
  gen_qwidget

type cQRubberBand*{.exportc: "QRubberBand", incompleteStruct.} = object

proc fcQRubberBand_metaObject(self: pointer, ): pointer {.importc: "QRubberBand_metaObject".}
proc fcQRubberBand_metacast(self: pointer, param1: cstring): pointer {.importc: "QRubberBand_metacast".}
proc fcQRubberBand_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRubberBand_metacall".}
proc fcQRubberBand_tr(s: cstring): struct_miqt_string {.importc: "QRubberBand_tr".}
proc fcQRubberBand_trUtf8(s: cstring): struct_miqt_string {.importc: "QRubberBand_trUtf8".}
proc fcQRubberBand_shape(self: pointer, ): cint {.importc: "QRubberBand_shape".}
proc fcQRubberBand_setGeometry(self: pointer, r: pointer): void {.importc: "QRubberBand_setGeometry".}
proc fcQRubberBand_setGeometry2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QRubberBand_setGeometry2".}
proc fcQRubberBand_move(self: pointer, x: cint, y: cint): void {.importc: "QRubberBand_move".}
proc fcQRubberBand_moveWithQPoint(self: pointer, p: pointer): void {.importc: "QRubberBand_moveWithQPoint".}
proc fcQRubberBand_resize(self: pointer, w: cint, h: cint): void {.importc: "QRubberBand_resize".}
proc fcQRubberBand_resizeWithQSize(self: pointer, s: pointer): void {.importc: "QRubberBand_resizeWithQSize".}
proc fcQRubberBand_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRubberBand_tr2".}
proc fcQRubberBand_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRubberBand_tr3".}
proc fcQRubberBand_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRubberBand_trUtf82".}
proc fcQRubberBand_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRubberBand_trUtf83".}
type cQRubberBandVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQRubberBandVTable, self: ptr cQRubberBand) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
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
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQRubberBand_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QRubberBand_virtualbase_metaObject".}
proc fcQRubberBand_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRubberBand_virtualbase_metacast".}
proc fcQRubberBand_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRubberBand_virtualbase_metacall".}
proc fcQRubberBand_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QRubberBand_virtualbase_event".}
proc fcQRubberBand_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_paintEvent".}
proc fcQRubberBand_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_changeEvent".}
proc fcQRubberBand_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_showEvent".}
proc fcQRubberBand_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_resizeEvent".}
proc fcQRubberBand_virtualbase_moveEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_moveEvent".}
proc fcQRubberBand_virtualbase_devType(self: pointer, ): cint {.importc: "QRubberBand_virtualbase_devType".}
proc fcQRubberBand_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QRubberBand_virtualbase_setVisible".}
proc fcQRubberBand_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QRubberBand_virtualbase_sizeHint".}
proc fcQRubberBand_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QRubberBand_virtualbase_minimumSizeHint".}
proc fcQRubberBand_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QRubberBand_virtualbase_heightForWidth".}
proc fcQRubberBand_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QRubberBand_virtualbase_hasHeightForWidth".}
proc fcQRubberBand_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QRubberBand_virtualbase_paintEngine".}
proc fcQRubberBand_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_mousePressEvent".}
proc fcQRubberBand_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_mouseReleaseEvent".}
proc fcQRubberBand_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_mouseDoubleClickEvent".}
proc fcQRubberBand_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_mouseMoveEvent".}
proc fcQRubberBand_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_wheelEvent".}
proc fcQRubberBand_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_keyPressEvent".}
proc fcQRubberBand_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_keyReleaseEvent".}
proc fcQRubberBand_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_focusInEvent".}
proc fcQRubberBand_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_focusOutEvent".}
proc fcQRubberBand_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_enterEvent".}
proc fcQRubberBand_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_leaveEvent".}
proc fcQRubberBand_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_closeEvent".}
proc fcQRubberBand_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_contextMenuEvent".}
proc fcQRubberBand_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_tabletEvent".}
proc fcQRubberBand_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_actionEvent".}
proc fcQRubberBand_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_dragEnterEvent".}
proc fcQRubberBand_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_dragMoveEvent".}
proc fcQRubberBand_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_dragLeaveEvent".}
proc fcQRubberBand_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_dropEvent".}
proc fcQRubberBand_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_hideEvent".}
proc fcQRubberBand_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QRubberBand_virtualbase_nativeEvent".}
proc fcQRubberBand_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QRubberBand_virtualbase_metric".}
proc fcQRubberBand_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QRubberBand_virtualbase_initPainter".}
proc fcQRubberBand_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QRubberBand_virtualbase_redirected".}
proc fcQRubberBand_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QRubberBand_virtualbase_sharedPainter".}
proc fcQRubberBand_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_inputMethodEvent".}
proc fcQRubberBand_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QRubberBand_virtualbase_inputMethodQuery".}
proc fcQRubberBand_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QRubberBand_virtualbase_focusNextPrevChild".}
proc fcQRubberBand_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRubberBand_virtualbase_eventFilter".}
proc fcQRubberBand_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_timerEvent".}
proc fcQRubberBand_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_childEvent".}
proc fcQRubberBand_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_customEvent".}
proc fcQRubberBand_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRubberBand_virtualbase_connectNotify".}
proc fcQRubberBand_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRubberBand_virtualbase_disconnectNotify".}
proc fcQRubberBand_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QRubberBand_protectedbase_initStyleOption".}
proc fcQRubberBand_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QRubberBand_protectedbase_updateMicroFocus".}
proc fcQRubberBand_protectedbase_create(self: pointer, ): void {.importc: "QRubberBand_protectedbase_create".}
proc fcQRubberBand_protectedbase_destroy(self: pointer, ): void {.importc: "QRubberBand_protectedbase_destroy".}
proc fcQRubberBand_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QRubberBand_protectedbase_focusNextChild".}
proc fcQRubberBand_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QRubberBand_protectedbase_focusPreviousChild".}
proc fcQRubberBand_protectedbase_sender(self: pointer, ): pointer {.importc: "QRubberBand_protectedbase_sender".}
proc fcQRubberBand_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QRubberBand_protectedbase_senderSignalIndex".}
proc fcQRubberBand_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRubberBand_protectedbase_receivers".}
proc fcQRubberBand_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRubberBand_protectedbase_isSignalConnected".}
proc fcQRubberBand_new(vtbl: pointer, param1: cint): ptr cQRubberBand {.importc: "QRubberBand_new".}
proc fcQRubberBand_new2(vtbl: pointer, param1: cint, param2: pointer): ptr cQRubberBand {.importc: "QRubberBand_new2".}
proc fcQRubberBand_staticMetaObject(): pointer {.importc: "QRubberBand_staticMetaObject".}

proc metaObject*(self: gen_qrubberband_types.QRubberBand, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRubberBand_metaObject(self.h), owned: false)

proc metacast*(self: gen_qrubberband_types.QRubberBand, param1: cstring): pointer =
  fcQRubberBand_metacast(self.h, param1)

proc metacall*(self: gen_qrubberband_types.QRubberBand, param1: cint, param2: cint, param3: pointer): cint =
  fcQRubberBand_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qrubberband_types.QRubberBand, s: cstring): string =
  let v_ms = fcQRubberBand_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qrubberband_types.QRubberBand, s: cstring): string =
  let v_ms = fcQRubberBand_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc shape*(self: gen_qrubberband_types.QRubberBand, ): cint =
  cint(fcQRubberBand_shape(self.h))

proc setGeometry*(self: gen_qrubberband_types.QRubberBand, r: gen_qrect_types.QRect): void =
  fcQRubberBand_setGeometry(self.h, r.h)

proc setGeometry*(self: gen_qrubberband_types.QRubberBand, x: cint, y: cint, w: cint, h: cint): void =
  fcQRubberBand_setGeometry2(self.h, x, y, w, h)

proc move*(self: gen_qrubberband_types.QRubberBand, x: cint, y: cint): void =
  fcQRubberBand_move(self.h, x, y)

proc move*(self: gen_qrubberband_types.QRubberBand, p: gen_qpoint_types.QPoint): void =
  fcQRubberBand_moveWithQPoint(self.h, p.h)

proc resize*(self: gen_qrubberband_types.QRubberBand, w: cint, h: cint): void =
  fcQRubberBand_resize(self.h, w, h)

proc resize*(self: gen_qrubberband_types.QRubberBand, s: gen_qsize_types.QSize): void =
  fcQRubberBand_resizeWithQSize(self.h, s.h)

proc tr*(_: type gen_qrubberband_types.QRubberBand, s: cstring, c: cstring): string =
  let v_ms = fcQRubberBand_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qrubberband_types.QRubberBand, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRubberBand_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qrubberband_types.QRubberBand, s: cstring, c: cstring): string =
  let v_ms = fcQRubberBand_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qrubberband_types.QRubberBand, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRubberBand_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QRubberBandmetaObjectProc* = proc(self: QRubberBand): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRubberBandmetacastProc* = proc(self: QRubberBand, param1: cstring): pointer {.raises: [], gcsafe.}
type QRubberBandmetacallProc* = proc(self: QRubberBand, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRubberBandeventProc* = proc(self: QRubberBand, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRubberBandpaintEventProc* = proc(self: QRubberBand, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QRubberBandchangeEventProc* = proc(self: QRubberBand, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRubberBandshowEventProc* = proc(self: QRubberBand, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QRubberBandresizeEventProc* = proc(self: QRubberBand, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QRubberBandmoveEventProc* = proc(self: QRubberBand, param1: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QRubberBanddevTypeProc* = proc(self: QRubberBand): cint {.raises: [], gcsafe.}
type QRubberBandsetVisibleProc* = proc(self: QRubberBand, visible: bool): void {.raises: [], gcsafe.}
type QRubberBandsizeHintProc* = proc(self: QRubberBand): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QRubberBandminimumSizeHintProc* = proc(self: QRubberBand): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QRubberBandheightForWidthProc* = proc(self: QRubberBand, param1: cint): cint {.raises: [], gcsafe.}
type QRubberBandhasHeightForWidthProc* = proc(self: QRubberBand): bool {.raises: [], gcsafe.}
type QRubberBandpaintEngineProc* = proc(self: QRubberBand): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QRubberBandmousePressEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRubberBandmouseReleaseEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRubberBandmouseDoubleClickEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRubberBandmouseMoveEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRubberBandwheelEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QRubberBandkeyPressEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QRubberBandkeyReleaseEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QRubberBandfocusInEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QRubberBandfocusOutEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QRubberBandenterEventProc* = proc(self: QRubberBand, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRubberBandleaveEventProc* = proc(self: QRubberBand, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRubberBandcloseEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QRubberBandcontextMenuEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QRubberBandtabletEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QRubberBandactionEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QRubberBanddragEnterEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QRubberBanddragMoveEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QRubberBanddragLeaveEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QRubberBanddropEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QRubberBandhideEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QRubberBandnativeEventProc* = proc(self: QRubberBand, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QRubberBandmetricProc* = proc(self: QRubberBand, param1: cint): cint {.raises: [], gcsafe.}
type QRubberBandinitPainterProc* = proc(self: QRubberBand, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QRubberBandredirectedProc* = proc(self: QRubberBand, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QRubberBandsharedPainterProc* = proc(self: QRubberBand): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QRubberBandinputMethodEventProc* = proc(self: QRubberBand, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QRubberBandinputMethodQueryProc* = proc(self: QRubberBand, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QRubberBandfocusNextPrevChildProc* = proc(self: QRubberBand, next: bool): bool {.raises: [], gcsafe.}
type QRubberBandeventFilterProc* = proc(self: QRubberBand, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRubberBandtimerEventProc* = proc(self: QRubberBand, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRubberBandchildEventProc* = proc(self: QRubberBand, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRubberBandcustomEventProc* = proc(self: QRubberBand, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRubberBandconnectNotifyProc* = proc(self: QRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRubberBanddisconnectNotifyProc* = proc(self: QRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRubberBandVTable* {.inheritable, pure.} = object
  vtbl: cQRubberBandVTable
  metaObject*: QRubberBandmetaObjectProc
  metacast*: QRubberBandmetacastProc
  metacall*: QRubberBandmetacallProc
  event*: QRubberBandeventProc
  paintEvent*: QRubberBandpaintEventProc
  changeEvent*: QRubberBandchangeEventProc
  showEvent*: QRubberBandshowEventProc
  resizeEvent*: QRubberBandresizeEventProc
  moveEvent*: QRubberBandmoveEventProc
  devType*: QRubberBanddevTypeProc
  setVisible*: QRubberBandsetVisibleProc
  sizeHint*: QRubberBandsizeHintProc
  minimumSizeHint*: QRubberBandminimumSizeHintProc
  heightForWidth*: QRubberBandheightForWidthProc
  hasHeightForWidth*: QRubberBandhasHeightForWidthProc
  paintEngine*: QRubberBandpaintEngineProc
  mousePressEvent*: QRubberBandmousePressEventProc
  mouseReleaseEvent*: QRubberBandmouseReleaseEventProc
  mouseDoubleClickEvent*: QRubberBandmouseDoubleClickEventProc
  mouseMoveEvent*: QRubberBandmouseMoveEventProc
  wheelEvent*: QRubberBandwheelEventProc
  keyPressEvent*: QRubberBandkeyPressEventProc
  keyReleaseEvent*: QRubberBandkeyReleaseEventProc
  focusInEvent*: QRubberBandfocusInEventProc
  focusOutEvent*: QRubberBandfocusOutEventProc
  enterEvent*: QRubberBandenterEventProc
  leaveEvent*: QRubberBandleaveEventProc
  closeEvent*: QRubberBandcloseEventProc
  contextMenuEvent*: QRubberBandcontextMenuEventProc
  tabletEvent*: QRubberBandtabletEventProc
  actionEvent*: QRubberBandactionEventProc
  dragEnterEvent*: QRubberBanddragEnterEventProc
  dragMoveEvent*: QRubberBanddragMoveEventProc
  dragLeaveEvent*: QRubberBanddragLeaveEventProc
  dropEvent*: QRubberBanddropEventProc
  hideEvent*: QRubberBandhideEventProc
  nativeEvent*: QRubberBandnativeEventProc
  metric*: QRubberBandmetricProc
  initPainter*: QRubberBandinitPainterProc
  redirected*: QRubberBandredirectedProc
  sharedPainter*: QRubberBandsharedPainterProc
  inputMethodEvent*: QRubberBandinputMethodEventProc
  inputMethodQuery*: QRubberBandinputMethodQueryProc
  focusNextPrevChild*: QRubberBandfocusNextPrevChildProc
  eventFilter*: QRubberBandeventFilterProc
  timerEvent*: QRubberBandtimerEventProc
  childEvent*: QRubberBandchildEventProc
  customEvent*: QRubberBandcustomEventProc
  connectNotify*: QRubberBandconnectNotifyProc
  disconnectNotify*: QRubberBanddisconnectNotifyProc
proc QRubberBandmetaObject*(self: gen_qrubberband_types.QRubberBand, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRubberBand_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQRubberBand_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandmetacast*(self: gen_qrubberband_types.QRubberBand, param1: cstring): pointer =
  fcQRubberBand_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQRubberBand_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QRubberBandmetacall*(self: gen_qrubberband_types.QRubberBand, param1: cint, param2: cint, param3: pointer): cint =
  fcQRubberBand_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQRubberBand_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRubberBandevent*(self: gen_qrubberband_types.QRubberBand, e: gen_qcoreevent_types.QEvent): bool =
  fcQRubberBand_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQRubberBand_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QRubberBandpaintEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QPaintEvent): void =
  fcQRubberBand_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQRubberBand_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QRubberBandchangeEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qcoreevent_types.QEvent): void =
  fcQRubberBand_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQRubberBand_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QRubberBandshowEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QShowEvent): void =
  fcQRubberBand_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQRubberBand_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QRubberBandresizeEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QResizeEvent): void =
  fcQRubberBand_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQRubberBand_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QRubberBandmoveEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QMoveEvent): void =
  fcQRubberBand_virtualbase_moveEvent(self.h, param1.h)

proc miqt_exec_callback_cQRubberBand_moveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QRubberBanddevType*(self: gen_qrubberband_types.QRubberBand, ): cint =
  fcQRubberBand_virtualbase_devType(self.h)

proc miqt_exec_callback_cQRubberBand_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QRubberBandsetVisible*(self: gen_qrubberband_types.QRubberBand, visible: bool): void =
  fcQRubberBand_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQRubberBand_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QRubberBandsizeHint*(self: gen_qrubberband_types.QRubberBand, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRubberBand_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQRubberBand_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandminimumSizeHint*(self: gen_qrubberband_types.QRubberBand, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRubberBand_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQRubberBand_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandheightForWidth*(self: gen_qrubberband_types.QRubberBand, param1: cint): cint =
  fcQRubberBand_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQRubberBand_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QRubberBandhasHeightForWidth*(self: gen_qrubberband_types.QRubberBand, ): bool =
  fcQRubberBand_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQRubberBand_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QRubberBandpaintEngine*(self: gen_qrubberband_types.QRubberBand, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQRubberBand_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQRubberBand_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandmousePressEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fcQRubberBand_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QRubberBandmouseReleaseEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fcQRubberBand_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QRubberBandmouseDoubleClickEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fcQRubberBand_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QRubberBandmouseMoveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fcQRubberBand_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QRubberBandwheelEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QWheelEvent): void =
  fcQRubberBand_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QRubberBandkeyPressEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QKeyEvent): void =
  fcQRubberBand_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QRubberBandkeyReleaseEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QKeyEvent): void =
  fcQRubberBand_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QRubberBandfocusInEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QFocusEvent): void =
  fcQRubberBand_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QRubberBandfocusOutEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QFocusEvent): void =
  fcQRubberBand_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QRubberBandenterEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QEvent): void =
  fcQRubberBand_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QRubberBandleaveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QEvent): void =
  fcQRubberBand_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QRubberBandcloseEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QCloseEvent): void =
  fcQRubberBand_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QRubberBandcontextMenuEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QContextMenuEvent): void =
  fcQRubberBand_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QRubberBandtabletEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QTabletEvent): void =
  fcQRubberBand_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QRubberBandactionEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QActionEvent): void =
  fcQRubberBand_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QRubberBanddragEnterEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDragEnterEvent): void =
  fcQRubberBand_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QRubberBanddragMoveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDragMoveEvent): void =
  fcQRubberBand_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QRubberBanddragLeaveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQRubberBand_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QRubberBanddropEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDropEvent): void =
  fcQRubberBand_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QRubberBandhideEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QHideEvent): void =
  fcQRubberBand_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QRubberBandnativeEvent*(self: gen_qrubberband_types.QRubberBand, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQRubberBand_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQRubberBand_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRubberBandmetric*(self: gen_qrubberband_types.QRubberBand, param1: cint): cint =
  fcQRubberBand_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQRubberBand_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QRubberBandinitPainter*(self: gen_qrubberband_types.QRubberBand, painter: gen_qpainter_types.QPainter): void =
  fcQRubberBand_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQRubberBand_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QRubberBandredirected*(self: gen_qrubberband_types.QRubberBand, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQRubberBand_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQRubberBand_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandsharedPainter*(self: gen_qrubberband_types.QRubberBand, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQRubberBand_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQRubberBand_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandinputMethodEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQRubberBand_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQRubberBand_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QRubberBandinputMethodQuery*(self: gen_qrubberband_types.QRubberBand, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRubberBand_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQRubberBand_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandfocusNextPrevChild*(self: gen_qrubberband_types.QRubberBand, next: bool): bool =
  fcQRubberBand_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQRubberBand_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QRubberBandeventFilter*(self: gen_qrubberband_types.QRubberBand, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRubberBand_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQRubberBand_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QRubberBandtimerEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRubberBand_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QRubberBandchildEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRubberBand_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QRubberBandcustomEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QEvent): void =
  fcQRubberBand_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQRubberBand_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QRubberBandconnectNotify*(self: gen_qrubberband_types.QRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRubberBand_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRubberBand_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QRubberBanddisconnectNotify*(self: gen_qrubberband_types.QRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRubberBand_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRubberBand_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](vtbl)
  let self = QRubberBand(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRubberBand* {.inheritable.} = ref object of QRubberBand
  vtbl*: cQRubberBandVTable
method metaObject*(self: VirtualQRubberBand, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRubberBandmetaObject(self[])
proc miqt_exec_method_cQRubberBand_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQRubberBand, param1: cstring): pointer {.base.} =
  QRubberBandmetacast(self[], param1)
proc miqt_exec_method_cQRubberBand_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQRubberBand, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRubberBandmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQRubberBand_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQRubberBand, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRubberBandevent(self[], e)
proc miqt_exec_method_cQRubberBand_event(vtbl: pointer, inst: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method paintEvent*(self: VirtualQRubberBand, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QRubberBandpaintEvent(self[], param1)
proc miqt_exec_method_cQRubberBand_paintEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl.paintEvent(slotval1)

method changeEvent*(self: VirtualQRubberBand, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QRubberBandchangeEvent(self[], param1)
proc miqt_exec_method_cQRubberBand_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method showEvent*(self: VirtualQRubberBand, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QRubberBandshowEvent(self[], param1)
proc miqt_exec_method_cQRubberBand_showEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl.showEvent(slotval1)

method resizeEvent*(self: VirtualQRubberBand, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QRubberBandresizeEvent(self[], param1)
proc miqt_exec_method_cQRubberBand_resizeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl.resizeEvent(slotval1)

method moveEvent*(self: VirtualQRubberBand, param1: gen_qevent_types.QMoveEvent): void {.base.} =
  QRubberBandmoveEvent(self[], param1)
proc miqt_exec_method_cQRubberBand_moveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  vtbl.moveEvent(slotval1)

method devType*(self: VirtualQRubberBand, ): cint {.base.} =
  QRubberBanddevType(self[])
proc miqt_exec_method_cQRubberBand_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQRubberBand, visible: bool): void {.base.} =
  QRubberBandsetVisible(self[], visible)
proc miqt_exec_method_cQRubberBand_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method sizeHint*(self: VirtualQRubberBand, ): gen_qsize_types.QSize {.base.} =
  QRubberBandsizeHint(self[])
proc miqt_exec_method_cQRubberBand_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQRubberBand, ): gen_qsize_types.QSize {.base.} =
  QRubberBandminimumSizeHint(self[])
proc miqt_exec_method_cQRubberBand_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQRubberBand, param1: cint): cint {.base.} =
  QRubberBandheightForWidth(self[], param1)
proc miqt_exec_method_cQRubberBand_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQRubberBand, ): bool {.base.} =
  QRubberBandhasHeightForWidth(self[])
proc miqt_exec_method_cQRubberBand_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQRubberBand, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QRubberBandpaintEngine(self[])
proc miqt_exec_method_cQRubberBand_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRubberBandmousePressEvent(self[], event)
proc miqt_exec_method_cQRubberBand_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRubberBandmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQRubberBand_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRubberBandmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQRubberBand_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRubberBandmouseMoveEvent(self[], event)
proc miqt_exec_method_cQRubberBand_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QRubberBandwheelEvent(self[], event)
proc miqt_exec_method_cQRubberBand_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QRubberBandkeyPressEvent(self[], event)
proc miqt_exec_method_cQRubberBand_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QRubberBandkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQRubberBand_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QRubberBandfocusInEvent(self[], event)
proc miqt_exec_method_cQRubberBand_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QRubberBandfocusOutEvent(self[], event)
proc miqt_exec_method_cQRubberBand_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQRubberBand, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRubberBandenterEvent(self[], event)
proc miqt_exec_method_cQRubberBand_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQRubberBand, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRubberBandleaveEvent(self[], event)
proc miqt_exec_method_cQRubberBand_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method closeEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QRubberBandcloseEvent(self[], event)
proc miqt_exec_method_cQRubberBand_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QRubberBandcontextMenuEvent(self[], event)
proc miqt_exec_method_cQRubberBand_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QRubberBandtabletEvent(self[], event)
proc miqt_exec_method_cQRubberBand_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QActionEvent): void {.base.} =
  QRubberBandactionEvent(self[], event)
proc miqt_exec_method_cQRubberBand_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QRubberBanddragEnterEvent(self[], event)
proc miqt_exec_method_cQRubberBand_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QRubberBanddragMoveEvent(self[], event)
proc miqt_exec_method_cQRubberBand_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QRubberBanddragLeaveEvent(self[], event)
proc miqt_exec_method_cQRubberBand_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QDropEvent): void {.base.} =
  QRubberBanddropEvent(self[], event)
proc miqt_exec_method_cQRubberBand_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method hideEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QHideEvent): void {.base.} =
  QRubberBandhideEvent(self[], event)
proc miqt_exec_method_cQRubberBand_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQRubberBand, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QRubberBandnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQRubberBand_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQRubberBand, param1: cint): cint {.base.} =
  QRubberBandmetric(self[], param1)
proc miqt_exec_method_cQRubberBand_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQRubberBand, painter: gen_qpainter_types.QPainter): void {.base.} =
  QRubberBandinitPainter(self[], painter)
proc miqt_exec_method_cQRubberBand_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQRubberBand, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QRubberBandredirected(self[], offset)
proc miqt_exec_method_cQRubberBand_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQRubberBand, ): gen_qpainter_types.QPainter {.base.} =
  QRubberBandsharedPainter(self[])
proc miqt_exec_method_cQRubberBand_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQRubberBand, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QRubberBandinputMethodEvent(self[], param1)
proc miqt_exec_method_cQRubberBand_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQRubberBand, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QRubberBandinputMethodQuery(self[], param1)
proc miqt_exec_method_cQRubberBand_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQRubberBand, next: bool): bool {.base.} =
  QRubberBandfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQRubberBand_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQRubberBand, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRubberBandeventFilter(self[], watched, event)
proc miqt_exec_method_cQRubberBand_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQRubberBand, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRubberBandtimerEvent(self[], event)
proc miqt_exec_method_cQRubberBand_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQRubberBand, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRubberBandchildEvent(self[], event)
proc miqt_exec_method_cQRubberBand_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQRubberBand, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRubberBandcustomEvent(self[], event)
proc miqt_exec_method_cQRubberBand_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRubberBandconnectNotify(self[], signal)
proc miqt_exec_method_cQRubberBand_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRubberBanddisconnectNotify(self[], signal)
proc miqt_exec_method_cQRubberBand_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQRubberBand](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc initStyleOption*(self: gen_qrubberband_types.QRubberBand, option: gen_qstyleoption_types.QStyleOptionRubberBand): void =
  fcQRubberBand_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qrubberband_types.QRubberBand, ): void =
  fcQRubberBand_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qrubberband_types.QRubberBand, ): void =
  fcQRubberBand_protectedbase_create(self.h)

proc destroy*(self: gen_qrubberband_types.QRubberBand, ): void =
  fcQRubberBand_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qrubberband_types.QRubberBand, ): bool =
  fcQRubberBand_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qrubberband_types.QRubberBand, ): bool =
  fcQRubberBand_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qrubberband_types.QRubberBand, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRubberBand_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qrubberband_types.QRubberBand, ): cint =
  fcQRubberBand_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qrubberband_types.QRubberBand, signal: cstring): cint =
  fcQRubberBand_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qrubberband_types.QRubberBand, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRubberBand_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qrubberband_types.QRubberBand,
    param1: cint,
    vtbl: ref QRubberBandVTable = nil): gen_qrubberband_types.QRubberBand =
  let vtbl = if vtbl == nil: new QRubberBandVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQRubberBandVTable, _: ptr cQRubberBand) {.cdecl.} =
    let vtbl = cast[ref QRubberBandVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRubberBand_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRubberBand_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRubberBand_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRubberBand_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQRubberBand_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQRubberBand_changeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQRubberBand_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQRubberBand_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQRubberBand_moveEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQRubberBand_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQRubberBand_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQRubberBand_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQRubberBand_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQRubberBand_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQRubberBand_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQRubberBand_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQRubberBand_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQRubberBand_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQRubberBand_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQRubberBand_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQRubberBand_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQRubberBand_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQRubberBand_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQRubberBand_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQRubberBand_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQRubberBand_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQRubberBand_leaveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQRubberBand_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQRubberBand_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQRubberBand_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQRubberBand_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQRubberBand_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQRubberBand_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQRubberBand_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQRubberBand_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQRubberBand_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQRubberBand_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQRubberBand_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQRubberBand_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQRubberBand_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQRubberBand_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQRubberBand_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQRubberBand_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQRubberBand_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRubberBand_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRubberBand_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRubberBand_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRubberBand_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRubberBand_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRubberBand_disconnectNotify
  gen_qrubberband_types.QRubberBand(h: fcQRubberBand_new(addr(vtbl[].vtbl), cint(param1)), owned: true)

proc create*(T: type gen_qrubberband_types.QRubberBand,
    param1: cint, param2: gen_qwidget_types.QWidget,
    vtbl: ref QRubberBandVTable = nil): gen_qrubberband_types.QRubberBand =
  let vtbl = if vtbl == nil: new QRubberBandVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQRubberBandVTable, _: ptr cQRubberBand) {.cdecl.} =
    let vtbl = cast[ref QRubberBandVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRubberBand_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRubberBand_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRubberBand_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRubberBand_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQRubberBand_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQRubberBand_changeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQRubberBand_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQRubberBand_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQRubberBand_moveEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQRubberBand_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQRubberBand_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQRubberBand_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQRubberBand_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQRubberBand_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQRubberBand_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQRubberBand_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQRubberBand_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQRubberBand_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQRubberBand_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQRubberBand_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQRubberBand_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQRubberBand_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQRubberBand_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQRubberBand_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQRubberBand_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQRubberBand_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQRubberBand_leaveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQRubberBand_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQRubberBand_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQRubberBand_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQRubberBand_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQRubberBand_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQRubberBand_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQRubberBand_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQRubberBand_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQRubberBand_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQRubberBand_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQRubberBand_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQRubberBand_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQRubberBand_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQRubberBand_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQRubberBand_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQRubberBand_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQRubberBand_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRubberBand_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRubberBand_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRubberBand_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRubberBand_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRubberBand_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRubberBand_disconnectNotify
  gen_qrubberband_types.QRubberBand(h: fcQRubberBand_new2(addr(vtbl[].vtbl), cint(param1), param2.h), owned: true)

proc create*(T: type gen_qrubberband_types.QRubberBand,
    param1: cint,
    vtbl: VirtualQRubberBand) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQRubberBandVTable, _: ptr cQRubberBand) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQRubberBand()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQRubberBand_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQRubberBand_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQRubberBand_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQRubberBand_event
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQRubberBand_paintEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQRubberBand_changeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQRubberBand_showEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQRubberBand_resizeEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQRubberBand_moveEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQRubberBand_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQRubberBand_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQRubberBand_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQRubberBand_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQRubberBand_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQRubberBand_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQRubberBand_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQRubberBand_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQRubberBand_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQRubberBand_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQRubberBand_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQRubberBand_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQRubberBand_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQRubberBand_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQRubberBand_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQRubberBand_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQRubberBand_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQRubberBand_leaveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQRubberBand_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQRubberBand_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQRubberBand_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQRubberBand_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQRubberBand_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQRubberBand_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQRubberBand_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQRubberBand_dropEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQRubberBand_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQRubberBand_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQRubberBand_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQRubberBand_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQRubberBand_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQRubberBand_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQRubberBand_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQRubberBand_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQRubberBand_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQRubberBand_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQRubberBand_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQRubberBand_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQRubberBand_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQRubberBand_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQRubberBand_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQRubberBand_new(addr(vtbl[].vtbl), cint(param1))
  vtbl[].owned = true

proc create*(T: type gen_qrubberband_types.QRubberBand,
    param1: cint, param2: gen_qwidget_types.QWidget,
    vtbl: VirtualQRubberBand) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQRubberBandVTable, _: ptr cQRubberBand) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQRubberBand()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQRubberBand, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQRubberBand_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQRubberBand_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQRubberBand_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQRubberBand_event
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQRubberBand_paintEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQRubberBand_changeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQRubberBand_showEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQRubberBand_resizeEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQRubberBand_moveEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQRubberBand_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQRubberBand_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQRubberBand_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQRubberBand_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQRubberBand_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQRubberBand_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQRubberBand_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQRubberBand_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQRubberBand_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQRubberBand_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQRubberBand_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQRubberBand_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQRubberBand_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQRubberBand_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQRubberBand_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQRubberBand_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQRubberBand_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQRubberBand_leaveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQRubberBand_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQRubberBand_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQRubberBand_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQRubberBand_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQRubberBand_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQRubberBand_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQRubberBand_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQRubberBand_dropEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQRubberBand_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQRubberBand_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQRubberBand_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQRubberBand_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQRubberBand_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQRubberBand_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQRubberBand_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQRubberBand_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQRubberBand_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQRubberBand_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQRubberBand_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQRubberBand_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQRubberBand_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQRubberBand_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQRubberBand_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQRubberBand_new2(addr(vtbl[].vtbl), cint(param1), param2.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qrubberband_types.QRubberBand): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRubberBand_staticMetaObject())
