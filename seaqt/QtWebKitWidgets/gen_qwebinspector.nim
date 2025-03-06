import ./Qt5WebKitWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKitWidgets")  & " -fPIC"
{.compile("gen_qwebinspector.cpp", cflags).}


import ./gen_qwebinspector_types
export gen_qwebinspector_types

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
  ../QtWidgets/gen_qwidget,
  ./gen_qwebpage_types
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
  gen_qwidget,
  gen_qwebpage_types

type cQWebInspector*{.exportc: "QWebInspector", incompleteStruct.} = object

proc fcQWebInspector_new(parent: pointer): ptr cQWebInspector {.importc: "QWebInspector_new".}
proc fcQWebInspector_new2(): ptr cQWebInspector {.importc: "QWebInspector_new2".}
proc fcQWebInspector_metaObject(self: pointer, ): pointer {.importc: "QWebInspector_metaObject".}
proc fcQWebInspector_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebInspector_metacast".}
proc fcQWebInspector_tr(s: cstring): struct_miqt_string {.importc: "QWebInspector_tr".}
proc fcQWebInspector_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebInspector_trUtf8".}
proc fcQWebInspector_setPage(self: pointer, page: pointer): void {.importc: "QWebInspector_setPage".}
proc fcQWebInspector_page(self: pointer, ): pointer {.importc: "QWebInspector_page".}
proc fcQWebInspector_sizeHint(self: pointer, ): pointer {.importc: "QWebInspector_sizeHint".}
proc fcQWebInspector_event(self: pointer, param1: pointer): bool {.importc: "QWebInspector_event".}
proc fcQWebInspector_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebInspector_tr2".}
proc fcQWebInspector_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebInspector_tr3".}
proc fcQWebInspector_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebInspector_trUtf82".}
proc fcQWebInspector_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebInspector_trUtf83".}
proc fQWebInspector_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWebInspector_virtualbase_sizeHint".}
proc fcQWebInspector_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_sizeHint".}
proc fQWebInspector_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWebInspector_virtualbase_event".}
proc fcQWebInspector_override_virtual_event(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_event".}
proc fQWebInspector_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_resizeEvent".}
proc fcQWebInspector_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_resizeEvent".}
proc fQWebInspector_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_showEvent".}
proc fcQWebInspector_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_showEvent".}
proc fQWebInspector_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_hideEvent".}
proc fcQWebInspector_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_hideEvent".}
proc fQWebInspector_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_closeEvent".}
proc fcQWebInspector_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_closeEvent".}
proc fQWebInspector_virtualbase_devType(self: pointer, ): cint{.importc: "QWebInspector_virtualbase_devType".}
proc fcQWebInspector_override_virtual_devType(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_devType".}
proc fQWebInspector_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWebInspector_virtualbase_setVisible".}
proc fcQWebInspector_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_setVisible".}
proc fQWebInspector_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWebInspector_virtualbase_minimumSizeHint".}
proc fcQWebInspector_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_minimumSizeHint".}
proc fQWebInspector_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWebInspector_virtualbase_heightForWidth".}
proc fcQWebInspector_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_heightForWidth".}
proc fQWebInspector_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWebInspector_virtualbase_hasHeightForWidth".}
proc fcQWebInspector_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_hasHeightForWidth".}
proc fQWebInspector_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWebInspector_virtualbase_paintEngine".}
proc fcQWebInspector_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_paintEngine".}
proc fQWebInspector_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_mousePressEvent".}
proc fcQWebInspector_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_mousePressEvent".}
proc fQWebInspector_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_mouseReleaseEvent".}
proc fcQWebInspector_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_mouseReleaseEvent".}
proc fQWebInspector_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_mouseDoubleClickEvent".}
proc fcQWebInspector_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_mouseDoubleClickEvent".}
proc fQWebInspector_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_mouseMoveEvent".}
proc fcQWebInspector_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_mouseMoveEvent".}
proc fQWebInspector_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_wheelEvent".}
proc fcQWebInspector_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_wheelEvent".}
proc fQWebInspector_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_keyPressEvent".}
proc fcQWebInspector_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_keyPressEvent".}
proc fQWebInspector_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_keyReleaseEvent".}
proc fcQWebInspector_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_keyReleaseEvent".}
proc fQWebInspector_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_focusInEvent".}
proc fcQWebInspector_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_focusInEvent".}
proc fQWebInspector_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_focusOutEvent".}
proc fcQWebInspector_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_focusOutEvent".}
proc fQWebInspector_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_enterEvent".}
proc fcQWebInspector_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_enterEvent".}
proc fQWebInspector_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_leaveEvent".}
proc fcQWebInspector_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_leaveEvent".}
proc fQWebInspector_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_paintEvent".}
proc fcQWebInspector_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_paintEvent".}
proc fQWebInspector_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_moveEvent".}
proc fcQWebInspector_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_moveEvent".}
proc fQWebInspector_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_contextMenuEvent".}
proc fcQWebInspector_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_contextMenuEvent".}
proc fQWebInspector_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_tabletEvent".}
proc fcQWebInspector_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_tabletEvent".}
proc fQWebInspector_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_actionEvent".}
proc fcQWebInspector_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_actionEvent".}
proc fQWebInspector_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_dragEnterEvent".}
proc fcQWebInspector_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_dragEnterEvent".}
proc fQWebInspector_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_dragMoveEvent".}
proc fcQWebInspector_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_dragMoveEvent".}
proc fQWebInspector_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_dragLeaveEvent".}
proc fcQWebInspector_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_dragLeaveEvent".}
proc fQWebInspector_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_dropEvent".}
proc fcQWebInspector_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_dropEvent".}
proc fQWebInspector_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QWebInspector_virtualbase_nativeEvent".}
proc fcQWebInspector_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_nativeEvent".}
proc fQWebInspector_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWebInspector_virtualbase_changeEvent".}
proc fcQWebInspector_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_changeEvent".}
proc fQWebInspector_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWebInspector_virtualbase_metric".}
proc fcQWebInspector_override_virtual_metric(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_metric".}
proc fQWebInspector_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWebInspector_virtualbase_initPainter".}
proc fcQWebInspector_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_initPainter".}
proc fQWebInspector_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWebInspector_virtualbase_redirected".}
proc fcQWebInspector_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_redirected".}
proc fQWebInspector_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWebInspector_virtualbase_sharedPainter".}
proc fcQWebInspector_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_sharedPainter".}
proc fQWebInspector_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWebInspector_virtualbase_inputMethodEvent".}
proc fcQWebInspector_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_inputMethodEvent".}
proc fQWebInspector_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QWebInspector_virtualbase_inputMethodQuery".}
proc fcQWebInspector_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_inputMethodQuery".}
proc fQWebInspector_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWebInspector_virtualbase_focusNextPrevChild".}
proc fcQWebInspector_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_focusNextPrevChild".}
proc fQWebInspector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebInspector_virtualbase_eventFilter".}
proc fcQWebInspector_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_eventFilter".}
proc fQWebInspector_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_timerEvent".}
proc fcQWebInspector_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_timerEvent".}
proc fQWebInspector_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_childEvent".}
proc fcQWebInspector_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_childEvent".}
proc fQWebInspector_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_customEvent".}
proc fcQWebInspector_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_customEvent".}
proc fQWebInspector_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebInspector_virtualbase_connectNotify".}
proc fcQWebInspector_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_connectNotify".}
proc fQWebInspector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebInspector_virtualbase_disconnectNotify".}
proc fcQWebInspector_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_disconnectNotify".}
proc fcQWebInspector_delete(self: pointer) {.importc: "QWebInspector_delete".}


func init*(T: type gen_qwebinspector_types.QWebInspector, h: ptr cQWebInspector): gen_qwebinspector_types.QWebInspector =
  T(h: h)
proc create*(T: type gen_qwebinspector_types.QWebInspector, parent: gen_qwidget_types.QWidget): gen_qwebinspector_types.QWebInspector =
  gen_qwebinspector_types.QWebInspector.init(fcQWebInspector_new(parent.h))

proc create*(T: type gen_qwebinspector_types.QWebInspector, ): gen_qwebinspector_types.QWebInspector =
  gen_qwebinspector_types.QWebInspector.init(fcQWebInspector_new2())

proc metaObject*(self: gen_qwebinspector_types.QWebInspector, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebInspector_metaObject(self.h))

proc metacast*(self: gen_qwebinspector_types.QWebInspector, param1: cstring): pointer =
  fcQWebInspector_metacast(self.h, param1)

proc tr*(_: type gen_qwebinspector_types.QWebInspector, s: cstring): string =
  let v_ms = fcQWebInspector_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebinspector_types.QWebInspector, s: cstring): string =
  let v_ms = fcQWebInspector_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPage*(self: gen_qwebinspector_types.QWebInspector, page: gen_qwebpage_types.QWebPage): void =
  fcQWebInspector_setPage(self.h, page.h)

proc page*(self: gen_qwebinspector_types.QWebInspector, ): gen_qwebpage_types.QWebPage =
  gen_qwebpage_types.QWebPage(h: fcQWebInspector_page(self.h))

proc sizeHint*(self: gen_qwebinspector_types.QWebInspector, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebInspector_sizeHint(self.h))

proc event*(self: gen_qwebinspector_types.QWebInspector, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebInspector_event(self.h, param1.h)

proc tr*(_: type gen_qwebinspector_types.QWebInspector, s: cstring, c: cstring): string =
  let v_ms = fcQWebInspector_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebinspector_types.QWebInspector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebInspector_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebinspector_types.QWebInspector, s: cstring, c: cstring): string =
  let v_ms = fcQWebInspector_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebinspector_types.QWebInspector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebInspector_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QWebInspectorsizeHint*(self: gen_qwebinspector_types.QWebInspector, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWebInspector_virtualbase_sizeHint(self.h))

type QWebInspectorsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorsizeHintProc) =
  # TODO check subclass
  var tmp = new QWebInspectorsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_sizeHint(self: ptr cQWebInspector, slot: int): pointer {.exportc: "miqt_exec_callback_QWebInspector_sizeHint ".} =
  var nimfunc = cast[ptr QWebInspectorsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebInspectorevent*(self: gen_qwebinspector_types.QWebInspector, param1: gen_qcoreevent_types.QEvent): bool =
  fQWebInspector_virtualbase_event(self.h, param1.h)

type QWebInspectoreventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectoreventProc) =
  # TODO check subclass
  var tmp = new QWebInspectoreventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_event(self: ptr cQWebInspector, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWebInspector_event ".} =
  var nimfunc = cast[ptr QWebInspectoreventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebInspectorresizeEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QResizeEvent): void =
  fQWebInspector_virtualbase_resizeEvent(self.h, event.h)

type QWebInspectorresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorresizeEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_resizeEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_resizeEvent ".} =
  var nimfunc = cast[ptr QWebInspectorresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorshowEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QShowEvent): void =
  fQWebInspector_virtualbase_showEvent(self.h, event.h)

type QWebInspectorshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorshowEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_showEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_showEvent ".} =
  var nimfunc = cast[ptr QWebInspectorshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorhideEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QHideEvent): void =
  fQWebInspector_virtualbase_hideEvent(self.h, event.h)

type QWebInspectorhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorhideEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_hideEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_hideEvent ".} =
  var nimfunc = cast[ptr QWebInspectorhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorcloseEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QCloseEvent): void =
  fQWebInspector_virtualbase_closeEvent(self.h, event.h)

type QWebInspectorcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorcloseEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_closeEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_closeEvent ".} =
  var nimfunc = cast[ptr QWebInspectorcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectordevType*(self: gen_qwebinspector_types.QWebInspector, ): cint =
  fQWebInspector_virtualbase_devType(self.h)

type QWebInspectordevTypeProc* = proc(): cint
proc ondevType*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectordevTypeProc) =
  # TODO check subclass
  var tmp = new QWebInspectordevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_devType(self: ptr cQWebInspector, slot: int): cint {.exportc: "miqt_exec_callback_QWebInspector_devType ".} =
  var nimfunc = cast[ptr QWebInspectordevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWebInspectorsetVisible*(self: gen_qwebinspector_types.QWebInspector, visible: bool): void =
  fQWebInspector_virtualbase_setVisible(self.h, visible)

type QWebInspectorsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorsetVisibleProc) =
  # TODO check subclass
  var tmp = new QWebInspectorsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_setVisible(self: ptr cQWebInspector, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWebInspector_setVisible ".} =
  var nimfunc = cast[ptr QWebInspectorsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QWebInspectorminimumSizeHint*(self: gen_qwebinspector_types.QWebInspector, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWebInspector_virtualbase_minimumSizeHint(self.h))

type QWebInspectorminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QWebInspectorminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_minimumSizeHint(self: ptr cQWebInspector, slot: int): pointer {.exportc: "miqt_exec_callback_QWebInspector_minimumSizeHint ".} =
  var nimfunc = cast[ptr QWebInspectorminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebInspectorheightForWidth*(self: gen_qwebinspector_types.QWebInspector, param1: cint): cint =
  fQWebInspector_virtualbase_heightForWidth(self.h, param1)

type QWebInspectorheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorheightForWidthProc) =
  # TODO check subclass
  var tmp = new QWebInspectorheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_heightForWidth(self: ptr cQWebInspector, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebInspector_heightForWidth ".} =
  var nimfunc = cast[ptr QWebInspectorheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebInspectorhasHeightForWidth*(self: gen_qwebinspector_types.QWebInspector, ): bool =
  fQWebInspector_virtualbase_hasHeightForWidth(self.h)

type QWebInspectorhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QWebInspectorhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_hasHeightForWidth(self: ptr cQWebInspector, slot: int): bool {.exportc: "miqt_exec_callback_QWebInspector_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QWebInspectorhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWebInspectorpaintEngine*(self: gen_qwebinspector_types.QWebInspector, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQWebInspector_virtualbase_paintEngine(self.h))

type QWebInspectorpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorpaintEngineProc) =
  # TODO check subclass
  var tmp = new QWebInspectorpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_paintEngine(self: ptr cQWebInspector, slot: int): pointer {.exportc: "miqt_exec_callback_QWebInspector_paintEngine ".} =
  var nimfunc = cast[ptr QWebInspectorpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebInspectormousePressEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QMouseEvent): void =
  fQWebInspector_virtualbase_mousePressEvent(self.h, event.h)

type QWebInspectormousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectormousePressEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectormousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_mousePressEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_mousePressEvent ".} =
  var nimfunc = cast[ptr QWebInspectormousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectormouseReleaseEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QMouseEvent): void =
  fQWebInspector_virtualbase_mouseReleaseEvent(self.h, event.h)

type QWebInspectormouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectormouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectormouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_mouseReleaseEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QWebInspectormouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectormouseDoubleClickEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QMouseEvent): void =
  fQWebInspector_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QWebInspectormouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectormouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectormouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_mouseDoubleClickEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QWebInspectormouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectormouseMoveEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QMouseEvent): void =
  fQWebInspector_virtualbase_mouseMoveEvent(self.h, event.h)

type QWebInspectormouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectormouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectormouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_mouseMoveEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QWebInspectormouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorwheelEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QWheelEvent): void =
  fQWebInspector_virtualbase_wheelEvent(self.h, event.h)

type QWebInspectorwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorwheelEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_wheelEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_wheelEvent ".} =
  var nimfunc = cast[ptr QWebInspectorwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorkeyPressEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QKeyEvent): void =
  fQWebInspector_virtualbase_keyPressEvent(self.h, event.h)

type QWebInspectorkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_keyPressEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_keyPressEvent ".} =
  var nimfunc = cast[ptr QWebInspectorkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorkeyReleaseEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QKeyEvent): void =
  fQWebInspector_virtualbase_keyReleaseEvent(self.h, event.h)

type QWebInspectorkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_keyReleaseEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QWebInspectorkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorfocusInEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QFocusEvent): void =
  fQWebInspector_virtualbase_focusInEvent(self.h, event.h)

type QWebInspectorfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorfocusInEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_focusInEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_focusInEvent ".} =
  var nimfunc = cast[ptr QWebInspectorfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorfocusOutEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QFocusEvent): void =
  fQWebInspector_virtualbase_focusOutEvent(self.h, event.h)

type QWebInspectorfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_focusOutEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_focusOutEvent ".} =
  var nimfunc = cast[ptr QWebInspectorfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorenterEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qcoreevent_types.QEvent): void =
  fQWebInspector_virtualbase_enterEvent(self.h, event.h)

type QWebInspectorenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorenterEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_enterEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_enterEvent ".} =
  var nimfunc = cast[ptr QWebInspectorenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorleaveEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qcoreevent_types.QEvent): void =
  fQWebInspector_virtualbase_leaveEvent(self.h, event.h)

type QWebInspectorleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorleaveEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_leaveEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_leaveEvent ".} =
  var nimfunc = cast[ptr QWebInspectorleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorpaintEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QPaintEvent): void =
  fQWebInspector_virtualbase_paintEvent(self.h, event.h)

type QWebInspectorpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorpaintEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_paintEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_paintEvent ".} =
  var nimfunc = cast[ptr QWebInspectorpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectormoveEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QMoveEvent): void =
  fQWebInspector_virtualbase_moveEvent(self.h, event.h)

type QWebInspectormoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectormoveEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectormoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_moveEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_moveEvent ".} =
  var nimfunc = cast[ptr QWebInspectormoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorcontextMenuEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QContextMenuEvent): void =
  fQWebInspector_virtualbase_contextMenuEvent(self.h, event.h)

type QWebInspectorcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_contextMenuEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_contextMenuEvent ".} =
  var nimfunc = cast[ptr QWebInspectorcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectortabletEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QTabletEvent): void =
  fQWebInspector_virtualbase_tabletEvent(self.h, event.h)

type QWebInspectortabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectortabletEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectortabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_tabletEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_tabletEvent ".} =
  var nimfunc = cast[ptr QWebInspectortabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectoractionEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QActionEvent): void =
  fQWebInspector_virtualbase_actionEvent(self.h, event.h)

type QWebInspectoractionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectoractionEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectoractionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_actionEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_actionEvent ".} =
  var nimfunc = cast[ptr QWebInspectoractionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectordragEnterEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QDragEnterEvent): void =
  fQWebInspector_virtualbase_dragEnterEvent(self.h, event.h)

type QWebInspectordragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectordragEnterEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectordragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_dragEnterEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_dragEnterEvent ".} =
  var nimfunc = cast[ptr QWebInspectordragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectordragMoveEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QDragMoveEvent): void =
  fQWebInspector_virtualbase_dragMoveEvent(self.h, event.h)

type QWebInspectordragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectordragMoveEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectordragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_dragMoveEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_dragMoveEvent ".} =
  var nimfunc = cast[ptr QWebInspectordragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectordragLeaveEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QDragLeaveEvent): void =
  fQWebInspector_virtualbase_dragLeaveEvent(self.h, event.h)

type QWebInspectordragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectordragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectordragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_dragLeaveEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QWebInspectordragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectordropEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QDropEvent): void =
  fQWebInspector_virtualbase_dropEvent(self.h, event.h)

type QWebInspectordropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectordropEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectordropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_dropEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_dropEvent ".} =
  var nimfunc = cast[ptr QWebInspectordropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectornativeEvent*(self: gen_qwebinspector_types.QWebInspector, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQWebInspector_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWebInspectornativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectornativeEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectornativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_nativeEvent(self: ptr cQWebInspector, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QWebInspector_nativeEvent ".} =
  var nimfunc = cast[ptr QWebInspectornativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWebInspectorchangeEvent*(self: gen_qwebinspector_types.QWebInspector, param1: gen_qcoreevent_types.QEvent): void =
  fQWebInspector_virtualbase_changeEvent(self.h, param1.h)

type QWebInspectorchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorchangeEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_changeEvent(self: ptr cQWebInspector, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_changeEvent ".} =
  var nimfunc = cast[ptr QWebInspectorchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QWebInspectormetric*(self: gen_qwebinspector_types.QWebInspector, param1: cint): cint =
  fQWebInspector_virtualbase_metric(self.h, cint(param1))

type QWebInspectormetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectormetricProc) =
  # TODO check subclass
  var tmp = new QWebInspectormetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_metric(self: ptr cQWebInspector, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebInspector_metric ".} =
  var nimfunc = cast[ptr QWebInspectormetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebInspectorinitPainter*(self: gen_qwebinspector_types.QWebInspector, painter: gen_qpainter_types.QPainter): void =
  fQWebInspector_virtualbase_initPainter(self.h, painter.h)

type QWebInspectorinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorinitPainterProc) =
  # TODO check subclass
  var tmp = new QWebInspectorinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_initPainter(self: ptr cQWebInspector, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_initPainter ".} =
  var nimfunc = cast[ptr QWebInspectorinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QWebInspectorredirected*(self: gen_qwebinspector_types.QWebInspector, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQWebInspector_virtualbase_redirected(self.h, offset.h))

type QWebInspectorredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorredirectedProc) =
  # TODO check subclass
  var tmp = new QWebInspectorredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_redirected(self: ptr cQWebInspector, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWebInspector_redirected ".} =
  var nimfunc = cast[ptr QWebInspectorredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWebInspectorsharedPainter*(self: gen_qwebinspector_types.QWebInspector, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQWebInspector_virtualbase_sharedPainter(self.h))

type QWebInspectorsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorsharedPainterProc) =
  # TODO check subclass
  var tmp = new QWebInspectorsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_sharedPainter(self: ptr cQWebInspector, slot: int): pointer {.exportc: "miqt_exec_callback_QWebInspector_sharedPainter ".} =
  var nimfunc = cast[ptr QWebInspectorsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebInspectorinputMethodEvent*(self: gen_qwebinspector_types.QWebInspector, param1: gen_qevent_types.QInputMethodEvent): void =
  fQWebInspector_virtualbase_inputMethodEvent(self.h, param1.h)

type QWebInspectorinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_inputMethodEvent(self: ptr cQWebInspector, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_inputMethodEvent ".} =
  var nimfunc = cast[ptr QWebInspectorinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QWebInspectorinputMethodQuery*(self: gen_qwebinspector_types.QWebInspector, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQWebInspector_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QWebInspectorinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QWebInspectorinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_inputMethodQuery(self: ptr cQWebInspector, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QWebInspector_inputMethodQuery ".} =
  var nimfunc = cast[ptr QWebInspectorinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWebInspectorfocusNextPrevChild*(self: gen_qwebinspector_types.QWebInspector, next: bool): bool =
  fQWebInspector_virtualbase_focusNextPrevChild(self.h, next)

type QWebInspectorfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QWebInspectorfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_focusNextPrevChild(self: ptr cQWebInspector, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWebInspector_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QWebInspectorfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebInspectoreventFilter*(self: gen_qwebinspector_types.QWebInspector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWebInspector_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebInspectoreventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectoreventFilterProc) =
  # TODO check subclass
  var tmp = new QWebInspectoreventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_eventFilter(self: ptr cQWebInspector, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebInspector_eventFilter ".} =
  var nimfunc = cast[ptr QWebInspectoreventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebInspectortimerEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWebInspector_virtualbase_timerEvent(self.h, event.h)

type QWebInspectortimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectortimerEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectortimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_timerEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_timerEvent ".} =
  var nimfunc = cast[ptr QWebInspectortimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorchildEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qcoreevent_types.QChildEvent): void =
  fQWebInspector_virtualbase_childEvent(self.h, event.h)

type QWebInspectorchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorchildEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_childEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_childEvent ".} =
  var nimfunc = cast[ptr QWebInspectorchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorcustomEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qcoreevent_types.QEvent): void =
  fQWebInspector_virtualbase_customEvent(self.h, event.h)

type QWebInspectorcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorcustomEventProc) =
  # TODO check subclass
  var tmp = new QWebInspectorcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_customEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_customEvent ".} =
  var nimfunc = cast[ptr QWebInspectorcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebInspectorconnectNotify*(self: gen_qwebinspector_types.QWebInspector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebInspector_virtualbase_connectNotify(self.h, signal.h)

type QWebInspectorconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectorconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebInspectorconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_connectNotify(self: ptr cQWebInspector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_connectNotify ".} =
  var nimfunc = cast[ptr QWebInspectorconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebInspectordisconnectNotify*(self: gen_qwebinspector_types.QWebInspector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebInspector_virtualbase_disconnectNotify(self.h, signal.h)

type QWebInspectordisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebinspector_types.QWebInspector, slot: QWebInspectordisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebInspectordisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_disconnectNotify(self: ptr cQWebInspector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebInspectordisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qwebinspector_types.QWebInspector) =
  fcQWebInspector_delete(self.h)
