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
{.compile("gen_qfocusframe.cpp", cflags).}


import ./gen_qfocusframe_types
export gen_qfocusframe_types

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
  ./gen_qwidget
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
  gen_qwidget

type cQFocusFrame*{.exportc: "QFocusFrame", incompleteStruct.} = object

proc fcQFocusFrame_new(parent: pointer): ptr cQFocusFrame {.importc: "QFocusFrame_new".}
proc fcQFocusFrame_new2(): ptr cQFocusFrame {.importc: "QFocusFrame_new2".}
proc fcQFocusFrame_metaObject(self: pointer, ): pointer {.importc: "QFocusFrame_metaObject".}
proc fcQFocusFrame_metacast(self: pointer, param1: cstring): pointer {.importc: "QFocusFrame_metacast".}
proc fcQFocusFrame_tr(s: cstring): struct_miqt_string {.importc: "QFocusFrame_tr".}
proc fcQFocusFrame_trUtf8(s: cstring): struct_miqt_string {.importc: "QFocusFrame_trUtf8".}
proc fcQFocusFrame_setWidget(self: pointer, widget: pointer): void {.importc: "QFocusFrame_setWidget".}
proc fcQFocusFrame_widget(self: pointer, ): pointer {.importc: "QFocusFrame_widget".}
proc fcQFocusFrame_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFocusFrame_tr2".}
proc fcQFocusFrame_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFocusFrame_tr3".}
proc fcQFocusFrame_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFocusFrame_trUtf82".}
proc fcQFocusFrame_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFocusFrame_trUtf83".}
proc fQFocusFrame_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QFocusFrame_virtualbase_event".}
proc fcQFocusFrame_override_virtual_event(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_event".}
proc fQFocusFrame_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QFocusFrame_virtualbase_eventFilter".}
proc fcQFocusFrame_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_eventFilter".}
proc fQFocusFrame_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QFocusFrame_virtualbase_paintEvent".}
proc fcQFocusFrame_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_paintEvent".}
proc fQFocusFrame_virtualbase_devType(self: pointer, ): cint{.importc: "QFocusFrame_virtualbase_devType".}
proc fcQFocusFrame_override_virtual_devType(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_devType".}
proc fQFocusFrame_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QFocusFrame_virtualbase_setVisible".}
proc fcQFocusFrame_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_setVisible".}
proc fQFocusFrame_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFocusFrame_virtualbase_sizeHint".}
proc fcQFocusFrame_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_sizeHint".}
proc fQFocusFrame_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QFocusFrame_virtualbase_minimumSizeHint".}
proc fcQFocusFrame_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_minimumSizeHint".}
proc fQFocusFrame_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QFocusFrame_virtualbase_heightForWidth".}
proc fcQFocusFrame_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_heightForWidth".}
proc fQFocusFrame_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFocusFrame_virtualbase_hasHeightForWidth".}
proc fcQFocusFrame_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_hasHeightForWidth".}
proc fQFocusFrame_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QFocusFrame_virtualbase_paintEngine".}
proc fcQFocusFrame_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_paintEngine".}
proc fQFocusFrame_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_mousePressEvent".}
proc fcQFocusFrame_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_mousePressEvent".}
proc fQFocusFrame_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_mouseReleaseEvent".}
proc fcQFocusFrame_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_mouseReleaseEvent".}
proc fQFocusFrame_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_mouseDoubleClickEvent".}
proc fcQFocusFrame_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_mouseDoubleClickEvent".}
proc fQFocusFrame_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_mouseMoveEvent".}
proc fcQFocusFrame_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_mouseMoveEvent".}
proc fQFocusFrame_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_wheelEvent".}
proc fcQFocusFrame_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_wheelEvent".}
proc fQFocusFrame_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_keyPressEvent".}
proc fcQFocusFrame_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_keyPressEvent".}
proc fQFocusFrame_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_keyReleaseEvent".}
proc fcQFocusFrame_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_keyReleaseEvent".}
proc fQFocusFrame_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_focusInEvent".}
proc fcQFocusFrame_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_focusInEvent".}
proc fQFocusFrame_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_focusOutEvent".}
proc fcQFocusFrame_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_focusOutEvent".}
proc fQFocusFrame_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_enterEvent".}
proc fcQFocusFrame_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_enterEvent".}
proc fQFocusFrame_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_leaveEvent".}
proc fcQFocusFrame_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_leaveEvent".}
proc fQFocusFrame_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_moveEvent".}
proc fcQFocusFrame_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_moveEvent".}
proc fQFocusFrame_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_resizeEvent".}
proc fcQFocusFrame_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_resizeEvent".}
proc fQFocusFrame_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_closeEvent".}
proc fcQFocusFrame_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_closeEvent".}
proc fQFocusFrame_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_contextMenuEvent".}
proc fcQFocusFrame_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_contextMenuEvent".}
proc fQFocusFrame_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_tabletEvent".}
proc fcQFocusFrame_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_tabletEvent".}
proc fQFocusFrame_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_actionEvent".}
proc fcQFocusFrame_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_actionEvent".}
proc fQFocusFrame_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_dragEnterEvent".}
proc fcQFocusFrame_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_dragEnterEvent".}
proc fQFocusFrame_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_dragMoveEvent".}
proc fcQFocusFrame_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_dragMoveEvent".}
proc fQFocusFrame_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_dragLeaveEvent".}
proc fcQFocusFrame_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_dragLeaveEvent".}
proc fQFocusFrame_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_dropEvent".}
proc fcQFocusFrame_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_dropEvent".}
proc fQFocusFrame_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_showEvent".}
proc fcQFocusFrame_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_showEvent".}
proc fQFocusFrame_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_hideEvent".}
proc fcQFocusFrame_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_hideEvent".}
proc fQFocusFrame_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QFocusFrame_virtualbase_nativeEvent".}
proc fcQFocusFrame_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_nativeEvent".}
proc fQFocusFrame_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QFocusFrame_virtualbase_changeEvent".}
proc fcQFocusFrame_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_changeEvent".}
proc fQFocusFrame_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QFocusFrame_virtualbase_metric".}
proc fcQFocusFrame_override_virtual_metric(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_metric".}
proc fQFocusFrame_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QFocusFrame_virtualbase_initPainter".}
proc fcQFocusFrame_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_initPainter".}
proc fQFocusFrame_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QFocusFrame_virtualbase_redirected".}
proc fcQFocusFrame_override_virtual_redirected(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_redirected".}
proc fQFocusFrame_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QFocusFrame_virtualbase_sharedPainter".}
proc fcQFocusFrame_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_sharedPainter".}
proc fQFocusFrame_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QFocusFrame_virtualbase_inputMethodEvent".}
proc fcQFocusFrame_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_inputMethodEvent".}
proc fQFocusFrame_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QFocusFrame_virtualbase_inputMethodQuery".}
proc fcQFocusFrame_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_inputMethodQuery".}
proc fQFocusFrame_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QFocusFrame_virtualbase_focusNextPrevChild".}
proc fcQFocusFrame_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_focusNextPrevChild".}
proc fQFocusFrame_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_timerEvent".}
proc fcQFocusFrame_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_timerEvent".}
proc fQFocusFrame_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_childEvent".}
proc fcQFocusFrame_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_childEvent".}
proc fQFocusFrame_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFocusFrame_virtualbase_customEvent".}
proc fcQFocusFrame_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_customEvent".}
proc fQFocusFrame_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFocusFrame_virtualbase_connectNotify".}
proc fcQFocusFrame_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_connectNotify".}
proc fQFocusFrame_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFocusFrame_virtualbase_disconnectNotify".}
proc fcQFocusFrame_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFocusFrame_override_virtual_disconnectNotify".}
proc fcQFocusFrame_delete(self: pointer) {.importc: "QFocusFrame_delete".}


func init*(T: type gen_qfocusframe_types.QFocusFrame, h: ptr cQFocusFrame): gen_qfocusframe_types.QFocusFrame =
  T(h: h)
proc create*(T: type gen_qfocusframe_types.QFocusFrame, parent: gen_qwidget_types.QWidget): gen_qfocusframe_types.QFocusFrame =
  gen_qfocusframe_types.QFocusFrame.init(fcQFocusFrame_new(parent.h))

proc create*(T: type gen_qfocusframe_types.QFocusFrame, ): gen_qfocusframe_types.QFocusFrame =
  gen_qfocusframe_types.QFocusFrame.init(fcQFocusFrame_new2())

proc metaObject*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFocusFrame_metaObject(self.h))

proc metacast*(self: gen_qfocusframe_types.QFocusFrame, param1: cstring): pointer =
  fcQFocusFrame_metacast(self.h, param1)

proc tr*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring): string =
  let v_ms = fcQFocusFrame_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring): string =
  let v_ms = fcQFocusFrame_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWidget*(self: gen_qfocusframe_types.QFocusFrame, widget: gen_qwidget_types.QWidget): void =
  fcQFocusFrame_setWidget(self.h, widget.h)

proc widget*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQFocusFrame_widget(self.h))

