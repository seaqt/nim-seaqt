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


{.compile("gen_qrubberband.cpp", QtWidgetsCFlags).}


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

proc fcQRubberBand_metaObject(self: pointer): pointer {.importc: "QRubberBand_metaObject".}
proc fcQRubberBand_metacast(self: pointer, param1: cstring): pointer {.importc: "QRubberBand_metacast".}
proc fcQRubberBand_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRubberBand_metacall".}
proc fcQRubberBand_tr(s: cstring): struct_miqt_string {.importc: "QRubberBand_tr".}
proc fcQRubberBand_shape(self: pointer): cint {.importc: "QRubberBand_shape".}
proc fcQRubberBand_setGeometry(self: pointer, r: pointer): void {.importc: "QRubberBand_setGeometry".}
proc fcQRubberBand_setGeometry2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QRubberBand_setGeometry2".}
proc fcQRubberBand_move(self: pointer, x: cint, y: cint): void {.importc: "QRubberBand_move".}
proc fcQRubberBand_moveWithQPoint(self: pointer, p: pointer): void {.importc: "QRubberBand_moveWithQPoint".}
proc fcQRubberBand_resize(self: pointer, w: cint, h: cint): void {.importc: "QRubberBand_resize".}
proc fcQRubberBand_resizeWithQSize(self: pointer, s: pointer): void {.importc: "QRubberBand_resizeWithQSize".}
proc fcQRubberBand_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRubberBand_tr2".}
proc fcQRubberBand_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRubberBand_tr3".}
proc fcQRubberBand_vtbl(self: pointer): pointer {.importc: "QRubberBand_vtbl".}
proc fcQRubberBand_vdata(self: pointer): pointer {.importc: "QRubberBand_vdata".}
type cQRubberBandVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
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
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQRubberBand_virtualbase_metaObject(self: pointer): pointer {.importc: "QRubberBand_virtualbase_metaObject".}
proc fcQRubberBand_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRubberBand_virtualbase_metacast".}
proc fcQRubberBand_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRubberBand_virtualbase_metacall".}
proc fcQRubberBand_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QRubberBand_virtualbase_event".}
proc fcQRubberBand_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_paintEvent".}
proc fcQRubberBand_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_changeEvent".}
proc fcQRubberBand_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_showEvent".}
proc fcQRubberBand_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_resizeEvent".}
proc fcQRubberBand_virtualbase_moveEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_moveEvent".}
proc fcQRubberBand_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QRubberBand_virtualbase_initStyleOption".}
proc fcQRubberBand_virtualbase_devType(self: pointer): cint {.importc: "QRubberBand_virtualbase_devType".}
proc fcQRubberBand_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QRubberBand_virtualbase_setVisible".}
proc fcQRubberBand_virtualbase_sizeHint(self: pointer): pointer {.importc: "QRubberBand_virtualbase_sizeHint".}
proc fcQRubberBand_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QRubberBand_virtualbase_minimumSizeHint".}
proc fcQRubberBand_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QRubberBand_virtualbase_heightForWidth".}
proc fcQRubberBand_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QRubberBand_virtualbase_hasHeightForWidth".}
proc fcQRubberBand_virtualbase_paintEngine(self: pointer): pointer {.importc: "QRubberBand_virtualbase_paintEngine".}
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
proc fcQRubberBand_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QRubberBand_virtualbase_nativeEvent".}
proc fcQRubberBand_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QRubberBand_virtualbase_metric".}
proc fcQRubberBand_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QRubberBand_virtualbase_initPainter".}
proc fcQRubberBand_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QRubberBand_virtualbase_redirected".}
proc fcQRubberBand_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QRubberBand_virtualbase_sharedPainter".}
proc fcQRubberBand_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QRubberBand_virtualbase_inputMethodEvent".}
proc fcQRubberBand_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QRubberBand_virtualbase_inputMethodQuery".}
proc fcQRubberBand_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QRubberBand_virtualbase_focusNextPrevChild".}
proc fcQRubberBand_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRubberBand_virtualbase_eventFilter".}
proc fcQRubberBand_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_timerEvent".}
proc fcQRubberBand_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_childEvent".}
proc fcQRubberBand_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRubberBand_virtualbase_customEvent".}
proc fcQRubberBand_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRubberBand_virtualbase_connectNotify".}
proc fcQRubberBand_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRubberBand_virtualbase_disconnectNotify".}
proc fcQRubberBand_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QRubberBand_protectedbase_updateMicroFocus".}
proc fcQRubberBand_protectedbase_create(self: pointer): void {.importc: "QRubberBand_protectedbase_create".}
proc fcQRubberBand_protectedbase_destroy(self: pointer): void {.importc: "QRubberBand_protectedbase_destroy".}
proc fcQRubberBand_protectedbase_focusNextChild(self: pointer): bool {.importc: "QRubberBand_protectedbase_focusNextChild".}
proc fcQRubberBand_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QRubberBand_protectedbase_focusPreviousChild".}
proc fcQRubberBand_protectedbase_sender(self: pointer): pointer {.importc: "QRubberBand_protectedbase_sender".}
proc fcQRubberBand_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRubberBand_protectedbase_senderSignalIndex".}
proc fcQRubberBand_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRubberBand_protectedbase_receivers".}
proc fcQRubberBand_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRubberBand_protectedbase_isSignalConnected".}
proc fcQRubberBand_new(vtbl, vdata: pointer, param1: cint): ptr cQRubberBand {.importc: "QRubberBand_new".}
proc fcQRubberBand_new2(vtbl, vdata: pointer, param1: cint, param2: pointer): ptr cQRubberBand {.importc: "QRubberBand_new2".}
proc fcQRubberBand_staticMetaObject(): pointer {.importc: "QRubberBand_staticMetaObject".}

