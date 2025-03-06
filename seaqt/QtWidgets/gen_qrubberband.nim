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

type cQRubberBand*{.exportc: "QRubberBand", incompleteStruct.} = object

proc fcQRubberBand_new(param1: cint): ptr cQRubberBand {.importc: "QRubberBand_new".}
proc fcQRubberBand_new2(param1: cint, param2: pointer): ptr cQRubberBand {.importc: "QRubberBand_new2".}
proc fcQRubberBand_metaObject(self: pointer, ): pointer {.importc: "QRubberBand_metaObject".}
proc fcQRubberBand_metacast(self: pointer, param1: cstring): pointer {.importc: "QRubberBand_metacast".}
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
proc fQRubberBand_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QRubberBand_virtualbase_event".}
proc fcQRubberBand_override_virtual_event(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_event".}
proc fQRubberBand_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_paintEvent".}
proc fcQRubberBand_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_paintEvent".}
proc fQRubberBand_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_changeEvent".}
proc fcQRubberBand_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_changeEvent".}
proc fQRubberBand_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_showEvent".}
proc fcQRubberBand_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_showEvent".}
proc fQRubberBand_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_resizeEvent".}
proc fcQRubberBand_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_resizeEvent".}
proc fQRubberBand_virtualbase_moveEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_moveEvent".}
proc fcQRubberBand_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_moveEvent".}
proc fQRubberBand_virtualbase_devType(self: pointer, ): cint{.importc: "QRubberBand_virtualbase_devType".}
proc fcQRubberBand_override_virtual_devType(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_devType".}
proc fQRubberBand_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QRubberBand_virtualbase_setVisible".}
proc fcQRubberBand_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_setVisible".}
proc fQRubberBand_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QRubberBand_virtualbase_sizeHint".}
proc fcQRubberBand_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_sizeHint".}
proc fQRubberBand_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QRubberBand_virtualbase_minimumSizeHint".}
proc fcQRubberBand_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_minimumSizeHint".}
proc fQRubberBand_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QRubberBand_virtualbase_heightForWidth".}
proc fcQRubberBand_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_heightForWidth".}
proc fQRubberBand_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QRubberBand_virtualbase_hasHeightForWidth".}
proc fcQRubberBand_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_hasHeightForWidth".}
proc fQRubberBand_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QRubberBand_virtualbase_paintEngine".}
proc fcQRubberBand_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_paintEngine".}
proc fQRubberBand_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_mousePressEvent".}
proc fcQRubberBand_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_mousePressEvent".}
proc fQRubberBand_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_mouseReleaseEvent".}
proc fcQRubberBand_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_mouseReleaseEvent".}
proc fQRubberBand_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_mouseDoubleClickEvent".}
proc fcQRubberBand_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_mouseDoubleClickEvent".}
proc fQRubberBand_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_mouseMoveEvent".}
proc fcQRubberBand_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_mouseMoveEvent".}
proc fQRubberBand_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_wheelEvent".}
proc fcQRubberBand_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_wheelEvent".}
proc fQRubberBand_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_keyPressEvent".}
proc fcQRubberBand_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_keyPressEvent".}
proc fQRubberBand_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_keyReleaseEvent".}
proc fcQRubberBand_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_keyReleaseEvent".}
proc fQRubberBand_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_focusInEvent".}
proc fcQRubberBand_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_focusInEvent".}
proc fQRubberBand_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_focusOutEvent".}
proc fcQRubberBand_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_focusOutEvent".}
proc fQRubberBand_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_enterEvent".}
proc fcQRubberBand_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_enterEvent".}
proc fQRubberBand_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_leaveEvent".}
proc fcQRubberBand_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_leaveEvent".}
proc fQRubberBand_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_closeEvent".}
proc fcQRubberBand_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_closeEvent".}
proc fQRubberBand_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_contextMenuEvent".}
proc fcQRubberBand_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_contextMenuEvent".}
proc fQRubberBand_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_tabletEvent".}
proc fcQRubberBand_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_tabletEvent".}
proc fQRubberBand_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_actionEvent".}
proc fcQRubberBand_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_actionEvent".}
proc fQRubberBand_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_dragEnterEvent".}
proc fcQRubberBand_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_dragEnterEvent".}
proc fQRubberBand_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_dragMoveEvent".}
proc fcQRubberBand_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_dragMoveEvent".}
proc fQRubberBand_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_dragLeaveEvent".}
proc fcQRubberBand_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_dragLeaveEvent".}
proc fQRubberBand_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_dropEvent".}
proc fcQRubberBand_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_dropEvent".}
proc fQRubberBand_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_hideEvent".}
proc fcQRubberBand_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_hideEvent".}
proc fQRubberBand_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QRubberBand_virtualbase_nativeEvent".}
proc fcQRubberBand_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_nativeEvent".}
proc fQRubberBand_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QRubberBand_virtualbase_metric".}
proc fcQRubberBand_override_virtual_metric(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_metric".}
proc fQRubberBand_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QRubberBand_virtualbase_initPainter".}
proc fcQRubberBand_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_initPainter".}
proc fQRubberBand_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QRubberBand_virtualbase_redirected".}
proc fcQRubberBand_override_virtual_redirected(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_redirected".}
proc fQRubberBand_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QRubberBand_virtualbase_sharedPainter".}
proc fcQRubberBand_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_sharedPainter".}
proc fQRubberBand_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_inputMethodEvent".}
proc fcQRubberBand_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_inputMethodEvent".}
proc fQRubberBand_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QRubberBand_virtualbase_inputMethodQuery".}
proc fcQRubberBand_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_inputMethodQuery".}
proc fQRubberBand_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QRubberBand_virtualbase_focusNextPrevChild".}
proc fcQRubberBand_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_focusNextPrevChild".}
proc fQRubberBand_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QRubberBand_virtualbase_eventFilter".}
proc fcQRubberBand_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_eventFilter".}
proc fQRubberBand_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_timerEvent".}
proc fcQRubberBand_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_timerEvent".}
proc fQRubberBand_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_childEvent".}
proc fcQRubberBand_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_childEvent".}
proc fQRubberBand_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_customEvent".}
proc fcQRubberBand_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_customEvent".}
proc fQRubberBand_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QRubberBand_virtualbase_connectNotify".}
proc fcQRubberBand_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_connectNotify".}
proc fQRubberBand_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QRubberBand_virtualbase_disconnectNotify".}
proc fcQRubberBand_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_disconnectNotify".}
proc fcQRubberBand_delete(self: pointer) {.importc: "QRubberBand_delete".}


func init*(T: type gen_qrubberband_types.QRubberBand, h: ptr cQRubberBand): gen_qrubberband_types.QRubberBand =
  T(h: h)
proc create*(T: type gen_qrubberband_types.QRubberBand, param1: cint): gen_qrubberband_types.QRubberBand =
  gen_qrubberband_types.QRubberBand.init(fcQRubberBand_new(cint(param1)))

proc create*(T: type gen_qrubberband_types.QRubberBand, param1: cint, param2: gen_qwidget_types.QWidget): gen_qrubberband_types.QRubberBand =
  gen_qrubberband_types.QRubberBand.init(fcQRubberBand_new2(cint(param1), param2.h))

proc metaObject*(self: gen_qrubberband_types.QRubberBand, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRubberBand_metaObject(self.h))

proc metacast*(self: gen_qrubberband_types.QRubberBand, param1: cstring): pointer =
  fcQRubberBand_metacast(self.h, param1)

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

proc QRubberBandevent*(self: gen_qrubberband_types.QRubberBand, e: gen_qcoreevent_types.QEvent): bool =
  fQRubberBand_virtualbase_event(self.h, e.h)

type QRubberBandeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandeventProc) =
  # TODO check subclass
  var tmp = new QRubberBandeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_event(self: ptr cQRubberBand, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QRubberBand_event ".} =
  var nimfunc = cast[ptr QRubberBandeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRubberBandpaintEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QPaintEvent): void =
  fQRubberBand_virtualbase_paintEvent(self.h, param1.h)

type QRubberBandpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandpaintEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_paintEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_paintEvent ".} =
  var nimfunc = cast[ptr QRubberBandpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QRubberBandchangeEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qcoreevent_types.QEvent): void =
  fQRubberBand_virtualbase_changeEvent(self.h, param1.h)

type QRubberBandchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandchangeEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_changeEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_changeEvent ".} =
  var nimfunc = cast[ptr QRubberBandchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QRubberBandshowEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QShowEvent): void =
  fQRubberBand_virtualbase_showEvent(self.h, param1.h)

type QRubberBandshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandshowEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_showEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_showEvent ".} =
  var nimfunc = cast[ptr QRubberBandshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QRubberBandresizeEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QResizeEvent): void =
  fQRubberBand_virtualbase_resizeEvent(self.h, param1.h)

type QRubberBandresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandresizeEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_resizeEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_resizeEvent ".} =
  var nimfunc = cast[ptr QRubberBandresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QRubberBandmoveEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QMoveEvent): void =
  fQRubberBand_virtualbase_moveEvent(self.h, param1.h)

type QRubberBandmoveEventProc* = proc(param1: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandmoveEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_moveEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_moveEvent ".} =
  var nimfunc = cast[ptr QRubberBandmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QRubberBanddevType*(self: gen_qrubberband_types.QRubberBand, ): cint =
  fQRubberBand_virtualbase_devType(self.h)

type QRubberBanddevTypeProc* = proc(): cint
proc ondevType*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBanddevTypeProc) =
  # TODO check subclass
  var tmp = new QRubberBanddevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_devType(self: ptr cQRubberBand, slot: int): cint {.exportc: "miqt_exec_callback_QRubberBand_devType ".} =
  var nimfunc = cast[ptr QRubberBanddevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QRubberBandsetVisible*(self: gen_qrubberband_types.QRubberBand, visible: bool): void =
  fQRubberBand_virtualbase_setVisible(self.h, visible)

type QRubberBandsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandsetVisibleProc) =
  # TODO check subclass
  var tmp = new QRubberBandsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_setVisible(self: ptr cQRubberBand, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QRubberBand_setVisible ".} =
  var nimfunc = cast[ptr QRubberBandsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QRubberBandsizeHint*(self: gen_qrubberband_types.QRubberBand, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQRubberBand_virtualbase_sizeHint(self.h))

type QRubberBandsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandsizeHintProc) =
  # TODO check subclass
  var tmp = new QRubberBandsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_sizeHint(self: ptr cQRubberBand, slot: int): pointer {.exportc: "miqt_exec_callback_QRubberBand_sizeHint ".} =
  var nimfunc = cast[ptr QRubberBandsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRubberBandminimumSizeHint*(self: gen_qrubberband_types.QRubberBand, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQRubberBand_virtualbase_minimumSizeHint(self.h))

type QRubberBandminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QRubberBandminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_minimumSizeHint(self: ptr cQRubberBand, slot: int): pointer {.exportc: "miqt_exec_callback_QRubberBand_minimumSizeHint ".} =
  var nimfunc = cast[ptr QRubberBandminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRubberBandheightForWidth*(self: gen_qrubberband_types.QRubberBand, param1: cint): cint =
  fQRubberBand_virtualbase_heightForWidth(self.h, param1)

type QRubberBandheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandheightForWidthProc) =
  # TODO check subclass
  var tmp = new QRubberBandheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_heightForWidth(self: ptr cQRubberBand, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QRubberBand_heightForWidth ".} =
  var nimfunc = cast[ptr QRubberBandheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRubberBandhasHeightForWidth*(self: gen_qrubberband_types.QRubberBand, ): bool =
  fQRubberBand_virtualbase_hasHeightForWidth(self.h)

type QRubberBandhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QRubberBandhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_hasHeightForWidth(self: ptr cQRubberBand, slot: int): bool {.exportc: "miqt_exec_callback_QRubberBand_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QRubberBandhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QRubberBandpaintEngine*(self: gen_qrubberband_types.QRubberBand, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQRubberBand_virtualbase_paintEngine(self.h))

type QRubberBandpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandpaintEngineProc) =
  # TODO check subclass
  var tmp = new QRubberBandpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_paintEngine(self: ptr cQRubberBand, slot: int): pointer {.exportc: "miqt_exec_callback_QRubberBand_paintEngine ".} =
  var nimfunc = cast[ptr QRubberBandpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRubberBandmousePressEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fQRubberBand_virtualbase_mousePressEvent(self.h, event.h)

type QRubberBandmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandmousePressEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_mousePressEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_mousePressEvent ".} =
  var nimfunc = cast[ptr QRubberBandmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandmouseReleaseEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fQRubberBand_virtualbase_mouseReleaseEvent(self.h, event.h)

type QRubberBandmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_mouseReleaseEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QRubberBandmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandmouseDoubleClickEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fQRubberBand_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QRubberBandmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_mouseDoubleClickEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QRubberBandmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandmouseMoveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QMouseEvent): void =
  fQRubberBand_virtualbase_mouseMoveEvent(self.h, event.h)

type QRubberBandmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_mouseMoveEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QRubberBandmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandwheelEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QWheelEvent): void =
  fQRubberBand_virtualbase_wheelEvent(self.h, event.h)

type QRubberBandwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandwheelEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_wheelEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_wheelEvent ".} =
  var nimfunc = cast[ptr QRubberBandwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandkeyPressEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QKeyEvent): void =
  fQRubberBand_virtualbase_keyPressEvent(self.h, event.h)

type QRubberBandkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_keyPressEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_keyPressEvent ".} =
  var nimfunc = cast[ptr QRubberBandkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandkeyReleaseEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QKeyEvent): void =
  fQRubberBand_virtualbase_keyReleaseEvent(self.h, event.h)

type QRubberBandkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_keyReleaseEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QRubberBandkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandfocusInEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QFocusEvent): void =
  fQRubberBand_virtualbase_focusInEvent(self.h, event.h)

type QRubberBandfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandfocusInEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_focusInEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_focusInEvent ".} =
  var nimfunc = cast[ptr QRubberBandfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandfocusOutEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QFocusEvent): void =
  fQRubberBand_virtualbase_focusOutEvent(self.h, event.h)

type QRubberBandfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_focusOutEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_focusOutEvent ".} =
  var nimfunc = cast[ptr QRubberBandfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandenterEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QEvent): void =
  fQRubberBand_virtualbase_enterEvent(self.h, event.h)

type QRubberBandenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandenterEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_enterEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_enterEvent ".} =
  var nimfunc = cast[ptr QRubberBandenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandleaveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QEvent): void =
  fQRubberBand_virtualbase_leaveEvent(self.h, event.h)

type QRubberBandleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandleaveEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_leaveEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_leaveEvent ".} =
  var nimfunc = cast[ptr QRubberBandleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandcloseEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QCloseEvent): void =
  fQRubberBand_virtualbase_closeEvent(self.h, event.h)

type QRubberBandcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandcloseEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_closeEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_closeEvent ".} =
  var nimfunc = cast[ptr QRubberBandcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandcontextMenuEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QContextMenuEvent): void =
  fQRubberBand_virtualbase_contextMenuEvent(self.h, event.h)

type QRubberBandcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_contextMenuEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_contextMenuEvent ".} =
  var nimfunc = cast[ptr QRubberBandcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandtabletEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QTabletEvent): void =
  fQRubberBand_virtualbase_tabletEvent(self.h, event.h)

type QRubberBandtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandtabletEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_tabletEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_tabletEvent ".} =
  var nimfunc = cast[ptr QRubberBandtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandactionEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QActionEvent): void =
  fQRubberBand_virtualbase_actionEvent(self.h, event.h)

type QRubberBandactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandactionEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_actionEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_actionEvent ".} =
  var nimfunc = cast[ptr QRubberBandactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBanddragEnterEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDragEnterEvent): void =
  fQRubberBand_virtualbase_dragEnterEvent(self.h, event.h)

type QRubberBanddragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBanddragEnterEventProc) =
  # TODO check subclass
  var tmp = new QRubberBanddragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_dragEnterEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_dragEnterEvent ".} =
  var nimfunc = cast[ptr QRubberBanddragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBanddragMoveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDragMoveEvent): void =
  fQRubberBand_virtualbase_dragMoveEvent(self.h, event.h)

type QRubberBanddragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBanddragMoveEventProc) =
  # TODO check subclass
  var tmp = new QRubberBanddragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_dragMoveEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_dragMoveEvent ".} =
  var nimfunc = cast[ptr QRubberBanddragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBanddragLeaveEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDragLeaveEvent): void =
  fQRubberBand_virtualbase_dragLeaveEvent(self.h, event.h)

type QRubberBanddragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBanddragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QRubberBanddragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_dragLeaveEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QRubberBanddragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBanddropEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QDropEvent): void =
  fQRubberBand_virtualbase_dropEvent(self.h, event.h)

type QRubberBanddropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBanddropEventProc) =
  # TODO check subclass
  var tmp = new QRubberBanddropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_dropEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_dropEvent ".} =
  var nimfunc = cast[ptr QRubberBanddropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandhideEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qevent_types.QHideEvent): void =
  fQRubberBand_virtualbase_hideEvent(self.h, event.h)

type QRubberBandhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandhideEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_hideEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_hideEvent ".} =
  var nimfunc = cast[ptr QRubberBandhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandnativeEvent*(self: gen_qrubberband_types.QRubberBand, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQRubberBand_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QRubberBandnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandnativeEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_nativeEvent(self: ptr cQRubberBand, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QRubberBand_nativeEvent ".} =
  var nimfunc = cast[ptr QRubberBandnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QRubberBandmetric*(self: gen_qrubberband_types.QRubberBand, param1: cint): cint =
  fQRubberBand_virtualbase_metric(self.h, cint(param1))

type QRubberBandmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandmetricProc) =
  # TODO check subclass
  var tmp = new QRubberBandmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_metric(self: ptr cQRubberBand, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QRubberBand_metric ".} =
  var nimfunc = cast[ptr QRubberBandmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRubberBandinitPainter*(self: gen_qrubberband_types.QRubberBand, painter: gen_qpainter_types.QPainter): void =
  fQRubberBand_virtualbase_initPainter(self.h, painter.h)

type QRubberBandinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandinitPainterProc) =
  # TODO check subclass
  var tmp = new QRubberBandinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_initPainter(self: ptr cQRubberBand, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_initPainter ".} =
  var nimfunc = cast[ptr QRubberBandinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QRubberBandredirected*(self: gen_qrubberband_types.QRubberBand, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQRubberBand_virtualbase_redirected(self.h, offset.h))

type QRubberBandredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandredirectedProc) =
  # TODO check subclass
  var tmp = new QRubberBandredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_redirected(self: ptr cQRubberBand, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QRubberBand_redirected ".} =
  var nimfunc = cast[ptr QRubberBandredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QRubberBandsharedPainter*(self: gen_qrubberband_types.QRubberBand, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQRubberBand_virtualbase_sharedPainter(self.h))

type QRubberBandsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandsharedPainterProc) =
  # TODO check subclass
  var tmp = new QRubberBandsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_sharedPainter(self: ptr cQRubberBand, slot: int): pointer {.exportc: "miqt_exec_callback_QRubberBand_sharedPainter ".} =
  var nimfunc = cast[ptr QRubberBandsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRubberBandinputMethodEvent*(self: gen_qrubberband_types.QRubberBand, param1: gen_qevent_types.QInputMethodEvent): void =
  fQRubberBand_virtualbase_inputMethodEvent(self.h, param1.h)

type QRubberBandinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_inputMethodEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_inputMethodEvent ".} =
  var nimfunc = cast[ptr QRubberBandinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QRubberBandinputMethodQuery*(self: gen_qrubberband_types.QRubberBand, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQRubberBand_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QRubberBandinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QRubberBandinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_inputMethodQuery(self: ptr cQRubberBand, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QRubberBand_inputMethodQuery ".} =
  var nimfunc = cast[ptr QRubberBandinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QRubberBandfocusNextPrevChild*(self: gen_qrubberband_types.QRubberBand, next: bool): bool =
  fQRubberBand_virtualbase_focusNextPrevChild(self.h, next)

type QRubberBandfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QRubberBandfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_focusNextPrevChild(self: ptr cQRubberBand, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QRubberBand_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QRubberBandfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRubberBandeventFilter*(self: gen_qrubberband_types.QRubberBand, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQRubberBand_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRubberBandeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandeventFilterProc) =
  # TODO check subclass
  var tmp = new QRubberBandeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_eventFilter(self: ptr cQRubberBand, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRubberBand_eventFilter ".} =
  var nimfunc = cast[ptr QRubberBandeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QRubberBandtimerEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QTimerEvent): void =
  fQRubberBand_virtualbase_timerEvent(self.h, event.h)

type QRubberBandtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandtimerEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_timerEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_timerEvent ".} =
  var nimfunc = cast[ptr QRubberBandtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandchildEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QChildEvent): void =
  fQRubberBand_virtualbase_childEvent(self.h, event.h)

type QRubberBandchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandchildEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_childEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_childEvent ".} =
  var nimfunc = cast[ptr QRubberBandchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandcustomEvent*(self: gen_qrubberband_types.QRubberBand, event: gen_qcoreevent_types.QEvent): void =
  fQRubberBand_virtualbase_customEvent(self.h, event.h)

type QRubberBandcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandcustomEventProc) =
  # TODO check subclass
  var tmp = new QRubberBandcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_customEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_customEvent ".} =
  var nimfunc = cast[ptr QRubberBandcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QRubberBandconnectNotify*(self: gen_qrubberband_types.QRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQRubberBand_virtualbase_connectNotify(self.h, signal.h)

type QRubberBandconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBandconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QRubberBandconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_connectNotify(self: ptr cQRubberBand, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_connectNotify ".} =
  var nimfunc = cast[ptr QRubberBandconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QRubberBanddisconnectNotify*(self: gen_qrubberband_types.QRubberBand, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQRubberBand_virtualbase_disconnectNotify(self.h, signal.h)

type QRubberBanddisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qrubberband_types.QRubberBand, slot: QRubberBanddisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QRubberBanddisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_disconnectNotify(self: ptr cQRubberBand, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_disconnectNotify ".} =
  var nimfunc = cast[ptr QRubberBanddisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qrubberband_types.QRubberBand) =
  fcQRubberBand_delete(self.h)
