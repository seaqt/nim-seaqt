import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qslider.cpp", cflags).}


type QSliderTickPositionEnum* = distinct cint
template NoTicks*(_: type QSliderTickPositionEnum): untyped = 0
template TicksAbove*(_: type QSliderTickPositionEnum): untyped = 1
template TicksLeft*(_: type QSliderTickPositionEnum): untyped = 1
template TicksBelow*(_: type QSliderTickPositionEnum): untyped = 2
template TicksRight*(_: type QSliderTickPositionEnum): untyped = 2
template TicksBothSides*(_: type QSliderTickPositionEnum): untyped = 3


import ./gen_qslider_types
export gen_qslider_types

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
  ./gen_qabstractslider,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
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
  gen_qabstractslider,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQSlider*{.exportc: "QSlider", incompleteStruct.} = object

proc fcQSlider_new(parent: pointer): ptr cQSlider {.importc: "QSlider_new".}
proc fcQSlider_new2(): ptr cQSlider {.importc: "QSlider_new2".}
proc fcQSlider_new3(orientation: cint): ptr cQSlider {.importc: "QSlider_new3".}
proc fcQSlider_new4(orientation: cint, parent: pointer): ptr cQSlider {.importc: "QSlider_new4".}
proc fcQSlider_metaObject(self: pointer, ): pointer {.importc: "QSlider_metaObject".}
proc fcQSlider_metacast(self: pointer, param1: cstring): pointer {.importc: "QSlider_metacast".}
proc fcQSlider_tr(s: cstring): struct_miqt_string {.importc: "QSlider_tr".}
proc fcQSlider_sizeHint(self: pointer, ): pointer {.importc: "QSlider_sizeHint".}
proc fcQSlider_minimumSizeHint(self: pointer, ): pointer {.importc: "QSlider_minimumSizeHint".}
proc fcQSlider_setTickPosition(self: pointer, position: cint): void {.importc: "QSlider_setTickPosition".}
proc fcQSlider_tickPosition(self: pointer, ): cint {.importc: "QSlider_tickPosition".}
proc fcQSlider_setTickInterval(self: pointer, ti: cint): void {.importc: "QSlider_setTickInterval".}
proc fcQSlider_tickInterval(self: pointer, ): cint {.importc: "QSlider_tickInterval".}
proc fcQSlider_event(self: pointer, event: pointer): bool {.importc: "QSlider_event".}
proc fcQSlider_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSlider_tr2".}
proc fcQSlider_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSlider_tr3".}
proc fQSlider_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSlider_virtualbase_sizeHint".}
proc fcQSlider_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSlider_override_virtual_sizeHint".}
proc fQSlider_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSlider_virtualbase_minimumSizeHint".}
proc fcQSlider_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSlider_override_virtual_minimumSizeHint".}
proc fQSlider_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSlider_virtualbase_event".}
proc fcQSlider_override_virtual_event(self: pointer, slot: int) {.importc: "QSlider_override_virtual_event".}
proc fQSlider_virtualbase_paintEvent(self: pointer, ev: pointer): void{.importc: "QSlider_virtualbase_paintEvent".}
proc fcQSlider_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_paintEvent".}
proc fQSlider_virtualbase_mousePressEvent(self: pointer, ev: pointer): void{.importc: "QSlider_virtualbase_mousePressEvent".}
proc fcQSlider_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_mousePressEvent".}
proc fQSlider_virtualbase_mouseReleaseEvent(self: pointer, ev: pointer): void{.importc: "QSlider_virtualbase_mouseReleaseEvent".}
proc fcQSlider_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_mouseReleaseEvent".}
proc fQSlider_virtualbase_mouseMoveEvent(self: pointer, ev: pointer): void{.importc: "QSlider_virtualbase_mouseMoveEvent".}
proc fcQSlider_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_mouseMoveEvent".}
proc fQSlider_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QSlider_virtualbase_initStyleOption".}
proc fcQSlider_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QSlider_override_virtual_initStyleOption".}
proc fQSlider_virtualbase_sliderChange(self: pointer, change: cint): void{.importc: "QSlider_virtualbase_sliderChange".}
proc fcQSlider_override_virtual_sliderChange(self: pointer, slot: int) {.importc: "QSlider_override_virtual_sliderChange".}
proc fQSlider_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QSlider_virtualbase_keyPressEvent".}
proc fcQSlider_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_keyPressEvent".}
proc fQSlider_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QSlider_virtualbase_timerEvent".}
proc fcQSlider_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_timerEvent".}
proc fQSlider_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QSlider_virtualbase_wheelEvent".}
proc fcQSlider_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_wheelEvent".}
proc fQSlider_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QSlider_virtualbase_changeEvent".}
proc fcQSlider_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_changeEvent".}
proc fQSlider_virtualbase_devType(self: pointer, ): cint{.importc: "QSlider_virtualbase_devType".}
proc fcQSlider_override_virtual_devType(self: pointer, slot: int) {.importc: "QSlider_override_virtual_devType".}
proc fQSlider_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSlider_virtualbase_setVisible".}
proc fcQSlider_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSlider_override_virtual_setVisible".}
proc fQSlider_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSlider_virtualbase_heightForWidth".}
proc fcQSlider_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSlider_override_virtual_heightForWidth".}
proc fQSlider_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSlider_virtualbase_hasHeightForWidth".}
proc fcQSlider_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSlider_override_virtual_hasHeightForWidth".}
proc fQSlider_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSlider_virtualbase_paintEngine".}
proc fcQSlider_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSlider_override_virtual_paintEngine".}
proc fQSlider_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_mouseDoubleClickEvent".}
proc fcQSlider_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_mouseDoubleClickEvent".}
proc fQSlider_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_keyReleaseEvent".}
proc fcQSlider_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_keyReleaseEvent".}
proc fQSlider_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_focusInEvent".}
proc fcQSlider_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_focusInEvent".}
proc fQSlider_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_focusOutEvent".}
proc fcQSlider_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_focusOutEvent".}
proc fQSlider_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_enterEvent".}
proc fcQSlider_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_enterEvent".}
proc fQSlider_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_leaveEvent".}
proc fcQSlider_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_leaveEvent".}
proc fQSlider_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_moveEvent".}
proc fcQSlider_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_moveEvent".}
proc fQSlider_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_resizeEvent".}
proc fcQSlider_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_resizeEvent".}
proc fQSlider_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_closeEvent".}
proc fcQSlider_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_closeEvent".}
proc fQSlider_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_contextMenuEvent".}
proc fcQSlider_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_contextMenuEvent".}
proc fQSlider_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_tabletEvent".}
proc fcQSlider_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_tabletEvent".}
proc fQSlider_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_actionEvent".}
proc fcQSlider_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_actionEvent".}
proc fQSlider_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_dragEnterEvent".}
proc fcQSlider_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_dragEnterEvent".}
proc fQSlider_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_dragMoveEvent".}
proc fcQSlider_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_dragMoveEvent".}
proc fQSlider_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_dragLeaveEvent".}
proc fcQSlider_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_dragLeaveEvent".}
proc fQSlider_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_dropEvent".}
proc fcQSlider_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_dropEvent".}
proc fQSlider_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_showEvent".}
proc fcQSlider_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_showEvent".}
proc fQSlider_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_hideEvent".}
proc fcQSlider_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_hideEvent".}
proc fQSlider_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QSlider_virtualbase_nativeEvent".}
proc fcQSlider_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_nativeEvent".}
proc fQSlider_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSlider_virtualbase_metric".}
proc fcQSlider_override_virtual_metric(self: pointer, slot: int) {.importc: "QSlider_override_virtual_metric".}
proc fQSlider_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSlider_virtualbase_initPainter".}
proc fcQSlider_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSlider_override_virtual_initPainter".}
proc fQSlider_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSlider_virtualbase_redirected".}
proc fcQSlider_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSlider_override_virtual_redirected".}
proc fQSlider_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSlider_virtualbase_sharedPainter".}
proc fcQSlider_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSlider_override_virtual_sharedPainter".}
proc fQSlider_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSlider_virtualbase_inputMethodEvent".}
proc fcQSlider_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_inputMethodEvent".}
proc fQSlider_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSlider_virtualbase_inputMethodQuery".}
proc fcQSlider_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSlider_override_virtual_inputMethodQuery".}
proc fQSlider_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSlider_virtualbase_focusNextPrevChild".}
proc fcQSlider_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSlider_override_virtual_focusNextPrevChild".}
proc fQSlider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSlider_virtualbase_eventFilter".}
proc fcQSlider_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSlider_override_virtual_eventFilter".}
proc fQSlider_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_childEvent".}
proc fcQSlider_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_childEvent".}
proc fQSlider_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSlider_virtualbase_customEvent".}
proc fcQSlider_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSlider_override_virtual_customEvent".}
proc fQSlider_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSlider_virtualbase_connectNotify".}
proc fcQSlider_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSlider_override_virtual_connectNotify".}
proc fQSlider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSlider_virtualbase_disconnectNotify".}
proc fcQSlider_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSlider_override_virtual_disconnectNotify".}
proc fcQSlider_delete(self: pointer) {.importc: "QSlider_delete".}