proc metaObject*(self: gen_qrubberband_types.QRubberBand): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRubberBand_metaObject(self.h), owned: false)

proc metacast*(self: gen_qrubberband_types.QRubberBand, param1: cstring): pointer =
  fcQRubberBand_metacast(self.h, param1)

proc metacall*(self: gen_qrubberband_types.QRubberBand, param1: cint, param2: cint, param3: pointer): cint =
  fcQRubberBand_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qrubberband_types.QRubberBand, s: cstring): string =
  let v_ms = fcQRubberBand_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc shape*(self: gen_qrubberband_types.QRubberBand): cint =
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
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qrubberband_types.QRubberBand, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRubberBand_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QRubberBandinitStyleOptionProc* = proc(self: QRubberBand, option: gen_qstyleoption_types.QStyleOptionRubberBand): void {.raises: [], gcsafe.}
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
type QRubberBandenterEventProc* = proc(self: QRubberBand, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QRubberBandnativeEventProc* = proc(self: QRubberBand, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
  initStyleOption*: QRubberBandinitStyleOptionProc
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
proc QRubberBandmetaObject*(self: gen_qrubberband_types.QRubberBand): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRubberBand_virtualbase_metaObject(self.h), owned: false)

proc cQRubberBand_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandmetacast*(self: gen_qrubberband_types.QRubberBand, param1: cstring): pointer =
  fcQRubberBand_virtualbase_metacast(self.h, param1)

proc cQRubberBand_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QRubberBandmetacall*(self: gen_qrubberband_types.QRubberBand, param1: cint, param2: cint, param3: pointer): cint =
  fcQRubberBand_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQRubberBand_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRubberBandevent*(self: gen_qrubberband_types.QRubberBand, e: gen_qcoreevent_types.QEvent): bool =
  fcQRubberBand_virtualbase_event(self.h, e.h)

proc cQRubberBand_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QRubberBandpaintEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QPaintEvent): void =
  fcQRubberBand_virtualbase_paintEvent(self.h, param1.h)

proc cQRubberBand_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QRubberBandchangeEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qcoreevent_types.QEvent): void =
  fcQRubberBand_virtualbase_changeEvent(self.h, param1.h)

