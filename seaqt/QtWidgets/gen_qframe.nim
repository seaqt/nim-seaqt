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
{.compile("gen_qframe.cpp", cflags).}


type QFrameShapeEnum* = distinct cint
template NoFrame*(_: type QFrameShapeEnum): untyped = 0
template Box*(_: type QFrameShapeEnum): untyped = 1
template Panel*(_: type QFrameShapeEnum): untyped = 2
template WinPanel*(_: type QFrameShapeEnum): untyped = 3
template HLine*(_: type QFrameShapeEnum): untyped = 4
template VLine*(_: type QFrameShapeEnum): untyped = 5
template StyledPanel*(_: type QFrameShapeEnum): untyped = 6


type QFrameShadowEnum* = distinct cint
template Plain*(_: type QFrameShadowEnum): untyped = 16
template Raised*(_: type QFrameShadowEnum): untyped = 32
template Sunken*(_: type QFrameShadowEnum): untyped = 48


type QFrameStyleMaskEnum* = distinct cint
template Shadow_Mask*(_: type QFrameStyleMaskEnum): untyped = 240
template Shape_Mask*(_: type QFrameStyleMaskEnum): untyped = 15


import ./gen_qframe_types
export gen_qframe_types

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

type cQFrame*{.exportc: "QFrame", incompleteStruct.} = object