func init*(T: type gen_qslider_types.QSlider, h: ptr cQSlider): gen_qslider_types.QSlider =
  T(h: h)
proc create*(T: type gen_qslider_types.QSlider, parent: gen_qwidget_types.QWidget): gen_qslider_types.QSlider =
  gen_qslider_types.QSlider.init(fcQSlider_new(parent.h))

proc create*(T: type gen_qslider_types.QSlider, ): gen_qslider_types.QSlider =
  gen_qslider_types.QSlider.init(fcQSlider_new2())

proc create*(T: type gen_qslider_types.QSlider, orientation: cint): gen_qslider_types.QSlider =
  gen_qslider_types.QSlider.init(fcQSlider_new3(cint(orientation)))

proc create*(T: type gen_qslider_types.QSlider, orientation: cint, parent: gen_qwidget_types.QWidget): gen_qslider_types.QSlider =
  gen_qslider_types.QSlider.init(fcQSlider_new4(cint(orientation), parent.h))

proc metaObject*(self: gen_qslider_types.QSlider, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSlider_metaObject(self.h))

proc metacast*(self: gen_qslider_types.QSlider, param1: cstring): pointer =
  fcQSlider_metacast(self.h, param1)

proc tr*(_: type gen_qslider_types.QSlider, s: cstring): string =
  let v_ms = fcQSlider_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qslider_types.QSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSlider_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qslider_types.QSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSlider_minimumSizeHint(self.h))

