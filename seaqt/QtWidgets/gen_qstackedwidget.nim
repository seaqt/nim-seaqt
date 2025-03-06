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
{.compile("gen_qstackedwidget.cpp", cflags).}


import ./gen_qstackedwidget_types
export gen_qstackedwidget_types

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
  ./gen_qframe,
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
  gen_qframe,
  gen_qwidget_types

type cQStackedWidget*{.exportc: "QStackedWidget", incompleteStruct.} = object

proc fcQStackedWidget_new(parent: pointer): ptr cQStackedWidget {.importc: "QStackedWidget_new".}
proc fcQStackedWidget_new2(): ptr cQStackedWidget {.importc: "QStackedWidget_new2".}
proc fcQStackedWidget_metaObject(self: pointer, ): pointer {.importc: "QStackedWidget_metaObject".}
proc fcQStackedWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedWidget_metacast".}
proc fcQStackedWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStackedWidget_metacall".}
proc fcQStackedWidget_tr(s: cstring): struct_miqt_string {.importc: "QStackedWidget_tr".}
proc fcQStackedWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QStackedWidget_trUtf8".}
proc fcQStackedWidget_addWidget(self: pointer, w: pointer): cint {.importc: "QStackedWidget_addWidget".}
proc fcQStackedWidget_insertWidget(self: pointer, index: cint, w: pointer): cint {.importc: "QStackedWidget_insertWidget".}
proc fcQStackedWidget_removeWidget(self: pointer, w: pointer): void {.importc: "QStackedWidget_removeWidget".}
proc fcQStackedWidget_currentWidget(self: pointer, ): pointer {.importc: "QStackedWidget_currentWidget".}
proc fcQStackedWidget_currentIndex(self: pointer, ): cint {.importc: "QStackedWidget_currentIndex".}
proc fcQStackedWidget_indexOf(self: pointer, param1: pointer): cint {.importc: "QStackedWidget_indexOf".}
proc fcQStackedWidget_widget(self: pointer, param1: cint): pointer {.importc: "QStackedWidget_widget".}
proc fcQStackedWidget_count(self: pointer, ): cint {.importc: "QStackedWidget_count".}
proc fcQStackedWidget_setCurrentIndex(self: pointer, index: cint): void {.importc: "QStackedWidget_setCurrentIndex".}
proc fcQStackedWidget_setCurrentWidget(self: pointer, w: pointer): void {.importc: "QStackedWidget_setCurrentWidget".}
proc fcQStackedWidget_currentChanged(self: pointer, param1: cint): void {.importc: "QStackedWidget_currentChanged".}
proc fcQStackedWidget_connect_currentChanged(self: pointer, slot: int) {.importc: "QStackedWidget_connect_currentChanged".}
proc fcQStackedWidget_widgetRemoved(self: pointer, index: cint): void {.importc: "QStackedWidget_widgetRemoved".}
proc fcQStackedWidget_connect_widgetRemoved(self: pointer, slot: int) {.importc: "QStackedWidget_connect_widgetRemoved".}
proc fcQStackedWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStackedWidget_tr2".}
proc fcQStackedWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStackedWidget_tr3".}
proc fcQStackedWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStackedWidget_trUtf82".}
proc fcQStackedWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStackedWidget_trUtf83".}
proc fQStackedWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QStackedWidget_virtualbase_metaObject".}
proc fcQStackedWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_metaObject".}
proc fQStackedWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QStackedWidget_virtualbase_metacast".}
proc fcQStackedWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_metacast".}
proc fQStackedWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStackedWidget_virtualbase_metacall".}
proc fcQStackedWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_metacall".}
proc fQStackedWidget_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QStackedWidget_virtualbase_event".}
proc fcQStackedWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_event".}
proc fQStackedWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QStackedWidget_virtualbase_sizeHint".}
proc fcQStackedWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_sizeHint".}
proc fQStackedWidget_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QStackedWidget_virtualbase_paintEvent".}
proc fcQStackedWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_paintEvent".}
proc fQStackedWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QStackedWidget_virtualbase_changeEvent".}
proc fcQStackedWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_changeEvent".}
proc fQStackedWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QStackedWidget_virtualbase_devType".}
proc fcQStackedWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_devType".}
proc fQStackedWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QStackedWidget_virtualbase_setVisible".}
proc fcQStackedWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_setVisible".}
proc fQStackedWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QStackedWidget_virtualbase_minimumSizeHint".}
proc fcQStackedWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_minimumSizeHint".}
proc fQStackedWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QStackedWidget_virtualbase_heightForWidth".}
proc fcQStackedWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_heightForWidth".}
proc fQStackedWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QStackedWidget_virtualbase_hasHeightForWidth".}
proc fcQStackedWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_hasHeightForWidth".}
proc fQStackedWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QStackedWidget_virtualbase_paintEngine".}
proc fcQStackedWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_paintEngine".}
proc fQStackedWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_mousePressEvent".}
proc fcQStackedWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_mousePressEvent".}
proc fQStackedWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_mouseReleaseEvent".}
proc fcQStackedWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_mouseReleaseEvent".}
proc fQStackedWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQStackedWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_mouseDoubleClickEvent".}
proc fQStackedWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_mouseMoveEvent".}
proc fcQStackedWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_mouseMoveEvent".}
proc fQStackedWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_wheelEvent".}
proc fcQStackedWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_wheelEvent".}
proc fQStackedWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_keyPressEvent".}
proc fcQStackedWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_keyPressEvent".}
proc fQStackedWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_keyReleaseEvent".}
proc fcQStackedWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_keyReleaseEvent".}
proc fQStackedWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_focusInEvent".}
proc fcQStackedWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_focusInEvent".}
proc fQStackedWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_focusOutEvent".}
proc fcQStackedWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_focusOutEvent".}
proc fQStackedWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_enterEvent".}
proc fcQStackedWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_enterEvent".}
proc fQStackedWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_leaveEvent".}
proc fcQStackedWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_leaveEvent".}
proc fQStackedWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_moveEvent".}
proc fcQStackedWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_moveEvent".}
proc fQStackedWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_resizeEvent".}
proc fcQStackedWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_resizeEvent".}
proc fQStackedWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_closeEvent".}
proc fcQStackedWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_closeEvent".}
proc fQStackedWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_contextMenuEvent".}
proc fcQStackedWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_contextMenuEvent".}
proc fQStackedWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_tabletEvent".}
proc fcQStackedWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_tabletEvent".}
proc fQStackedWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_actionEvent".}
proc fcQStackedWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_actionEvent".}
proc fQStackedWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_dragEnterEvent".}
proc fcQStackedWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_dragEnterEvent".}
proc fQStackedWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_dragMoveEvent".}
proc fcQStackedWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_dragMoveEvent".}
proc fQStackedWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_dragLeaveEvent".}
proc fcQStackedWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_dragLeaveEvent".}
proc fQStackedWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_dropEvent".}
proc fcQStackedWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_dropEvent".}
proc fQStackedWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_showEvent".}
proc fcQStackedWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_showEvent".}
proc fQStackedWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_hideEvent".}
proc fcQStackedWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_hideEvent".}
proc fQStackedWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QStackedWidget_virtualbase_nativeEvent".}
proc fcQStackedWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_nativeEvent".}
proc fQStackedWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QStackedWidget_virtualbase_metric".}
proc fcQStackedWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_metric".}
proc fQStackedWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QStackedWidget_virtualbase_initPainter".}
proc fcQStackedWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_initPainter".}
proc fQStackedWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QStackedWidget_virtualbase_redirected".}
proc fcQStackedWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_redirected".}
proc fQStackedWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QStackedWidget_virtualbase_sharedPainter".}
proc fcQStackedWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_sharedPainter".}
proc fQStackedWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QStackedWidget_virtualbase_inputMethodEvent".}
proc fcQStackedWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_inputMethodEvent".}
proc fQStackedWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QStackedWidget_virtualbase_inputMethodQuery".}
proc fcQStackedWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_inputMethodQuery".}
proc fQStackedWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QStackedWidget_virtualbase_focusNextPrevChild".}
proc fcQStackedWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_focusNextPrevChild".}
proc fQStackedWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStackedWidget_virtualbase_eventFilter".}
proc fcQStackedWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_eventFilter".}
proc fQStackedWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_timerEvent".}
proc fcQStackedWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_timerEvent".}
proc fQStackedWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_childEvent".}
proc fcQStackedWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_childEvent".}
proc fQStackedWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_customEvent".}
proc fcQStackedWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_customEvent".}
proc fQStackedWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStackedWidget_virtualbase_connectNotify".}
proc fcQStackedWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_connectNotify".}
proc fQStackedWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStackedWidget_virtualbase_disconnectNotify".}
proc fcQStackedWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_disconnectNotify".}
proc fcQStackedWidget_staticMetaObject(): pointer {.importc: "QStackedWidget_staticMetaObject".}
proc fcQStackedWidget_delete(self: pointer) {.importc: "QStackedWidget_delete".}


