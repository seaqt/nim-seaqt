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
{.compile("gen_qdial.cpp", cflags).}


import ./gen_qdial_types
export gen_qdial_types

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
  gen_qwidget_types

type cQDial*{.exportc: "QDial", incompleteStruct.} = object

proc fcQDial_new(parent: pointer): ptr cQDial {.importc: "QDial_new".}
proc fcQDial_new2(): ptr cQDial {.importc: "QDial_new2".}
proc fcQDial_metaObject(self: pointer, ): pointer {.importc: "QDial_metaObject".}
proc fcQDial_metacast(self: pointer, param1: cstring): pointer {.importc: "QDial_metacast".}
proc fcQDial_tr(s: cstring): struct_miqt_string {.importc: "QDial_tr".}
proc fcQDial_trUtf8(s: cstring): struct_miqt_string {.importc: "QDial_trUtf8".}
proc fcQDial_wrapping(self: pointer, ): bool {.importc: "QDial_wrapping".}
proc fcQDial_notchSize(self: pointer, ): cint {.importc: "QDial_notchSize".}
proc fcQDial_setNotchTarget(self: pointer, target: float64): void {.importc: "QDial_setNotchTarget".}
proc fcQDial_notchTarget(self: pointer, ): float64 {.importc: "QDial_notchTarget".}
proc fcQDial_notchesVisible(self: pointer, ): bool {.importc: "QDial_notchesVisible".}
proc fcQDial_sizeHint(self: pointer, ): pointer {.importc: "QDial_sizeHint".}
proc fcQDial_minimumSizeHint(self: pointer, ): pointer {.importc: "QDial_minimumSizeHint".}
proc fcQDial_setNotchesVisible(self: pointer, visible: bool): void {.importc: "QDial_setNotchesVisible".}
proc fcQDial_setWrapping(self: pointer, on: bool): void {.importc: "QDial_setWrapping".}
proc fcQDial_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDial_tr2".}
proc fcQDial_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDial_tr3".}
proc fcQDial_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDial_trUtf82".}
proc fcQDial_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDial_trUtf83".}
proc fQDial_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDial_virtualbase_sizeHint".}
proc fcQDial_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDial_override_virtual_sizeHint".}
proc fQDial_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDial_virtualbase_minimumSizeHint".}
proc fcQDial_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDial_override_virtual_minimumSizeHint".}
proc fQDial_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QDial_virtualbase_event".}
proc fcQDial_override_virtual_event(self: pointer, slot: int) {.importc: "QDial_override_virtual_event".}
proc fQDial_virtualbase_resizeEvent(self: pointer, re: pointer): void{.importc: "QDial_virtualbase_resizeEvent".}
proc fcQDial_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_resizeEvent".}
proc fQDial_virtualbase_paintEvent(self: pointer, pe: pointer): void{.importc: "QDial_virtualbase_paintEvent".}
proc fcQDial_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_paintEvent".}
proc fQDial_virtualbase_mousePressEvent(self: pointer, me: pointer): void{.importc: "QDial_virtualbase_mousePressEvent".}
proc fcQDial_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_mousePressEvent".}
proc fQDial_virtualbase_mouseReleaseEvent(self: pointer, me: pointer): void{.importc: "QDial_virtualbase_mouseReleaseEvent".}
proc fcQDial_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_mouseReleaseEvent".}
proc fQDial_virtualbase_mouseMoveEvent(self: pointer, me: pointer): void{.importc: "QDial_virtualbase_mouseMoveEvent".}
proc fcQDial_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_mouseMoveEvent".}
proc fQDial_virtualbase_sliderChange(self: pointer, change: cint): void{.importc: "QDial_virtualbase_sliderChange".}
proc fcQDial_override_virtual_sliderChange(self: pointer, slot: int) {.importc: "QDial_override_virtual_sliderChange".}
proc fQDial_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QDial_virtualbase_keyPressEvent".}
proc fcQDial_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_keyPressEvent".}
proc fQDial_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QDial_virtualbase_timerEvent".}
proc fcQDial_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_timerEvent".}
proc fQDial_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QDial_virtualbase_wheelEvent".}
proc fcQDial_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_wheelEvent".}
proc fQDial_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QDial_virtualbase_changeEvent".}
proc fcQDial_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_changeEvent".}
proc fQDial_virtualbase_devType(self: pointer, ): cint{.importc: "QDial_virtualbase_devType".}
proc fcQDial_override_virtual_devType(self: pointer, slot: int) {.importc: "QDial_override_virtual_devType".}
proc fQDial_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDial_virtualbase_setVisible".}
proc fcQDial_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDial_override_virtual_setVisible".}
proc fQDial_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDial_virtualbase_heightForWidth".}
proc fcQDial_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDial_override_virtual_heightForWidth".}
proc fQDial_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDial_virtualbase_hasHeightForWidth".}
proc fcQDial_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDial_override_virtual_hasHeightForWidth".}
proc fQDial_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDial_virtualbase_paintEngine".}
proc fcQDial_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDial_override_virtual_paintEngine".}
proc fQDial_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_mouseDoubleClickEvent".}
proc fcQDial_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_mouseDoubleClickEvent".}
proc fQDial_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_keyReleaseEvent".}
proc fcQDial_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_keyReleaseEvent".}
proc fQDial_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_focusInEvent".}
proc fcQDial_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_focusInEvent".}
proc fQDial_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_focusOutEvent".}
proc fcQDial_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_focusOutEvent".}
proc fQDial_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_enterEvent".}
proc fcQDial_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_enterEvent".}
proc fQDial_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_leaveEvent".}
proc fcQDial_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_leaveEvent".}
proc fQDial_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_moveEvent".}
proc fcQDial_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_moveEvent".}
proc fQDial_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_closeEvent".}
proc fcQDial_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_closeEvent".}
proc fQDial_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_contextMenuEvent".}
proc fcQDial_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_contextMenuEvent".}
proc fQDial_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_tabletEvent".}
proc fcQDial_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_tabletEvent".}
proc fQDial_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_actionEvent".}
proc fcQDial_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_actionEvent".}
proc fQDial_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_dragEnterEvent".}
proc fcQDial_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_dragEnterEvent".}
proc fQDial_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_dragMoveEvent".}
proc fcQDial_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_dragMoveEvent".}
proc fQDial_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_dragLeaveEvent".}
proc fcQDial_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_dragLeaveEvent".}
proc fQDial_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_dropEvent".}
proc fcQDial_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_dropEvent".}
proc fQDial_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_showEvent".}
proc fcQDial_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_showEvent".}
proc fQDial_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_hideEvent".}
proc fcQDial_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_hideEvent".}
proc fQDial_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QDial_virtualbase_nativeEvent".}
proc fcQDial_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_nativeEvent".}
proc fQDial_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDial_virtualbase_metric".}
proc fcQDial_override_virtual_metric(self: pointer, slot: int) {.importc: "QDial_override_virtual_metric".}
proc fQDial_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDial_virtualbase_initPainter".}
proc fcQDial_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDial_override_virtual_initPainter".}
proc fQDial_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDial_virtualbase_redirected".}
proc fcQDial_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDial_override_virtual_redirected".}
proc fQDial_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDial_virtualbase_sharedPainter".}
proc fcQDial_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDial_override_virtual_sharedPainter".}
proc fQDial_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDial_virtualbase_inputMethodEvent".}
proc fcQDial_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_inputMethodEvent".}
proc fQDial_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDial_virtualbase_inputMethodQuery".}
proc fcQDial_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDial_override_virtual_inputMethodQuery".}
proc fQDial_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDial_virtualbase_focusNextPrevChild".}
proc fcQDial_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDial_override_virtual_focusNextPrevChild".}
proc fQDial_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDial_virtualbase_eventFilter".}
proc fcQDial_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDial_override_virtual_eventFilter".}
proc fQDial_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_childEvent".}
proc fcQDial_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_childEvent".}
proc fQDial_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDial_virtualbase_customEvent".}
proc fcQDial_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDial_override_virtual_customEvent".}
proc fQDial_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDial_virtualbase_connectNotify".}
proc fcQDial_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDial_override_virtual_connectNotify".}
proc fQDial_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDial_virtualbase_disconnectNotify".}
proc fcQDial_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDial_override_virtual_disconnectNotify".}
proc fcQDial_delete(self: pointer) {.importc: "QDial_delete".}