proc fcQFrame_new(parent: pointer): ptr cQFrame {.importc: "QFrame_new".}
proc fcQFrame_new2(): ptr cQFrame {.importc: "QFrame_new2".}
proc fcQFrame_new3(parent: pointer, f: cint): ptr cQFrame {.importc: "QFrame_new3".}
proc fcQFrame_metaObject(self: pointer, ): pointer {.importc: "QFrame_metaObject".}
proc fcQFrame_metacast(self: pointer, param1: cstring): pointer {.importc: "QFrame_metacast".}
proc fcQFrame_tr(s: cstring): struct_miqt_string {.importc: "QFrame_tr".}
proc fcQFrame_frameStyle(self: pointer, ): cint {.importc: "QFrame_frameStyle".}
proc fcQFrame_setFrameStyle(self: pointer, frameStyle: cint): void {.importc: "QFrame_setFrameStyle".}
proc fcQFrame_frameWidth(self: pointer, ): cint {.importc: "QFrame_frameWidth".}
proc fcQFrame_sizeHint(self: pointer, ): pointer {.importc: "QFrame_sizeHint".}
proc fcQFrame_frameShape(self: pointer, ): cint {.importc: "QFrame_frameShape".}
proc fcQFrame_setFrameShape(self: pointer, frameShape: cint): void {.importc: "QFrame_setFrameShape".}
proc fcQFrame_frameShadow(self: pointer, ): cint {.importc: "QFrame_frameShadow".}
proc fcQFrame_setFrameShadow(self: pointer, frameShadow: cint): void {.importc: "QFrame_setFrameShadow".}
proc fcQFrame_lineWidth(self: pointer, ): cint {.importc: "QFrame_lineWidth".}
proc fcQFrame_setLineWidth(self: pointer, lineWidth: cint): void {.importc: "QFrame_setLineWidth".}
proc fcQFrame_midLineWidth(self: pointer, ): cint {.importc: "QFrame_midLineWidth".}
proc fcQFrame_setMidLineWidth(self: pointer, midLineWidth: cint): void {.importc: "QFrame_setMidLineWidth".}
proc fcQFrame_frameRect(self: pointer, ): pointer {.importc: "QFrame_frameRect".}
proc fcQFrame_setFrameRect(self: pointer, frameRect: pointer): void {.importc: "QFrame_setFrameRect".}
proc fcQFrame_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFrame_tr2".}
proc fcQFrame_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFrame_tr3".}
proc fQFrame_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFrame_virtualbase_sizeHint".}
proc fcQFrame_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFrame_override_virtual_sizeHint".}
proc fQFrame_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QFrame_virtualbase_event".}
proc fcQFrame_override_virtual_event(self: pointer, slot: int) {.importc: "QFrame_override_virtual_event".}
proc fQFrame_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QFrame_virtualbase_paintEvent".}
proc fcQFrame_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_paintEvent".}
proc fQFrame_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QFrame_virtualbase_changeEvent".}
proc fcQFrame_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_changeEvent".}
proc fQFrame_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QFrame_virtualbase_initStyleOption".}
proc fcQFrame_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QFrame_override_virtual_initStyleOption".}
proc fQFrame_virtualbase_devType(self: pointer, ): cint{.importc: "QFrame_virtualbase_devType".}
proc fcQFrame_override_virtual_devType(self: pointer, slot: int) {.importc: "QFrame_override_virtual_devType".}
proc fQFrame_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QFrame_virtualbase_setVisible".}
proc fcQFrame_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QFrame_override_virtual_setVisible".}
proc fQFrame_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QFrame_virtualbase_minimumSizeHint".}
proc fcQFrame_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QFrame_override_virtual_minimumSizeHint".}
proc fQFrame_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QFrame_virtualbase_heightForWidth".}
proc fcQFrame_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFrame_override_virtual_heightForWidth".}
proc fQFrame_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFrame_virtualbase_hasHeightForWidth".}
proc fcQFrame_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFrame_override_virtual_hasHeightForWidth".}
proc fQFrame_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QFrame_virtualbase_paintEngine".}
proc fcQFrame_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QFrame_override_virtual_paintEngine".}
proc fQFrame_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_mousePressEvent".}
proc fcQFrame_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_mousePressEvent".}
proc fQFrame_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_mouseReleaseEvent".}
proc fcQFrame_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_mouseReleaseEvent".}
proc fQFrame_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_mouseDoubleClickEvent".}
proc fcQFrame_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_mouseDoubleClickEvent".}
proc fQFrame_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_mouseMoveEvent".}
proc fcQFrame_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_mouseMoveEvent".}
proc fQFrame_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_wheelEvent".}
proc fcQFrame_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_wheelEvent".}
proc fQFrame_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_keyPressEvent".}
proc fcQFrame_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_keyPressEvent".}
proc fQFrame_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_keyReleaseEvent".}
proc fcQFrame_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_keyReleaseEvent".}
proc fQFrame_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_focusInEvent".}
proc fcQFrame_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_focusInEvent".}
proc fQFrame_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_focusOutEvent".}
proc fcQFrame_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_focusOutEvent".}
proc fQFrame_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_enterEvent".}
proc fcQFrame_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_enterEvent".}
proc fQFrame_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_leaveEvent".}
proc fcQFrame_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_leaveEvent".}
proc fQFrame_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_moveEvent".}
proc fcQFrame_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_moveEvent".}
proc fQFrame_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_resizeEvent".}
proc fcQFrame_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_resizeEvent".}
proc fQFrame_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_closeEvent".}
proc fcQFrame_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_closeEvent".}
proc fQFrame_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_contextMenuEvent".}
proc fcQFrame_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_contextMenuEvent".}
proc fQFrame_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_tabletEvent".}
proc fcQFrame_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_tabletEvent".}
proc fQFrame_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_actionEvent".}
proc fcQFrame_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_actionEvent".}
proc fQFrame_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_dragEnterEvent".}
proc fcQFrame_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_dragEnterEvent".}
proc fQFrame_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_dragMoveEvent".}
proc fcQFrame_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_dragMoveEvent".}
proc fQFrame_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_dragLeaveEvent".}
proc fcQFrame_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_dragLeaveEvent".}
proc fQFrame_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_dropEvent".}
proc fcQFrame_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_dropEvent".}
proc fQFrame_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_showEvent".}
proc fcQFrame_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_showEvent".}
proc fQFrame_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_hideEvent".}
proc fcQFrame_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_hideEvent".}
proc fQFrame_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QFrame_virtualbase_nativeEvent".}
proc fcQFrame_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_nativeEvent".}
proc fQFrame_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QFrame_virtualbase_metric".}
proc fcQFrame_override_virtual_metric(self: pointer, slot: int) {.importc: "QFrame_override_virtual_metric".}
proc fQFrame_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QFrame_virtualbase_initPainter".}
proc fcQFrame_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QFrame_override_virtual_initPainter".}
proc fQFrame_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QFrame_virtualbase_redirected".}
proc fcQFrame_override_virtual_redirected(self: pointer, slot: int) {.importc: "QFrame_override_virtual_redirected".}
proc fQFrame_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QFrame_virtualbase_sharedPainter".}
proc fcQFrame_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QFrame_override_virtual_sharedPainter".}
proc fQFrame_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QFrame_virtualbase_inputMethodEvent".}
proc fcQFrame_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_inputMethodEvent".}
proc fQFrame_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QFrame_virtualbase_inputMethodQuery".}
proc fcQFrame_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QFrame_override_virtual_inputMethodQuery".}
proc fQFrame_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QFrame_virtualbase_focusNextPrevChild".}
proc fcQFrame_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QFrame_override_virtual_focusNextPrevChild".}
proc fQFrame_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFrame_virtualbase_eventFilter".}
proc fcQFrame_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFrame_override_virtual_eventFilter".}
proc fQFrame_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_timerEvent".}
proc fcQFrame_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_timerEvent".}
proc fQFrame_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_childEvent".}
proc fcQFrame_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_childEvent".}
proc fQFrame_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_customEvent".}
proc fcQFrame_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_customEvent".}
proc fQFrame_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFrame_virtualbase_connectNotify".}
proc fcQFrame_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFrame_override_virtual_connectNotify".}
proc fQFrame_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFrame_virtualbase_disconnectNotify".}
proc fcQFrame_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFrame_override_virtual_disconnectNotify".}
proc fcQFrame_delete(self: pointer) {.importc: "QFrame_delete".}