proc cQRubberBand_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QRubberBandshowEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QShowEvent): void =
  fcQRubberBand_virtualbase_showEvent(self.h, param1.h)

proc cQRubberBand_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QRubberBandresizeEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QResizeEvent): void =
  fcQRubberBand_virtualbase_resizeEvent(self.h, param1.h)

proc cQRubberBand_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QRubberBandmoveEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QMoveEvent): void =
  fcQRubberBand_virtualbase_moveEvent(self.h, param1.h)

proc cQRubberBand_vtable_callback_moveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QRubberBandinitStyleOption*(self: gen_qrubberband_types.QRubberBand, option: gen_qstyleoption_types.QStyleOptionRubberBand): void =
  fcQRubberBand_virtualbase_initStyleOption(self.h, option.h)

proc cQRubberBand_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionRubberBand(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QRubberBanddevType*(self: gen_qrubberband_types.QRubberBand): cint =
  fcQRubberBand_virtualbase_devType(self.h)

proc cQRubberBand_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QRubberBandsetVisible*(self: gen_qrubberband_types.QRubberBand, visible: bool): void =
  fcQRubberBand_virtualbase_setVisible(self.h, visible)

proc cQRubberBand_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QRubberBandsizeHint*(self: gen_qrubberband_types.QRubberBand): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRubberBand_virtualbase_sizeHint(self.h), owned: true)

proc cQRubberBand_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandminimumSizeHint*(self: gen_qrubberband_types.QRubberBand): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRubberBand_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQRubberBand_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandheightForWidth*(self: gen_qrubberband_types.QRubberBand, param1: cint): cint =
  fcQRubberBand_virtualbase_heightForWidth(self.h, param1)

proc cQRubberBand_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QRubberBandhasHeightForWidth*(self: gen_qrubberband_types.QRubberBand): bool =
  fcQRubberBand_virtualbase_hasHeightForWidth(self.h)

proc cQRubberBand_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QRubberBandpaintEngine*(self: gen_qrubberband_types.QRubberBand): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQRubberBand_virtualbase_paintEngine(self.h), owned: false)