func init*(T: type gen_qdial_types.QDial, h: ptr cQDial): gen_qdial_types.QDial =
  T(h: h)
proc create*(T: type gen_qdial_types.QDial, parent: gen_qwidget_types.QWidget): gen_qdial_types.QDial =
  gen_qdial_types.QDial.init(fcQDial_new(parent.h))

proc create*(T: type gen_qdial_types.QDial, ): gen_qdial_types.QDial =
  gen_qdial_types.QDial.init(fcQDial_new2())

proc metaObject*(self: gen_qdial_types.QDial, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDial_metaObject(self.h))

proc metacast*(self: gen_qdial_types.QDial, param1: cstring): pointer =
  fcQDial_metacast(self.h, param1)

proc tr*(_: type gen_qdial_types.QDial, s: cstring): string =
  let v_ms = fcQDial_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdial_types.QDial, s: cstring): string =
  let v_ms = fcQDial_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc wrapping*(self: gen_qdial_types.QDial, ): bool =
  fcQDial_wrapping(self.h)

proc notchSize*(self: gen_qdial_types.QDial, ): cint =
  fcQDial_notchSize(self.h)

proc setNotchTarget*(self: gen_qdial_types.QDial, target: float64): void =
  fcQDial_setNotchTarget(self.h, target)