func init*(T: type gen_qframe_types.QFrame, h: ptr cQFrame): gen_qframe_types.QFrame =
  T(h: h)
proc create*(T: type gen_qframe_types.QFrame, parent: gen_qwidget_types.QWidget): gen_qframe_types.QFrame =
  gen_qframe_types.QFrame.init(fcQFrame_new(parent.h))

proc create*(T: type gen_qframe_types.QFrame, ): gen_qframe_types.QFrame =
  gen_qframe_types.QFrame.init(fcQFrame_new2())

proc create*(T: type gen_qframe_types.QFrame, parent: gen_qwidget_types.QWidget, f: cint): gen_qframe_types.QFrame =
  gen_qframe_types.QFrame.init(fcQFrame_new3(parent.h, cint(f)))

proc metaObject*(self: gen_qframe_types.QFrame, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFrame_metaObject(self.h))

proc metacast*(self: gen_qframe_types.QFrame, param1: cstring): pointer =
  fcQFrame_metacast(self.h, param1)

proc tr*(_: type gen_qframe_types.QFrame, s: cstring): string =
  let v_ms = fcQFrame_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc frameStyle*(self: gen_qframe_types.QFrame, ): cint =
  fcQFrame_frameStyle(self.h)

proc setFrameStyle*(self: gen_qframe_types.QFrame, frameStyle: cint): void =
  fcQFrame_setFrameStyle(self.h, frameStyle)

proc frameWidth*(self: gen_qframe_types.QFrame, ): cint =
  fcQFrame_frameWidth(self.h)

proc sizeHint*(self: gen_qframe_types.QFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFrame_sizeHint(self.h))

proc frameShape*(self: gen_qframe_types.QFrame, ): cint =
  cint(fcQFrame_frameShape(self.h))

proc setFrameShape*(self: gen_qframe_types.QFrame, frameShape: cint): void =
  fcQFrame_setFrameShape(self.h, cint(frameShape))

proc frameShadow*(self: gen_qframe_types.QFrame, ): cint =
  cint(fcQFrame_frameShadow(self.h))

proc setFrameShadow*(self: gen_qframe_types.QFrame, frameShadow: cint): void =
  fcQFrame_setFrameShadow(self.h, cint(frameShadow))

proc lineWidth*(self: gen_qframe_types.QFrame, ): cint =
  fcQFrame_lineWidth(self.h)

proc setLineWidth*(self: gen_qframe_types.QFrame, lineWidth: cint): void =
  fcQFrame_setLineWidth(self.h, lineWidth)

proc midLineWidth*(self: gen_qframe_types.QFrame, ): cint =
  fcQFrame_midLineWidth(self.h)

proc setMidLineWidth*(self: gen_qframe_types.QFrame, midLineWidth: cint): void =
  fcQFrame_setMidLineWidth(self.h, midLineWidth)

proc frameRect*(self: gen_qframe_types.QFrame, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFrame_frameRect(self.h))

proc setFrameRect*(self: gen_qframe_types.QFrame, frameRect: gen_qrect_types.QRect): void =
  fcQFrame_setFrameRect(self.h, frameRect.h)

proc tr*(_: type gen_qframe_types.QFrame, s: cstring, c: cstring): string =
  let v_ms = fcQFrame_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qframe_types.QFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFrame_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QFramesizeHint*(self: gen_qframe_types.QFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFrame_virtualbase_sizeHint(self.h))

type QFramesizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qframe_types.QFrame, slot: QFramesizeHintProc) =
  # TODO check subclass
  var tmp = new QFramesizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_sizeHint(self: ptr cQFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFrame_sizeHint ".} =
  var nimfunc = cast[ptr QFramesizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFrameevent*(self: gen_qframe_types.QFrame, e: gen_qcoreevent_types.QEvent): bool =
  fQFrame_virtualbase_event(self.h, e.h)

type QFrameeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qframe_types.QFrame, slot: QFrameeventProc) =
  # TODO check subclass
  var tmp = new QFrameeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_event(self: ptr cQFrame, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QFrame_event ".} =
  var nimfunc = cast[ptr QFrameeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFramepaintEvent*(self: gen_qframe_types.QFrame, param1: gen_qevent_types.QPaintEvent): void =
  fQFrame_virtualbase_paintEvent(self.h, param1.h)

type QFramepaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qframe_types.QFrame, slot: QFramepaintEventProc) =
  # TODO check subclass
  var tmp = new QFramepaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_paintEvent(self: ptr cQFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFrame_paintEvent ".} =
  var nimfunc = cast[ptr QFramepaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QFramechangeEvent*(self: gen_qframe_types.QFrame, param1: gen_qcoreevent_types.QEvent): void =
  fQFrame_virtualbase_changeEvent(self.h, param1.h)

type QFramechangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qframe_types.QFrame, slot: QFramechangeEventProc) =
  # TODO check subclass
  var tmp = new QFramechangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_changeEvent(self: ptr cQFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFrame_changeEvent ".} =
  var nimfunc = cast[ptr QFramechangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QFrameinitStyleOption*(self: gen_qframe_types.QFrame, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQFrame_virtualbase_initStyleOption(self.h, option.h)

type QFrameinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qframe_types.QFrame, slot: QFrameinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QFrameinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_initStyleOption(self: ptr cQFrame, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QFrame_initStyleOption ".} =
  var nimfunc = cast[ptr QFrameinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QFramedevType*(self: gen_qframe_types.QFrame, ): cint =
  fQFrame_virtualbase_devType(self.h)

type QFramedevTypeProc* = proc(): cint
proc ondevType*(self: gen_qframe_types.QFrame, slot: QFramedevTypeProc) =
  # TODO check subclass
  var tmp = new QFramedevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_devType(self: ptr cQFrame, slot: int): cint {.exportc: "miqt_exec_callback_QFrame_devType ".} =
  var nimfunc = cast[ptr QFramedevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFramesetVisible*(self: gen_qframe_types.QFrame, visible: bool): void =
  fQFrame_virtualbase_setVisible(self.h, visible)

type QFramesetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qframe_types.QFrame, slot: QFramesetVisibleProc) =
  # TODO check subclass
  var tmp = new QFramesetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_setVisible(self: ptr cQFrame, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QFrame_setVisible ".} =
  var nimfunc = cast[ptr QFramesetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QFrameminimumSizeHint*(self: gen_qframe_types.QFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFrame_virtualbase_minimumSizeHint(self.h))

type QFrameminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qframe_types.QFrame, slot: QFrameminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QFrameminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_minimumSizeHint(self: ptr cQFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFrame_minimumSizeHint ".} =
  var nimfunc = cast[ptr QFrameminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFrameheightForWidth*(self: gen_qframe_types.QFrame, param1: cint): cint =
  fQFrame_virtualbase_heightForWidth(self.h, param1)

type QFrameheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qframe_types.QFrame, slot: QFrameheightForWidthProc) =
  # TODO check subclass
  var tmp = new QFrameheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_heightForWidth(self: ptr cQFrame, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFrame_heightForWidth ".} =
  var nimfunc = cast[ptr QFrameheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFramehasHeightForWidth*(self: gen_qframe_types.QFrame, ): bool =
  fQFrame_virtualbase_hasHeightForWidth(self.h)

type QFramehasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qframe_types.QFrame, slot: QFramehasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QFramehasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_hasHeightForWidth(self: ptr cQFrame, slot: int): bool {.exportc: "miqt_exec_callback_QFrame_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QFramehasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFramepaintEngine*(self: gen_qframe_types.QFrame, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQFrame_virtualbase_paintEngine(self.h))

type QFramepaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qframe_types.QFrame, slot: QFramepaintEngineProc) =
  # TODO check subclass
  var tmp = new QFramepaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_paintEngine(self: ptr cQFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFrame_paintEngine ".} =
  var nimfunc = cast[ptr QFramepaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFramemousePressEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fQFrame_virtualbase_mousePressEvent(self.h, event.h)

type QFramemousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qframe_types.QFrame, slot: QFramemousePressEventProc) =
  # TODO check subclass
  var tmp = new QFramemousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_mousePressEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_mousePressEvent ".} =
  var nimfunc = cast[ptr QFramemousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFramemouseReleaseEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fQFrame_virtualbase_mouseReleaseEvent(self.h, event.h)

type QFramemouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qframe_types.QFrame, slot: QFramemouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QFramemouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_mouseReleaseEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QFramemouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFramemouseDoubleClickEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fQFrame_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QFramemouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qframe_types.QFrame, slot: QFramemouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QFramemouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_mouseDoubleClickEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QFramemouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFramemouseMoveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fQFrame_virtualbase_mouseMoveEvent(self.h, event.h)

type QFramemouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qframe_types.QFrame, slot: QFramemouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QFramemouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_mouseMoveEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QFramemouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFramewheelEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QWheelEvent): void =
  fQFrame_virtualbase_wheelEvent(self.h, event.h)

type QFramewheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qframe_types.QFrame, slot: QFramewheelEventProc) =
  # TODO check subclass
  var tmp = new QFramewheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_wheelEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_wheelEvent ".} =
  var nimfunc = cast[ptr QFramewheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QFramekeyPressEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QKeyEvent): void =
  fQFrame_virtualbase_keyPressEvent(self.h, event.h)

type QFramekeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qframe_types.QFrame, slot: QFramekeyPressEventProc) =
  # TODO check subclass
  var tmp = new QFramekeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_keyPressEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_keyPressEvent ".} =
  var nimfunc = cast[ptr QFramekeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QFramekeyReleaseEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QKeyEvent): void =
  fQFrame_virtualbase_keyReleaseEvent(self.h, event.h)

type QFramekeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qframe_types.QFrame, slot: QFramekeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QFramekeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_keyReleaseEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QFramekeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QFramefocusInEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QFocusEvent): void =
  fQFrame_virtualbase_focusInEvent(self.h, event.h)

type QFramefocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qframe_types.QFrame, slot: QFramefocusInEventProc) =
  # TODO check subclass
  var tmp = new QFramefocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_focusInEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_focusInEvent ".} =
  var nimfunc = cast[ptr QFramefocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QFramefocusOutEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QFocusEvent): void =
  fQFrame_virtualbase_focusOutEvent(self.h, event.h)

type QFramefocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qframe_types.QFrame, slot: QFramefocusOutEventProc) =
  # TODO check subclass
  var tmp = new QFramefocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_focusOutEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_focusOutEvent ".} =
  var nimfunc = cast[ptr QFramefocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QFrameenterEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QEnterEvent): void =
  fQFrame_virtualbase_enterEvent(self.h, event.h)

type QFrameenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qframe_types.QFrame, slot: QFrameenterEventProc) =
  # TODO check subclass
  var tmp = new QFrameenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_enterEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_enterEvent ".} =
  var nimfunc = cast[ptr QFrameenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QFrameleaveEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QEvent): void =
  fQFrame_virtualbase_leaveEvent(self.h, event.h)

type QFrameleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qframe_types.QFrame, slot: QFrameleaveEventProc) =
  # TODO check subclass
  var tmp = new QFrameleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_leaveEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_leaveEvent ".} =
  var nimfunc = cast[ptr QFrameleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFramemoveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMoveEvent): void =
  fQFrame_virtualbase_moveEvent(self.h, event.h)

type QFramemoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qframe_types.QFrame, slot: QFramemoveEventProc) =
  # TODO check subclass
  var tmp = new QFramemoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_moveEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_moveEvent ".} =
  var nimfunc = cast[ptr QFramemoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QFrameresizeEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QResizeEvent): void =
  fQFrame_virtualbase_resizeEvent(self.h, event.h)

type QFrameresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qframe_types.QFrame, slot: QFrameresizeEventProc) =
  # TODO check subclass
  var tmp = new QFrameresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_resizeEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_resizeEvent ".} =
  var nimfunc = cast[ptr QFrameresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QFramecloseEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QCloseEvent): void =
  fQFrame_virtualbase_closeEvent(self.h, event.h)

type QFramecloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qframe_types.QFrame, slot: QFramecloseEventProc) =
  # TODO check subclass
  var tmp = new QFramecloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_closeEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_closeEvent ".} =
  var nimfunc = cast[ptr QFramecloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QFramecontextMenuEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QContextMenuEvent): void =
  fQFrame_virtualbase_contextMenuEvent(self.h, event.h)

type QFramecontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qframe_types.QFrame, slot: QFramecontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QFramecontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_contextMenuEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_contextMenuEvent ".} =
  var nimfunc = cast[ptr QFramecontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QFrametabletEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QTabletEvent): void =
  fQFrame_virtualbase_tabletEvent(self.h, event.h)

type QFrametabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qframe_types.QFrame, slot: QFrametabletEventProc) =
  # TODO check subclass
  var tmp = new QFrametabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_tabletEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_tabletEvent ".} =
  var nimfunc = cast[ptr QFrametabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QFrameactionEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QActionEvent): void =
  fQFrame_virtualbase_actionEvent(self.h, event.h)

type QFrameactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qframe_types.QFrame, slot: QFrameactionEventProc) =
  # TODO check subclass
  var tmp = new QFrameactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_actionEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_actionEvent ".} =
  var nimfunc = cast[ptr QFrameactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QFramedragEnterEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDragEnterEvent): void =
  fQFrame_virtualbase_dragEnterEvent(self.h, event.h)

type QFramedragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qframe_types.QFrame, slot: QFramedragEnterEventProc) =
  # TODO check subclass
  var tmp = new QFramedragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_dragEnterEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_dragEnterEvent ".} =
  var nimfunc = cast[ptr QFramedragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QFramedragMoveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDragMoveEvent): void =
  fQFrame_virtualbase_dragMoveEvent(self.h, event.h)

type QFramedragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qframe_types.QFrame, slot: QFramedragMoveEventProc) =
  # TODO check subclass
  var tmp = new QFramedragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_dragMoveEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_dragMoveEvent ".} =
  var nimfunc = cast[ptr QFramedragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QFramedragLeaveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDragLeaveEvent): void =
  fQFrame_virtualbase_dragLeaveEvent(self.h, event.h)

type QFramedragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qframe_types.QFrame, slot: QFramedragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QFramedragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_dragLeaveEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QFramedragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QFramedropEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDropEvent): void =
  fQFrame_virtualbase_dropEvent(self.h, event.h)

type QFramedropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qframe_types.QFrame, slot: QFramedropEventProc) =
  # TODO check subclass
  var tmp = new QFramedropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_dropEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_dropEvent ".} =
  var nimfunc = cast[ptr QFramedropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QFrameshowEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QShowEvent): void =
  fQFrame_virtualbase_showEvent(self.h, event.h)

type QFrameshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qframe_types.QFrame, slot: QFrameshowEventProc) =
  # TODO check subclass
  var tmp = new QFrameshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_showEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_showEvent ".} =
  var nimfunc = cast[ptr QFrameshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QFramehideEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QHideEvent): void =
  fQFrame_virtualbase_hideEvent(self.h, event.h)

type QFramehideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qframe_types.QFrame, slot: QFramehideEventProc) =
  # TODO check subclass
  var tmp = new QFramehideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_hideEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_hideEvent ".} =
  var nimfunc = cast[ptr QFramehideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QFramenativeEvent*(self: gen_qframe_types.QFrame, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQFrame_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QFramenativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qframe_types.QFrame, slot: QFramenativeEventProc) =
  # TODO check subclass
  var tmp = new QFramenativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_nativeEvent(self: ptr cQFrame, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QFrame_nativeEvent ".} =
  var nimfunc = cast[ptr QFramenativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFramemetric*(self: gen_qframe_types.QFrame, param1: cint): cint =
  fQFrame_virtualbase_metric(self.h, cint(param1))

type QFramemetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qframe_types.QFrame, slot: QFramemetricProc) =
  # TODO check subclass
  var tmp = new QFramemetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_metric(self: ptr cQFrame, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFrame_metric ".} =
  var nimfunc = cast[ptr QFramemetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFrameinitPainter*(self: gen_qframe_types.QFrame, painter: gen_qpainter_types.QPainter): void =
  fQFrame_virtualbase_initPainter(self.h, painter.h)

type QFrameinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qframe_types.QFrame, slot: QFrameinitPainterProc) =
  # TODO check subclass
  var tmp = new QFrameinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_initPainter(self: ptr cQFrame, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QFrame_initPainter ".} =
  var nimfunc = cast[ptr QFrameinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QFrameredirected*(self: gen_qframe_types.QFrame, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQFrame_virtualbase_redirected(self.h, offset.h))

type QFrameredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qframe_types.QFrame, slot: QFrameredirectedProc) =
  # TODO check subclass
  var tmp = new QFrameredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_redirected(self: ptr cQFrame, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QFrame_redirected ".} =
  var nimfunc = cast[ptr QFrameredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFramesharedPainter*(self: gen_qframe_types.QFrame, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQFrame_virtualbase_sharedPainter(self.h))

type QFramesharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qframe_types.QFrame, slot: QFramesharedPainterProc) =
  # TODO check subclass
  var tmp = new QFramesharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_sharedPainter(self: ptr cQFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFrame_sharedPainter ".} =
  var nimfunc = cast[ptr QFramesharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFrameinputMethodEvent*(self: gen_qframe_types.QFrame, param1: gen_qevent_types.QInputMethodEvent): void =
  fQFrame_virtualbase_inputMethodEvent(self.h, param1.h)

type QFrameinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qframe_types.QFrame, slot: QFrameinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QFrameinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_inputMethodEvent(self: ptr cQFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFrame_inputMethodEvent ".} =
  var nimfunc = cast[ptr QFrameinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QFrameinputMethodQuery*(self: gen_qframe_types.QFrame, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQFrame_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QFrameinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qframe_types.QFrame, slot: QFrameinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QFrameinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_inputMethodQuery(self: ptr cQFrame, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QFrame_inputMethodQuery ".} =
  var nimfunc = cast[ptr QFrameinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFramefocusNextPrevChild*(self: gen_qframe_types.QFrame, next: bool): bool =
  fQFrame_virtualbase_focusNextPrevChild(self.h, next)

type QFramefocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qframe_types.QFrame, slot: QFramefocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QFramefocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_focusNextPrevChild(self: ptr cQFrame, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QFrame_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QFramefocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFrameeventFilter*(self: gen_qframe_types.QFrame, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQFrame_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFrameeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qframe_types.QFrame, slot: QFrameeventFilterProc) =
  # TODO check subclass
  var tmp = new QFrameeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_eventFilter(self: ptr cQFrame, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFrame_eventFilter ".} =
  var nimfunc = cast[ptr QFrameeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFrametimerEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QTimerEvent): void =
  fQFrame_virtualbase_timerEvent(self.h, event.h)

type QFrametimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qframe_types.QFrame, slot: QFrametimerEventProc) =
  # TODO check subclass
  var tmp = new QFrametimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_timerEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_timerEvent ".} =
  var nimfunc = cast[ptr QFrametimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QFramechildEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QChildEvent): void =
  fQFrame_virtualbase_childEvent(self.h, event.h)

type QFramechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qframe_types.QFrame, slot: QFramechildEventProc) =
  # TODO check subclass
  var tmp = new QFramechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_childEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_childEvent ".} =
  var nimfunc = cast[ptr QFramechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QFramecustomEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QEvent): void =
  fQFrame_virtualbase_customEvent(self.h, event.h)

type QFramecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qframe_types.QFrame, slot: QFramecustomEventProc) =
  # TODO check subclass
  var tmp = new QFramecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_customEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_customEvent ".} =
  var nimfunc = cast[ptr QFramecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFrameconnectNotify*(self: gen_qframe_types.QFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFrame_virtualbase_connectNotify(self.h, signal.h)

type QFrameconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qframe_types.QFrame, slot: QFrameconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFrameconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_connectNotify(self: ptr cQFrame, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFrame_connectNotify ".} =
  var nimfunc = cast[ptr QFrameconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFramedisconnectNotify*(self: gen_qframe_types.QFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFrame_virtualbase_disconnectNotify(self.h, signal.h)

type QFramedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qframe_types.QFrame, slot: QFramedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFramedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_disconnectNotify(self: ptr cQFrame, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFrame_disconnectNotify ".} =
  var nimfunc = cast[ptr QFramedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qframe_types.QFrame) =
  fcQFrame_delete(self.h)
