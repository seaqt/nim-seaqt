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
  gen_qwidget_types

type cQScrollArea*{.exportc: "QScrollArea", incompleteStruct.} = object

proc fcQScrollArea_metaObject(self: pointer, ): pointer {.importc: "QScrollArea_metaObject".}
proc fcQScrollArea_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollArea_metacast".}
proc fcQScrollArea_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollArea_metacall".}
proc fcQScrollArea_tr(s: cstring): struct_miqt_string {.importc: "QScrollArea_tr".}
proc fcQScrollArea_trUtf8(s: cstring): struct_miqt_string {.importc: "QScrollArea_trUtf8".}
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
proc fcQScrollArea_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QScrollArea_trUtf82".}
proc fcQScrollArea_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScrollArea_trUtf83".}
proc fcQScrollArea_ensureVisible3(self: pointer, x: cint, y: cint, xmargin: cint): void {.importc: "QScrollArea_ensureVisible3".}
proc fcQScrollArea_ensureVisible4(self: pointer, x: cint, y: cint, xmargin: cint, ymargin: cint): void {.importc: "QScrollArea_ensureVisible4".}
proc fcQScrollArea_ensureWidgetVisible2(self: pointer, childWidget: pointer, xmargin: cint): void {.importc: "QScrollArea_ensureWidgetVisible2".}
proc fcQScrollArea_ensureWidgetVisible3(self: pointer, childWidget: pointer, xmargin: cint, ymargin: cint): void {.importc: "QScrollArea_ensureWidgetVisible3".}
type cQScrollAreaVTable = object
  destructor*: proc(vtbl: ptr cQScrollAreaVTable, self: ptr cQScrollArea) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
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
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQScrollArea_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QScrollArea_virtualbase_metaObject".}
proc fcQScrollArea_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollArea_virtualbase_metacast".}
proc fcQScrollArea_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollArea_virtualbase_metacall".}
proc fcQScrollArea_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QScrollArea_virtualbase_sizeHint".}
proc fcQScrollArea_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QScrollArea_virtualbase_focusNextPrevChild".}
proc fcQScrollArea_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QScrollArea_virtualbase_event".}
proc fcQScrollArea_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QScrollArea_virtualbase_eventFilter".}
proc fcQScrollArea_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_resizeEvent".}
proc fcQScrollArea_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QScrollArea_virtualbase_scrollContentsBy".}
proc fcQScrollArea_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QScrollArea_virtualbase_viewportSizeHint".}
proc fcQScrollArea_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QScrollArea_virtualbase_minimumSizeHint".}
proc fcQScrollArea_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QScrollArea_virtualbase_setupViewport".}
proc fcQScrollArea_virtualbase_viewportEvent(self: pointer, param1: pointer): bool {.importc: "QScrollArea_virtualbase_viewportEvent".}
proc fcQScrollArea_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_paintEvent".}
proc fcQScrollArea_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_mousePressEvent".}
proc fcQScrollArea_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_mouseReleaseEvent".}
proc fcQScrollArea_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_mouseDoubleClickEvent".}
proc fcQScrollArea_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_mouseMoveEvent".}
proc fcQScrollArea_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_wheelEvent".}
proc fcQScrollArea_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_contextMenuEvent".}
proc fcQScrollArea_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_dragEnterEvent".}
proc fcQScrollArea_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_dragMoveEvent".}
proc fcQScrollArea_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_dragLeaveEvent".}
proc fcQScrollArea_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_dropEvent".}
proc fcQScrollArea_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_keyPressEvent".}
proc fcQScrollArea_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_changeEvent".}
proc fcQScrollArea_virtualbase_devType(self: pointer, ): cint {.importc: "QScrollArea_virtualbase_devType".}
proc fcQScrollArea_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QScrollArea_virtualbase_setVisible".}
proc fcQScrollArea_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QScrollArea_virtualbase_heightForWidth".}
proc fcQScrollArea_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QScrollArea_virtualbase_hasHeightForWidth".}
proc fcQScrollArea_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QScrollArea_virtualbase_paintEngine".}
proc fcQScrollArea_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_keyReleaseEvent".}
proc fcQScrollArea_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_focusInEvent".}
proc fcQScrollArea_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_focusOutEvent".}
proc fcQScrollArea_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_enterEvent".}
proc fcQScrollArea_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_leaveEvent".}
proc fcQScrollArea_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_moveEvent".}
proc fcQScrollArea_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_closeEvent".}
proc fcQScrollArea_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_tabletEvent".}
proc fcQScrollArea_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_actionEvent".}
proc fcQScrollArea_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_showEvent".}
proc fcQScrollArea_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_hideEvent".}
proc fcQScrollArea_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QScrollArea_virtualbase_nativeEvent".}
proc fcQScrollArea_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QScrollArea_virtualbase_metric".}
proc fcQScrollArea_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QScrollArea_virtualbase_initPainter".}
proc fcQScrollArea_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QScrollArea_virtualbase_redirected".}
proc fcQScrollArea_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QScrollArea_virtualbase_sharedPainter".}
proc fcQScrollArea_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_inputMethodEvent".}
proc fcQScrollArea_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QScrollArea_virtualbase_inputMethodQuery".}
proc fcQScrollArea_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_timerEvent".}
proc fcQScrollArea_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_childEvent".}
proc fcQScrollArea_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_customEvent".}
proc fcQScrollArea_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QScrollArea_virtualbase_connectNotify".}
proc fcQScrollArea_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QScrollArea_virtualbase_disconnectNotify".}
proc fcQScrollArea_new(vtbl: pointer, parent: pointer): ptr cQScrollArea {.importc: "QScrollArea_new".}
proc fcQScrollArea_new2(vtbl: pointer, ): ptr cQScrollArea {.importc: "QScrollArea_new2".}
proc fcQScrollArea_staticMetaObject(): pointer {.importc: "QScrollArea_staticMetaObject".}
proc fcQScrollArea_delete(self: pointer) {.importc: "QScrollArea_delete".}

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

