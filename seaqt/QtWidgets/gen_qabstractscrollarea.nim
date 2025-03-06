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
{.compile("gen_qabstractscrollarea.cpp", cflags).}


type QAbstractScrollAreaSizeAdjustPolicyEnum* = distinct cint
template AdjustIgnored*(_: type QAbstractScrollAreaSizeAdjustPolicyEnum): untyped = 0
template AdjustToContentsOnFirstShow*(_: type QAbstractScrollAreaSizeAdjustPolicyEnum): untyped = 1
template AdjustToContents*(_: type QAbstractScrollAreaSizeAdjustPolicyEnum): untyped = 2


import ./gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

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
  ./gen_qscrollbar_types,
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
  gen_qscrollbar_types,
  gen_qwidget_types

type cQAbstractScrollArea*{.exportc: "QAbstractScrollArea", incompleteStruct.} = object

proc fcQAbstractScrollArea_new(parent: pointer): ptr cQAbstractScrollArea {.importc: "QAbstractScrollArea_new".}
proc fcQAbstractScrollArea_new2(): ptr cQAbstractScrollArea {.importc: "QAbstractScrollArea_new2".}
proc fcQAbstractScrollArea_metaObject(self: pointer, ): pointer {.importc: "QAbstractScrollArea_metaObject".}
proc fcQAbstractScrollArea_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractScrollArea_metacast".}
proc fcQAbstractScrollArea_tr(s: cstring): struct_miqt_string {.importc: "QAbstractScrollArea_tr".}
proc fcQAbstractScrollArea_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractScrollArea_trUtf8".}
proc fcQAbstractScrollArea_verticalScrollBarPolicy(self: pointer, ): cint {.importc: "QAbstractScrollArea_verticalScrollBarPolicy".}
proc fcQAbstractScrollArea_setVerticalScrollBarPolicy(self: pointer, verticalScrollBarPolicy: cint): void {.importc: "QAbstractScrollArea_setVerticalScrollBarPolicy".}
proc fcQAbstractScrollArea_verticalScrollBar(self: pointer, ): pointer {.importc: "QAbstractScrollArea_verticalScrollBar".}
proc fcQAbstractScrollArea_setVerticalScrollBar(self: pointer, scrollbar: pointer): void {.importc: "QAbstractScrollArea_setVerticalScrollBar".}
proc fcQAbstractScrollArea_horizontalScrollBarPolicy(self: pointer, ): cint {.importc: "QAbstractScrollArea_horizontalScrollBarPolicy".}
proc fcQAbstractScrollArea_setHorizontalScrollBarPolicy(self: pointer, horizontalScrollBarPolicy: cint): void {.importc: "QAbstractScrollArea_setHorizontalScrollBarPolicy".}
proc fcQAbstractScrollArea_horizontalScrollBar(self: pointer, ): pointer {.importc: "QAbstractScrollArea_horizontalScrollBar".}
proc fcQAbstractScrollArea_setHorizontalScrollBar(self: pointer, scrollbar: pointer): void {.importc: "QAbstractScrollArea_setHorizontalScrollBar".}
proc fcQAbstractScrollArea_cornerWidget(self: pointer, ): pointer {.importc: "QAbstractScrollArea_cornerWidget".}
proc fcQAbstractScrollArea_setCornerWidget(self: pointer, widget: pointer): void {.importc: "QAbstractScrollArea_setCornerWidget".}
proc fcQAbstractScrollArea_addScrollBarWidget(self: pointer, widget: pointer, alignment: cint): void {.importc: "QAbstractScrollArea_addScrollBarWidget".}
proc fcQAbstractScrollArea_scrollBarWidgets(self: pointer, alignment: cint): struct_miqt_array {.importc: "QAbstractScrollArea_scrollBarWidgets".}
proc fcQAbstractScrollArea_viewport(self: pointer, ): pointer {.importc: "QAbstractScrollArea_viewport".}
proc fcQAbstractScrollArea_setViewport(self: pointer, widget: pointer): void {.importc: "QAbstractScrollArea_setViewport".}
proc fcQAbstractScrollArea_maximumViewportSize(self: pointer, ): pointer {.importc: "QAbstractScrollArea_maximumViewportSize".}
proc fcQAbstractScrollArea_minimumSizeHint(self: pointer, ): pointer {.importc: "QAbstractScrollArea_minimumSizeHint".}
proc fcQAbstractScrollArea_sizeHint(self: pointer, ): pointer {.importc: "QAbstractScrollArea_sizeHint".}
proc fcQAbstractScrollArea_setupViewport(self: pointer, viewport: pointer): void {.importc: "QAbstractScrollArea_setupViewport".}
proc fcQAbstractScrollArea_sizeAdjustPolicy(self: pointer, ): cint {.importc: "QAbstractScrollArea_sizeAdjustPolicy".}
proc fcQAbstractScrollArea_setSizeAdjustPolicy(self: pointer, policy: cint): void {.importc: "QAbstractScrollArea_setSizeAdjustPolicy".}
proc fcQAbstractScrollArea_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractScrollArea_tr2".}
proc fcQAbstractScrollArea_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractScrollArea_tr3".}
proc fcQAbstractScrollArea_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractScrollArea_trUtf82".}
proc fcQAbstractScrollArea_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractScrollArea_trUtf83".}
proc fQAbstractScrollArea_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractScrollArea_virtualbase_minimumSizeHint".}
proc fcQAbstractScrollArea_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_minimumSizeHint".}
proc fQAbstractScrollArea_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractScrollArea_virtualbase_sizeHint".}
proc fcQAbstractScrollArea_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_sizeHint".}
proc fQAbstractScrollArea_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QAbstractScrollArea_virtualbase_setupViewport".}
proc fcQAbstractScrollArea_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_setupViewport".}
proc fQAbstractScrollArea_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QAbstractScrollArea_virtualbase_eventFilter".}
proc fcQAbstractScrollArea_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_eventFilter".}
proc fQAbstractScrollArea_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QAbstractScrollArea_virtualbase_event".}
proc fcQAbstractScrollArea_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_event".}
proc fQAbstractScrollArea_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QAbstractScrollArea_virtualbase_viewportEvent".}
proc fcQAbstractScrollArea_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_viewportEvent".}
proc fQAbstractScrollArea_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_resizeEvent".}
proc fcQAbstractScrollArea_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_resizeEvent".}
proc fQAbstractScrollArea_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_paintEvent".}
proc fcQAbstractScrollArea_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_paintEvent".}
proc fQAbstractScrollArea_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_mousePressEvent".}
proc fcQAbstractScrollArea_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_mousePressEvent".}
proc fQAbstractScrollArea_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_mouseReleaseEvent".}
proc fcQAbstractScrollArea_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_mouseReleaseEvent".}
proc fQAbstractScrollArea_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractScrollArea_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractScrollArea_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_mouseMoveEvent".}
proc fcQAbstractScrollArea_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_mouseMoveEvent".}
proc fQAbstractScrollArea_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_wheelEvent".}
proc fcQAbstractScrollArea_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_wheelEvent".}
proc fQAbstractScrollArea_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_contextMenuEvent".}
proc fcQAbstractScrollArea_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_contextMenuEvent".}
proc fQAbstractScrollArea_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_dragEnterEvent".}
proc fcQAbstractScrollArea_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_dragEnterEvent".}
proc fQAbstractScrollArea_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_dragMoveEvent".}
proc fcQAbstractScrollArea_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_dragMoveEvent".}
proc fQAbstractScrollArea_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_dragLeaveEvent".}
proc fcQAbstractScrollArea_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_dragLeaveEvent".}
proc fQAbstractScrollArea_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_dropEvent".}
proc fcQAbstractScrollArea_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_dropEvent".}
proc fQAbstractScrollArea_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_keyPressEvent".}
proc fcQAbstractScrollArea_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_keyPressEvent".}
proc fQAbstractScrollArea_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QAbstractScrollArea_virtualbase_scrollContentsBy".}
proc fcQAbstractScrollArea_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_scrollContentsBy".}
proc fQAbstractScrollArea_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QAbstractScrollArea_virtualbase_viewportSizeHint".}
proc fcQAbstractScrollArea_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_viewportSizeHint".}
proc fQAbstractScrollArea_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_changeEvent".}
proc fcQAbstractScrollArea_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_changeEvent".}
proc fQAbstractScrollArea_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractScrollArea_virtualbase_devType".}
proc fcQAbstractScrollArea_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_devType".}
proc fQAbstractScrollArea_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractScrollArea_virtualbase_setVisible".}
proc fcQAbstractScrollArea_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_setVisible".}
proc fQAbstractScrollArea_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractScrollArea_virtualbase_heightForWidth".}
proc fcQAbstractScrollArea_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_heightForWidth".}
proc fQAbstractScrollArea_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractScrollArea_virtualbase_hasHeightForWidth".}
proc fcQAbstractScrollArea_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_hasHeightForWidth".}
proc fQAbstractScrollArea_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractScrollArea_virtualbase_paintEngine".}
proc fcQAbstractScrollArea_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_paintEngine".}
proc fQAbstractScrollArea_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_keyReleaseEvent".}
proc fcQAbstractScrollArea_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_keyReleaseEvent".}
proc fQAbstractScrollArea_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_focusInEvent".}
proc fcQAbstractScrollArea_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_focusInEvent".}
proc fQAbstractScrollArea_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_focusOutEvent".}
proc fcQAbstractScrollArea_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_focusOutEvent".}
proc fQAbstractScrollArea_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_enterEvent".}
proc fcQAbstractScrollArea_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_enterEvent".}
proc fQAbstractScrollArea_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_leaveEvent".}
proc fcQAbstractScrollArea_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_leaveEvent".}
proc fQAbstractScrollArea_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_moveEvent".}
proc fcQAbstractScrollArea_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_moveEvent".}
proc fQAbstractScrollArea_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_closeEvent".}
proc fcQAbstractScrollArea_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_closeEvent".}
proc fQAbstractScrollArea_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_tabletEvent".}
proc fcQAbstractScrollArea_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_tabletEvent".}
proc fQAbstractScrollArea_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_actionEvent".}
proc fcQAbstractScrollArea_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_actionEvent".}
proc fQAbstractScrollArea_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_showEvent".}
proc fcQAbstractScrollArea_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_showEvent".}
proc fQAbstractScrollArea_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_hideEvent".}
proc fcQAbstractScrollArea_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_hideEvent".}
proc fQAbstractScrollArea_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QAbstractScrollArea_virtualbase_nativeEvent".}
proc fcQAbstractScrollArea_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_nativeEvent".}
proc fQAbstractScrollArea_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractScrollArea_virtualbase_metric".}
proc fcQAbstractScrollArea_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_metric".}
proc fQAbstractScrollArea_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractScrollArea_virtualbase_initPainter".}
proc fcQAbstractScrollArea_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_initPainter".}
proc fQAbstractScrollArea_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractScrollArea_virtualbase_redirected".}
proc fcQAbstractScrollArea_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_redirected".}
proc fQAbstractScrollArea_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractScrollArea_virtualbase_sharedPainter".}
proc fcQAbstractScrollArea_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_sharedPainter".}
proc fQAbstractScrollArea_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_inputMethodEvent".}
proc fcQAbstractScrollArea_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_inputMethodEvent".}
proc fQAbstractScrollArea_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QAbstractScrollArea_virtualbase_inputMethodQuery".}
proc fcQAbstractScrollArea_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_inputMethodQuery".}
proc fQAbstractScrollArea_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractScrollArea_virtualbase_focusNextPrevChild".}
proc fcQAbstractScrollArea_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_focusNextPrevChild".}
proc fQAbstractScrollArea_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_timerEvent".}
proc fcQAbstractScrollArea_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_timerEvent".}
proc fQAbstractScrollArea_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_childEvent".}
proc fcQAbstractScrollArea_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_childEvent".}
proc fQAbstractScrollArea_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_customEvent".}
proc fcQAbstractScrollArea_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_customEvent".}
proc fQAbstractScrollArea_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractScrollArea_virtualbase_connectNotify".}
proc fcQAbstractScrollArea_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_connectNotify".}
proc fQAbstractScrollArea_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractScrollArea_virtualbase_disconnectNotify".}
proc fcQAbstractScrollArea_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_disconnectNotify".}
proc fcQAbstractScrollArea_delete(self: pointer) {.importc: "QAbstractScrollArea_delete".}


