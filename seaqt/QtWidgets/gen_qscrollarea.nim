import ./Qt6Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qscrollarea.cpp", cflags).}


import ./gen_qscrollarea_types
export gen_qscrollarea_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmargins_types,
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
  gen_qmargins_types,
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

proc fcQScrollArea_metaObject(self: pointer): pointer {.importc: "QScrollArea_metaObject".}
proc fcQScrollArea_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollArea_metacast".}
proc fcQScrollArea_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollArea_metacall".}
proc fcQScrollArea_tr(s: cstring): struct_miqt_string {.importc: "QScrollArea_tr".}
proc fcQScrollArea_widget(self: pointer): pointer {.importc: "QScrollArea_widget".}
proc fcQScrollArea_setWidget(self: pointer, widget: pointer): void {.importc: "QScrollArea_setWidget".}
proc fcQScrollArea_takeWidget(self: pointer): pointer {.importc: "QScrollArea_takeWidget".}
proc fcQScrollArea_widgetResizable(self: pointer): bool {.importc: "QScrollArea_widgetResizable".}
proc fcQScrollArea_setWidgetResizable(self: pointer, resizable: bool): void {.importc: "QScrollArea_setWidgetResizable".}
proc fcQScrollArea_sizeHint(self: pointer): pointer {.importc: "QScrollArea_sizeHint".}
proc fcQScrollArea_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QScrollArea_focusNextPrevChild".}
proc fcQScrollArea_alignment(self: pointer): cint {.importc: "QScrollArea_alignment".}
proc fcQScrollArea_setAlignment(self: pointer, alignment: cint): void {.importc: "QScrollArea_setAlignment".}
proc fcQScrollArea_ensureVisible(self: pointer, x: cint, y: cint): void {.importc: "QScrollArea_ensureVisible".}
proc fcQScrollArea_ensureWidgetVisible(self: pointer, childWidget: pointer): void {.importc: "QScrollArea_ensureWidgetVisible".}
proc fcQScrollArea_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScrollArea_tr2".}
proc fcQScrollArea_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScrollArea_tr3".}
proc fcQScrollArea_ensureVisible3(self: pointer, x: cint, y: cint, xmargin: cint): void {.importc: "QScrollArea_ensureVisible3".}
proc fcQScrollArea_ensureVisible4(self: pointer, x: cint, y: cint, xmargin: cint, ymargin: cint): void {.importc: "QScrollArea_ensureVisible4".}
proc fcQScrollArea_ensureWidgetVisible2(self: pointer, childWidget: pointer, xmargin: cint): void {.importc: "QScrollArea_ensureWidgetVisible2".}
proc fcQScrollArea_ensureWidgetVisible3(self: pointer, childWidget: pointer, xmargin: cint, ymargin: cint): void {.importc: "QScrollArea_ensureWidgetVisible3".}
proc fcQScrollArea_vtbl(self: pointer): pointer {.importc: "QScrollArea_vtbl".}
proc fcQScrollArea_vdata(self: pointer): pointer {.importc: "QScrollArea_vdata".}
type cQScrollAreaVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQScrollArea_virtualbase_metaObject(self: pointer): pointer {.importc: "QScrollArea_virtualbase_metaObject".}
proc fcQScrollArea_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollArea_virtualbase_metacast".}
proc fcQScrollArea_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollArea_virtualbase_metacall".}
proc fcQScrollArea_virtualbase_sizeHint(self: pointer): pointer {.importc: "QScrollArea_virtualbase_sizeHint".}
proc fcQScrollArea_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QScrollArea_virtualbase_focusNextPrevChild".}
proc fcQScrollArea_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QScrollArea_virtualbase_event".}
proc fcQScrollArea_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QScrollArea_virtualbase_eventFilter".}
proc fcQScrollArea_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_resizeEvent".}
proc fcQScrollArea_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QScrollArea_virtualbase_scrollContentsBy".}
proc fcQScrollArea_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QScrollArea_virtualbase_viewportSizeHint".}
proc fcQScrollArea_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QScrollArea_virtualbase_minimumSizeHint".}
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
proc fcQScrollArea_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QScrollArea_virtualbase_initStyleOption".}
proc fcQScrollArea_virtualbase_devType(self: pointer): cint {.importc: "QScrollArea_virtualbase_devType".}
proc fcQScrollArea_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QScrollArea_virtualbase_setVisible".}
proc fcQScrollArea_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QScrollArea_virtualbase_heightForWidth".}
proc fcQScrollArea_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QScrollArea_virtualbase_hasHeightForWidth".}
proc fcQScrollArea_virtualbase_paintEngine(self: pointer): pointer {.importc: "QScrollArea_virtualbase_paintEngine".}
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
proc fcQScrollArea_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QScrollArea_virtualbase_nativeEvent".}
proc fcQScrollArea_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QScrollArea_virtualbase_metric".}
proc fcQScrollArea_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QScrollArea_virtualbase_initPainter".}
proc fcQScrollArea_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QScrollArea_virtualbase_redirected".}
proc fcQScrollArea_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QScrollArea_virtualbase_sharedPainter".}
proc fcQScrollArea_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QScrollArea_virtualbase_inputMethodEvent".}
proc fcQScrollArea_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QScrollArea_virtualbase_inputMethodQuery".}
proc fcQScrollArea_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_timerEvent".}
proc fcQScrollArea_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_childEvent".}
proc fcQScrollArea_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QScrollArea_virtualbase_customEvent".}
proc fcQScrollArea_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QScrollArea_virtualbase_connectNotify".}
proc fcQScrollArea_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QScrollArea_virtualbase_disconnectNotify".}
proc fcQScrollArea_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QScrollArea_protectedbase_setViewportMargins".}
proc fcQScrollArea_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QScrollArea_protectedbase_viewportMargins".}
proc fcQScrollArea_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QScrollArea_protectedbase_drawFrame".}
proc fcQScrollArea_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QScrollArea_protectedbase_updateMicroFocus".}
proc fcQScrollArea_protectedbase_create(self: pointer): void {.importc: "QScrollArea_protectedbase_create".}
proc fcQScrollArea_protectedbase_destroy(self: pointer): void {.importc: "QScrollArea_protectedbase_destroy".}
proc fcQScrollArea_protectedbase_focusNextChild(self: pointer): bool {.importc: "QScrollArea_protectedbase_focusNextChild".}
proc fcQScrollArea_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QScrollArea_protectedbase_focusPreviousChild".}
proc fcQScrollArea_protectedbase_sender(self: pointer): pointer {.importc: "QScrollArea_protectedbase_sender".}
proc fcQScrollArea_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QScrollArea_protectedbase_senderSignalIndex".}
proc fcQScrollArea_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QScrollArea_protectedbase_receivers".}
proc fcQScrollArea_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QScrollArea_protectedbase_isSignalConnected".}
proc fcQScrollArea_new(vtbl, vdata: pointer, parent: pointer): ptr cQScrollArea {.importc: "QScrollArea_new".}
proc fcQScrollArea_new2(vtbl, vdata: pointer): ptr cQScrollArea {.importc: "QScrollArea_new2".}
proc fcQScrollArea_staticMetaObject(): pointer {.importc: "QScrollArea_staticMetaObject".}