proc cQRubberBand_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandmousePressEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fcQRubberBand_virtualbase_mousePressEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QRubberBandmouseReleaseEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fcQRubberBand_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QRubberBandmouseDoubleClickEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fcQRubberBand_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QRubberBandmouseMoveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fcQRubberBand_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QRubberBandwheelEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QWheelEvent): void =
  fcQRubberBand_virtualbase_wheelEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QRubberBandkeyPressEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QKeyEvent): void =
  fcQRubberBand_virtualbase_keyPressEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QRubberBandkeyReleaseEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QKeyEvent): void =
  fcQRubberBand_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QRubberBandfocusInEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QFocusEvent): void =
  fcQRubberBand_virtualbase_focusInEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QRubberBandfocusOutEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QFocusEvent): void =
  fcQRubberBand_virtualbase_focusOutEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QRubberBandenterEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QEnterEvent): void =
  fcQRubberBand_virtualbase_enterEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QRubberBandleaveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QEvent): void =
  fcQRubberBand_virtualbase_leaveEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QRubberBandcloseEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QCloseEvent): void =
  fcQRubberBand_virtualbase_closeEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QRubberBandcontextMenuEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QContextMenuEvent): void =
  fcQRubberBand_virtualbase_contextMenuEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QRubberBandtabletEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QTabletEvent): void =
  fcQRubberBand_virtualbase_tabletEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QRubberBandactionEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QActionEvent): void =
  fcQRubberBand_virtualbase_actionEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QRubberBanddragEnterEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDragEnterEvent): void =
  fcQRubberBand_virtualbase_dragEnterEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QRubberBanddragMoveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDragMoveEvent): void =
  fcQRubberBand_virtualbase_dragMoveEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QRubberBanddragLeaveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQRubberBand_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QRubberBanddropEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDropEvent): void =
  fcQRubberBand_virtualbase_dropEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QRubberBandhideEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QHideEvent): void =
  fcQRubberBand_virtualbase_hideEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QRubberBandnativeEvent*(self: gen_qrubberband_types.QRubberBand, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQRubberBand_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQRubberBand_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRubberBandmetric*(self: gen_qrubberband_types.QRubberBand, param1: cint): cint =
  fcQRubberBand_virtualbase_metric(self.h, cint(param1))

proc cQRubberBand_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QRubberBandinitPainter*(self: gen_qrubberband_types.QRubberBand, painter: gen_qpainter_types.QPainter): void =
  fcQRubberBand_virtualbase_initPainter(self.h, painter.h)

proc cQRubberBand_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QRubberBandredirected*(self: gen_qrubberband_types.QRubberBand, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQRubberBand_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQRubberBand_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandsharedPainter*(self: gen_qrubberband_types.QRubberBand): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQRubberBand_virtualbase_sharedPainter(self.h), owned: false)

proc cQRubberBand_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandinputMethodEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQRubberBand_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQRubberBand_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QRubberBandinputMethodQuery*(self: gen_qrubberband_types.QRubberBand, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRubberBand_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQRubberBand_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QRubberBandfocusNextPrevChild*(self: gen_qrubberband_types.QRubberBand, next: bool): bool =
  fcQRubberBand_virtualbase_focusNextPrevChild(self.h, next)

proc cQRubberBand_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QRubberBandeventFilter*(self: gen_qrubberband_types.QRubberBand, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRubberBand_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQRubberBand_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QRubberBandtimerEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRubberBand_virtualbase_timerEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QRubberBandchildEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRubberBand_virtualbase_childEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QRubberBandcustomEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QEvent): void =
  fcQRubberBand_virtualbase_customEvent(self.h, event.h)

proc cQRubberBand_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QRubberBandconnectNotify*(self: gen_qrubberband_types.QRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRubberBand_virtualbase_connectNotify(self.h, signal.h)

proc cQRubberBand_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QRubberBanddisconnectNotify*(self: gen_qrubberband_types.QRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRubberBand_virtualbase_disconnectNotify(self.h, signal.h)

proc cQRubberBand_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRubberBandVTable](fcQRubberBand_vdata(self))
  let self = QRubberBand(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRubberBand* {.inheritable.} = ref object of QRubberBand
  vtbl*: cQRubberBandVTable
method metaObject*(self: VirtualQRubberBand): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRubberBandmetaObject(self[])
proc cQRubberBand_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQRubberBand, param1: cstring): pointer {.base.} =
  QRubberBandmetacast(self[], param1)
proc cQRubberBand_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQRubberBand, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRubberBandmetacall(self[], param1, param2, param3)
proc cQRubberBand_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQRubberBand, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRubberBandevent(self[], e)
proc cQRubberBand_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method paintEvent*(self: VirtualQRubberBand, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QRubberBandpaintEvent(self[], param1)
proc cQRubberBand_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method changeEvent*(self: VirtualQRubberBand, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QRubberBandchangeEvent(self[], param1)
proc cQRubberBand_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method showEvent*(self: VirtualQRubberBand, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QRubberBandshowEvent(self[], param1)
proc cQRubberBand_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

method resizeEvent*(self: VirtualQRubberBand, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QRubberBandresizeEvent(self[], param1)
proc cQRubberBand_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method moveEvent*(self: VirtualQRubberBand, param1: gen_qevent_types.QMoveEvent): void {.base.} =
  QRubberBandmoveEvent(self[], param1)
proc cQRubberBand_method_callback_moveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  inst.moveEvent(slotval1)

method initStyleOption*(self: VirtualQRubberBand, option: gen_qstyleoption_types.QStyleOptionRubberBand): void {.base.} =
  QRubberBandinitStyleOption(self[], option)
proc cQRubberBand_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionRubberBand(h: option, owned: false)
  inst.initStyleOption(slotval1)

method devType*(self: VirtualQRubberBand): cint {.base.} =
  QRubberBanddevType(self[])
proc cQRubberBand_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQRubberBand, visible: bool): void {.base.} =
  QRubberBandsetVisible(self[], visible)
proc cQRubberBand_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQRubberBand): gen_qsize_types.QSize {.base.} =
  QRubberBandsizeHint(self[])
proc cQRubberBand_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQRubberBand): gen_qsize_types.QSize {.base.} =
  QRubberBandminimumSizeHint(self[])
proc cQRubberBand_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQRubberBand, param1: cint): cint {.base.} =
  QRubberBandheightForWidth(self[], param1)
proc cQRubberBand_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQRubberBand): bool {.base.} =
  QRubberBandhasHeightForWidth(self[])
proc cQRubberBand_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQRubberBand): gen_qpaintengine_types.QPaintEngine {.base.} =
  QRubberBandpaintEngine(self[])
proc cQRubberBand_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRubberBandmousePressEvent(self[], event)
proc cQRubberBand_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRubberBandmouseReleaseEvent(self[], event)
proc cQRubberBand_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRubberBandmouseDoubleClickEvent(self[], event)
proc cQRubberBand_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRubberBandmouseMoveEvent(self[], event)
proc cQRubberBand_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QRubberBandwheelEvent(self[], event)
proc cQRubberBand_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QRubberBandkeyPressEvent(self[], event)
proc cQRubberBand_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QRubberBandkeyReleaseEvent(self[], event)
proc cQRubberBand_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QRubberBandfocusInEvent(self[], event)
proc cQRubberBand_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QRubberBandfocusOutEvent(self[], event)
proc cQRubberBand_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QRubberBandenterEvent(self[], event)
proc cQRubberBand_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQRubberBand, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRubberBandleaveEvent(self[], event)
proc cQRubberBand_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method closeEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QRubberBandcloseEvent(self[], event)
proc cQRubberBand_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QRubberBandcontextMenuEvent(self[], event)
proc cQRubberBand_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QRubberBandtabletEvent(self[], event)
proc cQRubberBand_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QActionEvent): void {.base.} =
  QRubberBandactionEvent(self[], event)