func init*(T: type gen_qabstractscrollarea_types.QAbstractScrollArea, h: ptr cQAbstractScrollArea): gen_qabstractscrollarea_types.QAbstractScrollArea =
  T(h: h)
proc create*(T: type gen_qabstractscrollarea_types.QAbstractScrollArea, parent: gen_qwidget_types.QWidget): gen_qabstractscrollarea_types.QAbstractScrollArea =
  gen_qabstractscrollarea_types.QAbstractScrollArea.init(fcQAbstractScrollArea_new(parent.h))

proc create*(T: type gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qabstractscrollarea_types.QAbstractScrollArea =
  gen_qabstractscrollarea_types.QAbstractScrollArea.init(fcQAbstractScrollArea_new2())

proc metaObject*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractScrollArea_metaObject(self.h))

proc metacast*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cstring): pointer =
  fcQAbstractScrollArea_metacast(self.h, param1)

proc tr*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring): string =
  let v_ms = fcQAbstractScrollArea_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring): string =
  let v_ms = fcQAbstractScrollArea_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc verticalScrollBarPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): cint =
  cint(fcQAbstractScrollArea_verticalScrollBarPolicy(self.h))

proc setVerticalScrollBarPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, verticalScrollBarPolicy: cint): void =
  fcQAbstractScrollArea_setVerticalScrollBarPolicy(self.h, cint(verticalScrollBarPolicy))