proc metaObject*(self: gen_qscrollarea_types.QScrollArea): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollArea_metaObject(self.h), owned: false)

proc metacast*(self: gen_qscrollarea_types.QScrollArea, param1: cstring): pointer =
  fcQScrollArea_metacast(self.h, param1)

proc metacall*(self: gen_qscrollarea_types.QScrollArea, param1: cint, param2: cint, param3: pointer): cint =
  fcQScrollArea_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscrollarea_types.QScrollArea, s: cstring): string =
  let v_ms = fcQScrollArea_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc widget*(self: gen_qscrollarea_types.QScrollArea): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQScrollArea_widget(self.h), owned: false)

proc setWidget*(self: gen_qscrollarea_types.QScrollArea, widget: gen_qwidget_types.QWidget): void =
  fcQScrollArea_setWidget(self.h, widget.h)

proc takeWidget*(self: gen_qscrollarea_types.QScrollArea): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQScrollArea_takeWidget(self.h), owned: false)

proc widgetResizable*(self: gen_qscrollarea_types.QScrollArea): bool =
  fcQScrollArea_widgetResizable(self.h)

proc setWidgetResizable*(self: gen_qscrollarea_types.QScrollArea, resizable: bool): void =
  fcQScrollArea_setWidgetResizable(self.h, resizable)