proc cQRubberBand_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QRubberBanddragEnterEvent(self[], event)
proc cQRubberBand_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QRubberBanddragMoveEvent(self[], event)
proc cQRubberBand_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QRubberBanddragLeaveEvent(self[], event)
proc cQRubberBand_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QDropEvent): void {.base.} =
  QRubberBanddropEvent(self[], event)
proc cQRubberBand_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hideEvent*(self: VirtualQRubberBand, event: gen_qevent_types.QHideEvent): void {.base.} =
  QRubberBandhideEvent(self[], event)
proc cQRubberBand_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQRubberBand, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QRubberBandnativeEvent(self[], eventType, message, resultVal)
proc cQRubberBand_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQRubberBand, param1: cint): cint {.base.} =
  QRubberBandmetric(self[], param1)
proc cQRubberBand_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQRubberBand, painter: gen_qpainter_types.QPainter): void {.base.} =
  QRubberBandinitPainter(self[], painter)
proc cQRubberBand_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQRubberBand, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QRubberBandredirected(self[], offset)
proc cQRubberBand_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQRubberBand): gen_qpainter_types.QPainter {.base.} =
  QRubberBandsharedPainter(self[])
proc cQRubberBand_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQRubberBand, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QRubberBandinputMethodEvent(self[], param1)
proc cQRubberBand_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQRubberBand, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QRubberBandinputMethodQuery(self[], param1)
proc cQRubberBand_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQRubberBand, next: bool): bool {.base.} =
  QRubberBandfocusNextPrevChild(self[], next)