proc verticalScrollBar*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qscrollbar_types.QScrollBar =
  gen_qscrollbar_types.QScrollBar(h: fcQAbstractScrollArea_verticalScrollBar(self.h))

proc setVerticalScrollBar*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, scrollbar: gen_qscrollbar_types.QScrollBar): void =
  fcQAbstractScrollArea_setVerticalScrollBar(self.h, scrollbar.h)

proc horizontalScrollBarPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): cint =
  cint(fcQAbstractScrollArea_horizontalScrollBarPolicy(self.h))

proc setHorizontalScrollBarPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, horizontalScrollBarPolicy: cint): void =
  fcQAbstractScrollArea_setHorizontalScrollBarPolicy(self.h, cint(horizontalScrollBarPolicy))

proc horizontalScrollBar*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qscrollbar_types.QScrollBar =
  gen_qscrollbar_types.QScrollBar(h: fcQAbstractScrollArea_horizontalScrollBar(self.h))

proc setHorizontalScrollBar*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, scrollbar: gen_qscrollbar_types.QScrollBar): void =
  fcQAbstractScrollArea_setHorizontalScrollBar(self.h, scrollbar.h)

proc cornerWidget*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractScrollArea_cornerWidget(self.h))

proc setCornerWidget*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, widget: gen_qwidget_types.QWidget): void =
  fcQAbstractScrollArea_setCornerWidget(self.h, widget.h)