proc sizeHint*(self: gen_qscrollarea_types.QScrollArea): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollArea_sizeHint(self.h), owned: true)

proc focusNextPrevChild*(self: gen_qscrollarea_types.QScrollArea, next: bool): bool =
  fcQScrollArea_focusNextPrevChild(self.h, next)

proc alignment*(self: gen_qscrollarea_types.QScrollArea): cint =
  cint(fcQScrollArea_alignment(self.h))

proc setAlignment*(self: gen_qscrollarea_types.QScrollArea, alignment: cint): void =
  fcQScrollArea_setAlignment(self.h, cint(alignment))

proc ensureVisible*(self: gen_qscrollarea_types.QScrollArea, x: cint, y: cint): void =
  fcQScrollArea_ensureVisible(self.h, x, y)

proc ensureWidgetVisible*(self: gen_qscrollarea_types.QScrollArea, childWidget: gen_qwidget_types.QWidget): void =
  fcQScrollArea_ensureWidgetVisible(self.h, childWidget.h)

proc tr*(_: type gen_qscrollarea_types.QScrollArea, s: cstring, c: cstring): string =
  let v_ms = fcQScrollArea_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscrollarea_types.QScrollArea, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScrollArea_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QScrollAreainitStyleOptionProc* = proc(self: QScrollArea, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QScrollAreadevTypeProc* = proc(self: QScrollArea): cint {.raises: [], gcsafe.}
type QScrollAreasetVisibleProc* = proc(self: QScrollArea, visible: bool): void {.raises: [], gcsafe.}
type QScrollAreaheightForWidthProc* = proc(self: QScrollArea, param1: cint): cint {.raises: [], gcsafe.}
type QScrollAreahasHeightForWidthProc* = proc(self: QScrollArea): bool {.raises: [], gcsafe.}
type QScrollAreapaintEngineProc* = proc(self: QScrollArea): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QScrollAreakeyReleaseEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QScrollAreafocusInEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QScrollAreafocusOutEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QScrollAreaenterEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QScrollArealeaveEventProc* = proc(self: QScrollArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QScrollAreamoveEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QScrollAreacloseEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QScrollAreatabletEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QScrollAreaactionEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QScrollAreashowEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QScrollAreahideEventProc* = proc(self: QScrollArea, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QScrollAreanativeEventProc* = proc(self: QScrollArea, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QScrollAreaVTable* {.inheritable, pure.} = object
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
  initStyleOption*: QScrollAreainitStyleOptionProc
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
proc QScrollAreametaObject*(self: gen_qscrollarea_types.QScrollArea): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollArea_virtualbase_metaObject(self.h), owned: false)

proc cQScrollArea_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollAreametacast*(self: gen_qscrollarea_types.QScrollArea, param1: cstring): pointer =
  fcQScrollArea_virtualbase_metacast(self.h, param1)

proc cQScrollArea_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QScrollAreametacall*(self: gen_qscrollarea_types.QScrollArea, param1: cint, param2: cint, param3: pointer): cint =
  fcQScrollArea_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQScrollArea_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QScrollAreasizeHint*(self: gen_qscrollarea_types.QScrollArea): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollArea_virtualbase_sizeHint(self.h), owned: true)

proc cQScrollArea_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollAreafocusNextPrevChild*(self: gen_qscrollarea_types.QScrollArea, next: bool): bool =
  fcQScrollArea_virtualbase_focusNextPrevChild(self.h, next)

proc cQScrollArea_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QScrollAreaevent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fcQScrollArea_virtualbase_event(self.h, param1.h)

proc cQScrollArea_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QScrollAreaeventFilter*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQScrollArea_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQScrollArea_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QScrollArearesizeEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QResizeEvent): void =
  fcQScrollArea_virtualbase_resizeEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QScrollAreascrollContentsBy*(self: gen_qscrollarea_types.QScrollArea, dx: cint, dy: cint): void =
  fcQScrollArea_virtualbase_scrollContentsBy(self.h, dx, dy)

proc cQScrollArea_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QScrollAreaviewportSizeHint*(self: gen_qscrollarea_types.QScrollArea): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollArea_virtualbase_viewportSizeHint(self.h), owned: true)