func init*(T: type gen_qstackedwidget_types.QStackedWidget, h: ptr cQStackedWidget): gen_qstackedwidget_types.QStackedWidget =
  T(h: h)
proc create*(T: type gen_qstackedwidget_types.QStackedWidget, parent: gen_qwidget_types.QWidget): gen_qstackedwidget_types.QStackedWidget =
  gen_qstackedwidget_types.QStackedWidget.init(fcQStackedWidget_new(parent.h))

proc create*(T: type gen_qstackedwidget_types.QStackedWidget, ): gen_qstackedwidget_types.QStackedWidget =
  gen_qstackedwidget_types.QStackedWidget.init(fcQStackedWidget_new2())

proc metaObject*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedWidget_metaObject(self.h))

proc metacast*(self: gen_qstackedwidget_types.QStackedWidget, param1: cstring): pointer =
  fcQStackedWidget_metacast(self.h, param1)

proc metacall*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQStackedWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring): string =
  let v_ms = fcQStackedWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring): string =
  let v_ms = fcQStackedWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qstackedwidget_types.QStackedWidget, w: gen_qwidget_types.QWidget): cint =
  fcQStackedWidget_addWidget(self.h, w.h)

proc insertWidget*(self: gen_qstackedwidget_types.QStackedWidget, index: cint, w: gen_qwidget_types.QWidget): cint =
  fcQStackedWidget_insertWidget(self.h, index, w.h)