proc addScrollBarWidget*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, widget: gen_qwidget_types.QWidget, alignment: cint): void =
  fcQAbstractScrollArea_addScrollBarWidget(self.h, widget.h, cint(alignment))

proc scrollBarWidgets*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, alignment: cint): seq[gen_qwidget_types.QWidget] =
  var v_ma = fcQAbstractScrollArea_scrollBarWidgets(self.h, cint(alignment))
  var vx_ret = newSeq[gen_qwidget_types.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget_types.QWidget(h: v_outCast[i])
  vx_ret

proc viewport*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractScrollArea_viewport(self.h))

proc setViewport*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, widget: gen_qwidget_types.QWidget): void =
  fcQAbstractScrollArea_setViewport(self.h, widget.h)

proc maximumViewportSize*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_maximumViewportSize(self.h))

proc minimumSizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_minimumSizeHint(self.h))

proc sizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_sizeHint(self.h))

proc setupViewport*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, viewport: gen_qwidget_types.QWidget): void =
  fcQAbstractScrollArea_setupViewport(self.h, viewport.h)

proc sizeAdjustPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): cint =
  cint(fcQAbstractScrollArea_sizeAdjustPolicy(self.h))

proc setSizeAdjustPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, policy: cint): void =
  fcQAbstractScrollArea_setSizeAdjustPolicy(self.h, cint(policy))

proc tr*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractScrollArea_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractScrollArea_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractScrollArea_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractScrollArea_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAbstractScrollAreaminimumSizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractScrollArea_virtualbase_minimumSizeHint(self.h))

type QAbstractScrollAreaminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreaminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreaminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_minimumSizeHint(self: ptr cQAbstractScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_minimumSizeHint ".} =
  var nimfunc = cast[ptr QAbstractScrollAreaminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractScrollAreasizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractScrollArea_virtualbase_sizeHint(self.h))

type QAbstractScrollAreasizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreasizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreasizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_sizeHint(self: ptr cQAbstractScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_sizeHint ".} =
  var nimfunc = cast[ptr QAbstractScrollAreasizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractScrollAreasetupViewport*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, viewport: gen_qwidget_types.QWidget): void =
  fQAbstractScrollArea_virtualbase_setupViewport(self.h, viewport.h)

type QAbstractScrollAreasetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreasetupViewportProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreasetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_setupViewport(self: ptr cQAbstractScrollArea, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_setupViewport ".} =
  var nimfunc = cast[ptr QAbstractScrollAreasetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QAbstractScrollAreaeventFilter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQAbstractScrollArea_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QAbstractScrollAreaeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreaeventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreaeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_eventFilter(self: ptr cQAbstractScrollArea, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractScrollAreaeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractScrollAreaevent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fQAbstractScrollArea_virtualbase_event(self.h, param1.h)

type QAbstractScrollAreaeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreaeventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreaeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_event(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_event ".} =
  var nimfunc = cast[ptr QAbstractScrollAreaeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractScrollAreaviewportEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fQAbstractScrollArea_virtualbase_viewportEvent(self.h, param1.h)

type QAbstractScrollAreaviewportEventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreaviewportEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreaviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_viewportEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_viewportEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreaviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractScrollArearesizeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QResizeEvent): void =
  fQAbstractScrollArea_virtualbase_resizeEvent(self.h, param1.h)

type QAbstractScrollArearesizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollArearesizeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollArearesizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_resizeEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_resizeEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollArearesizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreapaintEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QPaintEvent): void =
  fQAbstractScrollArea_virtualbase_paintEvent(self.h, param1.h)

type QAbstractScrollAreapaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreapaintEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreapaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_paintEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_paintEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreapaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreamousePressEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fQAbstractScrollArea_virtualbase_mousePressEvent(self.h, param1.h)

type QAbstractScrollAreamousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreamousePressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreamousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_mousePressEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_mousePressEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreamousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreamouseReleaseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fQAbstractScrollArea_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QAbstractScrollAreamouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreamouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreamouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_mouseReleaseEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreamouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreamouseDoubleClickEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fQAbstractScrollArea_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QAbstractScrollAreamouseDoubleClickEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreamouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreamouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_mouseDoubleClickEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreamouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreamouseMoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fQAbstractScrollArea_virtualbase_mouseMoveEvent(self.h, param1.h)

type QAbstractScrollAreamouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreamouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreamouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_mouseMoveEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreamouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreawheelEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QWheelEvent): void =
  fQAbstractScrollArea_virtualbase_wheelEvent(self.h, param1.h)

type QAbstractScrollAreawheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreawheelEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreawheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_wheelEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_wheelEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreawheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreacontextMenuEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QContextMenuEvent): void =
  fQAbstractScrollArea_virtualbase_contextMenuEvent(self.h, param1.h)

type QAbstractScrollAreacontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreacontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreacontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_contextMenuEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_contextMenuEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreacontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreadragEnterEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDragEnterEvent): void =
  fQAbstractScrollArea_virtualbase_dragEnterEvent(self.h, param1.h)

type QAbstractScrollAreadragEnterEventProc* = proc(param1: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreadragEnterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreadragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_dragEnterEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_dragEnterEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreadragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreadragMoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDragMoveEvent): void =
  fQAbstractScrollArea_virtualbase_dragMoveEvent(self.h, param1.h)

type QAbstractScrollAreadragMoveEventProc* = proc(param1: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreadragMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreadragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_dragMoveEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_dragMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreadragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreadragLeaveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDragLeaveEvent): void =
  fQAbstractScrollArea_virtualbase_dragLeaveEvent(self.h, param1.h)

type QAbstractScrollAreadragLeaveEventProc* = proc(param1: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreadragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreadragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_dragLeaveEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreadragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreadropEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDropEvent): void =
  fQAbstractScrollArea_virtualbase_dropEvent(self.h, param1.h)

type QAbstractScrollAreadropEventProc* = proc(param1: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreadropEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreadropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_dropEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_dropEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreadropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreakeyPressEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QKeyEvent): void =
  fQAbstractScrollArea_virtualbase_keyPressEvent(self.h, param1.h)

type QAbstractScrollAreakeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreakeyPressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreakeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_keyPressEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_keyPressEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreakeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreascrollContentsBy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, dx: cint, dy: cint): void =
  fQAbstractScrollArea_virtualbase_scrollContentsBy(self.h, dx, dy)

type QAbstractScrollAreascrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreascrollContentsByProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreascrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_scrollContentsBy(self: ptr cQAbstractScrollArea, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_scrollContentsBy ".} =
  var nimfunc = cast[ptr QAbstractScrollAreascrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QAbstractScrollAreaviewportSizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractScrollArea_virtualbase_viewportSizeHint(self.h))

type QAbstractScrollAreaviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreaviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreaviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_viewportSizeHint(self: ptr cQAbstractScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_viewportSizeHint ".} =
  var nimfunc = cast[ptr QAbstractScrollAreaviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractScrollAreachangeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): void =
  fQAbstractScrollArea_virtualbase_changeEvent(self.h, param1.h)

type QAbstractScrollAreachangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreachangeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreachangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_changeEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_changeEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreachangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreadevType*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): cint =
  fQAbstractScrollArea_virtualbase_devType(self.h)

type QAbstractScrollAreadevTypeProc* = proc(): cint
proc ondevType*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreadevTypeProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreadevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_devType(self: ptr cQAbstractScrollArea, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractScrollArea_devType ".} =
  var nimfunc = cast[ptr QAbstractScrollAreadevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractScrollAreasetVisible*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, visible: bool): void =
  fQAbstractScrollArea_virtualbase_setVisible(self.h, visible)

type QAbstractScrollAreasetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreasetVisibleProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreasetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_setVisible(self: ptr cQAbstractScrollArea, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_setVisible ".} =
  var nimfunc = cast[ptr QAbstractScrollAreasetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QAbstractScrollAreaheightForWidth*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint): cint =
  fQAbstractScrollArea_virtualbase_heightForWidth(self.h, param1)

type QAbstractScrollAreaheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreaheightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreaheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_heightForWidth(self: ptr cQAbstractScrollArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractScrollArea_heightForWidth ".} =
  var nimfunc = cast[ptr QAbstractScrollAreaheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractScrollAreahasHeightForWidth*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): bool =
  fQAbstractScrollArea_virtualbase_hasHeightForWidth(self.h)

type QAbstractScrollAreahasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreahasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreahasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_hasHeightForWidth(self: ptr cQAbstractScrollArea, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QAbstractScrollAreahasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractScrollAreapaintEngine*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQAbstractScrollArea_virtualbase_paintEngine(self.h))

type QAbstractScrollAreapaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreapaintEngineProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreapaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_paintEngine(self: ptr cQAbstractScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_paintEngine ".} =
  var nimfunc = cast[ptr QAbstractScrollAreapaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractScrollAreakeyReleaseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QKeyEvent): void =
  fQAbstractScrollArea_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractScrollAreakeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreakeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreakeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_keyReleaseEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreakeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreafocusInEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractScrollArea_virtualbase_focusInEvent(self.h, event.h)

type QAbstractScrollAreafocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreafocusInEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreafocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_focusInEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_focusInEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreafocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreafocusOutEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractScrollArea_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractScrollAreafocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreafocusOutEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreafocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_focusOutEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_focusOutEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreafocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreaenterEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractScrollArea_virtualbase_enterEvent(self.h, event.h)

type QAbstractScrollAreaenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreaenterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreaenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_enterEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_enterEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreaenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollArealeaveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractScrollArea_virtualbase_leaveEvent(self.h, event.h)

type QAbstractScrollArealeaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollArealeaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollArealeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_leaveEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_leaveEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollArealeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreamoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QMoveEvent): void =
  fQAbstractScrollArea_virtualbase_moveEvent(self.h, event.h)

type QAbstractScrollAreamoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreamoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreamoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_moveEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_moveEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreamoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreacloseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QCloseEvent): void =
  fQAbstractScrollArea_virtualbase_closeEvent(self.h, event.h)

type QAbstractScrollAreacloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreacloseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreacloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_closeEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_closeEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreacloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreatabletEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QTabletEvent): void =
  fQAbstractScrollArea_virtualbase_tabletEvent(self.h, event.h)

type QAbstractScrollAreatabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreatabletEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreatabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_tabletEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_tabletEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreatabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreaactionEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QActionEvent): void =
  fQAbstractScrollArea_virtualbase_actionEvent(self.h, event.h)

type QAbstractScrollAreaactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreaactionEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreaactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_actionEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_actionEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreaactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreashowEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QShowEvent): void =
  fQAbstractScrollArea_virtualbase_showEvent(self.h, event.h)

type QAbstractScrollAreashowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreashowEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreashowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_showEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_showEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreashowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreahideEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QHideEvent): void =
  fQAbstractScrollArea_virtualbase_hideEvent(self.h, event.h)

type QAbstractScrollAreahideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreahideEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreahideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_hideEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_hideEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreahideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreanativeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQAbstractScrollArea_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractScrollAreanativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreanativeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreanativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_nativeEvent(self: ptr cQAbstractScrollArea, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_nativeEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreanativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractScrollAreametric*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint): cint =
  fQAbstractScrollArea_virtualbase_metric(self.h, cint(param1))

type QAbstractScrollAreametricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreametricProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreametricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_metric(self: ptr cQAbstractScrollArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractScrollArea_metric ".} =
  var nimfunc = cast[ptr QAbstractScrollAreametricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractScrollAreainitPainter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, painter: gen_qpainter_types.QPainter): void =
  fQAbstractScrollArea_virtualbase_initPainter(self.h, painter.h)

type QAbstractScrollAreainitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreainitPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreainitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_initPainter(self: ptr cQAbstractScrollArea, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_initPainter ".} =
  var nimfunc = cast[ptr QAbstractScrollAreainitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QAbstractScrollArearedirected*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQAbstractScrollArea_virtualbase_redirected(self.h, offset.h))

type QAbstractScrollArearedirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollArearedirectedProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollArearedirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_redirected(self: ptr cQAbstractScrollArea, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_redirected ".} =
  var nimfunc = cast[ptr QAbstractScrollArearedirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractScrollAreasharedPainter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQAbstractScrollArea_virtualbase_sharedPainter(self.h))

type QAbstractScrollAreasharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreasharedPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreasharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_sharedPainter(self: ptr cQAbstractScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_sharedPainter ".} =
  var nimfunc = cast[ptr QAbstractScrollAreasharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractScrollAreainputMethodEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QInputMethodEvent): void =
  fQAbstractScrollArea_virtualbase_inputMethodEvent(self.h, param1.h)

type QAbstractScrollAreainputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreainputMethodEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreainputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_inputMethodEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_inputMethodEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreainputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractScrollAreainputMethodQuery*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractScrollArea_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QAbstractScrollAreainputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreainputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreainputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_inputMethodQuery(self: ptr cQAbstractScrollArea, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_inputMethodQuery ".} =
  var nimfunc = cast[ptr QAbstractScrollAreainputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractScrollAreafocusNextPrevChild*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, next: bool): bool =
  fQAbstractScrollArea_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractScrollAreafocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreafocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreafocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_focusNextPrevChild(self: ptr cQAbstractScrollArea, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QAbstractScrollAreafocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractScrollAreatimerEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractScrollArea_virtualbase_timerEvent(self.h, event.h)

type QAbstractScrollAreatimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreatimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreatimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_timerEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreatimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreachildEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractScrollArea_virtualbase_childEvent(self.h, event.h)

type QAbstractScrollAreachildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreachildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreachildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_childEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_childEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreachildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreacustomEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractScrollArea_virtualbase_customEvent(self.h, event.h)

type QAbstractScrollAreacustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreacustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreacustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_customEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_customEvent ".} =
  var nimfunc = cast[ptr QAbstractScrollAreacustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractScrollAreaconnectNotify*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractScrollArea_virtualbase_connectNotify(self.h, signal.h)

type QAbstractScrollAreaconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreaconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreaconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_connectNotify(self: ptr cQAbstractScrollArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractScrollAreaconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractScrollAreadisconnectNotify*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractScrollArea_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractScrollAreadisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, slot: QAbstractScrollAreadisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractScrollAreadisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_disconnectNotify(self: ptr cQAbstractScrollArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractScrollAreadisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qabstractscrollarea_types.QAbstractScrollArea) =
  fcQAbstractScrollArea_delete(self.h)