proc cQScrollArea_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollAreaminimumSizeHint*(self: gen_qscrollarea_types.QScrollArea): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollArea_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQScrollArea_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollAreasetupViewport*(self: gen_qscrollarea_types.QScrollArea, viewport: gen_qwidget_types.QWidget): void =
  fcQScrollArea_virtualbase_setupViewport(self.h, viewport.h)

proc cQScrollArea_vtable_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc QScrollAreaviewportEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fcQScrollArea_virtualbase_viewportEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_viewportEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QScrollAreapaintEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QPaintEvent): void =
  fcQScrollArea_virtualbase_paintEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QScrollAreamousePressEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollArea_virtualbase_mousePressEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QScrollAreamouseReleaseEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollArea_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QScrollAreamouseDoubleClickEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollArea_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QScrollAreamouseMoveEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollArea_virtualbase_mouseMoveEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QScrollAreawheelEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QWheelEvent): void =
  fcQScrollArea_virtualbase_wheelEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QScrollAreacontextMenuEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQScrollArea_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QScrollAreadragEnterEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQScrollArea_virtualbase_dragEnterEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QScrollAreadragMoveEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQScrollArea_virtualbase_dragMoveEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QScrollAreadragLeaveEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQScrollArea_virtualbase_dragLeaveEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QScrollAreadropEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QDropEvent): void =
  fcQScrollArea_virtualbase_dropEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QScrollAreakeyPressEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QKeyEvent): void =
  fcQScrollArea_virtualbase_keyPressEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QScrollAreachangeEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qcoreevent_types.QEvent): void =
  fcQScrollArea_virtualbase_changeEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QScrollAreainitStyleOption*(self: gen_qscrollarea_types.QScrollArea, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQScrollArea_virtualbase_initStyleOption(self.h, option.h)

proc cQScrollArea_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QScrollAreadevType*(self: gen_qscrollarea_types.QScrollArea): cint =
  fcQScrollArea_virtualbase_devType(self.h)

proc cQScrollArea_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QScrollAreasetVisible*(self: gen_qscrollarea_types.QScrollArea, visible: bool): void =
  fcQScrollArea_virtualbase_setVisible(self.h, visible)

proc cQScrollArea_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QScrollAreaheightForWidth*(self: gen_qscrollarea_types.QScrollArea, param1: cint): cint =
  fcQScrollArea_virtualbase_heightForWidth(self.h, param1)

proc cQScrollArea_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QScrollAreahasHeightForWidth*(self: gen_qscrollarea_types.QScrollArea): bool =
  fcQScrollArea_virtualbase_hasHeightForWidth(self.h)

proc cQScrollArea_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QScrollAreapaintEngine*(self: gen_qscrollarea_types.QScrollArea): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQScrollArea_virtualbase_paintEngine(self.h), owned: false)