proc tr*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring, c: cstring): string =
  let v_ms = fcQFocusFrame_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFocusFrame_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring, c: cstring): string =
  let v_ms = fcQFocusFrame_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFocusFrame_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QFocusFrameevent*(self: gen_qfocusframe_types.QFocusFrame, e: gen_qcoreevent_types.QEvent): bool =
  fQFocusFrame_virtualbase_event(self.h, e.h)

type QFocusFrameeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameeventProc) =
  # TODO check subclass
  var tmp = new QFocusFrameeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_event(self: ptr cQFocusFrame, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QFocusFrame_event ".} =
  var nimfunc = cast[ptr QFocusFrameeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFocusFrameeventFilter*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQFocusFrame_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QFocusFrameeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameeventFilterProc) =
  # TODO check subclass
  var tmp = new QFocusFrameeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_eventFilter(self: ptr cQFocusFrame, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QFocusFrame_eventFilter ".} =
  var nimfunc = cast[ptr QFocusFrameeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFocusFramepaintEvent*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qevent_types.QPaintEvent): void =
  fQFocusFrame_virtualbase_paintEvent(self.h, param1.h)

type QFocusFramepaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramepaintEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramepaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_paintEvent(self: ptr cQFocusFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_paintEvent ".} =
  var nimfunc = cast[ptr QFocusFramepaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QFocusFramedevType*(self: gen_qfocusframe_types.QFocusFrame, ): cint =
  fQFocusFrame_virtualbase_devType(self.h)

type QFocusFramedevTypeProc* = proc(): cint
proc ondevType*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramedevTypeProc) =
  # TODO check subclass
  var tmp = new QFocusFramedevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_devType(self: ptr cQFocusFrame, slot: int): cint {.exportc: "miqt_exec_callback_QFocusFrame_devType ".} =
  var nimfunc = cast[ptr QFocusFramedevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFocusFramesetVisible*(self: gen_qfocusframe_types.QFocusFrame, visible: bool): void =
  fQFocusFrame_virtualbase_setVisible(self.h, visible)

type QFocusFramesetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramesetVisibleProc) =
  # TODO check subclass
  var tmp = new QFocusFramesetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_setVisible(self: ptr cQFocusFrame, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QFocusFrame_setVisible ".} =
  var nimfunc = cast[ptr QFocusFramesetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QFocusFramesizeHint*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFocusFrame_virtualbase_sizeHint(self.h))

type QFocusFramesizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramesizeHintProc) =
  # TODO check subclass
  var tmp = new QFocusFramesizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_sizeHint(self: ptr cQFocusFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFocusFrame_sizeHint ".} =
  var nimfunc = cast[ptr QFocusFramesizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFocusFrameminimumSizeHint*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFocusFrame_virtualbase_minimumSizeHint(self.h))

type QFocusFrameminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QFocusFrameminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_minimumSizeHint(self: ptr cQFocusFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFocusFrame_minimumSizeHint ".} =
  var nimfunc = cast[ptr QFocusFrameminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFocusFrameheightForWidth*(self: gen_qfocusframe_types.QFocusFrame, param1: cint): cint =
  fQFocusFrame_virtualbase_heightForWidth(self.h, param1)

type QFocusFrameheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameheightForWidthProc) =
  # TODO check subclass
  var tmp = new QFocusFrameheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_heightForWidth(self: ptr cQFocusFrame, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFocusFrame_heightForWidth ".} =
  var nimfunc = cast[ptr QFocusFrameheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFocusFramehasHeightForWidth*(self: gen_qfocusframe_types.QFocusFrame, ): bool =
  fQFocusFrame_virtualbase_hasHeightForWidth(self.h)

type QFocusFramehasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramehasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QFocusFramehasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_hasHeightForWidth(self: ptr cQFocusFrame, slot: int): bool {.exportc: "miqt_exec_callback_QFocusFrame_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QFocusFramehasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFocusFramepaintEngine*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQFocusFrame_virtualbase_paintEngine(self.h))

type QFocusFramepaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramepaintEngineProc) =
  # TODO check subclass
  var tmp = new QFocusFramepaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_paintEngine(self: ptr cQFocusFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFocusFrame_paintEngine ".} =
  var nimfunc = cast[ptr QFocusFramepaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFocusFramemousePressEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fQFocusFrame_virtualbase_mousePressEvent(self.h, event.h)

type QFocusFramemousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramemousePressEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramemousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_mousePressEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_mousePressEvent ".} =
  var nimfunc = cast[ptr QFocusFramemousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramemouseReleaseEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fQFocusFrame_virtualbase_mouseReleaseEvent(self.h, event.h)

type QFocusFramemouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramemouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramemouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_mouseReleaseEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QFocusFramemouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramemouseDoubleClickEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fQFocusFrame_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QFocusFramemouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramemouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramemouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_mouseDoubleClickEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QFocusFramemouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramemouseMoveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fQFocusFrame_virtualbase_mouseMoveEvent(self.h, event.h)

type QFocusFramemouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramemouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramemouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_mouseMoveEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QFocusFramemouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramewheelEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QWheelEvent): void =
  fQFocusFrame_virtualbase_wheelEvent(self.h, event.h)

type QFocusFramewheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramewheelEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramewheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_wheelEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_wheelEvent ".} =
  var nimfunc = cast[ptr QFocusFramewheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramekeyPressEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QKeyEvent): void =
  fQFocusFrame_virtualbase_keyPressEvent(self.h, event.h)

type QFocusFramekeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramekeyPressEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramekeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_keyPressEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_keyPressEvent ".} =
  var nimfunc = cast[ptr QFocusFramekeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramekeyReleaseEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QKeyEvent): void =
  fQFocusFrame_virtualbase_keyReleaseEvent(self.h, event.h)

type QFocusFramekeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramekeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramekeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_keyReleaseEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QFocusFramekeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramefocusInEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QFocusEvent): void =
  fQFocusFrame_virtualbase_focusInEvent(self.h, event.h)

type QFocusFramefocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramefocusInEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramefocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_focusInEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_focusInEvent ".} =
  var nimfunc = cast[ptr QFocusFramefocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramefocusOutEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QFocusEvent): void =
  fQFocusFrame_virtualbase_focusOutEvent(self.h, event.h)

type QFocusFramefocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramefocusOutEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramefocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_focusOutEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_focusOutEvent ".} =
  var nimfunc = cast[ptr QFocusFramefocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFrameenterEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QEvent): void =
  fQFocusFrame_virtualbase_enterEvent(self.h, event.h)

type QFocusFrameenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameenterEventProc) =
  # TODO check subclass
  var tmp = new QFocusFrameenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_enterEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_enterEvent ".} =
  var nimfunc = cast[ptr QFocusFrameenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFrameleaveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QEvent): void =
  fQFocusFrame_virtualbase_leaveEvent(self.h, event.h)

type QFocusFrameleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameleaveEventProc) =
  # TODO check subclass
  var tmp = new QFocusFrameleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_leaveEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_leaveEvent ".} =
  var nimfunc = cast[ptr QFocusFrameleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramemoveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMoveEvent): void =
  fQFocusFrame_virtualbase_moveEvent(self.h, event.h)

type QFocusFramemoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramemoveEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramemoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_moveEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_moveEvent ".} =
  var nimfunc = cast[ptr QFocusFramemoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFrameresizeEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QResizeEvent): void =
  fQFocusFrame_virtualbase_resizeEvent(self.h, event.h)

type QFocusFrameresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameresizeEventProc) =
  # TODO check subclass
  var tmp = new QFocusFrameresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_resizeEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_resizeEvent ".} =
  var nimfunc = cast[ptr QFocusFrameresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramecloseEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QCloseEvent): void =
  fQFocusFrame_virtualbase_closeEvent(self.h, event.h)

type QFocusFramecloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramecloseEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramecloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_closeEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_closeEvent ".} =
  var nimfunc = cast[ptr QFocusFramecloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramecontextMenuEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QContextMenuEvent): void =
  fQFocusFrame_virtualbase_contextMenuEvent(self.h, event.h)

type QFocusFramecontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramecontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramecontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_contextMenuEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_contextMenuEvent ".} =
  var nimfunc = cast[ptr QFocusFramecontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFrametabletEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QTabletEvent): void =
  fQFocusFrame_virtualbase_tabletEvent(self.h, event.h)

type QFocusFrametabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrametabletEventProc) =
  # TODO check subclass
  var tmp = new QFocusFrametabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_tabletEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_tabletEvent ".} =
  var nimfunc = cast[ptr QFocusFrametabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFrameactionEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QActionEvent): void =
  fQFocusFrame_virtualbase_actionEvent(self.h, event.h)

type QFocusFrameactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameactionEventProc) =
  # TODO check subclass
  var tmp = new QFocusFrameactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_actionEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_actionEvent ".} =
  var nimfunc = cast[ptr QFocusFrameactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramedragEnterEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDragEnterEvent): void =
  fQFocusFrame_virtualbase_dragEnterEvent(self.h, event.h)

type QFocusFramedragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramedragEnterEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramedragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_dragEnterEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_dragEnterEvent ".} =
  var nimfunc = cast[ptr QFocusFramedragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramedragMoveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDragMoveEvent): void =
  fQFocusFrame_virtualbase_dragMoveEvent(self.h, event.h)

type QFocusFramedragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramedragMoveEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramedragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_dragMoveEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_dragMoveEvent ".} =
  var nimfunc = cast[ptr QFocusFramedragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramedragLeaveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDragLeaveEvent): void =
  fQFocusFrame_virtualbase_dragLeaveEvent(self.h, event.h)

type QFocusFramedragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramedragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramedragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_dragLeaveEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QFocusFramedragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramedropEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDropEvent): void =
  fQFocusFrame_virtualbase_dropEvent(self.h, event.h)

type QFocusFramedropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramedropEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramedropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_dropEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_dropEvent ".} =
  var nimfunc = cast[ptr QFocusFramedropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFrameshowEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QShowEvent): void =
  fQFocusFrame_virtualbase_showEvent(self.h, event.h)

type QFocusFrameshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameshowEventProc) =
  # TODO check subclass
  var tmp = new QFocusFrameshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_showEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_showEvent ".} =
  var nimfunc = cast[ptr QFocusFrameshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramehideEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QHideEvent): void =
  fQFocusFrame_virtualbase_hideEvent(self.h, event.h)

type QFocusFramehideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramehideEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramehideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_hideEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_hideEvent ".} =
  var nimfunc = cast[ptr QFocusFramehideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramenativeEvent*(self: gen_qfocusframe_types.QFocusFrame, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQFocusFrame_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QFocusFramenativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramenativeEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramenativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_nativeEvent(self: ptr cQFocusFrame, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QFocusFrame_nativeEvent ".} =
  var nimfunc = cast[ptr QFocusFramenativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFocusFramechangeEvent*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qcoreevent_types.QEvent): void =
  fQFocusFrame_virtualbase_changeEvent(self.h, param1.h)

type QFocusFramechangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramechangeEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramechangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_changeEvent(self: ptr cQFocusFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_changeEvent ".} =
  var nimfunc = cast[ptr QFocusFramechangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QFocusFramemetric*(self: gen_qfocusframe_types.QFocusFrame, param1: cint): cint =
  fQFocusFrame_virtualbase_metric(self.h, cint(param1))

type QFocusFramemetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramemetricProc) =
  # TODO check subclass
  var tmp = new QFocusFramemetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_metric(self: ptr cQFocusFrame, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFocusFrame_metric ".} =
  var nimfunc = cast[ptr QFocusFramemetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFocusFrameinitPainter*(self: gen_qfocusframe_types.QFocusFrame, painter: gen_qpainter_types.QPainter): void =
  fQFocusFrame_virtualbase_initPainter(self.h, painter.h)

type QFocusFrameinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameinitPainterProc) =
  # TODO check subclass
  var tmp = new QFocusFrameinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_initPainter(self: ptr cQFocusFrame, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_initPainter ".} =
  var nimfunc = cast[ptr QFocusFrameinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QFocusFrameredirected*(self: gen_qfocusframe_types.QFocusFrame, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQFocusFrame_virtualbase_redirected(self.h, offset.h))

type QFocusFrameredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameredirectedProc) =
  # TODO check subclass
  var tmp = new QFocusFrameredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_redirected(self: ptr cQFocusFrame, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QFocusFrame_redirected ".} =
  var nimfunc = cast[ptr QFocusFrameredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFocusFramesharedPainter*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQFocusFrame_virtualbase_sharedPainter(self.h))

type QFocusFramesharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramesharedPainterProc) =
  # TODO check subclass
  var tmp = new QFocusFramesharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_sharedPainter(self: ptr cQFocusFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFocusFrame_sharedPainter ".} =
  var nimfunc = cast[ptr QFocusFramesharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFocusFrameinputMethodEvent*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qevent_types.QInputMethodEvent): void =
  fQFocusFrame_virtualbase_inputMethodEvent(self.h, param1.h)

type QFocusFrameinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QFocusFrameinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_inputMethodEvent(self: ptr cQFocusFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_inputMethodEvent ".} =
  var nimfunc = cast[ptr QFocusFrameinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QFocusFrameinputMethodQuery*(self: gen_qfocusframe_types.QFocusFrame, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQFocusFrame_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QFocusFrameinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QFocusFrameinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_inputMethodQuery(self: ptr cQFocusFrame, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QFocusFrame_inputMethodQuery ".} =
  var nimfunc = cast[ptr QFocusFrameinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFocusFramefocusNextPrevChild*(self: gen_qfocusframe_types.QFocusFrame, next: bool): bool =
  fQFocusFrame_virtualbase_focusNextPrevChild(self.h, next)

type QFocusFramefocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramefocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QFocusFramefocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_focusNextPrevChild(self: ptr cQFocusFrame, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QFocusFrame_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QFocusFramefocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFocusFrametimerEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QTimerEvent): void =
  fQFocusFrame_virtualbase_timerEvent(self.h, event.h)

type QFocusFrametimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrametimerEventProc) =
  # TODO check subclass
  var tmp = new QFocusFrametimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_timerEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_timerEvent ".} =
  var nimfunc = cast[ptr QFocusFrametimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramechildEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QChildEvent): void =
  fQFocusFrame_virtualbase_childEvent(self.h, event.h)

type QFocusFramechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramechildEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_childEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_childEvent ".} =
  var nimfunc = cast[ptr QFocusFramechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFramecustomEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QEvent): void =
  fQFocusFrame_virtualbase_customEvent(self.h, event.h)

type QFocusFramecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramecustomEventProc) =
  # TODO check subclass
  var tmp = new QFocusFramecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_customEvent(self: ptr cQFocusFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_customEvent ".} =
  var nimfunc = cast[ptr QFocusFramecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFocusFrameconnectNotify*(self: gen_qfocusframe_types.QFocusFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFocusFrame_virtualbase_connectNotify(self.h, signal.h)

type QFocusFrameconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFrameconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFocusFrameconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_connectNotify(self: ptr cQFocusFrame, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_connectNotify ".} =
  var nimfunc = cast[ptr QFocusFrameconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFocusFramedisconnectNotify*(self: gen_qfocusframe_types.QFocusFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFocusFrame_virtualbase_disconnectNotify(self.h, signal.h)

type QFocusFramedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qfocusframe_types.QFocusFrame, slot: QFocusFramedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFocusFramedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusFrame_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusFrame_disconnectNotify(self: ptr cQFocusFrame, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFocusFrame_disconnectNotify ".} =
  var nimfunc = cast[ptr QFocusFramedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qfocusframe_types.QFocusFrame) =
  fcQFocusFrame_delete(self.h)
