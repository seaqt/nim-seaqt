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
{.compile("gen_qscrollarea.cpp", cflags).}


import ./gen_qscrollarea_types
export gen_qscrollarea_types

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
  ./gen_qabstractscrollarea,
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
  gen_qabstractscrollarea,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQScrollArea*{.exportc: "QScrollArea", incompleteStruct.} = object

proc fcQScrollArea_new(parent: pointer): ptr cQScrollArea {.importc: "QScrollArea_new".}
proc fcQScrollArea_new2(): ptr cQScrollArea {.importc: "QScrollArea_new2".}
proc fcQScrollArea_metaObject(self: pointer, ): pointer {.importc: "QScrollArea_metaObject".}
proc fcQScrollArea_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollArea_metacast".}
proc fcQScrollArea_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollArea_metacall".}
proc fcQScrollArea_tr(s: cstring): struct_miqt_string {.importc: "QScrollArea_tr".}
proc fcQScrollArea_widget(self: pointer, ): pointer {.importc: "QScrollArea_widget".}
proc fcQScrollArea_setWidget(self: pointer, widget: pointer): void {.importc: "QScrollArea_setWidget".}
proc fcQScrollArea_takeWidget(self: pointer, ): pointer {.importc: "QScrollArea_takeWidget".}
proc fcQScrollArea_widgetResizable(self: pointer, ): bool {.importc: "QScrollArea_widgetResizable".}
proc fcQScrollArea_setWidgetResizable(self: pointer, resizable: bool): void {.importc: "QScrollArea_setWidgetResizable".}
proc fcQScrollArea_sizeHint(self: pointer, ): pointer {.importc: "QScrollArea_sizeHint".}
proc fcQScrollArea_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QScrollArea_focusNextPrevChild".}
proc fcQScrollArea_alignment(self: pointer, ): cint {.importc: "QScrollArea_alignment".}
proc fcQScrollArea_setAlignment(self: pointer, alignment: cint): void {.importc: "QScrollArea_setAlignment".}
proc fcQScrollArea_ensureVisible(self: pointer, x: cint, y: cint): void {.importc: "QScrollArea_ensureVisible".}
proc fcQScrollArea_ensureWidgetVisible(self: pointer, childWidget: pointer): void {.importc: "QScrollArea_ensureWidgetVisible".}
proc fcQScrollArea_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScrollArea_tr2".}
proc fcQScrollArea_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScrollArea_tr3".}
proc fcQScrollArea_ensureVisible3(self: pointer, x: cint, y: cint, xmargin: cint): void {.importc: "QScrollArea_ensureVisible3".}
proc fcQScrollArea_ensureVisible4(self: pointer, x: cint, y: cint, xmargin: cint, ymargin: cint): void {.importc: "QScrollArea_ensureVisible4".}
proc fcQScrollArea_ensureWidgetVisible2(self: pointer, childWidget: pointer, xmargin: cint): void {.importc: "QScrollArea_ensureWidgetVisible2".}
proc fcQScrollArea_ensureWidgetVisible3(self: pointer, childWidget: pointer, xmargin: cint, ymargin: cint): void {.importc: "QScrollArea_ensureWidgetVisible3".}
proc fQScrollArea_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_metaObject".}
proc fcQScrollArea_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_metaObject".}
proc fQScrollArea_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QScrollArea_virtualbase_metacast".}
proc fcQScrollArea_override_virtual_metacast(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_metacast".}
proc fQScrollArea_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QScrollArea_virtualbase_metacall".}
proc fcQScrollArea_override_virtual_metacall(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_metacall".}
proc fQScrollArea_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_sizeHint".}
proc fcQScrollArea_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_sizeHint".}
proc fQScrollArea_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QScrollArea_virtualbase_focusNextPrevChild".}
proc fcQScrollArea_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_focusNextPrevChild".}
proc fQScrollArea_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QScrollArea_virtualbase_event".}
proc fcQScrollArea_override_virtual_event(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_event".}
proc fQScrollArea_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QScrollArea_virtualbase_eventFilter".}
proc fcQScrollArea_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_eventFilter".}
proc fQScrollArea_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_resizeEvent".}
proc fcQScrollArea_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_resizeEvent".}
proc fQScrollArea_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QScrollArea_virtualbase_scrollContentsBy".}
proc fcQScrollArea_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_scrollContentsBy".}
proc fQScrollArea_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_viewportSizeHint".}
proc fcQScrollArea_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_viewportSizeHint".}
proc fQScrollArea_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_minimumSizeHint".}
proc fcQScrollArea_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_minimumSizeHint".}
proc fQScrollArea_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QScrollArea_virtualbase_setupViewport".}
proc fcQScrollArea_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_setupViewport".}
proc fQScrollArea_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QScrollArea_virtualbase_viewportEvent".}
proc fcQScrollArea_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_viewportEvent".}
proc fQScrollArea_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_paintEvent".}
proc fcQScrollArea_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_paintEvent".}
proc fQScrollArea_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_mousePressEvent".}
proc fcQScrollArea_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_mousePressEvent".}
proc fQScrollArea_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_mouseReleaseEvent".}
proc fcQScrollArea_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_mouseReleaseEvent".}
proc fQScrollArea_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_mouseDoubleClickEvent".}
proc fcQScrollArea_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_mouseDoubleClickEvent".}
proc fQScrollArea_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_mouseMoveEvent".}
proc fcQScrollArea_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_mouseMoveEvent".}
proc fQScrollArea_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_wheelEvent".}
proc fcQScrollArea_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_wheelEvent".}
proc fQScrollArea_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_contextMenuEvent".}
proc fcQScrollArea_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_contextMenuEvent".}
proc fQScrollArea_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_dragEnterEvent".}
proc fcQScrollArea_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_dragEnterEvent".}
proc fQScrollArea_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_dragMoveEvent".}
proc fcQScrollArea_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_dragMoveEvent".}
proc fQScrollArea_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_dragLeaveEvent".}
proc fcQScrollArea_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_dragLeaveEvent".}
proc fQScrollArea_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_dropEvent".}
proc fcQScrollArea_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_dropEvent".}
proc fQScrollArea_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_keyPressEvent".}
proc fcQScrollArea_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_keyPressEvent".}
proc fQScrollArea_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_changeEvent".}
proc fcQScrollArea_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_changeEvent".}
proc fQScrollArea_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QScrollArea_virtualbase_initStyleOption".}
proc fcQScrollArea_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_initStyleOption".}
proc fQScrollArea_virtualbase_devType(self: pointer, ): cint{.importc: "QScrollArea_virtualbase_devType".}
proc fcQScrollArea_override_virtual_devType(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_devType".}
proc fQScrollArea_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QScrollArea_virtualbase_setVisible".}
proc fcQScrollArea_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_setVisible".}
proc fQScrollArea_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QScrollArea_virtualbase_heightForWidth".}
proc fcQScrollArea_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_heightForWidth".}
proc fQScrollArea_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QScrollArea_virtualbase_hasHeightForWidth".}
proc fcQScrollArea_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_hasHeightForWidth".}
proc fQScrollArea_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_paintEngine".}
proc fcQScrollArea_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_paintEngine".}
proc fQScrollArea_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_keyReleaseEvent".}
proc fcQScrollArea_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_keyReleaseEvent".}
proc fQScrollArea_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_focusInEvent".}
proc fcQScrollArea_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_focusInEvent".}
proc fQScrollArea_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_focusOutEvent".}
proc fcQScrollArea_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_focusOutEvent".}
proc fQScrollArea_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_enterEvent".}
proc fcQScrollArea_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_enterEvent".}
proc fQScrollArea_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_leaveEvent".}
proc fcQScrollArea_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_leaveEvent".}
proc fQScrollArea_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_moveEvent".}
proc fcQScrollArea_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_moveEvent".}
proc fQScrollArea_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_closeEvent".}
proc fcQScrollArea_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_closeEvent".}
proc fQScrollArea_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_tabletEvent".}
proc fcQScrollArea_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_tabletEvent".}
proc fQScrollArea_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_actionEvent".}
proc fcQScrollArea_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_actionEvent".}
proc fQScrollArea_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_showEvent".}
proc fcQScrollArea_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_showEvent".}
proc fQScrollArea_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_hideEvent".}
proc fcQScrollArea_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_hideEvent".}
proc fQScrollArea_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QScrollArea_virtualbase_nativeEvent".}
proc fcQScrollArea_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_nativeEvent".}
proc fQScrollArea_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QScrollArea_virtualbase_metric".}
proc fcQScrollArea_override_virtual_metric(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_metric".}
proc fQScrollArea_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QScrollArea_virtualbase_initPainter".}
proc fcQScrollArea_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_initPainter".}
proc fQScrollArea_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QScrollArea_virtualbase_redirected".}
proc fcQScrollArea_override_virtual_redirected(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_redirected".}
proc fQScrollArea_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_sharedPainter".}
proc fcQScrollArea_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_sharedPainter".}
proc fQScrollArea_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_inputMethodEvent".}
proc fcQScrollArea_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_inputMethodEvent".}
proc fQScrollArea_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QScrollArea_virtualbase_inputMethodQuery".}
proc fcQScrollArea_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_inputMethodQuery".}
proc fQScrollArea_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_timerEvent".}
proc fcQScrollArea_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_timerEvent".}
proc fQScrollArea_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_childEvent".}
proc fcQScrollArea_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_childEvent".}
proc fQScrollArea_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_customEvent".}
proc fcQScrollArea_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_customEvent".}
proc fQScrollArea_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QScrollArea_virtualbase_connectNotify".}
proc fcQScrollArea_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_connectNotify".}
proc fQScrollArea_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QScrollArea_virtualbase_disconnectNotify".}
proc fcQScrollArea_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_disconnectNotify".}
proc fcQScrollArea_staticMetaObject(): pointer {.importc: "QScrollArea_staticMetaObject".}
proc fcQScrollArea_delete(self: pointer) {.importc: "QScrollArea_delete".}


func init*(T: type gen_qscrollarea_types.QScrollArea, h: ptr cQScrollArea): gen_qscrollarea_types.QScrollArea =
  T(h: h)
proc create*(T: type gen_qscrollarea_types.QScrollArea, parent: gen_qwidget_types.QWidget): gen_qscrollarea_types.QScrollArea =
  gen_qscrollarea_types.QScrollArea.init(fcQScrollArea_new(parent.h))

proc create*(T: type gen_qscrollarea_types.QScrollArea, ): gen_qscrollarea_types.QScrollArea =
  gen_qscrollarea_types.QScrollArea.init(fcQScrollArea_new2())

proc metaObject*(self: gen_qscrollarea_types.QScrollArea, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollArea_metaObject(self.h))

proc metacast*(self: gen_qscrollarea_types.QScrollArea, param1: cstring): pointer =
  fcQScrollArea_metacast(self.h, param1)

proc metacall*(self: gen_qscrollarea_types.QScrollArea, param1: cint, param2: cint, param3: pointer): cint =
  fcQScrollArea_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscrollarea_types.QScrollArea, s: cstring): string =
  let v_ms = fcQScrollArea_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc widget*(self: gen_qscrollarea_types.QScrollArea, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQScrollArea_widget(self.h))

proc setWidget*(self: gen_qscrollarea_types.QScrollArea, widget: gen_qwidget_types.QWidget): void =
  fcQScrollArea_setWidget(self.h, widget.h)

proc takeWidget*(self: gen_qscrollarea_types.QScrollArea, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQScrollArea_takeWidget(self.h))

proc widgetResizable*(self: gen_qscrollarea_types.QScrollArea, ): bool =
  fcQScrollArea_widgetResizable(self.h)

proc setWidgetResizable*(self: gen_qscrollarea_types.QScrollArea, resizable: bool): void =
  fcQScrollArea_setWidgetResizable(self.h, resizable)

proc sizeHint*(self: gen_qscrollarea_types.QScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollArea_sizeHint(self.h))

proc focusNextPrevChild*(self: gen_qscrollarea_types.QScrollArea, next: bool): bool =
  fcQScrollArea_focusNextPrevChild(self.h, next)

proc alignment*(self: gen_qscrollarea_types.QScrollArea, ): cint =
  cint(fcQScrollArea_alignment(self.h))

proc setAlignment*(self: gen_qscrollarea_types.QScrollArea, alignment: cint): void =
  fcQScrollArea_setAlignment(self.h, cint(alignment))

proc ensureVisible*(self: gen_qscrollarea_types.QScrollArea, x: cint, y: cint): void =
  fcQScrollArea_ensureVisible(self.h, x, y)

proc ensureWidgetVisible*(self: gen_qscrollarea_types.QScrollArea, childWidget: gen_qwidget_types.QWidget): void =
  fcQScrollArea_ensureWidgetVisible(self.h, childWidget.h)

proc tr*(_: type gen_qscrollarea_types.QScrollArea, s: cstring, c: cstring): string =
  let v_ms = fcQScrollArea_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscrollarea_types.QScrollArea, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScrollArea_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc ensureVisible*(self: gen_qscrollarea_types.QScrollArea, x: cint, y: cint, xmargin: cint): void =
  fcQScrollArea_ensureVisible3(self.h, x, y, xmargin)

proc ensureVisible*(self: gen_qscrollarea_types.QScrollArea, x: cint, y: cint, xmargin: cint, ymargin: cint): void =
  fcQScrollArea_ensureVisible4(self.h, x, y, xmargin, ymargin)

proc ensureWidgetVisible*(self: gen_qscrollarea_types.QScrollArea, childWidget: gen_qwidget_types.QWidget, xmargin: cint): void =
  fcQScrollArea_ensureWidgetVisible2(self.h, childWidget.h, xmargin)

proc ensureWidgetVisible*(self: gen_qscrollarea_types.QScrollArea, childWidget: gen_qwidget_types.QWidget, xmargin: cint, ymargin: cint): void =
  fcQScrollArea_ensureWidgetVisible3(self.h, childWidget.h, xmargin, ymargin)

proc QScrollAreametaObject*(self: gen_qscrollarea_types.QScrollArea, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQScrollArea_virtualbase_metaObject(self.h))

type QScrollAreametaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreametaObjectProc) =
  # TODO check subclass
  var tmp = new QScrollAreametaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_metaObject(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_metaObject ".} =
  var nimfunc = cast[ptr QScrollAreametaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollAreametacast*(self: gen_qscrollarea_types.QScrollArea, param1: cstring): pointer =
  fQScrollArea_virtualbase_metacast(self.h, param1)

type QScrollAreametacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreametacastProc) =
  # TODO check subclass
  var tmp = new QScrollAreametacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_metacast(self: ptr cQScrollArea, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QScrollArea_metacast ".} =
  var nimfunc = cast[ptr QScrollAreametacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScrollAreametacall*(self: gen_qscrollarea_types.QScrollArea, param1: cint, param2: cint, param3: pointer): cint =
  fQScrollArea_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QScrollAreametacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreametacallProc) =
  # TODO check subclass
  var tmp = new QScrollAreametacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_metacall(self: ptr cQScrollArea, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QScrollArea_metacall ".} =
  var nimfunc = cast[ptr QScrollAreametacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QScrollAreasizeHint*(self: gen_qscrollarea_types.QScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQScrollArea_virtualbase_sizeHint(self.h))

type QScrollAreasizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreasizeHintProc) =
  # TODO check subclass
  var tmp = new QScrollAreasizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_sizeHint(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_sizeHint ".} =
  var nimfunc = cast[ptr QScrollAreasizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollAreafocusNextPrevChild*(self: gen_qscrollarea_types.QScrollArea, next: bool): bool =
  fQScrollArea_virtualbase_focusNextPrevChild(self.h, next)

type QScrollAreafocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreafocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QScrollAreafocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_focusNextPrevChild(self: ptr cQScrollArea, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QScrollArea_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QScrollAreafocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScrollAreaevent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fQScrollArea_virtualbase_event(self.h, param1.h)

type QScrollAreaeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreaeventProc) =
  # TODO check subclass
  var tmp = new QScrollAreaeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_event(self: ptr cQScrollArea, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QScrollArea_event ".} =
  var nimfunc = cast[ptr QScrollAreaeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScrollAreaeventFilter*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQScrollArea_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QScrollAreaeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreaeventFilterProc) =
  # TODO check subclass
  var tmp = new QScrollAreaeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_eventFilter(self: ptr cQScrollArea, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QScrollArea_eventFilter ".} =
  var nimfunc = cast[ptr QScrollAreaeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QScrollArearesizeEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QResizeEvent): void =
  fQScrollArea_virtualbase_resizeEvent(self.h, param1.h)

type QScrollArearesizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollArearesizeEventProc) =
  # TODO check subclass
  var tmp = new QScrollArearesizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_resizeEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_resizeEvent ".} =
  var nimfunc = cast[ptr QScrollArearesizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreascrollContentsBy*(self: gen_qscrollarea_types.QScrollArea, dx: cint, dy: cint): void =
  fQScrollArea_virtualbase_scrollContentsBy(self.h, dx, dy)

type QScrollAreascrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreascrollContentsByProc) =
  # TODO check subclass
  var tmp = new QScrollAreascrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_scrollContentsBy(self: ptr cQScrollArea, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QScrollArea_scrollContentsBy ".} =
  var nimfunc = cast[ptr QScrollAreascrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QScrollAreaviewportSizeHint*(self: gen_qscrollarea_types.QScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQScrollArea_virtualbase_viewportSizeHint(self.h))

type QScrollAreaviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreaviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QScrollAreaviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_viewportSizeHint(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_viewportSizeHint ".} =
  var nimfunc = cast[ptr QScrollAreaviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollAreaminimumSizeHint*(self: gen_qscrollarea_types.QScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQScrollArea_virtualbase_minimumSizeHint(self.h))

type QScrollAreaminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreaminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QScrollAreaminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_minimumSizeHint(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_minimumSizeHint ".} =
  var nimfunc = cast[ptr QScrollAreaminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollAreasetupViewport*(self: gen_qscrollarea_types.QScrollArea, viewport: gen_qwidget_types.QWidget): void =
  fQScrollArea_virtualbase_setupViewport(self.h, viewport.h)

type QScrollAreasetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreasetupViewportProc) =
  # TODO check subclass
  var tmp = new QScrollAreasetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_setupViewport(self: ptr cQScrollArea, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_setupViewport ".} =
  var nimfunc = cast[ptr QScrollAreasetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QScrollAreaviewportEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fQScrollArea_virtualbase_viewportEvent(self.h, param1.h)

type QScrollAreaviewportEventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreaviewportEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreaviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_viewportEvent(self: ptr cQScrollArea, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QScrollArea_viewportEvent ".} =
  var nimfunc = cast[ptr QScrollAreaviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScrollAreapaintEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QPaintEvent): void =
  fQScrollArea_virtualbase_paintEvent(self.h, param1.h)

type QScrollAreapaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreapaintEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreapaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_paintEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_paintEvent ".} =
  var nimfunc = cast[ptr QScrollAreapaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreamousePressEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fQScrollArea_virtualbase_mousePressEvent(self.h, param1.h)

type QScrollAreamousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreamousePressEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreamousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_mousePressEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_mousePressEvent ".} =
  var nimfunc = cast[ptr QScrollAreamousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreamouseReleaseEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fQScrollArea_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QScrollAreamouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreamouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreamouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_mouseReleaseEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QScrollAreamouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreamouseDoubleClickEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fQScrollArea_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QScrollAreamouseDoubleClickEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreamouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreamouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_mouseDoubleClickEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QScrollAreamouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreamouseMoveEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fQScrollArea_virtualbase_mouseMoveEvent(self.h, param1.h)

type QScrollAreamouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreamouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreamouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_mouseMoveEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QScrollAreamouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreawheelEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QWheelEvent): void =
  fQScrollArea_virtualbase_wheelEvent(self.h, param1.h)

type QScrollAreawheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreawheelEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreawheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_wheelEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_wheelEvent ".} =
  var nimfunc = cast[ptr QScrollAreawheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreacontextMenuEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QContextMenuEvent): void =
  fQScrollArea_virtualbase_contextMenuEvent(self.h, param1.h)

type QScrollAreacontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreacontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreacontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_contextMenuEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_contextMenuEvent ".} =
  var nimfunc = cast[ptr QScrollAreacontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreadragEnterEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDragEnterEvent): void =
  fQScrollArea_virtualbase_dragEnterEvent(self.h, param1.h)

type QScrollAreadragEnterEventProc* = proc(param1: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreadragEnterEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreadragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_dragEnterEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_dragEnterEvent ".} =
  var nimfunc = cast[ptr QScrollAreadragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreadragMoveEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDragMoveEvent): void =
  fQScrollArea_virtualbase_dragMoveEvent(self.h, param1.h)

type QScrollAreadragMoveEventProc* = proc(param1: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreadragMoveEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreadragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_dragMoveEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_dragMoveEvent ".} =
  var nimfunc = cast[ptr QScrollAreadragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreadragLeaveEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDragLeaveEvent): void =
  fQScrollArea_virtualbase_dragLeaveEvent(self.h, param1.h)

type QScrollAreadragLeaveEventProc* = proc(param1: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreadragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreadragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_dragLeaveEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QScrollAreadragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreadropEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDropEvent): void =
  fQScrollArea_virtualbase_dropEvent(self.h, param1.h)

type QScrollAreadropEventProc* = proc(param1: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreadropEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreadropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_dropEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_dropEvent ".} =
  var nimfunc = cast[ptr QScrollAreadropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreakeyPressEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QKeyEvent): void =
  fQScrollArea_virtualbase_keyPressEvent(self.h, param1.h)

type QScrollAreakeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreakeyPressEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreakeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_keyPressEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_keyPressEvent ".} =
  var nimfunc = cast[ptr QScrollAreakeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreachangeEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qcoreevent_types.QEvent): void =
  fQScrollArea_virtualbase_changeEvent(self.h, param1.h)

type QScrollAreachangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreachangeEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreachangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_changeEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_changeEvent ".} =
  var nimfunc = cast[ptr QScrollAreachangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreainitStyleOption*(self: gen_qscrollarea_types.QScrollArea, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQScrollArea_virtualbase_initStyleOption(self.h, option.h)

type QScrollAreainitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreainitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QScrollAreainitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_initStyleOption(self: ptr cQScrollArea, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_initStyleOption ".} =
  var nimfunc = cast[ptr QScrollAreainitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QScrollAreadevType*(self: gen_qscrollarea_types.QScrollArea, ): cint =
  fQScrollArea_virtualbase_devType(self.h)

type QScrollAreadevTypeProc* = proc(): cint
proc ondevType*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreadevTypeProc) =
  # TODO check subclass
  var tmp = new QScrollAreadevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_devType(self: ptr cQScrollArea, slot: int): cint {.exportc: "miqt_exec_callback_QScrollArea_devType ".} =
  var nimfunc = cast[ptr QScrollAreadevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QScrollAreasetVisible*(self: gen_qscrollarea_types.QScrollArea, visible: bool): void =
  fQScrollArea_virtualbase_setVisible(self.h, visible)

type QScrollAreasetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreasetVisibleProc) =
  # TODO check subclass
  var tmp = new QScrollAreasetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_setVisible(self: ptr cQScrollArea, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QScrollArea_setVisible ".} =
  var nimfunc = cast[ptr QScrollAreasetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QScrollAreaheightForWidth*(self: gen_qscrollarea_types.QScrollArea, param1: cint): cint =
  fQScrollArea_virtualbase_heightForWidth(self.h, param1)

type QScrollAreaheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreaheightForWidthProc) =
  # TODO check subclass
  var tmp = new QScrollAreaheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_heightForWidth(self: ptr cQScrollArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QScrollArea_heightForWidth ".} =
  var nimfunc = cast[ptr QScrollAreaheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScrollAreahasHeightForWidth*(self: gen_qscrollarea_types.QScrollArea, ): bool =
  fQScrollArea_virtualbase_hasHeightForWidth(self.h)

type QScrollAreahasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreahasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QScrollAreahasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_hasHeightForWidth(self: ptr cQScrollArea, slot: int): bool {.exportc: "miqt_exec_callback_QScrollArea_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QScrollAreahasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QScrollAreapaintEngine*(self: gen_qscrollarea_types.QScrollArea, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQScrollArea_virtualbase_paintEngine(self.h))

type QScrollAreapaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreapaintEngineProc) =
  # TODO check subclass
  var tmp = new QScrollAreapaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_paintEngine(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_paintEngine ".} =
  var nimfunc = cast[ptr QScrollAreapaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollAreakeyReleaseEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QKeyEvent): void =
  fQScrollArea_virtualbase_keyReleaseEvent(self.h, event.h)

type QScrollAreakeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreakeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreakeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_keyReleaseEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QScrollAreakeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreafocusInEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fQScrollArea_virtualbase_focusInEvent(self.h, event.h)

type QScrollAreafocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreafocusInEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreafocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_focusInEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_focusInEvent ".} =
  var nimfunc = cast[ptr QScrollAreafocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreafocusOutEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fQScrollArea_virtualbase_focusOutEvent(self.h, event.h)

type QScrollAreafocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreafocusOutEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreafocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_focusOutEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_focusOutEvent ".} =
  var nimfunc = cast[ptr QScrollAreafocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreaenterEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QEnterEvent): void =
  fQScrollArea_virtualbase_enterEvent(self.h, event.h)

type QScrollAreaenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreaenterEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreaenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_enterEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_enterEvent ".} =
  var nimfunc = cast[ptr QScrollAreaenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QScrollArealeaveEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fQScrollArea_virtualbase_leaveEvent(self.h, event.h)

type QScrollArealeaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollArealeaveEventProc) =
  # TODO check subclass
  var tmp = new QScrollArealeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_leaveEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_leaveEvent ".} =
  var nimfunc = cast[ptr QScrollArealeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreamoveEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QMoveEvent): void =
  fQScrollArea_virtualbase_moveEvent(self.h, event.h)

type QScrollAreamoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreamoveEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreamoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_moveEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_moveEvent ".} =
  var nimfunc = cast[ptr QScrollAreamoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreacloseEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QCloseEvent): void =
  fQScrollArea_virtualbase_closeEvent(self.h, event.h)

type QScrollAreacloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreacloseEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreacloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_closeEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_closeEvent ".} =
  var nimfunc = cast[ptr QScrollAreacloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreatabletEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QTabletEvent): void =
  fQScrollArea_virtualbase_tabletEvent(self.h, event.h)

type QScrollAreatabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreatabletEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreatabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_tabletEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_tabletEvent ".} =
  var nimfunc = cast[ptr QScrollAreatabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreaactionEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QActionEvent): void =
  fQScrollArea_virtualbase_actionEvent(self.h, event.h)

type QScrollAreaactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreaactionEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreaactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_actionEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_actionEvent ".} =
  var nimfunc = cast[ptr QScrollAreaactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreashowEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QShowEvent): void =
  fQScrollArea_virtualbase_showEvent(self.h, event.h)

type QScrollAreashowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreashowEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreashowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_showEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_showEvent ".} =
  var nimfunc = cast[ptr QScrollAreashowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreahideEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QHideEvent): void =
  fQScrollArea_virtualbase_hideEvent(self.h, event.h)

type QScrollAreahideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreahideEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreahideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_hideEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_hideEvent ".} =
  var nimfunc = cast[ptr QScrollAreahideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreanativeEvent*(self: gen_qscrollarea_types.QScrollArea, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQScrollArea_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QScrollAreanativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreanativeEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreanativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_nativeEvent(self: ptr cQScrollArea, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QScrollArea_nativeEvent ".} =
  var nimfunc = cast[ptr QScrollAreanativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QScrollAreametric*(self: gen_qscrollarea_types.QScrollArea, param1: cint): cint =
  fQScrollArea_virtualbase_metric(self.h, cint(param1))

type QScrollAreametricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreametricProc) =
  # TODO check subclass
  var tmp = new QScrollAreametricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_metric(self: ptr cQScrollArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QScrollArea_metric ".} =
  var nimfunc = cast[ptr QScrollAreametricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScrollAreainitPainter*(self: gen_qscrollarea_types.QScrollArea, painter: gen_qpainter_types.QPainter): void =
  fQScrollArea_virtualbase_initPainter(self.h, painter.h)

type QScrollAreainitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreainitPainterProc) =
  # TODO check subclass
  var tmp = new QScrollAreainitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_initPainter(self: ptr cQScrollArea, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_initPainter ".} =
  var nimfunc = cast[ptr QScrollAreainitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QScrollArearedirected*(self: gen_qscrollarea_types.QScrollArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQScrollArea_virtualbase_redirected(self.h, offset.h))

type QScrollArearedirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollArearedirectedProc) =
  # TODO check subclass
  var tmp = new QScrollArearedirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_redirected(self: ptr cQScrollArea, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QScrollArea_redirected ".} =
  var nimfunc = cast[ptr QScrollArearedirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QScrollAreasharedPainter*(self: gen_qscrollarea_types.QScrollArea, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQScrollArea_virtualbase_sharedPainter(self.h))

type QScrollAreasharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreasharedPainterProc) =
  # TODO check subclass
  var tmp = new QScrollAreasharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_sharedPainter(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_sharedPainter ".} =
  var nimfunc = cast[ptr QScrollAreasharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollAreainputMethodEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QInputMethodEvent): void =
  fQScrollArea_virtualbase_inputMethodEvent(self.h, param1.h)

type QScrollAreainputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreainputMethodEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreainputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_inputMethodEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_inputMethodEvent ".} =
  var nimfunc = cast[ptr QScrollAreainputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollAreainputMethodQuery*(self: gen_qscrollarea_types.QScrollArea, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQScrollArea_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QScrollAreainputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreainputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QScrollAreainputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_inputMethodQuery(self: ptr cQScrollArea, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QScrollArea_inputMethodQuery ".} =
  var nimfunc = cast[ptr QScrollAreainputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QScrollAreatimerEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QTimerEvent): void =
  fQScrollArea_virtualbase_timerEvent(self.h, event.h)

type QScrollAreatimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreatimerEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreatimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_timerEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_timerEvent ".} =
  var nimfunc = cast[ptr QScrollAreatimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreachildEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QChildEvent): void =
  fQScrollArea_virtualbase_childEvent(self.h, event.h)

type QScrollAreachildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreachildEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreachildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_childEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_childEvent ".} =
  var nimfunc = cast[ptr QScrollAreachildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreacustomEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fQScrollArea_virtualbase_customEvent(self.h, event.h)

type QScrollAreacustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreacustomEventProc) =
  # TODO check subclass
  var tmp = new QScrollAreacustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_customEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_customEvent ".} =
  var nimfunc = cast[ptr QScrollAreacustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QScrollAreaconnectNotify*(self: gen_qscrollarea_types.QScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQScrollArea_virtualbase_connectNotify(self.h, signal.h)

type QScrollAreaconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreaconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QScrollAreaconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_connectNotify(self: ptr cQScrollArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_connectNotify ".} =
  var nimfunc = cast[ptr QScrollAreaconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QScrollAreadisconnectNotify*(self: gen_qscrollarea_types.QScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQScrollArea_virtualbase_disconnectNotify(self.h, signal.h)

type QScrollAreadisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscrollarea_types.QScrollArea, slot: QScrollAreadisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QScrollAreadisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_disconnectNotify(self: ptr cQScrollArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_disconnectNotify ".} =
  var nimfunc = cast[ptr QScrollAreadisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscrollarea_types.QScrollArea): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollArea_staticMetaObject())
proc delete*(self: gen_qscrollarea_types.QScrollArea) =
  fcQScrollArea_delete(self.h)