proc cQScrollArea_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollAreakeyReleaseEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QKeyEvent): void =
  fcQScrollArea_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QScrollAreafocusInEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fcQScrollArea_virtualbase_focusInEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QScrollAreafocusOutEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fcQScrollArea_virtualbase_focusOutEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QScrollAreaenterEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QEnterEvent): void =
  fcQScrollArea_virtualbase_enterEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QScrollArealeaveEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fcQScrollArea_virtualbase_leaveEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QScrollAreamoveEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QMoveEvent): void =
  fcQScrollArea_virtualbase_moveEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QScrollAreacloseEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QCloseEvent): void =
  fcQScrollArea_virtualbase_closeEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QScrollAreatabletEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QTabletEvent): void =
  fcQScrollArea_virtualbase_tabletEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QScrollAreaactionEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QActionEvent): void =
  fcQScrollArea_virtualbase_actionEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QScrollAreashowEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QShowEvent): void =
  fcQScrollArea_virtualbase_showEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QScrollAreahideEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qevent_types.QHideEvent): void =
  fcQScrollArea_virtualbase_hideEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QScrollAreanativeEvent*(self: gen_qscrollarea_types.QScrollArea, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQScrollArea_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQScrollArea_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QScrollAreametric*(self: gen_qscrollarea_types.QScrollArea, param1: cint): cint =
  fcQScrollArea_virtualbase_metric(self.h, cint(param1))

proc cQScrollArea_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QScrollAreainitPainter*(self: gen_qscrollarea_types.QScrollArea, painter: gen_qpainter_types.QPainter): void =
  fcQScrollArea_virtualbase_initPainter(self.h, painter.h)

proc cQScrollArea_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QScrollArearedirected*(self: gen_qscrollarea_types.QScrollArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQScrollArea_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQScrollArea_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollAreasharedPainter*(self: gen_qscrollarea_types.QScrollArea): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQScrollArea_virtualbase_sharedPainter(self.h), owned: false)

proc cQScrollArea_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollAreainputMethodEvent*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQScrollArea_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQScrollArea_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QScrollAreainputMethodQuery*(self: gen_qscrollarea_types.QScrollArea, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScrollArea_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQScrollArea_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollAreatimerEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQScrollArea_virtualbase_timerEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QScrollAreachildEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QChildEvent): void =
  fcQScrollArea_virtualbase_childEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QScrollAreacustomEvent*(self: gen_qscrollarea_types.QScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fcQScrollArea_virtualbase_customEvent(self.h, event.h)

proc cQScrollArea_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QScrollAreaconnectNotify*(self: gen_qscrollarea_types.QScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScrollArea_virtualbase_connectNotify(self.h, signal.h)

proc cQScrollArea_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QScrollAreadisconnectNotify*(self: gen_qscrollarea_types.QScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScrollArea_virtualbase_disconnectNotify(self.h, signal.h)

proc cQScrollArea_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollAreaVTable](fcQScrollArea_vdata(self))
  let self = QScrollArea(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQScrollArea* {.inheritable.} = ref object of QScrollArea
  vtbl*: cQScrollAreaVTable
method metaObject*(self: VirtualQScrollArea): gen_qobjectdefs_types.QMetaObject {.base.} =
  QScrollAreametaObject(self[])
proc cQScrollArea_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQScrollArea, param1: cstring): pointer {.base.} =
  QScrollAreametacast(self[], param1)
proc cQScrollArea_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQScrollArea, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QScrollAreametacall(self[], param1, param2, param3)
proc cQScrollArea_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQScrollArea): gen_qsize_types.QSize {.base.} =
  QScrollAreasizeHint(self[])
proc cQScrollArea_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQScrollArea, next: bool): bool {.base.} =
  QScrollAreafocusNextPrevChild(self[], next)
proc cQScrollArea_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method event*(self: VirtualQScrollArea, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QScrollAreaevent(self[], param1)
proc cQScrollArea_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQScrollArea, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QScrollAreaeventFilter(self[], param1, param2)
proc cQScrollArea_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method resizeEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QScrollArearesizeEvent(self[], param1)
proc cQScrollArea_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method scrollContentsBy*(self: VirtualQScrollArea, dx: cint, dy: cint): void {.base.} =
  QScrollAreascrollContentsBy(self[], dx, dy)
proc cQScrollArea_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

method viewportSizeHint*(self: VirtualQScrollArea): gen_qsize_types.QSize {.base.} =
  QScrollAreaviewportSizeHint(self[])
proc cQScrollArea_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQScrollArea): gen_qsize_types.QSize {.base.} =
  QScrollAreaminimumSizeHint(self[])
proc cQScrollArea_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setupViewport*(self: VirtualQScrollArea, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QScrollAreasetupViewport(self[], viewport)
proc cQScrollArea_method_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  inst.setupViewport(slotval1)

method viewportEvent*(self: VirtualQScrollArea, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QScrollAreaviewportEvent(self[], param1)
proc cQScrollArea_method_callback_viewportEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

method paintEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QScrollAreapaintEvent(self[], param1)
proc cQScrollArea_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method mousePressEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QScrollAreamousePressEvent(self[], param1)
proc cQScrollArea_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QScrollAreamouseReleaseEvent(self[], param1)
proc cQScrollArea_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QScrollAreamouseDoubleClickEvent(self[], param1)
proc cQScrollArea_method_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QScrollAreamouseMoveEvent(self[], param1)
proc cQScrollArea_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QScrollAreawheelEvent(self[], param1)
proc cQScrollArea_method_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  inst.wheelEvent(slotval1)

method contextMenuEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QScrollAreacontextMenuEvent(self[], param1)
proc cQScrollArea_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method dragEnterEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QScrollAreadragEnterEvent(self[], param1)
proc cQScrollArea_method_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QScrollAreadragMoveEvent(self[], param1)
proc cQScrollArea_method_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QScrollAreadragLeaveEvent(self[], param1)
proc cQScrollArea_method_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QDropEvent): void {.base.} =
  QScrollAreadropEvent(self[], param1)
proc cQScrollArea_method_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  inst.dropEvent(slotval1)

method keyPressEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QScrollAreakeyPressEvent(self[], param1)
proc cQScrollArea_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method changeEvent*(self: VirtualQScrollArea, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QScrollAreachangeEvent(self[], param1)
proc cQScrollArea_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method initStyleOption*(self: VirtualQScrollArea, option: gen_qstyleoption_types.QStyleOptionFrame): void {.base.} =
  QScrollAreainitStyleOption(self[], option)
proc cQScrollArea_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  inst.initStyleOption(slotval1)

method devType*(self: VirtualQScrollArea): cint {.base.} =
  QScrollAreadevType(self[])
proc cQScrollArea_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQScrollArea, visible: bool): void {.base.} =
  QScrollAreasetVisible(self[], visible)
proc cQScrollArea_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQScrollArea, param1: cint): cint {.base.} =
  QScrollAreaheightForWidth(self[], param1)
proc cQScrollArea_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQScrollArea): bool {.base.} =
  QScrollAreahasHeightForWidth(self[])
