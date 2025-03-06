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

proc fcQAbstractScrollArea_metaObject(self: pointer, ): pointer {.importc: "QAbstractScrollArea_metaObject".}
proc fcQAbstractScrollArea_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractScrollArea_metacast".}
proc fcQAbstractScrollArea_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractScrollArea_metacall".}
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
type cQAbstractScrollAreaVTable = object
  destructor*: proc(vtbl: ptr cQAbstractScrollAreaVTable, self: ptr cQAbstractScrollArea) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractScrollArea_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAbstractScrollArea_virtualbase_metaObject".}
proc fcQAbstractScrollArea_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractScrollArea_virtualbase_metacast".}
proc fcQAbstractScrollArea_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractScrollArea_virtualbase_metacall".}
proc fcQAbstractScrollArea_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QAbstractScrollArea_virtualbase_minimumSizeHint".}
proc fcQAbstractScrollArea_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QAbstractScrollArea_virtualbase_sizeHint".}
proc fcQAbstractScrollArea_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QAbstractScrollArea_virtualbase_setupViewport".}
proc fcQAbstractScrollArea_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QAbstractScrollArea_virtualbase_eventFilter".}
proc fcQAbstractScrollArea_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QAbstractScrollArea_virtualbase_event".}
proc fcQAbstractScrollArea_virtualbase_viewportEvent(self: pointer, param1: pointer): bool {.importc: "QAbstractScrollArea_virtualbase_viewportEvent".}
proc fcQAbstractScrollArea_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_resizeEvent".}
proc fcQAbstractScrollArea_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_paintEvent".}
proc fcQAbstractScrollArea_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_mousePressEvent".}
proc fcQAbstractScrollArea_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_mouseReleaseEvent".}
proc fcQAbstractScrollArea_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractScrollArea_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_mouseMoveEvent".}
proc fcQAbstractScrollArea_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_wheelEvent".}
proc fcQAbstractScrollArea_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_contextMenuEvent".}
proc fcQAbstractScrollArea_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_dragEnterEvent".}
proc fcQAbstractScrollArea_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_dragMoveEvent".}
proc fcQAbstractScrollArea_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_dragLeaveEvent".}
proc fcQAbstractScrollArea_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_dropEvent".}
proc fcQAbstractScrollArea_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_keyPressEvent".}
proc fcQAbstractScrollArea_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QAbstractScrollArea_virtualbase_scrollContentsBy".}
proc fcQAbstractScrollArea_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QAbstractScrollArea_virtualbase_viewportSizeHint".}
proc fcQAbstractScrollArea_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_changeEvent".}
proc fcQAbstractScrollArea_virtualbase_devType(self: pointer, ): cint {.importc: "QAbstractScrollArea_virtualbase_devType".}
proc fcQAbstractScrollArea_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractScrollArea_virtualbase_setVisible".}
proc fcQAbstractScrollArea_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractScrollArea_virtualbase_heightForWidth".}
proc fcQAbstractScrollArea_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QAbstractScrollArea_virtualbase_hasHeightForWidth".}
proc fcQAbstractScrollArea_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QAbstractScrollArea_virtualbase_paintEngine".}
proc fcQAbstractScrollArea_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_keyReleaseEvent".}
proc fcQAbstractScrollArea_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_focusInEvent".}
proc fcQAbstractScrollArea_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_focusOutEvent".}
proc fcQAbstractScrollArea_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_enterEvent".}
proc fcQAbstractScrollArea_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_leaveEvent".}
proc fcQAbstractScrollArea_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_moveEvent".}
proc fcQAbstractScrollArea_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_closeEvent".}
proc fcQAbstractScrollArea_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_tabletEvent".}
proc fcQAbstractScrollArea_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_actionEvent".}
proc fcQAbstractScrollArea_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_showEvent".}
proc fcQAbstractScrollArea_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_hideEvent".}
proc fcQAbstractScrollArea_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QAbstractScrollArea_virtualbase_nativeEvent".}
proc fcQAbstractScrollArea_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QAbstractScrollArea_virtualbase_metric".}
proc fcQAbstractScrollArea_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QAbstractScrollArea_virtualbase_initPainter".}
proc fcQAbstractScrollArea_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QAbstractScrollArea_virtualbase_redirected".}
proc fcQAbstractScrollArea_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QAbstractScrollArea_virtualbase_sharedPainter".}
proc fcQAbstractScrollArea_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_inputMethodEvent".}
proc fcQAbstractScrollArea_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractScrollArea_virtualbase_inputMethodQuery".}
proc fcQAbstractScrollArea_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractScrollArea_virtualbase_focusNextPrevChild".}
proc fcQAbstractScrollArea_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_timerEvent".}
proc fcQAbstractScrollArea_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_childEvent".}
proc fcQAbstractScrollArea_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_customEvent".}
proc fcQAbstractScrollArea_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractScrollArea_virtualbase_connectNotify".}
proc fcQAbstractScrollArea_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractScrollArea_virtualbase_disconnectNotify".}
proc fcQAbstractScrollArea_new(vtbl: pointer, parent: pointer): ptr cQAbstractScrollArea {.importc: "QAbstractScrollArea_new".}
proc fcQAbstractScrollArea_new2(vtbl: pointer, ): ptr cQAbstractScrollArea {.importc: "QAbstractScrollArea_new2".}
proc fcQAbstractScrollArea_staticMetaObject(): pointer {.importc: "QAbstractScrollArea_staticMetaObject".}
proc fcQAbstractScrollArea_delete(self: pointer) {.importc: "QAbstractScrollArea_delete".}