proc cQRubberBand_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQRubberBand, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRubberBandeventFilter(self[], watched, event)
proc cQRubberBand_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQRubberBand, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRubberBandtimerEvent(self[], event)
proc cQRubberBand_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQRubberBand, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRubberBandchildEvent(self[], event)
proc cQRubberBand_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQRubberBand, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRubberBandcustomEvent(self[], event)
proc cQRubberBand_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRubberBandconnectNotify(self[], signal)
proc cQRubberBand_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRubberBanddisconnectNotify(self[], signal)
proc cQRubberBand_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRubberBand](fcQRubberBand_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qrubberband_types.QRubberBand): void =
  fcQRubberBand_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qrubberband_types.QRubberBand): void =
  fcQRubberBand_protectedbase_create(self.h)

proc destroy*(self: gen_qrubberband_types.QRubberBand): void =
  fcQRubberBand_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qrubberband_types.QRubberBand): bool =
  fcQRubberBand_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qrubberband_types.QRubberBand): bool =
  fcQRubberBand_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qrubberband_types.QRubberBand): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRubberBand_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qrubberband_types.QRubberBand): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRubberBandVTable](fcQRubberBand_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQRubberBand_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQRubberBand_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQRubberBand_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQRubberBand_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQRubberBand_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQRubberBand_vtable_callback_changeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQRubberBand_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQRubberBand_vtable_callback_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQRubberBand_vtable_callback_moveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQRubberBand_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQRubberBand_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQRubberBand_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQRubberBand_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQRubberBand_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQRubberBand_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQRubberBand_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQRubberBand_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQRubberBand_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQRubberBand_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQRubberBand_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQRubberBand_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQRubberBand_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQRubberBand_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQRubberBand_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQRubberBand_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQRubberBand_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQRubberBand_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQRubberBand_vtable_callback_leaveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQRubberBand_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQRubberBand_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQRubberBand_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQRubberBand_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQRubberBand_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQRubberBand_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQRubberBand_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQRubberBand_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQRubberBand_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQRubberBand_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQRubberBand_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQRubberBand_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQRubberBand_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQRubberBand_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQRubberBand_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQRubberBand_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQRubberBand_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQRubberBand_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQRubberBand_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQRubberBand_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQRubberBand_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQRubberBand_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQRubberBand_vtable_callback_disconnectNotify
  gen_qrubberband_types.QRubberBand(h: fcQRubberBand_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(param1)), owned: true)

proc create*(T: type gen_qrubberband_types.QRubberBand,
    param1: cint, param2: gen_qwidget_types.QWidget,
    vtbl: ref QRubberBandVTable = nil): gen_qrubberband_types.QRubberBand =
  let vtbl = if vtbl == nil: new QRubberBandVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRubberBandVTable](fcQRubberBand_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQRubberBand_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQRubberBand_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQRubberBand_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQRubberBand_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQRubberBand_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQRubberBand_vtable_callback_changeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQRubberBand_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQRubberBand_vtable_callback_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQRubberBand_vtable_callback_moveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQRubberBand_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQRubberBand_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQRubberBand_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQRubberBand_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQRubberBand_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQRubberBand_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQRubberBand_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQRubberBand_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQRubberBand_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQRubberBand_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQRubberBand_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQRubberBand_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQRubberBand_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQRubberBand_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQRubberBand_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQRubberBand_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQRubberBand_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQRubberBand_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQRubberBand_vtable_callback_leaveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQRubberBand_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQRubberBand_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQRubberBand_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQRubberBand_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQRubberBand_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQRubberBand_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQRubberBand_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQRubberBand_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQRubberBand_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQRubberBand_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQRubberBand_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQRubberBand_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQRubberBand_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQRubberBand_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQRubberBand_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQRubberBand_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQRubberBand_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQRubberBand_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQRubberBand_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQRubberBand_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQRubberBand_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQRubberBand_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQRubberBand_vtable_callback_disconnectNotify
  gen_qrubberband_types.QRubberBand(h: fcQRubberBand_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(param1), param2.h), owned: true)