proc cQScrollArea_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQScrollArea): gen_qpaintengine_types.QPaintEngine {.base.} =
  QScrollAreapaintEngine(self[])
proc cQScrollArea_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method keyReleaseEvent*(self: VirtualQScrollArea, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QScrollAreakeyReleaseEvent(self[], event)
proc cQScrollArea_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQScrollArea, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QScrollAreafocusInEvent(self[], event)
proc cQScrollArea_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQScrollArea, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QScrollAreafocusOutEvent(self[], event)
proc cQScrollArea_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQScrollArea, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QScrollAreaenterEvent(self[], event)
proc cQScrollArea_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQScrollArea, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QScrollArealeaveEvent(self[], event)
proc cQScrollArea_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQScrollArea, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QScrollAreamoveEvent(self[], event)
proc cQScrollArea_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQScrollArea, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QScrollAreacloseEvent(self[], event)
proc cQScrollArea_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQScrollArea, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QScrollAreatabletEvent(self[], event)
proc cQScrollArea_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQScrollArea, event: gen_qevent_types.QActionEvent): void {.base.} =
  QScrollAreaactionEvent(self[], event)
proc cQScrollArea_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method showEvent*(self: VirtualQScrollArea, event: gen_qevent_types.QShowEvent): void {.base.} =
  QScrollAreashowEvent(self[], event)
proc cQScrollArea_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQScrollArea, event: gen_qevent_types.QHideEvent): void {.base.} =
  QScrollAreahideEvent(self[], event)
proc cQScrollArea_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQScrollArea, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QScrollAreanativeEvent(self[], eventType, message, resultVal)
proc cQScrollArea_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQScrollArea, param1: cint): cint {.base.} =
  QScrollAreametric(self[], param1)
proc cQScrollArea_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQScrollArea, painter: gen_qpainter_types.QPainter): void {.base.} =
  QScrollAreainitPainter(self[], painter)
proc cQScrollArea_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQScrollArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QScrollArearedirected(self[], offset)
proc cQScrollArea_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQScrollArea): gen_qpainter_types.QPainter {.base.} =
  QScrollAreasharedPainter(self[])
proc cQScrollArea_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQScrollArea, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QScrollAreainputMethodEvent(self[], param1)
proc cQScrollArea_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQScrollArea, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QScrollAreainputMethodQuery(self[], param1)
proc cQScrollArea_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method timerEvent*(self: VirtualQScrollArea, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QScrollAreatimerEvent(self[], event)
proc cQScrollArea_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQScrollArea, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QScrollAreachildEvent(self[], event)
proc cQScrollArea_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQScrollArea, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QScrollAreacustomEvent(self[], event)
proc cQScrollArea_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QScrollAreaconnectNotify(self[], signal)
proc cQScrollArea_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QScrollAreadisconnectNotify(self[], signal)
proc cQScrollArea_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollArea](fcQScrollArea_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setViewportMargins*(self: gen_qscrollarea_types.QScrollArea, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQScrollArea_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qscrollarea_types.QScrollArea): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQScrollArea_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qscrollarea_types.QScrollArea, param1: gen_qpainter_types.QPainter): void =
  fcQScrollArea_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qscrollarea_types.QScrollArea): void =
  fcQScrollArea_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qscrollarea_types.QScrollArea): void =
  fcQScrollArea_protectedbase_create(self.h)