proc metaObject*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractScrollArea_metaObject(self.h))

proc metacast*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cstring): pointer =
  fcQAbstractScrollArea_metacast(self.h, param1)

proc metacall*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractScrollArea_metacall(self.h, cint(param1), param2, param3)

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

type QAbstractScrollAreametaObjectProc* = proc(self: QAbstractScrollArea): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractScrollAreametacastProc* = proc(self: QAbstractScrollArea, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractScrollAreametacallProc* = proc(self: QAbstractScrollArea, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractScrollAreaminimumSizeHintProc* = proc(self: QAbstractScrollArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractScrollAreasizeHintProc* = proc(self: QAbstractScrollArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractScrollAreasetupViewportProc* = proc(self: QAbstractScrollArea, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QAbstractScrollAreaeventFilterProc* = proc(self: QAbstractScrollArea, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractScrollAreaeventProc* = proc(self: QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractScrollAreaviewportEventProc* = proc(self: QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractScrollArearesizeEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreapaintEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreamousePressEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreamouseReleaseEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreamouseDoubleClickEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreamouseMoveEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreawheelEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreacontextMenuEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreadragEnterEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreadragMoveEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreadragLeaveEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreadropEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreakeyPressEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreascrollContentsByProc* = proc(self: QAbstractScrollArea, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QAbstractScrollAreaviewportSizeHintProc* = proc(self: QAbstractScrollArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractScrollAreachangeEventProc* = proc(self: QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreadevTypeProc* = proc(self: QAbstractScrollArea): cint {.raises: [], gcsafe.}
type QAbstractScrollAreasetVisibleProc* = proc(self: QAbstractScrollArea, visible: bool): void {.raises: [], gcsafe.}
type QAbstractScrollAreaheightForWidthProc* = proc(self: QAbstractScrollArea, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractScrollAreahasHeightForWidthProc* = proc(self: QAbstractScrollArea): bool {.raises: [], gcsafe.}
type QAbstractScrollAreapaintEngineProc* = proc(self: QAbstractScrollArea): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QAbstractScrollAreakeyReleaseEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreafocusInEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreafocusOutEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreaenterEventProc* = proc(self: QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractScrollArealeaveEventProc* = proc(self: QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreamoveEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreacloseEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreatabletEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreaactionEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreashowEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreahideEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreanativeEventProc* = proc(self: QAbstractScrollArea, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QAbstractScrollAreametricProc* = proc(self: QAbstractScrollArea, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractScrollAreainitPainterProc* = proc(self: QAbstractScrollArea, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QAbstractScrollArearedirectedProc* = proc(self: QAbstractScrollArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QAbstractScrollAreasharedPainterProc* = proc(self: QAbstractScrollArea): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QAbstractScrollAreainputMethodEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreainputMethodQueryProc* = proc(self: QAbstractScrollArea, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractScrollAreafocusNextPrevChildProc* = proc(self: QAbstractScrollArea, next: bool): bool {.raises: [], gcsafe.}
type QAbstractScrollAreatimerEventProc* = proc(self: QAbstractScrollArea, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreachildEventProc* = proc(self: QAbstractScrollArea, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreacustomEventProc* = proc(self: QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreaconnectNotifyProc* = proc(self: QAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractScrollAreadisconnectNotifyProc* = proc(self: QAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractScrollAreaVTable* = object
  vtbl: cQAbstractScrollAreaVTable
  metaObject*: QAbstractScrollAreametaObjectProc
  metacast*: QAbstractScrollAreametacastProc
  metacall*: QAbstractScrollAreametacallProc
  minimumSizeHint*: QAbstractScrollAreaminimumSizeHintProc
  sizeHint*: QAbstractScrollAreasizeHintProc
  setupViewport*: QAbstractScrollAreasetupViewportProc
  eventFilter*: QAbstractScrollAreaeventFilterProc
  event*: QAbstractScrollAreaeventProc
  viewportEvent*: QAbstractScrollAreaviewportEventProc
  resizeEvent*: QAbstractScrollArearesizeEventProc
  paintEvent*: QAbstractScrollAreapaintEventProc
  mousePressEvent*: QAbstractScrollAreamousePressEventProc
  mouseReleaseEvent*: QAbstractScrollAreamouseReleaseEventProc
  mouseDoubleClickEvent*: QAbstractScrollAreamouseDoubleClickEventProc
  mouseMoveEvent*: QAbstractScrollAreamouseMoveEventProc
  wheelEvent*: QAbstractScrollAreawheelEventProc
  contextMenuEvent*: QAbstractScrollAreacontextMenuEventProc
  dragEnterEvent*: QAbstractScrollAreadragEnterEventProc
  dragMoveEvent*: QAbstractScrollAreadragMoveEventProc
  dragLeaveEvent*: QAbstractScrollAreadragLeaveEventProc
  dropEvent*: QAbstractScrollAreadropEventProc
  keyPressEvent*: QAbstractScrollAreakeyPressEventProc
  scrollContentsBy*: QAbstractScrollAreascrollContentsByProc
  viewportSizeHint*: QAbstractScrollAreaviewportSizeHintProc
  changeEvent*: QAbstractScrollAreachangeEventProc
  devType*: QAbstractScrollAreadevTypeProc
  setVisible*: QAbstractScrollAreasetVisibleProc
  heightForWidth*: QAbstractScrollAreaheightForWidthProc
  hasHeightForWidth*: QAbstractScrollAreahasHeightForWidthProc
  paintEngine*: QAbstractScrollAreapaintEngineProc
  keyReleaseEvent*: QAbstractScrollAreakeyReleaseEventProc
  focusInEvent*: QAbstractScrollAreafocusInEventProc
  focusOutEvent*: QAbstractScrollAreafocusOutEventProc
  enterEvent*: QAbstractScrollAreaenterEventProc
  leaveEvent*: QAbstractScrollArealeaveEventProc
  moveEvent*: QAbstractScrollAreamoveEventProc
  closeEvent*: QAbstractScrollAreacloseEventProc
  tabletEvent*: QAbstractScrollAreatabletEventProc
  actionEvent*: QAbstractScrollAreaactionEventProc
  showEvent*: QAbstractScrollAreashowEventProc
  hideEvent*: QAbstractScrollAreahideEventProc
  nativeEvent*: QAbstractScrollAreanativeEventProc
  metric*: QAbstractScrollAreametricProc
  initPainter*: QAbstractScrollAreainitPainterProc
  redirected*: QAbstractScrollArearedirectedProc
  sharedPainter*: QAbstractScrollAreasharedPainterProc
  inputMethodEvent*: QAbstractScrollAreainputMethodEventProc
  inputMethodQuery*: QAbstractScrollAreainputMethodQueryProc
  focusNextPrevChild*: QAbstractScrollAreafocusNextPrevChildProc
  timerEvent*: QAbstractScrollAreatimerEventProc
  childEvent*: QAbstractScrollAreachildEventProc
  customEvent*: QAbstractScrollAreacustomEventProc
  connectNotify*: QAbstractScrollAreaconnectNotifyProc
  disconnectNotify*: QAbstractScrollAreadisconnectNotifyProc
proc QAbstractScrollAreametaObject*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractScrollArea_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAbstractScrollArea_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAbstractScrollAreametacast*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cstring): pointer =
  fcQAbstractScrollArea_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAbstractScrollArea_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractScrollAreametacall*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractScrollArea_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAbstractScrollArea_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractScrollAreaminimumSizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQAbstractScrollArea_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QAbstractScrollAreasizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQAbstractScrollArea_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QAbstractScrollAreasetupViewport*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, viewport: gen_qwidget_types.QWidget): void =
  fcQAbstractScrollArea_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQAbstractScrollArea_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QAbstractScrollAreaeventFilter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractScrollArea_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQAbstractScrollArea_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractScrollAreaevent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractScrollArea_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractScrollAreaviewportEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractScrollArea_virtualbase_viewportEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_viewportEvent(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QAbstractScrollArearesizeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QResizeEvent): void =
  fcQAbstractScrollArea_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QAbstractScrollAreapaintEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QPaintEvent): void =
  fcQAbstractScrollArea_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QAbstractScrollAreamousePressEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQAbstractScrollArea_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QAbstractScrollAreamouseReleaseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQAbstractScrollArea_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QAbstractScrollAreamouseDoubleClickEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQAbstractScrollArea_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_mouseDoubleClickEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QAbstractScrollAreamouseMoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQAbstractScrollArea_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QAbstractScrollAreawheelEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QWheelEvent): void =
  fcQAbstractScrollArea_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QAbstractScrollAreacontextMenuEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractScrollArea_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QAbstractScrollAreadragEnterEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractScrollArea_virtualbase_dragEnterEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_dragEnterEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)
  vtbl[].dragEnterEvent(self, slotval1)

proc QAbstractScrollAreadragMoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractScrollArea_virtualbase_dragMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_dragMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)
  vtbl[].dragMoveEvent(self, slotval1)

proc QAbstractScrollAreadragLeaveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractScrollArea_virtualbase_dragLeaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_dragLeaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QAbstractScrollAreadropEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDropEvent): void =
  fcQAbstractScrollArea_virtualbase_dropEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_dropEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)
  vtbl[].dropEvent(self, slotval1)

proc QAbstractScrollAreakeyPressEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QKeyEvent): void =
  fcQAbstractScrollArea_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QAbstractScrollAreascrollContentsBy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, dx: cint, dy: cint): void =
  fcQAbstractScrollArea_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQAbstractScrollArea_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QAbstractScrollAreaviewportSizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQAbstractScrollArea_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QAbstractScrollAreachangeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): void =
  fcQAbstractScrollArea_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QAbstractScrollAreadevType*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): cint =
  fcQAbstractScrollArea_virtualbase_devType(self.h)

proc miqt_exec_callback_cQAbstractScrollArea_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QAbstractScrollAreasetVisible*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, visible: bool): void =
  fcQAbstractScrollArea_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQAbstractScrollArea_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QAbstractScrollAreaheightForWidth*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint): cint =
  fcQAbstractScrollArea_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQAbstractScrollArea_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QAbstractScrollAreahasHeightForWidth*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): bool =
  fcQAbstractScrollArea_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQAbstractScrollArea_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QAbstractScrollAreapaintEngine*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractScrollArea_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQAbstractScrollArea_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QAbstractScrollAreakeyReleaseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractScrollArea_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QAbstractScrollAreafocusInEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractScrollArea_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QAbstractScrollAreafocusOutEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractScrollArea_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QAbstractScrollAreaenterEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractScrollArea_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QAbstractScrollArealeaveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractScrollArea_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QAbstractScrollAreamoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractScrollArea_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QAbstractScrollAreacloseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QCloseEvent): void =
  fcQAbstractScrollArea_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QAbstractScrollAreatabletEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractScrollArea_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QAbstractScrollAreaactionEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractScrollArea_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QAbstractScrollAreashowEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QShowEvent): void =
  fcQAbstractScrollArea_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QAbstractScrollAreahideEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractScrollArea_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QAbstractScrollAreanativeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractScrollArea_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQAbstractScrollArea_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractScrollAreametric*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint): cint =
  fcQAbstractScrollArea_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQAbstractScrollArea_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QAbstractScrollAreainitPainter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractScrollArea_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQAbstractScrollArea_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QAbstractScrollArearedirected*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractScrollArea_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQAbstractScrollArea_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QAbstractScrollAreasharedPainter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractScrollArea_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQAbstractScrollArea_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QAbstractScrollAreainputMethodEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractScrollArea_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractScrollArea_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QAbstractScrollAreainputMethodQuery*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractScrollArea_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQAbstractScrollArea_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QAbstractScrollAreafocusNextPrevChild*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, next: bool): bool =
  fcQAbstractScrollArea_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQAbstractScrollArea_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QAbstractScrollAreatimerEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractScrollArea_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractScrollAreachildEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractScrollArea_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAbstractScrollAreacustomEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractScrollArea_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractScrollArea_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAbstractScrollAreaconnectNotify*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractScrollArea_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractScrollArea_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractScrollAreadisconnectNotify*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractScrollArea_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractScrollArea_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](vtbl)
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qabstractscrollarea_types.QAbstractScrollArea,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QAbstractScrollAreaVTable = nil): gen_qabstractscrollarea_types.QAbstractScrollArea =
  let vtbl = if vtbl == nil: new QAbstractScrollAreaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractScrollAreaVTable, _: ptr cQAbstractScrollArea) {.cdecl.} =
    let vtbl = cast[ref QAbstractScrollAreaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractScrollArea_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractScrollArea_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractScrollArea_metacall
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractScrollArea_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractScrollArea_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQAbstractScrollArea_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractScrollArea_eventFilter
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractScrollArea_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQAbstractScrollArea_viewportEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractScrollArea_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractScrollArea_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractScrollArea_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractScrollArea_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractScrollArea_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractScrollArea_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractScrollArea_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractScrollArea_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractScrollArea_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractScrollArea_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractScrollArea_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractScrollArea_dropEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractScrollArea_keyPressEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQAbstractScrollArea_scrollContentsBy
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQAbstractScrollArea_viewportSizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractScrollArea_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractScrollArea_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractScrollArea_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractScrollArea_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractScrollArea_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractScrollArea_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractScrollArea_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractScrollArea_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractScrollArea_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractScrollArea_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractScrollArea_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractScrollArea_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractScrollArea_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractScrollArea_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractScrollArea_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractScrollArea_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractScrollArea_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractScrollArea_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractScrollArea_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractScrollArea_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractScrollArea_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractScrollArea_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractScrollArea_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractScrollArea_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractScrollArea_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractScrollArea_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractScrollArea_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractScrollArea_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractScrollArea_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractScrollArea_disconnectNotify
  gen_qabstractscrollarea_types.QAbstractScrollArea(h: fcQAbstractScrollArea_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qabstractscrollarea_types.QAbstractScrollArea,
    vtbl: ref QAbstractScrollAreaVTable = nil): gen_qabstractscrollarea_types.QAbstractScrollArea =
  let vtbl = if vtbl == nil: new QAbstractScrollAreaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractScrollAreaVTable, _: ptr cQAbstractScrollArea) {.cdecl.} =
    let vtbl = cast[ref QAbstractScrollAreaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractScrollArea_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractScrollArea_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractScrollArea_metacall
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractScrollArea_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractScrollArea_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQAbstractScrollArea_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractScrollArea_eventFilter
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractScrollArea_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQAbstractScrollArea_viewportEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractScrollArea_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractScrollArea_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractScrollArea_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractScrollArea_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractScrollArea_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractScrollArea_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractScrollArea_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractScrollArea_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractScrollArea_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractScrollArea_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractScrollArea_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractScrollArea_dropEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractScrollArea_keyPressEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQAbstractScrollArea_scrollContentsBy
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQAbstractScrollArea_viewportSizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractScrollArea_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractScrollArea_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractScrollArea_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractScrollArea_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractScrollArea_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractScrollArea_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractScrollArea_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractScrollArea_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractScrollArea_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractScrollArea_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractScrollArea_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractScrollArea_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractScrollArea_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractScrollArea_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractScrollArea_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractScrollArea_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractScrollArea_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractScrollArea_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractScrollArea_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractScrollArea_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractScrollArea_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractScrollArea_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractScrollArea_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractScrollArea_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractScrollArea_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractScrollArea_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractScrollArea_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractScrollArea_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractScrollArea_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractScrollArea_disconnectNotify
  gen_qabstractscrollarea_types.QAbstractScrollArea(h: fcQAbstractScrollArea_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractScrollArea_staticMetaObject())
proc delete*(self: gen_qabstractscrollarea_types.QAbstractScrollArea) =
  fcQAbstractScrollArea_delete(self.h)