proc notchTarget*(self: gen_qdial_types.QDial, ): float64 =
  fcQDial_notchTarget(self.h)

proc notchesVisible*(self: gen_qdial_types.QDial, ): bool =
  fcQDial_notchesVisible(self.h)

proc sizeHint*(self: gen_qdial_types.QDial, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDial_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qdial_types.QDial, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDial_minimumSizeHint(self.h))

proc setNotchesVisible*(self: gen_qdial_types.QDial, visible: bool): void =
  fcQDial_setNotchesVisible(self.h, visible)

proc setWrapping*(self: gen_qdial_types.QDial, on: bool): void =
  fcQDial_setWrapping(self.h, on)

proc tr*(_: type gen_qdial_types.QDial, s: cstring, c: cstring): string =
  let v_ms = fcQDial_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdial_types.QDial, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDial_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdial_types.QDial, s: cstring, c: cstring): string =
  let v_ms = fcQDial_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdial_types.QDial, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDial_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QDialsizeHint*(self: gen_qdial_types.QDial, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDial_virtualbase_sizeHint(self.h))

type QDialsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qdial_types.QDial, slot: QDialsizeHintProc) =
  # TODO check subclass
  var tmp = new QDialsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_sizeHint(self: ptr cQDial, slot: int): pointer {.exportc: "miqt_exec_callback_QDial_sizeHint ".} =
  var nimfunc = cast[ptr QDialsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialminimumSizeHint*(self: gen_qdial_types.QDial, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDial_virtualbase_minimumSizeHint(self.h))

type QDialminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qdial_types.QDial, slot: QDialminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QDialminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_minimumSizeHint(self: ptr cQDial, slot: int): pointer {.exportc: "miqt_exec_callback_QDial_minimumSizeHint ".} =
  var nimfunc = cast[ptr QDialminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialevent*(self: gen_qdial_types.QDial, e: gen_qcoreevent_types.QEvent): bool =
  fQDial_virtualbase_event(self.h, e.h)

type QDialeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdial_types.QDial, slot: QDialeventProc) =
  # TODO check subclass
  var tmp = new QDialeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_event(self: ptr cQDial, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QDial_event ".} =
  var nimfunc = cast[ptr QDialeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialresizeEvent*(self: gen_qdial_types.QDial, re: gen_qevent_types.QResizeEvent): void =
  fQDial_virtualbase_resizeEvent(self.h, re.h)

type QDialresizeEventProc* = proc(re: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qdial_types.QDial, slot: QDialresizeEventProc) =
  # TODO check subclass
  var tmp = new QDialresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_resizeEvent(self: ptr cQDial, slot: int, re: pointer): void {.exportc: "miqt_exec_callback_QDial_resizeEvent ".} =
  var nimfunc = cast[ptr QDialresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: re)


  nimfunc[](slotval1)
proc QDialpaintEvent*(self: gen_qdial_types.QDial, pe: gen_qevent_types.QPaintEvent): void =
  fQDial_virtualbase_paintEvent(self.h, pe.h)

type QDialpaintEventProc* = proc(pe: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qdial_types.QDial, slot: QDialpaintEventProc) =
  # TODO check subclass
  var tmp = new QDialpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_paintEvent(self: ptr cQDial, slot: int, pe: pointer): void {.exportc: "miqt_exec_callback_QDial_paintEvent ".} =
  var nimfunc = cast[ptr QDialpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: pe)


  nimfunc[](slotval1)
proc QDialmousePressEvent*(self: gen_qdial_types.QDial, me: gen_qevent_types.QMouseEvent): void =
  fQDial_virtualbase_mousePressEvent(self.h, me.h)

type QDialmousePressEventProc* = proc(me: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qdial_types.QDial, slot: QDialmousePressEventProc) =
  # TODO check subclass
  var tmp = new QDialmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_mousePressEvent(self: ptr cQDial, slot: int, me: pointer): void {.exportc: "miqt_exec_callback_QDial_mousePressEvent ".} =
  var nimfunc = cast[ptr QDialmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: me)


  nimfunc[](slotval1)
proc QDialmouseReleaseEvent*(self: gen_qdial_types.QDial, me: gen_qevent_types.QMouseEvent): void =
  fQDial_virtualbase_mouseReleaseEvent(self.h, me.h)

type QDialmouseReleaseEventProc* = proc(me: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qdial_types.QDial, slot: QDialmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDialmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_mouseReleaseEvent(self: ptr cQDial, slot: int, me: pointer): void {.exportc: "miqt_exec_callback_QDial_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QDialmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: me)


  nimfunc[](slotval1)
proc QDialmouseMoveEvent*(self: gen_qdial_types.QDial, me: gen_qevent_types.QMouseEvent): void =
  fQDial_virtualbase_mouseMoveEvent(self.h, me.h)

type QDialmouseMoveEventProc* = proc(me: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qdial_types.QDial, slot: QDialmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QDialmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_mouseMoveEvent(self: ptr cQDial, slot: int, me: pointer): void {.exportc: "miqt_exec_callback_QDial_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QDialmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: me)


  nimfunc[](slotval1)
proc QDialsliderChange*(self: gen_qdial_types.QDial, change: cint): void =
  fQDial_virtualbase_sliderChange(self.h, cint(change))

type QDialsliderChangeProc* = proc(change: cint): void
proc onsliderChange*(self: gen_qdial_types.QDial, slot: QDialsliderChangeProc) =
  # TODO check subclass
  var tmp = new QDialsliderChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_sliderChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_sliderChange(self: ptr cQDial, slot: int, change: cint): void {.exportc: "miqt_exec_callback_QDial_sliderChange ".} =
  var nimfunc = cast[ptr QDialsliderChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)


  nimfunc[](slotval1)
proc QDialkeyPressEvent*(self: gen_qdial_types.QDial, ev: gen_qevent_types.QKeyEvent): void =
  fQDial_virtualbase_keyPressEvent(self.h, ev.h)

type QDialkeyPressEventProc* = proc(ev: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qdial_types.QDial, slot: QDialkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QDialkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_keyPressEvent(self: ptr cQDial, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QDial_keyPressEvent ".} =
  var nimfunc = cast[ptr QDialkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev)


  nimfunc[](slotval1)
proc QDialtimerEvent*(self: gen_qdial_types.QDial, param1: gen_qcoreevent_types.QTimerEvent): void =
  fQDial_virtualbase_timerEvent(self.h, param1.h)

type QDialtimerEventProc* = proc(param1: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdial_types.QDial, slot: QDialtimerEventProc) =
  # TODO check subclass
  var tmp = new QDialtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_timerEvent(self: ptr cQDial, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDial_timerEvent ".} =
  var nimfunc = cast[ptr QDialtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)


  nimfunc[](slotval1)
proc QDialwheelEvent*(self: gen_qdial_types.QDial, e: gen_qevent_types.QWheelEvent): void =
  fQDial_virtualbase_wheelEvent(self.h, e.h)

type QDialwheelEventProc* = proc(e: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qdial_types.QDial, slot: QDialwheelEventProc) =
  # TODO check subclass
  var tmp = new QDialwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_wheelEvent(self: ptr cQDial, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QDial_wheelEvent ".} =
  var nimfunc = cast[ptr QDialwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QDialchangeEvent*(self: gen_qdial_types.QDial, e: gen_qcoreevent_types.QEvent): void =
  fQDial_virtualbase_changeEvent(self.h, e.h)

type QDialchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qdial_types.QDial, slot: QDialchangeEventProc) =
  # TODO check subclass
  var tmp = new QDialchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_changeEvent(self: ptr cQDial, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QDial_changeEvent ".} =
  var nimfunc = cast[ptr QDialchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QDialdevType*(self: gen_qdial_types.QDial, ): cint =
  fQDial_virtualbase_devType(self.h)

type QDialdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qdial_types.QDial, slot: QDialdevTypeProc) =
  # TODO check subclass
  var tmp = new QDialdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_devType(self: ptr cQDial, slot: int): cint {.exportc: "miqt_exec_callback_QDial_devType ".} =
  var nimfunc = cast[ptr QDialdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDialsetVisible*(self: gen_qdial_types.QDial, visible: bool): void =
  fQDial_virtualbase_setVisible(self.h, visible)

type QDialsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qdial_types.QDial, slot: QDialsetVisibleProc) =
  # TODO check subclass
  var tmp = new QDialsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_setVisible(self: ptr cQDial, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDial_setVisible ".} =
  var nimfunc = cast[ptr QDialsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QDialheightForWidth*(self: gen_qdial_types.QDial, param1: cint): cint =
  fQDial_virtualbase_heightForWidth(self.h, param1)

type QDialheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qdial_types.QDial, slot: QDialheightForWidthProc) =
  # TODO check subclass
  var tmp = new QDialheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_heightForWidth(self: ptr cQDial, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDial_heightForWidth ".} =
  var nimfunc = cast[ptr QDialheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialhasHeightForWidth*(self: gen_qdial_types.QDial, ): bool =
  fQDial_virtualbase_hasHeightForWidth(self.h)

type QDialhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qdial_types.QDial, slot: QDialhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QDialhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_hasHeightForWidth(self: ptr cQDial, slot: int): bool {.exportc: "miqt_exec_callback_QDial_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QDialhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDialpaintEngine*(self: gen_qdial_types.QDial, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQDial_virtualbase_paintEngine(self.h))

type QDialpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qdial_types.QDial, slot: QDialpaintEngineProc) =
  # TODO check subclass
  var tmp = new QDialpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_paintEngine(self: ptr cQDial, slot: int): pointer {.exportc: "miqt_exec_callback_QDial_paintEngine ".} =
  var nimfunc = cast[ptr QDialpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialmouseDoubleClickEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QMouseEvent): void =
  fQDial_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDialmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qdial_types.QDial, slot: QDialmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QDialmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_mouseDoubleClickEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QDialmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDialkeyReleaseEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QKeyEvent): void =
  fQDial_virtualbase_keyReleaseEvent(self.h, event.h)

type QDialkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qdial_types.QDial, slot: QDialkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDialkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_keyReleaseEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QDialkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDialfocusInEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QFocusEvent): void =
  fQDial_virtualbase_focusInEvent(self.h, event.h)

type QDialfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qdial_types.QDial, slot: QDialfocusInEventProc) =
  # TODO check subclass
  var tmp = new QDialfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_focusInEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_focusInEvent ".} =
  var nimfunc = cast[ptr QDialfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDialfocusOutEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QFocusEvent): void =
  fQDial_virtualbase_focusOutEvent(self.h, event.h)

type QDialfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qdial_types.QDial, slot: QDialfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QDialfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_focusOutEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_focusOutEvent ".} =
  var nimfunc = cast[ptr QDialfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDialenterEvent*(self: gen_qdial_types.QDial, event: gen_qcoreevent_types.QEvent): void =
  fQDial_virtualbase_enterEvent(self.h, event.h)

type QDialenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qdial_types.QDial, slot: QDialenterEventProc) =
  # TODO check subclass
  var tmp = new QDialenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_enterEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_enterEvent ".} =
  var nimfunc = cast[ptr QDialenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDialleaveEvent*(self: gen_qdial_types.QDial, event: gen_qcoreevent_types.QEvent): void =
  fQDial_virtualbase_leaveEvent(self.h, event.h)

type QDialleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qdial_types.QDial, slot: QDialleaveEventProc) =
  # TODO check subclass
  var tmp = new QDialleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_leaveEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_leaveEvent ".} =
  var nimfunc = cast[ptr QDialleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDialmoveEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QMoveEvent): void =
  fQDial_virtualbase_moveEvent(self.h, event.h)

type QDialmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qdial_types.QDial, slot: QDialmoveEventProc) =
  # TODO check subclass
  var tmp = new QDialmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_moveEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_moveEvent ".} =
  var nimfunc = cast[ptr QDialmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDialcloseEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QCloseEvent): void =
  fQDial_virtualbase_closeEvent(self.h, event.h)

type QDialcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qdial_types.QDial, slot: QDialcloseEventProc) =
  # TODO check subclass
  var tmp = new QDialcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_closeEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_closeEvent ".} =
  var nimfunc = cast[ptr QDialcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QDialcontextMenuEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QContextMenuEvent): void =
  fQDial_virtualbase_contextMenuEvent(self.h, event.h)

type QDialcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qdial_types.QDial, slot: QDialcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QDialcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_contextMenuEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_contextMenuEvent ".} =
  var nimfunc = cast[ptr QDialcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QDialtabletEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QTabletEvent): void =
  fQDial_virtualbase_tabletEvent(self.h, event.h)

type QDialtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qdial_types.QDial, slot: QDialtabletEventProc) =
  # TODO check subclass
  var tmp = new QDialtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_tabletEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_tabletEvent ".} =
  var nimfunc = cast[ptr QDialtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QDialactionEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QActionEvent): void =
  fQDial_virtualbase_actionEvent(self.h, event.h)

type QDialactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qdial_types.QDial, slot: QDialactionEventProc) =
  # TODO check subclass
  var tmp = new QDialactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_actionEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_actionEvent ".} =
  var nimfunc = cast[ptr QDialactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QDialdragEnterEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDragEnterEvent): void =
  fQDial_virtualbase_dragEnterEvent(self.h, event.h)

type QDialdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qdial_types.QDial, slot: QDialdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QDialdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_dragEnterEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_dragEnterEvent ".} =
  var nimfunc = cast[ptr QDialdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDialdragMoveEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDragMoveEvent): void =
  fQDial_virtualbase_dragMoveEvent(self.h, event.h)

type QDialdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qdial_types.QDial, slot: QDialdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QDialdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_dragMoveEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_dragMoveEvent ".} =
  var nimfunc = cast[ptr QDialdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDialdragLeaveEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDragLeaveEvent): void =
  fQDial_virtualbase_dragLeaveEvent(self.h, event.h)

type QDialdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qdial_types.QDial, slot: QDialdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QDialdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_dragLeaveEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QDialdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QDialdropEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDropEvent): void =
  fQDial_virtualbase_dropEvent(self.h, event.h)

type QDialdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qdial_types.QDial, slot: QDialdropEventProc) =
  # TODO check subclass
  var tmp = new QDialdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_dropEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_dropEvent ".} =
  var nimfunc = cast[ptr QDialdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QDialshowEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QShowEvent): void =
  fQDial_virtualbase_showEvent(self.h, event.h)

type QDialshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qdial_types.QDial, slot: QDialshowEventProc) =
  # TODO check subclass
  var tmp = new QDialshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_showEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_showEvent ".} =
  var nimfunc = cast[ptr QDialshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QDialhideEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QHideEvent): void =
  fQDial_virtualbase_hideEvent(self.h, event.h)

type QDialhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qdial_types.QDial, slot: QDialhideEventProc) =
  # TODO check subclass
  var tmp = new QDialhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_hideEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_hideEvent ".} =
  var nimfunc = cast[ptr QDialhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QDialnativeEvent*(self: gen_qdial_types.QDial, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQDial_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDialnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qdial_types.QDial, slot: QDialnativeEventProc) =
  # TODO check subclass
  var tmp = new QDialnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_nativeEvent(self: ptr cQDial, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QDial_nativeEvent ".} =
  var nimfunc = cast[ptr QDialnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDialmetric*(self: gen_qdial_types.QDial, param1: cint): cint =
  fQDial_virtualbase_metric(self.h, cint(param1))

type QDialmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qdial_types.QDial, slot: QDialmetricProc) =
  # TODO check subclass
  var tmp = new QDialmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_metric(self: ptr cQDial, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDial_metric ".} =
  var nimfunc = cast[ptr QDialmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialinitPainter*(self: gen_qdial_types.QDial, painter: gen_qpainter_types.QPainter): void =
  fQDial_virtualbase_initPainter(self.h, painter.h)

type QDialinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qdial_types.QDial, slot: QDialinitPainterProc) =
  # TODO check subclass
  var tmp = new QDialinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_initPainter(self: ptr cQDial, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDial_initPainter ".} =
  var nimfunc = cast[ptr QDialinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QDialredirected*(self: gen_qdial_types.QDial, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQDial_virtualbase_redirected(self.h, offset.h))

type QDialredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qdial_types.QDial, slot: QDialredirectedProc) =
  # TODO check subclass
  var tmp = new QDialredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_redirected(self: ptr cQDial, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDial_redirected ".} =
  var nimfunc = cast[ptr QDialredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDialsharedPainter*(self: gen_qdial_types.QDial, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQDial_virtualbase_sharedPainter(self.h))

type QDialsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qdial_types.QDial, slot: QDialsharedPainterProc) =
  # TODO check subclass
  var tmp = new QDialsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_sharedPainter(self: ptr cQDial, slot: int): pointer {.exportc: "miqt_exec_callback_QDial_sharedPainter ".} =
  var nimfunc = cast[ptr QDialsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialinputMethodEvent*(self: gen_qdial_types.QDial, param1: gen_qevent_types.QInputMethodEvent): void =
  fQDial_virtualbase_inputMethodEvent(self.h, param1.h)

type QDialinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qdial_types.QDial, slot: QDialinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QDialinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_inputMethodEvent(self: ptr cQDial, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDial_inputMethodEvent ".} =
  var nimfunc = cast[ptr QDialinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QDialinputMethodQuery*(self: gen_qdial_types.QDial, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQDial_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDialinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qdial_types.QDial, slot: QDialinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QDialinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_inputMethodQuery(self: ptr cQDial, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDial_inputMethodQuery ".} =
  var nimfunc = cast[ptr QDialinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDialfocusNextPrevChild*(self: gen_qdial_types.QDial, next: bool): bool =
  fQDial_virtualbase_focusNextPrevChild(self.h, next)

type QDialfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qdial_types.QDial, slot: QDialfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QDialfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_focusNextPrevChild(self: ptr cQDial, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDial_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QDialfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialeventFilter*(self: gen_qdial_types.QDial, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDial_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDialeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdial_types.QDial, slot: QDialeventFilterProc) =
  # TODO check subclass
  var tmp = new QDialeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_eventFilter(self: ptr cQDial, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDial_eventFilter ".} =
  var nimfunc = cast[ptr QDialeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDialchildEvent*(self: gen_qdial_types.QDial, event: gen_qcoreevent_types.QChildEvent): void =
  fQDial_virtualbase_childEvent(self.h, event.h)

type QDialchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdial_types.QDial, slot: QDialchildEventProc) =
  # TODO check subclass
  var tmp = new QDialchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_childEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_childEvent ".} =
  var nimfunc = cast[ptr QDialchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDialcustomEvent*(self: gen_qdial_types.QDial, event: gen_qcoreevent_types.QEvent): void =
  fQDial_virtualbase_customEvent(self.h, event.h)

type QDialcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdial_types.QDial, slot: QDialcustomEventProc) =
  # TODO check subclass
  var tmp = new QDialcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_customEvent(self: ptr cQDial, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDial_customEvent ".} =
  var nimfunc = cast[ptr QDialcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDialconnectNotify*(self: gen_qdial_types.QDial, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDial_virtualbase_connectNotify(self.h, signal.h)

type QDialconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdial_types.QDial, slot: QDialconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDialconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_connectNotify(self: ptr cQDial, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDial_connectNotify ".} =
  var nimfunc = cast[ptr QDialconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDialdisconnectNotify*(self: gen_qdial_types.QDial, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDial_virtualbase_disconnectNotify(self.h, signal.h)

type QDialdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdial_types.QDial, slot: QDialdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDialdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDial_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDial_disconnectNotify(self: ptr cQDial, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDial_disconnectNotify ".} =
  var nimfunc = cast[ptr QDialdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qdial_types.QDial) =
  fcQDial_delete(self.h)