proc setTickPosition*(self: gen_qslider_types.QSlider, position: cint): void =
  fcQSlider_setTickPosition(self.h, cint(position))

proc tickPosition*(self: gen_qslider_types.QSlider, ): cint =
  cint(fcQSlider_tickPosition(self.h))

proc setTickInterval*(self: gen_qslider_types.QSlider, ti: cint): void =
  fcQSlider_setTickInterval(self.h, ti)

proc tickInterval*(self: gen_qslider_types.QSlider, ): cint =
  fcQSlider_tickInterval(self.h)

proc event*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QEvent): bool =
  fcQSlider_event(self.h, event.h)

proc tr*(_: type gen_qslider_types.QSlider, s: cstring, c: cstring): string =
  let v_ms = fcQSlider_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qslider_types.QSlider, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSlider_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSlidersizeHint*(self: gen_qslider_types.QSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSlider_virtualbase_sizeHint(self.h))

type QSlidersizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qslider_types.QSlider, slot: QSlidersizeHintProc) =
  # TODO check subclass
  var tmp = new QSlidersizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_sizeHint(self: ptr cQSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QSlider_sizeHint ".} =
  var nimfunc = cast[ptr QSlidersizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSliderminimumSizeHint*(self: gen_qslider_types.QSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSlider_virtualbase_minimumSizeHint(self.h))

type QSliderminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qslider_types.QSlider, slot: QSliderminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QSliderminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_minimumSizeHint(self: ptr cQSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QSlider_minimumSizeHint ".} =
  var nimfunc = cast[ptr QSliderminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSliderevent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QEvent): bool =
  fQSlider_virtualbase_event(self.h, event.h)

type QSlidereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qslider_types.QSlider, slot: QSlidereventProc) =
  # TODO check subclass
  var tmp = new QSlidereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_event(self: ptr cQSlider, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSlider_event ".} =
  var nimfunc = cast[ptr QSlidereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSliderpaintEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QPaintEvent): void =
  fQSlider_virtualbase_paintEvent(self.h, ev.h)

type QSliderpaintEventProc* = proc(ev: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qslider_types.QSlider, slot: QSliderpaintEventProc) =
  # TODO check subclass
  var tmp = new QSliderpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_paintEvent(self: ptr cQSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QSlider_paintEvent ".} =
  var nimfunc = cast[ptr QSliderpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: ev)


  nimfunc[](slotval1)
proc QSlidermousePressEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QMouseEvent): void =
  fQSlider_virtualbase_mousePressEvent(self.h, ev.h)

type QSlidermousePressEventProc* = proc(ev: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qslider_types.QSlider, slot: QSlidermousePressEventProc) =
  # TODO check subclass
  var tmp = new QSlidermousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_mousePressEvent(self: ptr cQSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QSlider_mousePressEvent ".} =
  var nimfunc = cast[ptr QSlidermousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)


  nimfunc[](slotval1)
proc QSlidermouseReleaseEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QMouseEvent): void =
  fQSlider_virtualbase_mouseReleaseEvent(self.h, ev.h)

type QSlidermouseReleaseEventProc* = proc(ev: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qslider_types.QSlider, slot: QSlidermouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSlidermouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_mouseReleaseEvent(self: ptr cQSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QSlider_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QSlidermouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)


  nimfunc[](slotval1)
proc QSlidermouseMoveEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QMouseEvent): void =
  fQSlider_virtualbase_mouseMoveEvent(self.h, ev.h)

type QSlidermouseMoveEventProc* = proc(ev: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qslider_types.QSlider, slot: QSlidermouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QSlidermouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_mouseMoveEvent(self: ptr cQSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QSlider_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QSlidermouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)


  nimfunc[](slotval1)
proc QSliderinitStyleOption*(self: gen_qslider_types.QSlider, option: gen_qstyleoption_types.QStyleOptionSlider): void =
  fQSlider_virtualbase_initStyleOption(self.h, option.h)

type QSliderinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionSlider): void
proc oninitStyleOption*(self: gen_qslider_types.QSlider, slot: QSliderinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QSliderinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_initStyleOption(self: ptr cQSlider, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QSlider_initStyleOption ".} =
  var nimfunc = cast[ptr QSliderinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSlider(h: option)


  nimfunc[](slotval1)
proc QSlidersliderChange*(self: gen_qslider_types.QSlider, change: cint): void =
  fQSlider_virtualbase_sliderChange(self.h, cint(change))

type QSlidersliderChangeProc* = proc(change: cint): void
proc onsliderChange*(self: gen_qslider_types.QSlider, slot: QSlidersliderChangeProc) =
  # TODO check subclass
  var tmp = new QSlidersliderChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_sliderChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_sliderChange(self: ptr cQSlider, slot: int, change: cint): void {.exportc: "miqt_exec_callback_QSlider_sliderChange ".} =
  var nimfunc = cast[ptr QSlidersliderChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)


  nimfunc[](slotval1)
proc QSliderkeyPressEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QKeyEvent): void =
  fQSlider_virtualbase_keyPressEvent(self.h, ev.h)

type QSliderkeyPressEventProc* = proc(ev: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qslider_types.QSlider, slot: QSliderkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QSliderkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_keyPressEvent(self: ptr cQSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QSlider_keyPressEvent ".} =
  var nimfunc = cast[ptr QSliderkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev)


  nimfunc[](slotval1)
proc QSlidertimerEvent*(self: gen_qslider_types.QSlider, param1: gen_qcoreevent_types.QTimerEvent): void =
  fQSlider_virtualbase_timerEvent(self.h, param1.h)

type QSlidertimerEventProc* = proc(param1: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qslider_types.QSlider, slot: QSlidertimerEventProc) =
  # TODO check subclass
  var tmp = new QSlidertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_timerEvent(self: ptr cQSlider, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSlider_timerEvent ".} =
  var nimfunc = cast[ptr QSlidertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)


  nimfunc[](slotval1)
proc QSliderwheelEvent*(self: gen_qslider_types.QSlider, e: gen_qevent_types.QWheelEvent): void =
  fQSlider_virtualbase_wheelEvent(self.h, e.h)

type QSliderwheelEventProc* = proc(e: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qslider_types.QSlider, slot: QSliderwheelEventProc) =
  # TODO check subclass
  var tmp = new QSliderwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_wheelEvent(self: ptr cQSlider, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QSlider_wheelEvent ".} =
  var nimfunc = cast[ptr QSliderwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QSliderchangeEvent*(self: gen_qslider_types.QSlider, e: gen_qcoreevent_types.QEvent): void =
  fQSlider_virtualbase_changeEvent(self.h, e.h)

type QSliderchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qslider_types.QSlider, slot: QSliderchangeEventProc) =
  # TODO check subclass
  var tmp = new QSliderchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_changeEvent(self: ptr cQSlider, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QSlider_changeEvent ".} =
  var nimfunc = cast[ptr QSliderchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QSliderdevType*(self: gen_qslider_types.QSlider, ): cint =
  fQSlider_virtualbase_devType(self.h)

type QSliderdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qslider_types.QSlider, slot: QSliderdevTypeProc) =
  # TODO check subclass
  var tmp = new QSliderdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_devType(self: ptr cQSlider, slot: int): cint {.exportc: "miqt_exec_callback_QSlider_devType ".} =
  var nimfunc = cast[ptr QSliderdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSlidersetVisible*(self: gen_qslider_types.QSlider, visible: bool): void =
  fQSlider_virtualbase_setVisible(self.h, visible)

type QSlidersetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qslider_types.QSlider, slot: QSlidersetVisibleProc) =
  # TODO check subclass
  var tmp = new QSlidersetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_setVisible(self: ptr cQSlider, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSlider_setVisible ".} =
  var nimfunc = cast[ptr QSlidersetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QSliderheightForWidth*(self: gen_qslider_types.QSlider, param1: cint): cint =
  fQSlider_virtualbase_heightForWidth(self.h, param1)

type QSliderheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qslider_types.QSlider, slot: QSliderheightForWidthProc) =
  # TODO check subclass
  var tmp = new QSliderheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_heightForWidth(self: ptr cQSlider, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSlider_heightForWidth ".} =
  var nimfunc = cast[ptr QSliderheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSliderhasHeightForWidth*(self: gen_qslider_types.QSlider, ): bool =
  fQSlider_virtualbase_hasHeightForWidth(self.h)

type QSliderhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qslider_types.QSlider, slot: QSliderhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QSliderhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_hasHeightForWidth(self: ptr cQSlider, slot: int): bool {.exportc: "miqt_exec_callback_QSlider_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QSliderhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSliderpaintEngine*(self: gen_qslider_types.QSlider, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQSlider_virtualbase_paintEngine(self.h))

type QSliderpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qslider_types.QSlider, slot: QSliderpaintEngineProc) =
  # TODO check subclass
  var tmp = new QSliderpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_paintEngine(self: ptr cQSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QSlider_paintEngine ".} =
  var nimfunc = cast[ptr QSliderpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSlidermouseDoubleClickEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QMouseEvent): void =
  fQSlider_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSlidermouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qslider_types.QSlider, slot: QSlidermouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QSlidermouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_mouseDoubleClickEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QSlidermouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSliderkeyReleaseEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QKeyEvent): void =
  fQSlider_virtualbase_keyReleaseEvent(self.h, event.h)

type QSliderkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qslider_types.QSlider, slot: QSliderkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSliderkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_keyReleaseEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QSliderkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSliderfocusInEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QFocusEvent): void =
  fQSlider_virtualbase_focusInEvent(self.h, event.h)

type QSliderfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qslider_types.QSlider, slot: QSliderfocusInEventProc) =
  # TODO check subclass
  var tmp = new QSliderfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_focusInEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_focusInEvent ".} =
  var nimfunc = cast[ptr QSliderfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSliderfocusOutEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QFocusEvent): void =
  fQSlider_virtualbase_focusOutEvent(self.h, event.h)

type QSliderfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qslider_types.QSlider, slot: QSliderfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QSliderfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_focusOutEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_focusOutEvent ".} =
  var nimfunc = cast[ptr QSliderfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSliderenterEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QEnterEvent): void =
  fQSlider_virtualbase_enterEvent(self.h, event.h)

type QSliderenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qslider_types.QSlider, slot: QSliderenterEventProc) =
  # TODO check subclass
  var tmp = new QSliderenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_enterEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_enterEvent ".} =
  var nimfunc = cast[ptr QSliderenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QSliderleaveEvent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QEvent): void =
  fQSlider_virtualbase_leaveEvent(self.h, event.h)

type QSliderleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qslider_types.QSlider, slot: QSliderleaveEventProc) =
  # TODO check subclass
  var tmp = new QSliderleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_leaveEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_leaveEvent ".} =
  var nimfunc = cast[ptr QSliderleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSlidermoveEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QMoveEvent): void =
  fQSlider_virtualbase_moveEvent(self.h, event.h)

type QSlidermoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qslider_types.QSlider, slot: QSlidermoveEventProc) =
  # TODO check subclass
  var tmp = new QSlidermoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_moveEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_moveEvent ".} =
  var nimfunc = cast[ptr QSlidermoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSliderresizeEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QResizeEvent): void =
  fQSlider_virtualbase_resizeEvent(self.h, event.h)

type QSliderresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qslider_types.QSlider, slot: QSliderresizeEventProc) =
  # TODO check subclass
  var tmp = new QSliderresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_resizeEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_resizeEvent ".} =
  var nimfunc = cast[ptr QSliderresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QSlidercloseEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QCloseEvent): void =
  fQSlider_virtualbase_closeEvent(self.h, event.h)

type QSlidercloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qslider_types.QSlider, slot: QSlidercloseEventProc) =
  # TODO check subclass
  var tmp = new QSlidercloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_closeEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_closeEvent ".} =
  var nimfunc = cast[ptr QSlidercloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QSlidercontextMenuEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QContextMenuEvent): void =
  fQSlider_virtualbase_contextMenuEvent(self.h, event.h)

type QSlidercontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qslider_types.QSlider, slot: QSlidercontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QSlidercontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_contextMenuEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_contextMenuEvent ".} =
  var nimfunc = cast[ptr QSlidercontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QSlidertabletEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QTabletEvent): void =
  fQSlider_virtualbase_tabletEvent(self.h, event.h)

type QSlidertabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qslider_types.QSlider, slot: QSlidertabletEventProc) =
  # TODO check subclass
  var tmp = new QSlidertabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_tabletEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_tabletEvent ".} =
  var nimfunc = cast[ptr QSlidertabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QSlideractionEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QActionEvent): void =
  fQSlider_virtualbase_actionEvent(self.h, event.h)

type QSlideractionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qslider_types.QSlider, slot: QSlideractionEventProc) =
  # TODO check subclass
  var tmp = new QSlideractionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_actionEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_actionEvent ".} =
  var nimfunc = cast[ptr QSlideractionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QSliderdragEnterEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDragEnterEvent): void =
  fQSlider_virtualbase_dragEnterEvent(self.h, event.h)

type QSliderdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qslider_types.QSlider, slot: QSliderdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QSliderdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_dragEnterEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_dragEnterEvent ".} =
  var nimfunc = cast[ptr QSliderdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QSliderdragMoveEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDragMoveEvent): void =
  fQSlider_virtualbase_dragMoveEvent(self.h, event.h)

type QSliderdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qslider_types.QSlider, slot: QSliderdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QSliderdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_dragMoveEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_dragMoveEvent ".} =
  var nimfunc = cast[ptr QSliderdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSliderdragLeaveEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDragLeaveEvent): void =
  fQSlider_virtualbase_dragLeaveEvent(self.h, event.h)

type QSliderdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qslider_types.QSlider, slot: QSliderdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QSliderdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_dragLeaveEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QSliderdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QSliderdropEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDropEvent): void =
  fQSlider_virtualbase_dropEvent(self.h, event.h)

type QSliderdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qslider_types.QSlider, slot: QSliderdropEventProc) =
  # TODO check subclass
  var tmp = new QSliderdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_dropEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_dropEvent ".} =
  var nimfunc = cast[ptr QSliderdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QSlidershowEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QShowEvent): void =
  fQSlider_virtualbase_showEvent(self.h, event.h)

type QSlidershowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qslider_types.QSlider, slot: QSlidershowEventProc) =
  # TODO check subclass
  var tmp = new QSlidershowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_showEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_showEvent ".} =
  var nimfunc = cast[ptr QSlidershowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QSliderhideEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QHideEvent): void =
  fQSlider_virtualbase_hideEvent(self.h, event.h)

type QSliderhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qslider_types.QSlider, slot: QSliderhideEventProc) =
  # TODO check subclass
  var tmp = new QSliderhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_hideEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_hideEvent ".} =
  var nimfunc = cast[ptr QSliderhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QSlidernativeEvent*(self: gen_qslider_types.QSlider, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQSlider_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSlidernativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qslider_types.QSlider, slot: QSlidernativeEventProc) =
  # TODO check subclass
  var tmp = new QSlidernativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_nativeEvent(self: ptr cQSlider, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QSlider_nativeEvent ".} =
  var nimfunc = cast[ptr QSlidernativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSlidermetric*(self: gen_qslider_types.QSlider, param1: cint): cint =
  fQSlider_virtualbase_metric(self.h, cint(param1))

type QSlidermetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qslider_types.QSlider, slot: QSlidermetricProc) =
  # TODO check subclass
  var tmp = new QSlidermetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_metric(self: ptr cQSlider, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSlider_metric ".} =
  var nimfunc = cast[ptr QSlidermetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSliderinitPainter*(self: gen_qslider_types.QSlider, painter: gen_qpainter_types.QPainter): void =
  fQSlider_virtualbase_initPainter(self.h, painter.h)

type QSliderinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qslider_types.QSlider, slot: QSliderinitPainterProc) =
  # TODO check subclass
  var tmp = new QSliderinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_initPainter(self: ptr cQSlider, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSlider_initPainter ".} =
  var nimfunc = cast[ptr QSliderinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QSliderredirected*(self: gen_qslider_types.QSlider, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQSlider_virtualbase_redirected(self.h, offset.h))

type QSliderredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qslider_types.QSlider, slot: QSliderredirectedProc) =
  # TODO check subclass
  var tmp = new QSliderredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_redirected(self: ptr cQSlider, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSlider_redirected ".} =
  var nimfunc = cast[ptr QSliderredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSlidersharedPainter*(self: gen_qslider_types.QSlider, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQSlider_virtualbase_sharedPainter(self.h))

type QSlidersharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qslider_types.QSlider, slot: QSlidersharedPainterProc) =
  # TODO check subclass
  var tmp = new QSlidersharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_sharedPainter(self: ptr cQSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QSlider_sharedPainter ".} =
  var nimfunc = cast[ptr QSlidersharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSliderinputMethodEvent*(self: gen_qslider_types.QSlider, param1: gen_qevent_types.QInputMethodEvent): void =
  fQSlider_virtualbase_inputMethodEvent(self.h, param1.h)

type QSliderinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qslider_types.QSlider, slot: QSliderinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QSliderinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_inputMethodEvent(self: ptr cQSlider, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSlider_inputMethodEvent ".} =
  var nimfunc = cast[ptr QSliderinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QSliderinputMethodQuery*(self: gen_qslider_types.QSlider, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQSlider_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSliderinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qslider_types.QSlider, slot: QSliderinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QSliderinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_inputMethodQuery(self: ptr cQSlider, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSlider_inputMethodQuery ".} =
  var nimfunc = cast[ptr QSliderinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSliderfocusNextPrevChild*(self: gen_qslider_types.QSlider, next: bool): bool =
  fQSlider_virtualbase_focusNextPrevChild(self.h, next)

type QSliderfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qslider_types.QSlider, slot: QSliderfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QSliderfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_focusNextPrevChild(self: ptr cQSlider, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSlider_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QSliderfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSlidereventFilter*(self: gen_qslider_types.QSlider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSlider_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSlidereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qslider_types.QSlider, slot: QSlidereventFilterProc) =
  # TODO check subclass
  var tmp = new QSlidereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_eventFilter(self: ptr cQSlider, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSlider_eventFilter ".} =
  var nimfunc = cast[ptr QSlidereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSliderchildEvent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QChildEvent): void =
  fQSlider_virtualbase_childEvent(self.h, event.h)

type QSliderchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qslider_types.QSlider, slot: QSliderchildEventProc) =
  # TODO check subclass
  var tmp = new QSliderchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_childEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_childEvent ".} =
  var nimfunc = cast[ptr QSliderchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSlidercustomEvent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QEvent): void =
  fQSlider_virtualbase_customEvent(self.h, event.h)

type QSlidercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qslider_types.QSlider, slot: QSlidercustomEventProc) =
  # TODO check subclass
  var tmp = new QSlidercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_customEvent(self: ptr cQSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSlider_customEvent ".} =
  var nimfunc = cast[ptr QSlidercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSliderconnectNotify*(self: gen_qslider_types.QSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSlider_virtualbase_connectNotify(self.h, signal.h)

type QSliderconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qslider_types.QSlider, slot: QSliderconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSliderconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_connectNotify(self: ptr cQSlider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSlider_connectNotify ".} =
  var nimfunc = cast[ptr QSliderconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSliderdisconnectNotify*(self: gen_qslider_types.QSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSlider_virtualbase_disconnectNotify(self.h, signal.h)

type QSliderdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qslider_types.QSlider, slot: QSliderdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSliderdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSlider_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSlider_disconnectNotify(self: ptr cQSlider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSlider_disconnectNotify ".} =
  var nimfunc = cast[ptr QSliderdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qslider_types.QSlider) =
  fcQSlider_delete(self.h)