proc destroy*(self: gen_qscrollarea_types.QScrollArea): void =
  fcQScrollArea_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qscrollarea_types.QScrollArea): bool =
  fcQScrollArea_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qscrollarea_types.QScrollArea): bool =
  fcQScrollArea_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qscrollarea_types.QScrollArea): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQScrollArea_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qscrollarea_types.QScrollArea): cint =
  fcQScrollArea_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscrollarea_types.QScrollArea, signal: cstring): cint =
  fcQScrollArea_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscrollarea_types.QScrollArea, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQScrollArea_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscrollarea_types.QScrollArea,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QScrollAreaVTable = nil): gen_qscrollarea_types.QScrollArea =
  let vtbl = if vtbl == nil: new QScrollAreaVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScrollAreaVTable](fcQScrollArea_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQScrollArea_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQScrollArea_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQScrollArea_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQScrollArea_vtable_callback_sizeHint
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQScrollArea_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQScrollArea_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQScrollArea_vtable_callback_eventFilter
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQScrollArea_vtable_callback_resizeEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQScrollArea_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQScrollArea_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQScrollArea_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQScrollArea_vtable_callback_setupViewport
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQScrollArea_vtable_callback_viewportEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQScrollArea_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQScrollArea_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQScrollArea_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQScrollArea_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQScrollArea_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQScrollArea_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQScrollArea_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQScrollArea_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQScrollArea_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQScrollArea_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQScrollArea_vtable_callback_dropEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQScrollArea_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQScrollArea_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQScrollArea_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQScrollArea_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQScrollArea_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQScrollArea_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQScrollArea_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQScrollArea_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQScrollArea_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQScrollArea_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQScrollArea_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQScrollArea_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQScrollArea_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQScrollArea_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQScrollArea_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQScrollArea_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQScrollArea_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQScrollArea_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQScrollArea_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQScrollArea_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQScrollArea_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQScrollArea_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQScrollArea_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQScrollArea_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQScrollArea_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQScrollArea_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQScrollArea_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQScrollArea_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQScrollArea_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQScrollArea_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQScrollArea_vtable_callback_disconnectNotify
  gen_qscrollarea_types.QScrollArea(h: fcQScrollArea_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qscrollarea_types.QScrollArea,
    vtbl: ref QScrollAreaVTable = nil): gen_qscrollarea_types.QScrollArea =
  let vtbl = if vtbl == nil: new QScrollAreaVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScrollAreaVTable](fcQScrollArea_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQScrollArea_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQScrollArea_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQScrollArea_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQScrollArea_vtable_callback_sizeHint
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQScrollArea_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQScrollArea_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQScrollArea_vtable_callback_eventFilter
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQScrollArea_vtable_callback_resizeEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQScrollArea_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQScrollArea_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQScrollArea_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQScrollArea_vtable_callback_setupViewport
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQScrollArea_vtable_callback_viewportEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQScrollArea_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQScrollArea_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQScrollArea_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQScrollArea_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQScrollArea_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQScrollArea_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQScrollArea_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQScrollArea_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQScrollArea_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQScrollArea_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQScrollArea_vtable_callback_dropEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQScrollArea_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQScrollArea_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQScrollArea_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQScrollArea_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQScrollArea_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQScrollArea_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQScrollArea_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQScrollArea_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQScrollArea_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQScrollArea_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQScrollArea_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQScrollArea_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQScrollArea_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQScrollArea_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQScrollArea_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQScrollArea_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQScrollArea_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQScrollArea_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQScrollArea_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQScrollArea_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQScrollArea_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQScrollArea_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQScrollArea_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQScrollArea_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQScrollArea_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQScrollArea_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQScrollArea_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQScrollArea_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQScrollArea_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQScrollArea_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQScrollArea_vtable_callback_disconnectNotify
  gen_qscrollarea_types.QScrollArea(h: fcQScrollArea_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQScrollArea_mvtbl = cQScrollAreaVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQScrollArea()[])](self.fcQScrollArea_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQScrollArea_method_callback_metaObject,
  metacast: cQScrollArea_method_callback_metacast,
  metacall: cQScrollArea_method_callback_metacall,
  sizeHint: cQScrollArea_method_callback_sizeHint,
  focusNextPrevChild: cQScrollArea_method_callback_focusNextPrevChild,
  event: cQScrollArea_method_callback_event,
  eventFilter: cQScrollArea_method_callback_eventFilter,
  resizeEvent: cQScrollArea_method_callback_resizeEvent,
  scrollContentsBy: cQScrollArea_method_callback_scrollContentsBy,
  viewportSizeHint: cQScrollArea_method_callback_viewportSizeHint,
  minimumSizeHint: cQScrollArea_method_callback_minimumSizeHint,
  setupViewport: cQScrollArea_method_callback_setupViewport,
  viewportEvent: cQScrollArea_method_callback_viewportEvent,
  paintEvent: cQScrollArea_method_callback_paintEvent,
  mousePressEvent: cQScrollArea_method_callback_mousePressEvent,
  mouseReleaseEvent: cQScrollArea_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQScrollArea_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQScrollArea_method_callback_mouseMoveEvent,
  wheelEvent: cQScrollArea_method_callback_wheelEvent,
  contextMenuEvent: cQScrollArea_method_callback_contextMenuEvent,
  dragEnterEvent: cQScrollArea_method_callback_dragEnterEvent,
  dragMoveEvent: cQScrollArea_method_callback_dragMoveEvent,
  dragLeaveEvent: cQScrollArea_method_callback_dragLeaveEvent,
  dropEvent: cQScrollArea_method_callback_dropEvent,
  keyPressEvent: cQScrollArea_method_callback_keyPressEvent,
  changeEvent: cQScrollArea_method_callback_changeEvent,
  initStyleOption: cQScrollArea_method_callback_initStyleOption,
  devType: cQScrollArea_method_callback_devType,
  setVisible: cQScrollArea_method_callback_setVisible,
  heightForWidth: cQScrollArea_method_callback_heightForWidth,
  hasHeightForWidth: cQScrollArea_method_callback_hasHeightForWidth,
  paintEngine: cQScrollArea_method_callback_paintEngine,
  keyReleaseEvent: cQScrollArea_method_callback_keyReleaseEvent,
  focusInEvent: cQScrollArea_method_callback_focusInEvent,
  focusOutEvent: cQScrollArea_method_callback_focusOutEvent,
  enterEvent: cQScrollArea_method_callback_enterEvent,
  leaveEvent: cQScrollArea_method_callback_leaveEvent,
  moveEvent: cQScrollArea_method_callback_moveEvent,
  closeEvent: cQScrollArea_method_callback_closeEvent,
  tabletEvent: cQScrollArea_method_callback_tabletEvent,
  actionEvent: cQScrollArea_method_callback_actionEvent,
  showEvent: cQScrollArea_method_callback_showEvent,
  hideEvent: cQScrollArea_method_callback_hideEvent,
  nativeEvent: cQScrollArea_method_callback_nativeEvent,
  metric: cQScrollArea_method_callback_metric,
  initPainter: cQScrollArea_method_callback_initPainter,
  redirected: cQScrollArea_method_callback_redirected,
  sharedPainter: cQScrollArea_method_callback_sharedPainter,
  inputMethodEvent: cQScrollArea_method_callback_inputMethodEvent,
  inputMethodQuery: cQScrollArea_method_callback_inputMethodQuery,
  timerEvent: cQScrollArea_method_callback_timerEvent,
  childEvent: cQScrollArea_method_callback_childEvent,
  customEvent: cQScrollArea_method_callback_customEvent,
  connectNotify: cQScrollArea_method_callback_connectNotify,
  disconnectNotify: cQScrollArea_method_callback_disconnectNotify,
)
proc create*(T: type gen_qscrollarea_types.QScrollArea,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQScrollArea) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScrollArea_new(addr(cQScrollArea_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qscrollarea_types.QScrollArea,
    inst: VirtualQScrollArea) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScrollArea_new2(addr(cQScrollArea_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qscrollarea_types.QScrollArea): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollArea_staticMetaObject())