proc removeWidget*(self: gen_qstackedwidget_types.QStackedWidget, w: gen_qwidget_types.QWidget): void =
  fcQStackedWidget_removeWidget(self.h, w.h)

proc currentWidget*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedWidget_currentWidget(self.h))

proc currentIndex*(self: gen_qstackedwidget_types.QStackedWidget, ): cint =
  fcQStackedWidget_currentIndex(self.h)

proc indexOf*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qwidget_types.QWidget): cint =
  fcQStackedWidget_indexOf(self.h, param1.h)

proc widget*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedWidget_widget(self.h, param1))

proc count*(self: gen_qstackedwidget_types.QStackedWidget, ): cint =
  fcQStackedWidget_count(self.h)

proc setCurrentIndex*(self: gen_qstackedwidget_types.QStackedWidget, index: cint): void =
  fcQStackedWidget_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: gen_qstackedwidget_types.QStackedWidget, w: gen_qwidget_types.QWidget): void =
  fcQStackedWidget_setCurrentWidget(self.h, w.h)

proc currentChanged*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): void =
  fcQStackedWidget_currentChanged(self.h, param1)

type QStackedWidgetcurrentChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_QStackedWidget_currentChanged(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QStackedWidgetcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc oncurrentChanged*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetcurrentChangedSlot) =
  var tmp = new QStackedWidgetcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_connect_currentChanged(self.h, cast[int](addr tmp[]))

proc widgetRemoved*(self: gen_qstackedwidget_types.QStackedWidget, index: cint): void =
  fcQStackedWidget_widgetRemoved(self.h, index)

type QStackedWidgetwidgetRemovedSlot* = proc(index: cint)
proc miqt_exec_callback_QStackedWidget_widgetRemoved(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QStackedWidgetwidgetRemovedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc onwidgetRemoved*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetwidgetRemovedSlot) =
  var tmp = new QStackedWidgetwidgetRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_connect_widgetRemoved(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring, c: cstring): string =
  let v_ms = fcQStackedWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStackedWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring, c: cstring): string =
  let v_ms = fcQStackedWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStackedWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QStackedWidgetmetaObject*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQStackedWidget_virtualbase_metaObject(self.h))

type QStackedWidgetmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetmetaObjectProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_metaObject(self: ptr cQStackedWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedWidget_metaObject ".} =
  var nimfunc = cast[ptr QStackedWidgetmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStackedWidgetmetacast*(self: gen_qstackedwidget_types.QStackedWidget, param1: cstring): pointer =
  fQStackedWidget_virtualbase_metacast(self.h, param1)

type QStackedWidgetmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetmetacastProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_metacast(self: ptr cQStackedWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QStackedWidget_metacast ".} =
  var nimfunc = cast[ptr QStackedWidgetmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStackedWidgetmetacall*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint, param2: cint, param3: pointer): cint =
  fQStackedWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStackedWidgetmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetmetacallProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_metacall(self: ptr cQStackedWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStackedWidget_metacall ".} =
  var nimfunc = cast[ptr QStackedWidgetmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStackedWidgetevent*(self: gen_qstackedwidget_types.QStackedWidget, e: gen_qcoreevent_types.QEvent): bool =
  fQStackedWidget_virtualbase_event(self.h, e.h)

type QStackedWidgeteventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgeteventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_event(self: ptr cQStackedWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QStackedWidget_event ".} =
  var nimfunc = cast[ptr QStackedWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStackedWidgetsizeHint*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQStackedWidget_virtualbase_sizeHint(self.h))

type QStackedWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_sizeHint(self: ptr cQStackedWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedWidget_sizeHint ".} =
  var nimfunc = cast[ptr QStackedWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStackedWidgetpaintEvent*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qevent_types.QPaintEvent): void =
  fQStackedWidget_virtualbase_paintEvent(self.h, param1.h)

type QStackedWidgetpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_paintEvent(self: ptr cQStackedWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_paintEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QStackedWidgetchangeEvent*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qcoreevent_types.QEvent): void =
  fQStackedWidget_virtualbase_changeEvent(self.h, param1.h)

type QStackedWidgetchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_changeEvent(self: ptr cQStackedWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_changeEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QStackedWidgetdevType*(self: gen_qstackedwidget_types.QStackedWidget, ): cint =
  fQStackedWidget_virtualbase_devType(self.h)

type QStackedWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_devType(self: ptr cQStackedWidget, slot: int): cint {.exportc: "miqt_exec_callback_QStackedWidget_devType ".} =
  var nimfunc = cast[ptr QStackedWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QStackedWidgetsetVisible*(self: gen_qstackedwidget_types.QStackedWidget, visible: bool): void =
  fQStackedWidget_virtualbase_setVisible(self.h, visible)

type QStackedWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_setVisible(self: ptr cQStackedWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QStackedWidget_setVisible ".} =
  var nimfunc = cast[ptr QStackedWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QStackedWidgetminimumSizeHint*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQStackedWidget_virtualbase_minimumSizeHint(self.h))

type QStackedWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_minimumSizeHint(self: ptr cQStackedWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QStackedWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStackedWidgetheightForWidth*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): cint =
  fQStackedWidget_virtualbase_heightForWidth(self.h, param1)

type QStackedWidgetheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_heightForWidth(self: ptr cQStackedWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QStackedWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QStackedWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStackedWidgethasHeightForWidth*(self: gen_qstackedwidget_types.QStackedWidget, ): bool =
  fQStackedWidget_virtualbase_hasHeightForWidth(self.h)

type QStackedWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QStackedWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_hasHeightForWidth(self: ptr cQStackedWidget, slot: int): bool {.exportc: "miqt_exec_callback_QStackedWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QStackedWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QStackedWidgetpaintEngine*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQStackedWidget_virtualbase_paintEngine(self.h))

type QStackedWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_paintEngine(self: ptr cQStackedWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedWidget_paintEngine ".} =
  var nimfunc = cast[ptr QStackedWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStackedWidgetmousePressEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fQStackedWidget_virtualbase_mousePressEvent(self.h, event.h)

type QStackedWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_mousePressEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetmouseReleaseEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fQStackedWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QStackedWidgetmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_mouseReleaseEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetmouseDoubleClickEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fQStackedWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QStackedWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_mouseDoubleClickEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetmouseMoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fQStackedWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QStackedWidgetmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_mouseMoveEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetwheelEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QWheelEvent): void =
  fQStackedWidget_virtualbase_wheelEvent(self.h, event.h)

type QStackedWidgetwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_wheelEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetkeyPressEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QKeyEvent): void =
  fQStackedWidget_virtualbase_keyPressEvent(self.h, event.h)

type QStackedWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_keyPressEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetkeyReleaseEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QKeyEvent): void =
  fQStackedWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QStackedWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_keyReleaseEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetfocusInEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QFocusEvent): void =
  fQStackedWidget_virtualbase_focusInEvent(self.h, event.h)

type QStackedWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_focusInEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetfocusOutEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QFocusEvent): void =
  fQStackedWidget_virtualbase_focusOutEvent(self.h, event.h)

type QStackedWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_focusOutEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetenterEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QEvent): void =
  fQStackedWidget_virtualbase_enterEvent(self.h, event.h)

type QStackedWidgetenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_enterEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_enterEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetleaveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QEvent): void =
  fQStackedWidget_virtualbase_leaveEvent(self.h, event.h)

type QStackedWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_leaveEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetmoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMoveEvent): void =
  fQStackedWidget_virtualbase_moveEvent(self.h, event.h)

type QStackedWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_moveEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_moveEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetresizeEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QResizeEvent): void =
  fQStackedWidget_virtualbase_resizeEvent(self.h, event.h)

type QStackedWidgetresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_resizeEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetcloseEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QCloseEvent): void =
  fQStackedWidget_virtualbase_closeEvent(self.h, event.h)

type QStackedWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_closeEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_closeEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetcontextMenuEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fQStackedWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QStackedWidgetcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_contextMenuEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgettabletEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QTabletEvent): void =
  fQStackedWidget_virtualbase_tabletEvent(self.h, event.h)

type QStackedWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_tabletEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QStackedWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetactionEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QActionEvent): void =
  fQStackedWidget_virtualbase_actionEvent(self.h, event.h)

type QStackedWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_actionEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_actionEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetdragEnterEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQStackedWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QStackedWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_dragEnterEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetdragMoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fQStackedWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QStackedWidgetdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_dragMoveEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetdragLeaveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fQStackedWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QStackedWidgetdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_dragLeaveEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetdropEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDropEvent): void =
  fQStackedWidget_virtualbase_dropEvent(self.h, event.h)

type QStackedWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_dropEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_dropEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetshowEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QShowEvent): void =
  fQStackedWidget_virtualbase_showEvent(self.h, event.h)

type QStackedWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_showEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_showEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgethideEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QHideEvent): void =
  fQStackedWidget_virtualbase_hideEvent(self.h, event.h)

type QStackedWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_hideEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_hideEvent ".} =
  var nimfunc = cast[ptr QStackedWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetnativeEvent*(self: gen_qstackedwidget_types.QStackedWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQStackedWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QStackedWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_nativeEvent(self: ptr cQStackedWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QStackedWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStackedWidgetmetric*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): cint =
  fQStackedWidget_virtualbase_metric(self.h, cint(param1))

type QStackedWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_metric(self: ptr cQStackedWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QStackedWidget_metric ".} =
  var nimfunc = cast[ptr QStackedWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStackedWidgetinitPainter*(self: gen_qstackedwidget_types.QStackedWidget, painter: gen_qpainter_types.QPainter): void =
  fQStackedWidget_virtualbase_initPainter(self.h, painter.h)

type QStackedWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_initPainter(self: ptr cQStackedWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_initPainter ".} =
  var nimfunc = cast[ptr QStackedWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QStackedWidgetredirected*(self: gen_qstackedwidget_types.QStackedWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQStackedWidget_virtualbase_redirected(self.h, offset.h))

type QStackedWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_redirected(self: ptr cQStackedWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QStackedWidget_redirected ".} =
  var nimfunc = cast[ptr QStackedWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStackedWidgetsharedPainter*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQStackedWidget_virtualbase_sharedPainter(self.h))

type QStackedWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_sharedPainter(self: ptr cQStackedWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QStackedWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStackedWidgetinputMethodEvent*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fQStackedWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QStackedWidgetinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_inputMethodEvent(self: ptr cQStackedWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QStackedWidgetinputMethodQuery*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQStackedWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QStackedWidgetinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_inputMethodQuery(self: ptr cQStackedWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QStackedWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QStackedWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStackedWidgetfocusNextPrevChild*(self: gen_qstackedwidget_types.QStackedWidget, next: bool): bool =
  fQStackedWidget_virtualbase_focusNextPrevChild(self.h, next)

type QStackedWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_focusNextPrevChild(self: ptr cQStackedWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QStackedWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QStackedWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStackedWidgeteventFilter*(self: gen_qstackedwidget_types.QStackedWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQStackedWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStackedWidgeteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QStackedWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_eventFilter(self: ptr cQStackedWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStackedWidget_eventFilter ".} =
  var nimfunc = cast[ptr QStackedWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QStackedWidgettimerEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQStackedWidget_virtualbase_timerEvent(self.h, event.h)

type QStackedWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_timerEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_timerEvent ".} =
  var nimfunc = cast[ptr QStackedWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetchildEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQStackedWidget_virtualbase_childEvent(self.h, event.h)

type QStackedWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_childEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_childEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetcustomEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QEvent): void =
  fQStackedWidget_virtualbase_customEvent(self.h, event.h)

type QStackedWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_customEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_customEvent ".} =
  var nimfunc = cast[ptr QStackedWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStackedWidgetconnectNotify*(self: gen_qstackedwidget_types.QStackedWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStackedWidget_virtualbase_connectNotify(self.h, signal.h)

type QStackedWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_connectNotify(self: ptr cQStackedWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_connectNotify ".} =
  var nimfunc = cast[ptr QStackedWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QStackedWidgetdisconnectNotify*(self: gen_qstackedwidget_types.QStackedWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStackedWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QStackedWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStackedWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_disconnectNotify(self: ptr cQStackedWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QStackedWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qstackedwidget_types.QStackedWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedWidget_staticMetaObject())
proc delete*(self: gen_qstackedwidget_types.QStackedWidget) =
  fcQStackedWidget_delete(self.h)