proc trUtf8*(_: type gen_qscrollarea_types.QScrollArea, s: cstring): string =
  let v_ms = fcQScrollArea_trUtf8(s)
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

proc trUtf8*(_: type gen_qscrollarea_types.QScrollArea, s: cstring, c: cstring): string =
  let v_ms = fcQScrollArea_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscrollarea_types.QScrollArea, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScrollArea_trUtf83(s, c, n)
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

type QScrollAreametaObjectProc* = proc(self: QScrollArea): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QScrollAreametacastProc* = proc(self: QScrollArea, param1: cstring): pointer {.raises: [], gcsafe.}
type QScrollAreametacallProc* = proc(self: QScrollArea, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QScrollAreasizeHintProc* = proc(self: QScrollArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QScrollAreafocusNextPrevChildProc* = proc(self: QScrollArea, next: bool): bool {.raises: [], gcsafe.}
type QScrollAreaeventProc* = proc(self: QScrollArea, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QScrollAreaeventFilterProc* = proc(self: QScrollArea, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QScrollArearesizeEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QScrollAreascrollContentsByProc* = proc(self: QScrollArea, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QScrollAreaviewportSizeHintProc* = proc(self: QScrollArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QScrollAreaminimumSizeHintProc* = proc(self: QScrollArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QScrollAreasetupViewportProc* = proc(self: QScrollArea, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QScrollAreaviewportEventProc* = proc(self: QScrollArea, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QScrollAreapaintEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QScrollAreamousePressEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QScrollAreamouseReleaseEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QScrollAreamouseDoubleClickEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QScrollAreamouseMoveEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QScrollAreawheelEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QScrollAreacontextMenuEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QScrollAreadragEnterEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QScrollAreadragMoveEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QScrollAreadragLeaveEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QScrollAreadropEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QScrollAreakeyPressEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QScrollAreachangeEventProc* = proc(self: QScrollArea, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QScrollAreadevTypeProc* = proc(self: QScrollArea): cint {.raises: [], gcsafe.}
type QScrollAreasetVisibleProc* = proc(self: QScrollArea, visible: bool): void {.raises: [], gcsafe.}
type QScrollAreaheightForWidthProc* = proc(self: QScrollArea, param1: cint): cint {.raises: [], gcsafe.}
type QScrollAreahasHeightForWidthProc* = proc(self: QScrollArea): bool {.raises: [], gcsafe.}
type QScrollAreapaintEngineProc* = proc(self: QScrollArea): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QScrollAreakeyReleaseEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QScrollAreafocusInEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QScrollAreafocusOutEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QScrollAreaenterEventProc* = proc(self: QScrollArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QScrollArealeaveEventProc* = proc(self: QScrollArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QScrollAreamoveEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QScrollAreacloseEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QScrollAreatabletEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QScrollAreaactionEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QScrollAreashowEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QScrollAreahideEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QScrollAreanativeEventProc* = proc(self: QScrollArea, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QScrollAreametricProc* = proc(self: QScrollArea, param1: cint): cint {.raises: [], gcsafe.}
type QScrollAreainitPainterProc* = proc(self: QScrollArea, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QScrollArearedirectedProc* = proc(self: QScrollArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QScrollAreasharedPainterProc* = proc(self: QScrollArea): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QScrollAreainputMethodEventProc* = proc(self: QScrollArea, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QScrollAreainputMethodQueryProc* = proc(self: QScrollArea, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QScrollAreatimerEventProc* = proc(self: QScrollArea, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QScrollAreachildEventProc* = proc(self: QScrollArea, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QScrollAreacustomEventProc* = proc(self: QScrollArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QScrollAreaconnectNotifyProc* = proc(self: QScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QScrollAreadisconnectNotifyProc* = proc(self: QScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QScrollAreaVTable* = object
  vtbl: cQScrollAreaVTable
  metaObject*: QScrollAreametaObjectProc
  metacast*: QScrollAreametacastProc
  metacall*: QScrollAreametacallProc
  sizeHint*: QScrollAreasizeHintProc
  focusNextPrevChild*: QScrollAreafocusNextPrevChildProc
  event*: QScrollAreaeventProc
  eventFilter*: QScrollAreaeventFilterProc
  resizeEvent*: QScrollArearesizeEventProc
  scrollContentsBy*: QScrollAreascrollContentsByProc
  viewportSizeHint*: QScrollAreaviewportSizeHintProc
  minimumSizeHint*: QScrollAreaminimumSizeHintProc
  setupViewport*: QScrollAreasetupViewportProc
  viewportEvent*: QScrollAreaviewportEventProc
  paintEvent*: QScrollAreapaintEventProc
  mousePressEvent*: QScrollAreamousePressEventProc
  mouseReleaseEvent*: QScrollAreamouseReleaseEventProc
  mouseDoubleClickEvent*: QScrollAreamouseDoubleClickEventProc
  mouseMoveEvent*: QScrollAreamouseMoveEventProc
  wheelEvent*: QScrollAreawheelEventProc
  contextMenuEvent*: QScrollAreacontextMenuEventProc
  dragEnterEvent*: QScrollAreadragEnterEventProc
  dragMoveEvent*: QScrollAreadragMoveEventProc
  dragLeaveEvent*: QScrollAreadragLeaveEventProc
  dropEvent*: QScrollAreadropEventProc
  keyPressEvent*: QScrollAreakeyPressEventProc
  changeEvent*: QScrollAreachangeEventProc
  devType*: QScrollAreadevTypeProc
  setVisible*: QScrollAreasetVisibleProc
  heightForWidth*: QScrollAreaheightForWidthProc
  hasHeightForWidth*: QScrollAreahasHeightForWidthProc
  paintEngine*: QScrollAreapaintEngineProc
  keyReleaseEvent*: QScrollAreakeyReleaseEventProc
  focusInEvent*: QScrollAreafocusInEventProc
  focusOutEvent*: QScrollAreafocusOutEventProc
  enterEvent*: QScrollAreaenterEventProc
  leaveEvent*: QScrollArealeaveEventProc
  moveEvent*: QScrollAreamoveEventProc
  closeEvent*: QScrollAreacloseEventProc
  tabletEvent*: QScrollAreatabletEventProc
  actionEvent*: QScrollAreaactionEventProc
  showEvent*: QScrollAreashowEventProc
  hideEvent*: QScrollAreahideEventProc
  nativeEvent*: QScrollAreanativeEventProc
  metric*: QScrollAreametricProc
  initPainter*: QScrollAreainitPainterProc
  redirected*: QScrollArearedirectedProc
  sharedPainter*: QScrollAreasharedPainterProc
  inputMethodEvent*: QScrollAreainputMethodEventProc
  inputMethodQuery*: QScrollAreainputMethodQueryProc
  timerEvent*: QScrollAreatimerEventProc
  childEvent*: QScrollAreachildEventProc
  customEvent*: QScrollAreacustomEventProc
  connectNotify*: QScrollAreaconnectNotifyProc
  disconnectNotify*: QScrollAreadisconnectNotifyProc
proc QScrollAreametaObject*(self: gen_qscrollarea_types.QScrollArea, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollArea_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQScrollArea_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QScrollAreametacast*(self: gen_qscrollarea_types.QScrollArea, param1: cstring): pointer =
  fcQScrollArea_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQScrollArea_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QScrollAreametacall*(self: gen_qscrollarea_types.QScrollArea, param1: cint, param2: cint, param3: pointer): cint =
  fcQScrollArea_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQScrollArea_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QScrollAreasizeHint*(self: gen_qscrollarea_types.QScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollArea_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQScrollArea_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QScrollAreafocusNextPrevChild*(self: gen_qscrollarea_types.QScrollArea, next: bool): bool =
  fcQScrollArea_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQScrollArea_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QScrollAreaevent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fcQScrollArea_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QScrollAreaeventFilter*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQScrollArea_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQScrollArea_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QScrollArearesizeEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QResizeEvent): void =
  fcQScrollArea_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QScrollAreascrollContentsBy*(self: gen_qscrollarea_types.QScrollArea, dx: cint, dy: cint): void =
  fcQScrollArea_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQScrollArea_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QScrollAreaviewportSizeHint*(self: gen_qscrollarea_types.QScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollArea_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQScrollArea_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QScrollAreaminimumSizeHint*(self: gen_qscrollarea_types.QScrollArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollArea_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQScrollArea_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QScrollAreasetupViewport*(self: gen_qscrollarea_types.QScrollArea, viewport: gen_qwidget_types.QWidget): void =
  fcQScrollArea_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQScrollArea_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QScrollAreaviewportEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fcQScrollArea_virtualbase_viewportEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_viewportEvent(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QScrollAreapaintEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QPaintEvent): void =
  fcQScrollArea_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QScrollAreamousePressEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollArea_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QScrollAreamouseReleaseEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollArea_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QScrollAreamouseDoubleClickEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollArea_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_mouseDoubleClickEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QScrollAreamouseMoveEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollArea_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QScrollAreawheelEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QWheelEvent): void =
  fcQScrollArea_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QScrollAreacontextMenuEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQScrollArea_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QScrollAreadragEnterEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQScrollArea_virtualbase_dragEnterEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_dragEnterEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)
  vtbl[].dragEnterEvent(self, slotval1)

proc QScrollAreadragMoveEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQScrollArea_virtualbase_dragMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_dragMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)
  vtbl[].dragMoveEvent(self, slotval1)

proc QScrollAreadragLeaveEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQScrollArea_virtualbase_dragLeaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_dragLeaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QScrollAreadropEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDropEvent): void =
  fcQScrollArea_virtualbase_dropEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_dropEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)
  vtbl[].dropEvent(self, slotval1)

proc QScrollAreakeyPressEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QKeyEvent): void =
  fcQScrollArea_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QScrollAreachangeEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qcoreevent_types.QEvent): void =
  fcQScrollArea_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QScrollAreadevType*(self: gen_qscrollarea_types.QScrollArea, ): cint =
  fcQScrollArea_virtualbase_devType(self.h)

proc miqt_exec_callback_cQScrollArea_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QScrollAreasetVisible*(self: gen_qscrollarea_types.QScrollArea, visible: bool): void =
  fcQScrollArea_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQScrollArea_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QScrollAreaheightForWidth*(self: gen_qscrollarea_types.QScrollArea, param1: cint): cint =
  fcQScrollArea_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQScrollArea_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QScrollAreahasHeightForWidth*(self: gen_qscrollarea_types.QScrollArea, ): bool =
  fcQScrollArea_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQScrollArea_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QScrollAreapaintEngine*(self: gen_qscrollarea_types.QScrollArea, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQScrollArea_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQScrollArea_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QScrollAreakeyReleaseEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QKeyEvent): void =
  fcQScrollArea_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QScrollAreafocusInEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fcQScrollArea_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QScrollAreafocusOutEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fcQScrollArea_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QScrollAreaenterEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fcQScrollArea_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QScrollArealeaveEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fcQScrollArea_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QScrollAreamoveEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QMoveEvent): void =
  fcQScrollArea_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QScrollAreacloseEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QCloseEvent): void =
  fcQScrollArea_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QScrollAreatabletEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QTabletEvent): void =
  fcQScrollArea_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QScrollAreaactionEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QActionEvent): void =
  fcQScrollArea_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QScrollAreashowEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QShowEvent): void =
  fcQScrollArea_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QScrollAreahideEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QHideEvent): void =
  fcQScrollArea_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QScrollAreanativeEvent*(self: gen_qscrollarea_types.QScrollArea, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQScrollArea_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQScrollArea_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QScrollAreametric*(self: gen_qscrollarea_types.QScrollArea, param1: cint): cint =
  fcQScrollArea_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQScrollArea_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QScrollAreainitPainter*(self: gen_qscrollarea_types.QScrollArea, painter: gen_qpainter_types.QPainter): void =
  fcQScrollArea_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQScrollArea_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QScrollArearedirected*(self: gen_qscrollarea_types.QScrollArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQScrollArea_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQScrollArea_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QScrollAreasharedPainter*(self: gen_qscrollarea_types.QScrollArea, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQScrollArea_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQScrollArea_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QScrollAreainputMethodEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQScrollArea_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollArea_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QScrollAreainputMethodQuery*(self: gen_qscrollarea_types.QScrollArea, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScrollArea_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQScrollArea_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QScrollAreatimerEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQScrollArea_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QScrollAreachildEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QChildEvent): void =
  fcQScrollArea_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QScrollAreacustomEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fcQScrollArea_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollArea_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QScrollAreaconnectNotify*(self: gen_qscrollarea_types.QScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScrollArea_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQScrollArea_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QScrollAreadisconnectNotify*(self: gen_qscrollarea_types.QScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScrollArea_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQScrollArea_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](vtbl)
  let self = QScrollArea(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscrollarea_types.QScrollArea,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QScrollAreaVTable = nil): gen_qscrollarea_types.QScrollArea =
  let vtbl = if vtbl == nil: new QScrollAreaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQScrollAreaVTable, _: ptr cQScrollArea) {.cdecl.} =
    let vtbl = cast[ref QScrollAreaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQScrollArea_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQScrollArea_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQScrollArea_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQScrollArea_sizeHint
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQScrollArea_focusNextPrevChild
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQScrollArea_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQScrollArea_eventFilter
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQScrollArea_resizeEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQScrollArea_scrollContentsBy
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQScrollArea_viewportSizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQScrollArea_minimumSizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQScrollArea_setupViewport
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQScrollArea_viewportEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQScrollArea_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQScrollArea_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQScrollArea_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQScrollArea_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQScrollArea_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQScrollArea_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQScrollArea_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQScrollArea_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQScrollArea_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQScrollArea_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQScrollArea_dropEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQScrollArea_keyPressEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQScrollArea_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQScrollArea_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQScrollArea_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQScrollArea_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQScrollArea_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQScrollArea_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQScrollArea_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQScrollArea_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQScrollArea_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQScrollArea_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQScrollArea_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQScrollArea_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQScrollArea_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQScrollArea_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQScrollArea_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQScrollArea_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQScrollArea_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQScrollArea_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQScrollArea_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQScrollArea_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQScrollArea_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQScrollArea_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQScrollArea_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQScrollArea_inputMethodQuery
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQScrollArea_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQScrollArea_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQScrollArea_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQScrollArea_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQScrollArea_disconnectNotify
  gen_qscrollarea_types.QScrollArea(h: fcQScrollArea_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qscrollarea_types.QScrollArea,
    vtbl: ref QScrollAreaVTable = nil): gen_qscrollarea_types.QScrollArea =
  let vtbl = if vtbl == nil: new QScrollAreaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQScrollAreaVTable, _: ptr cQScrollArea) {.cdecl.} =
    let vtbl = cast[ref QScrollAreaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQScrollArea_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQScrollArea_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQScrollArea_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQScrollArea_sizeHint
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQScrollArea_focusNextPrevChild
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQScrollArea_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQScrollArea_eventFilter
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQScrollArea_resizeEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQScrollArea_scrollContentsBy
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQScrollArea_viewportSizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQScrollArea_minimumSizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQScrollArea_setupViewport
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQScrollArea_viewportEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQScrollArea_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQScrollArea_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQScrollArea_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQScrollArea_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQScrollArea_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQScrollArea_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQScrollArea_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQScrollArea_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQScrollArea_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQScrollArea_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQScrollArea_dropEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQScrollArea_keyPressEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQScrollArea_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQScrollArea_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQScrollArea_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQScrollArea_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQScrollArea_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQScrollArea_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQScrollArea_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQScrollArea_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQScrollArea_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQScrollArea_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQScrollArea_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQScrollArea_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQScrollArea_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQScrollArea_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQScrollArea_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQScrollArea_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQScrollArea_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQScrollArea_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQScrollArea_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQScrollArea_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQScrollArea_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQScrollArea_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQScrollArea_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQScrollArea_inputMethodQuery
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQScrollArea_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQScrollArea_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQScrollArea_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQScrollArea_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQScrollArea_disconnectNotify
  gen_qscrollarea_types.QScrollArea(h: fcQScrollArea_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qscrollarea_types.QScrollArea): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollArea_staticMetaObject())
proc delete*(self: gen_qscrollarea_types.QScrollArea) =
  fcQScrollArea_delete(self.h)