const cQRubberBand_mvtbl = cQRubberBandVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRubberBand()[])](self.fcQRubberBand_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQRubberBand_method_callback_metaObject,
  metacast: cQRubberBand_method_callback_metacast,
  metacall: cQRubberBand_method_callback_metacall,
  event: cQRubberBand_method_callback_event,
  paintEvent: cQRubberBand_method_callback_paintEvent,
  changeEvent: cQRubberBand_method_callback_changeEvent,
  showEvent: cQRubberBand_method_callback_showEvent,
  resizeEvent: cQRubberBand_method_callback_resizeEvent,
  moveEvent: cQRubberBand_method_callback_moveEvent,
  initStyleOption: cQRubberBand_method_callback_initStyleOption,
  devType: cQRubberBand_method_callback_devType,
  setVisible: cQRubberBand_method_callback_setVisible,
  sizeHint: cQRubberBand_method_callback_sizeHint,
  minimumSizeHint: cQRubberBand_method_callback_minimumSizeHint,
  heightForWidth: cQRubberBand_method_callback_heightForWidth,
  hasHeightForWidth: cQRubberBand_method_callback_hasHeightForWidth,
  paintEngine: cQRubberBand_method_callback_paintEngine,
  mousePressEvent: cQRubberBand_method_callback_mousePressEvent,
  mouseReleaseEvent: cQRubberBand_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQRubberBand_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQRubberBand_method_callback_mouseMoveEvent,
  wheelEvent: cQRubberBand_method_callback_wheelEvent,
  keyPressEvent: cQRubberBand_method_callback_keyPressEvent,
  keyReleaseEvent: cQRubberBand_method_callback_keyReleaseEvent,
  focusInEvent: cQRubberBand_method_callback_focusInEvent,
  focusOutEvent: cQRubberBand_method_callback_focusOutEvent,
  enterEvent: cQRubberBand_method_callback_enterEvent,
  leaveEvent: cQRubberBand_method_callback_leaveEvent,
  closeEvent: cQRubberBand_method_callback_closeEvent,
  contextMenuEvent: cQRubberBand_method_callback_contextMenuEvent,
  tabletEvent: cQRubberBand_method_callback_tabletEvent,
  actionEvent: cQRubberBand_method_callback_actionEvent,
  dragEnterEvent: cQRubberBand_method_callback_dragEnterEvent,
  dragMoveEvent: cQRubberBand_method_callback_dragMoveEvent,
  dragLeaveEvent: cQRubberBand_method_callback_dragLeaveEvent,
  dropEvent: cQRubberBand_method_callback_dropEvent,
  hideEvent: cQRubberBand_method_callback_hideEvent,
  nativeEvent: cQRubberBand_method_callback_nativeEvent,
  metric: cQRubberBand_method_callback_metric,
  initPainter: cQRubberBand_method_callback_initPainter,
  redirected: cQRubberBand_method_callback_redirected,
  sharedPainter: cQRubberBand_method_callback_sharedPainter,
  inputMethodEvent: cQRubberBand_method_callback_inputMethodEvent,
  inputMethodQuery: cQRubberBand_method_callback_inputMethodQuery,
  focusNextPrevChild: cQRubberBand_method_callback_focusNextPrevChild,
  eventFilter: cQRubberBand_method_callback_eventFilter,
  timerEvent: cQRubberBand_method_callback_timerEvent,
  childEvent: cQRubberBand_method_callback_childEvent,
  customEvent: cQRubberBand_method_callback_customEvent,
  connectNotify: cQRubberBand_method_callback_connectNotify,
  disconnectNotify: cQRubberBand_method_callback_disconnectNotify,
)
proc create*(T: type gen_qrubberband_types.QRubberBand,
    param1: cint,
    inst: VirtualQRubberBand) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRubberBand_new(addr(cQRubberBand_mvtbl), addr(inst[]), cint(param1))
  inst[].owned = true

proc create*(T: type gen_qrubberband_types.QRubberBand,
    param1: cint, param2: gen_qwidget_types.QWidget,
    inst: VirtualQRubberBand) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRubberBand_new2(addr(cQRubberBand_mvtbl), addr(inst[]), cint(param1), param2.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qrubberband_types.QRubberBand): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRubberBand_staticMetaObject())
