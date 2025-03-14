import ./qtwidgets_pkg

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


{.compile("gen_qscrollbar.cpp", QtWidgetsCFlags).}


import ./gen_qscrollbar_types
export gen_qscrollbar_types

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
  gen_qabstractslider,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQScrollBar*{.exportc: "QScrollBar", incompleteStruct.} = object

proc fcQScrollBar_metaObject(self: pointer): pointer {.importc: "QScrollBar_metaObject".}
proc fcQScrollBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollBar_metacast".}
proc fcQScrollBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollBar_metacall".}
proc fcQScrollBar_tr(s: cstring): struct_miqt_string {.importc: "QScrollBar_tr".}
proc fcQScrollBar_sizeHint(self: pointer): pointer {.importc: "QScrollBar_sizeHint".}
proc fcQScrollBar_event(self: pointer, event: pointer): bool {.importc: "QScrollBar_event".}
proc fcQScrollBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScrollBar_tr2".}
proc fcQScrollBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScrollBar_tr3".}
proc fcQScrollBar_vtbl(self: pointer): pointer {.importc: "QScrollBar_vtbl".}
proc fcQScrollBar_vdata(self: pointer): pointer {.importc: "QScrollBar_vdata".}
type cQScrollBarVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  sliderChange*: proc(self: pointer, change: cint): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQScrollBar_virtualbase_metaObject(self: pointer): pointer {.importc: "QScrollBar_virtualbase_metaObject".}
proc fcQScrollBar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollBar_virtualbase_metacast".}
proc fcQScrollBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollBar_virtualbase_metacall".}
proc fcQScrollBar_virtualbase_sizeHint(self: pointer): pointer {.importc: "QScrollBar_virtualbase_sizeHint".}
proc fcQScrollBar_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QScrollBar_virtualbase_event".}
proc fcQScrollBar_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QScrollBar_virtualbase_wheelEvent".}
proc fcQScrollBar_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QScrollBar_virtualbase_paintEvent".}
proc fcQScrollBar_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QScrollBar_virtualbase_mousePressEvent".}
proc fcQScrollBar_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QScrollBar_virtualbase_mouseReleaseEvent".}
proc fcQScrollBar_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QScrollBar_virtualbase_mouseMoveEvent".}
proc fcQScrollBar_virtualbase_hideEvent(self: pointer, param1: pointer): void {.importc: "QScrollBar_virtualbase_hideEvent".}
proc fcQScrollBar_virtualbase_sliderChange(self: pointer, change: cint): void {.importc: "QScrollBar_virtualbase_sliderChange".}
proc fcQScrollBar_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QScrollBar_virtualbase_contextMenuEvent".}
proc fcQScrollBar_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QScrollBar_virtualbase_initStyleOption".}
proc fcQScrollBar_virtualbase_keyPressEvent(self: pointer, ev: pointer): void {.importc: "QScrollBar_virtualbase_keyPressEvent".}
proc fcQScrollBar_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QScrollBar_virtualbase_timerEvent".}
proc fcQScrollBar_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QScrollBar_virtualbase_changeEvent".}
proc fcQScrollBar_virtualbase_devType(self: pointer): cint {.importc: "QScrollBar_virtualbase_devType".}
proc fcQScrollBar_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QScrollBar_virtualbase_setVisible".}
proc fcQScrollBar_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QScrollBar_virtualbase_minimumSizeHint".}
proc fcQScrollBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QScrollBar_virtualbase_heightForWidth".}
proc fcQScrollBar_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QScrollBar_virtualbase_hasHeightForWidth".}
proc fcQScrollBar_virtualbase_paintEngine(self: pointer): pointer {.importc: "QScrollBar_virtualbase_paintEngine".}
proc fcQScrollBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_mouseDoubleClickEvent".}
proc fcQScrollBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_keyReleaseEvent".}
proc fcQScrollBar_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_focusInEvent".}
proc fcQScrollBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_focusOutEvent".}
proc fcQScrollBar_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_enterEvent".}
proc fcQScrollBar_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_leaveEvent".}
proc fcQScrollBar_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_moveEvent".}
proc fcQScrollBar_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_resizeEvent".}
proc fcQScrollBar_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_closeEvent".}
proc fcQScrollBar_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_tabletEvent".}
proc fcQScrollBar_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_actionEvent".}
proc fcQScrollBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_dragEnterEvent".}
proc fcQScrollBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_dragMoveEvent".}
proc fcQScrollBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_dragLeaveEvent".}
proc fcQScrollBar_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_dropEvent".}
proc fcQScrollBar_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_showEvent".}
proc fcQScrollBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QScrollBar_virtualbase_nativeEvent".}
proc fcQScrollBar_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QScrollBar_virtualbase_metric".}
proc fcQScrollBar_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QScrollBar_virtualbase_initPainter".}
proc fcQScrollBar_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QScrollBar_virtualbase_redirected".}
proc fcQScrollBar_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QScrollBar_virtualbase_sharedPainter".}
proc fcQScrollBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QScrollBar_virtualbase_inputMethodEvent".}
proc fcQScrollBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QScrollBar_virtualbase_inputMethodQuery".}
proc fcQScrollBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QScrollBar_virtualbase_focusNextPrevChild".}
proc fcQScrollBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QScrollBar_virtualbase_eventFilter".}
proc fcQScrollBar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_childEvent".}
proc fcQScrollBar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_customEvent".}
proc fcQScrollBar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QScrollBar_virtualbase_connectNotify".}
proc fcQScrollBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QScrollBar_virtualbase_disconnectNotify".}
proc fcQScrollBar_protectedbase_setRepeatAction(self: pointer, action: cint): void {.importc: "QScrollBar_protectedbase_setRepeatAction".}
proc fcQScrollBar_protectedbase_repeatAction(self: pointer): cint {.importc: "QScrollBar_protectedbase_repeatAction".}
proc fcQScrollBar_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QScrollBar_protectedbase_updateMicroFocus".}
proc fcQScrollBar_protectedbase_create(self: pointer): void {.importc: "QScrollBar_protectedbase_create".}
proc fcQScrollBar_protectedbase_destroy(self: pointer): void {.importc: "QScrollBar_protectedbase_destroy".}
proc fcQScrollBar_protectedbase_focusNextChild(self: pointer): bool {.importc: "QScrollBar_protectedbase_focusNextChild".}
proc fcQScrollBar_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QScrollBar_protectedbase_focusPreviousChild".}
proc fcQScrollBar_protectedbase_sender(self: pointer): pointer {.importc: "QScrollBar_protectedbase_sender".}
proc fcQScrollBar_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QScrollBar_protectedbase_senderSignalIndex".}
proc fcQScrollBar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QScrollBar_protectedbase_receivers".}
proc fcQScrollBar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QScrollBar_protectedbase_isSignalConnected".}
proc fcQScrollBar_new(vtbl, vdata: pointer, parent: pointer): ptr cQScrollBar {.importc: "QScrollBar_new".}
proc fcQScrollBar_new2(vtbl, vdata: pointer): ptr cQScrollBar {.importc: "QScrollBar_new2".}
proc fcQScrollBar_new3(vtbl, vdata: pointer, param1: cint): ptr cQScrollBar {.importc: "QScrollBar_new3".}
proc fcQScrollBar_new4(vtbl, vdata: pointer, param1: cint, parent: pointer): ptr cQScrollBar {.importc: "QScrollBar_new4".}
proc fcQScrollBar_staticMetaObject(): pointer {.importc: "QScrollBar_staticMetaObject".}

proc metaObject*(self: gen_qscrollbar_types.QScrollBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollBar_metaObject(self.h), owned: false)

proc metacast*(self: gen_qscrollbar_types.QScrollBar, param1: cstring): pointer =
  fcQScrollBar_metacast(self.h, param1)

proc metacall*(self: gen_qscrollbar_types.QScrollBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQScrollBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscrollbar_types.QScrollBar, s: cstring): string =
  let v_ms = fcQScrollBar_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qscrollbar_types.QScrollBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollBar_sizeHint(self.h), owned: true)

proc event*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): bool =
  fcQScrollBar_event(self.h, event.h)

proc tr*(_: type gen_qscrollbar_types.QScrollBar, s: cstring, c: cstring): string =
  let v_ms = fcQScrollBar_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscrollbar_types.QScrollBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScrollBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QScrollBarmetaObjectProc* = proc(self: QScrollBar): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QScrollBarmetacastProc* = proc(self: QScrollBar, param1: cstring): pointer {.raises: [], gcsafe.}
type QScrollBarmetacallProc* = proc(self: QScrollBar, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QScrollBarsizeHintProc* = proc(self: QScrollBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QScrollBareventProc* = proc(self: QScrollBar, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QScrollBarwheelEventProc* = proc(self: QScrollBar, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QScrollBarpaintEventProc* = proc(self: QScrollBar, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QScrollBarmousePressEventProc* = proc(self: QScrollBar, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QScrollBarmouseReleaseEventProc* = proc(self: QScrollBar, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QScrollBarmouseMoveEventProc* = proc(self: QScrollBar, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QScrollBarhideEventProc* = proc(self: QScrollBar, param1: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QScrollBarsliderChangeProc* = proc(self: QScrollBar, change: cint): void {.raises: [], gcsafe.}
type QScrollBarcontextMenuEventProc* = proc(self: QScrollBar, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QScrollBarinitStyleOptionProc* = proc(self: QScrollBar, option: gen_qstyleoption_types.QStyleOptionSlider): void {.raises: [], gcsafe.}
type QScrollBarkeyPressEventProc* = proc(self: QScrollBar, ev: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QScrollBartimerEventProc* = proc(self: QScrollBar, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QScrollBarchangeEventProc* = proc(self: QScrollBar, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QScrollBardevTypeProc* = proc(self: QScrollBar): cint {.raises: [], gcsafe.}
type QScrollBarsetVisibleProc* = proc(self: QScrollBar, visible: bool): void {.raises: [], gcsafe.}
type QScrollBarminimumSizeHintProc* = proc(self: QScrollBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QScrollBarheightForWidthProc* = proc(self: QScrollBar, param1: cint): cint {.raises: [], gcsafe.}
type QScrollBarhasHeightForWidthProc* = proc(self: QScrollBar): bool {.raises: [], gcsafe.}
type QScrollBarpaintEngineProc* = proc(self: QScrollBar): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QScrollBarmouseDoubleClickEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QScrollBarkeyReleaseEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QScrollBarfocusInEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QScrollBarfocusOutEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QScrollBarenterEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QScrollBarleaveEventProc* = proc(self: QScrollBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QScrollBarmoveEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QScrollBarresizeEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QScrollBarcloseEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QScrollBartabletEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QScrollBaractionEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QScrollBardragEnterEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QScrollBardragMoveEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QScrollBardragLeaveEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QScrollBardropEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QScrollBarshowEventProc* = proc(self: QScrollBar, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QScrollBarnativeEventProc* = proc(self: QScrollBar, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QScrollBarmetricProc* = proc(self: QScrollBar, param1: cint): cint {.raises: [], gcsafe.}
type QScrollBarinitPainterProc* = proc(self: QScrollBar, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QScrollBarredirectedProc* = proc(self: QScrollBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QScrollBarsharedPainterProc* = proc(self: QScrollBar): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QScrollBarinputMethodEventProc* = proc(self: QScrollBar, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QScrollBarinputMethodQueryProc* = proc(self: QScrollBar, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QScrollBarfocusNextPrevChildProc* = proc(self: QScrollBar, next: bool): bool {.raises: [], gcsafe.}
type QScrollBareventFilterProc* = proc(self: QScrollBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QScrollBarchildEventProc* = proc(self: QScrollBar, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QScrollBarcustomEventProc* = proc(self: QScrollBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QScrollBarconnectNotifyProc* = proc(self: QScrollBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QScrollBardisconnectNotifyProc* = proc(self: QScrollBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QScrollBarVTable* {.inheritable, pure.} = object
  vtbl: cQScrollBarVTable
  metaObject*: QScrollBarmetaObjectProc
  metacast*: QScrollBarmetacastProc
  metacall*: QScrollBarmetacallProc
  sizeHint*: QScrollBarsizeHintProc
  event*: QScrollBareventProc
  wheelEvent*: QScrollBarwheelEventProc
  paintEvent*: QScrollBarpaintEventProc
  mousePressEvent*: QScrollBarmousePressEventProc
  mouseReleaseEvent*: QScrollBarmouseReleaseEventProc
  mouseMoveEvent*: QScrollBarmouseMoveEventProc
  hideEvent*: QScrollBarhideEventProc
  sliderChange*: QScrollBarsliderChangeProc
  contextMenuEvent*: QScrollBarcontextMenuEventProc
  initStyleOption*: QScrollBarinitStyleOptionProc
  keyPressEvent*: QScrollBarkeyPressEventProc
  timerEvent*: QScrollBartimerEventProc
  changeEvent*: QScrollBarchangeEventProc
  devType*: QScrollBardevTypeProc
  setVisible*: QScrollBarsetVisibleProc
  minimumSizeHint*: QScrollBarminimumSizeHintProc
  heightForWidth*: QScrollBarheightForWidthProc
  hasHeightForWidth*: QScrollBarhasHeightForWidthProc
  paintEngine*: QScrollBarpaintEngineProc
  mouseDoubleClickEvent*: QScrollBarmouseDoubleClickEventProc
  keyReleaseEvent*: QScrollBarkeyReleaseEventProc
  focusInEvent*: QScrollBarfocusInEventProc
  focusOutEvent*: QScrollBarfocusOutEventProc
  enterEvent*: QScrollBarenterEventProc
  leaveEvent*: QScrollBarleaveEventProc
  moveEvent*: QScrollBarmoveEventProc
  resizeEvent*: QScrollBarresizeEventProc
  closeEvent*: QScrollBarcloseEventProc
  tabletEvent*: QScrollBartabletEventProc
  actionEvent*: QScrollBaractionEventProc
  dragEnterEvent*: QScrollBardragEnterEventProc
  dragMoveEvent*: QScrollBardragMoveEventProc
  dragLeaveEvent*: QScrollBardragLeaveEventProc
  dropEvent*: QScrollBardropEventProc
  showEvent*: QScrollBarshowEventProc
  nativeEvent*: QScrollBarnativeEventProc
  metric*: QScrollBarmetricProc
  initPainter*: QScrollBarinitPainterProc
  redirected*: QScrollBarredirectedProc
  sharedPainter*: QScrollBarsharedPainterProc
  inputMethodEvent*: QScrollBarinputMethodEventProc
  inputMethodQuery*: QScrollBarinputMethodQueryProc
  focusNextPrevChild*: QScrollBarfocusNextPrevChildProc
  eventFilter*: QScrollBareventFilterProc
  childEvent*: QScrollBarchildEventProc
  customEvent*: QScrollBarcustomEventProc
  connectNotify*: QScrollBarconnectNotifyProc
  disconnectNotify*: QScrollBardisconnectNotifyProc
proc QScrollBarmetaObject*(self: gen_qscrollbar_types.QScrollBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollBar_virtualbase_metaObject(self.h), owned: false)

proc cQScrollBar_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollBarmetacast*(self: gen_qscrollbar_types.QScrollBar, param1: cstring): pointer =
  fcQScrollBar_virtualbase_metacast(self.h, param1)

proc cQScrollBar_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QScrollBarmetacall*(self: gen_qscrollbar_types.QScrollBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQScrollBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQScrollBar_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QScrollBarsizeHint*(self: gen_qscrollbar_types.QScrollBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollBar_virtualbase_sizeHint(self.h), owned: true)

proc cQScrollBar_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollBarevent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): bool =
  fcQScrollBar_virtualbase_event(self.h, event.h)

proc cQScrollBar_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QScrollBarwheelEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QWheelEvent): void =
  fcQScrollBar_virtualbase_wheelEvent(self.h, param1.h)

proc cQScrollBar_vtable_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QScrollBarpaintEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QPaintEvent): void =
  fcQScrollBar_virtualbase_paintEvent(self.h, param1.h)

proc cQScrollBar_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QScrollBarmousePressEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollBar_virtualbase_mousePressEvent(self.h, param1.h)

proc cQScrollBar_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QScrollBarmouseReleaseEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc cQScrollBar_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QScrollBarmouseMoveEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollBar_virtualbase_mouseMoveEvent(self.h, param1.h)

proc cQScrollBar_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QScrollBarhideEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QHideEvent): void =
  fcQScrollBar_virtualbase_hideEvent(self.h, param1.h)

proc cQScrollBar_vtable_callback_hideEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QScrollBarsliderChange*(self: gen_qscrollbar_types.QScrollBar, change: cint): void =
  fcQScrollBar_virtualbase_sliderChange(self.h, cint(change))

proc cQScrollBar_vtable_callback_sliderChange(self: pointer, change: cint): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = cint(change)
  vtbl[].sliderChange(self, slotval1)

proc QScrollBarcontextMenuEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQScrollBar_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQScrollBar_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QScrollBarinitStyleOption*(self: gen_qscrollbar_types.QScrollBar, option: gen_qstyleoption_types.QStyleOptionSlider): void =
  fcQScrollBar_virtualbase_initStyleOption(self.h, option.h)

proc cQScrollBar_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionSlider(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QScrollBarkeyPressEvent*(self: gen_qscrollbar_types.QScrollBar, ev: gen_qevent_types.QKeyEvent): void =
  fcQScrollBar_virtualbase_keyPressEvent(self.h, ev.h)

proc cQScrollBar_vtable_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QScrollBartimerEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQScrollBar_virtualbase_timerEvent(self.h, param1.h)

proc cQScrollBar_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QScrollBarchangeEvent*(self: gen_qscrollbar_types.QScrollBar, e: gen_qcoreevent_types.QEvent): void =
  fcQScrollBar_virtualbase_changeEvent(self.h, e.h)

proc cQScrollBar_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QScrollBardevType*(self: gen_qscrollbar_types.QScrollBar): cint =
  fcQScrollBar_virtualbase_devType(self.h)

proc cQScrollBar_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QScrollBarsetVisible*(self: gen_qscrollbar_types.QScrollBar, visible: bool): void =
  fcQScrollBar_virtualbase_setVisible(self.h, visible)

proc cQScrollBar_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QScrollBarminimumSizeHint*(self: gen_qscrollbar_types.QScrollBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollBar_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQScrollBar_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollBarheightForWidth*(self: gen_qscrollbar_types.QScrollBar, param1: cint): cint =
  fcQScrollBar_virtualbase_heightForWidth(self.h, param1)

proc cQScrollBar_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QScrollBarhasHeightForWidth*(self: gen_qscrollbar_types.QScrollBar): bool =
  fcQScrollBar_virtualbase_hasHeightForWidth(self.h)

proc cQScrollBar_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QScrollBarpaintEngine*(self: gen_qscrollbar_types.QScrollBar): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQScrollBar_virtualbase_paintEngine(self.h), owned: false)

proc cQScrollBar_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollBarmouseDoubleClickEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QMouseEvent): void =
  fcQScrollBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QScrollBarkeyReleaseEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QKeyEvent): void =
  fcQScrollBar_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QScrollBarfocusInEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QFocusEvent): void =
  fcQScrollBar_virtualbase_focusInEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QScrollBarfocusOutEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QFocusEvent): void =
  fcQScrollBar_virtualbase_focusOutEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QScrollBarenterEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QEnterEvent): void =
  fcQScrollBar_virtualbase_enterEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QScrollBarleaveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): void =
  fcQScrollBar_virtualbase_leaveEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QScrollBarmoveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QMoveEvent): void =
  fcQScrollBar_virtualbase_moveEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QScrollBarresizeEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QResizeEvent): void =
  fcQScrollBar_virtualbase_resizeEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QScrollBarcloseEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QCloseEvent): void =
  fcQScrollBar_virtualbase_closeEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QScrollBartabletEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QTabletEvent): void =
  fcQScrollBar_virtualbase_tabletEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QScrollBaractionEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QActionEvent): void =
  fcQScrollBar_virtualbase_actionEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QScrollBardragEnterEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDragEnterEvent): void =
  fcQScrollBar_virtualbase_dragEnterEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QScrollBardragMoveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDragMoveEvent): void =
  fcQScrollBar_virtualbase_dragMoveEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QScrollBardragLeaveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQScrollBar_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QScrollBardropEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDropEvent): void =
  fcQScrollBar_virtualbase_dropEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QScrollBarshowEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QShowEvent): void =
  fcQScrollBar_virtualbase_showEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QScrollBarnativeEvent*(self: gen_qscrollbar_types.QScrollBar, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQScrollBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQScrollBar_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QScrollBarmetric*(self: gen_qscrollbar_types.QScrollBar, param1: cint): cint =
  fcQScrollBar_virtualbase_metric(self.h, cint(param1))

proc cQScrollBar_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QScrollBarinitPainter*(self: gen_qscrollbar_types.QScrollBar, painter: gen_qpainter_types.QPainter): void =
  fcQScrollBar_virtualbase_initPainter(self.h, painter.h)

proc cQScrollBar_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QScrollBarredirected*(self: gen_qscrollbar_types.QScrollBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQScrollBar_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQScrollBar_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollBarsharedPainter*(self: gen_qscrollbar_types.QScrollBar): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQScrollBar_virtualbase_sharedPainter(self.h), owned: false)

proc cQScrollBar_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollBarinputMethodEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQScrollBar_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQScrollBar_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QScrollBarinputMethodQuery*(self: gen_qscrollbar_types.QScrollBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScrollBar_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQScrollBar_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QScrollBarfocusNextPrevChild*(self: gen_qscrollbar_types.QScrollBar, next: bool): bool =
  fcQScrollBar_virtualbase_focusNextPrevChild(self.h, next)

proc cQScrollBar_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QScrollBareventFilter*(self: gen_qscrollbar_types.QScrollBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQScrollBar_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQScrollBar_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QScrollBarchildEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQScrollBar_virtualbase_childEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QScrollBarcustomEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): void =
  fcQScrollBar_virtualbase_customEvent(self.h, event.h)

proc cQScrollBar_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QScrollBarconnectNotify*(self: gen_qscrollbar_types.QScrollBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScrollBar_virtualbase_connectNotify(self.h, signal.h)

proc cQScrollBar_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QScrollBardisconnectNotify*(self: gen_qscrollbar_types.QScrollBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScrollBar_virtualbase_disconnectNotify(self.h, signal.h)

proc cQScrollBar_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](fcQScrollBar_vdata(self))
  let self = QScrollBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQScrollBar* {.inheritable.} = ref object of QScrollBar
  vtbl*: cQScrollBarVTable
method metaObject*(self: VirtualQScrollBar): gen_qobjectdefs_types.QMetaObject {.base.} =
  QScrollBarmetaObject(self[])
proc cQScrollBar_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQScrollBar, param1: cstring): pointer {.base.} =
  QScrollBarmetacast(self[], param1)
proc cQScrollBar_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQScrollBar, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QScrollBarmetacall(self[], param1, param2, param3)
proc cQScrollBar_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQScrollBar): gen_qsize_types.QSize {.base.} =
  QScrollBarsizeHint(self[])
proc cQScrollBar_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQScrollBar, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QScrollBarevent(self[], event)
proc cQScrollBar_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method wheelEvent*(self: VirtualQScrollBar, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QScrollBarwheelEvent(self[], param1)
proc cQScrollBar_method_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  inst.wheelEvent(slotval1)

method paintEvent*(self: VirtualQScrollBar, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QScrollBarpaintEvent(self[], param1)
proc cQScrollBar_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method mousePressEvent*(self: VirtualQScrollBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QScrollBarmousePressEvent(self[], param1)
proc cQScrollBar_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQScrollBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QScrollBarmouseReleaseEvent(self[], param1)
proc cQScrollBar_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQScrollBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QScrollBarmouseMoveEvent(self[], param1)
proc cQScrollBar_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

method hideEvent*(self: VirtualQScrollBar, param1: gen_qevent_types.QHideEvent): void {.base.} =
  QScrollBarhideEvent(self[], param1)
proc cQScrollBar_method_callback_hideEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  inst.hideEvent(slotval1)

method sliderChange*(self: VirtualQScrollBar, change: cint): void {.base.} =
  QScrollBarsliderChange(self[], change)
proc cQScrollBar_method_callback_sliderChange(self: pointer, change: cint): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = cint(change)
  inst.sliderChange(slotval1)

method contextMenuEvent*(self: VirtualQScrollBar, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QScrollBarcontextMenuEvent(self[], param1)
proc cQScrollBar_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method initStyleOption*(self: VirtualQScrollBar, option: gen_qstyleoption_types.QStyleOptionSlider): void {.base.} =
  QScrollBarinitStyleOption(self[], option)
proc cQScrollBar_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSlider(h: option, owned: false)
  inst.initStyleOption(slotval1)

method keyPressEvent*(self: VirtualQScrollBar, ev: gen_qevent_types.QKeyEvent): void {.base.} =
  QScrollBarkeyPressEvent(self[], ev)
proc cQScrollBar_method_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  inst.keyPressEvent(slotval1)

method timerEvent*(self: VirtualQScrollBar, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QScrollBartimerEvent(self[], param1)
proc cQScrollBar_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

method changeEvent*(self: VirtualQScrollBar, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QScrollBarchangeEvent(self[], e)
proc cQScrollBar_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

method devType*(self: VirtualQScrollBar): cint {.base.} =
  QScrollBardevType(self[])
proc cQScrollBar_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQScrollBar, visible: bool): void {.base.} =
  QScrollBarsetVisible(self[], visible)
proc cQScrollBar_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method minimumSizeHint*(self: VirtualQScrollBar): gen_qsize_types.QSize {.base.} =
  QScrollBarminimumSizeHint(self[])
proc cQScrollBar_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQScrollBar, param1: cint): cint {.base.} =
  QScrollBarheightForWidth(self[], param1)
proc cQScrollBar_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQScrollBar): bool {.base.} =
  QScrollBarhasHeightForWidth(self[])
proc cQScrollBar_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQScrollBar): gen_qpaintengine_types.QPaintEngine {.base.} =
  QScrollBarpaintEngine(self[])
proc cQScrollBar_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QScrollBarmouseDoubleClickEvent(self[], event)
proc cQScrollBar_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method keyReleaseEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QScrollBarkeyReleaseEvent(self[], event)
proc cQScrollBar_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QScrollBarfocusInEvent(self[], event)
proc cQScrollBar_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QScrollBarfocusOutEvent(self[], event)
proc cQScrollBar_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QScrollBarenterEvent(self[], event)
proc cQScrollBar_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQScrollBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QScrollBarleaveEvent(self[], event)
proc cQScrollBar_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QScrollBarmoveEvent(self[], event)
proc cQScrollBar_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QScrollBarresizeEvent(self[], event)
proc cQScrollBar_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QScrollBarcloseEvent(self[], event)
proc cQScrollBar_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QScrollBartabletEvent(self[], event)
proc cQScrollBar_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QActionEvent): void {.base.} =
  QScrollBaractionEvent(self[], event)
proc cQScrollBar_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QScrollBardragEnterEvent(self[], event)
proc cQScrollBar_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QScrollBardragMoveEvent(self[], event)
proc cQScrollBar_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QScrollBardragLeaveEvent(self[], event)
proc cQScrollBar_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QDropEvent): void {.base.} =
  QScrollBardropEvent(self[], event)
proc cQScrollBar_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQScrollBar, event: gen_qevent_types.QShowEvent): void {.base.} =
  QScrollBarshowEvent(self[], event)
proc cQScrollBar_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method nativeEvent*(self: VirtualQScrollBar, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QScrollBarnativeEvent(self[], eventType, message, resultVal)
proc cQScrollBar_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQScrollBar, param1: cint): cint {.base.} =
  QScrollBarmetric(self[], param1)
proc cQScrollBar_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQScrollBar, painter: gen_qpainter_types.QPainter): void {.base.} =
  QScrollBarinitPainter(self[], painter)
proc cQScrollBar_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQScrollBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QScrollBarredirected(self[], offset)
proc cQScrollBar_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQScrollBar): gen_qpainter_types.QPainter {.base.} =
  QScrollBarsharedPainter(self[])
proc cQScrollBar_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQScrollBar, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QScrollBarinputMethodEvent(self[], param1)
proc cQScrollBar_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQScrollBar, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QScrollBarinputMethodQuery(self[], param1)
proc cQScrollBar_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQScrollBar, next: bool): bool {.base.} =
  QScrollBarfocusNextPrevChild(self[], next)
proc cQScrollBar_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQScrollBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QScrollBareventFilter(self[], watched, event)
proc cQScrollBar_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQScrollBar, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QScrollBarchildEvent(self[], event)
proc cQScrollBar_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQScrollBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QScrollBarcustomEvent(self[], event)
proc cQScrollBar_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQScrollBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QScrollBarconnectNotify(self[], signal)
proc cQScrollBar_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQScrollBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QScrollBardisconnectNotify(self[], signal)
proc cQScrollBar_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScrollBar](fcQScrollBar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setRepeatAction*(self: gen_qscrollbar_types.QScrollBar, action: cint): void =
  fcQScrollBar_protectedbase_setRepeatAction(self.h, cint(action))

proc repeatAction*(self: gen_qscrollbar_types.QScrollBar): cint =
  cint(fcQScrollBar_protectedbase_repeatAction(self.h))

proc updateMicroFocus*(self: gen_qscrollbar_types.QScrollBar): void =
  fcQScrollBar_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qscrollbar_types.QScrollBar): void =
  fcQScrollBar_protectedbase_create(self.h)

proc destroy*(self: gen_qscrollbar_types.QScrollBar): void =
  fcQScrollBar_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qscrollbar_types.QScrollBar): bool =
  fcQScrollBar_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qscrollbar_types.QScrollBar): bool =
  fcQScrollBar_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qscrollbar_types.QScrollBar): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQScrollBar_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qscrollbar_types.QScrollBar): cint =
  fcQScrollBar_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscrollbar_types.QScrollBar, signal: cstring): cint =
  fcQScrollBar_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscrollbar_types.QScrollBar, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQScrollBar_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscrollbar_types.QScrollBar,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QScrollBarVTable = nil): gen_qscrollbar_types.QScrollBar =
  let vtbl = if vtbl == nil: new QScrollBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScrollBarVTable](fcQScrollBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQScrollBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQScrollBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQScrollBar_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQScrollBar_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQScrollBar_vtable_callback_event
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQScrollBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQScrollBar_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQScrollBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQScrollBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQScrollBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQScrollBar_vtable_callback_hideEvent
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = cQScrollBar_vtable_callback_sliderChange
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQScrollBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQScrollBar_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQScrollBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQScrollBar_vtable_callback_timerEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQScrollBar_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQScrollBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQScrollBar_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQScrollBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQScrollBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQScrollBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQScrollBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQScrollBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQScrollBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQScrollBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQScrollBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQScrollBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQScrollBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQScrollBar_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQScrollBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQScrollBar_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQScrollBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQScrollBar_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQScrollBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQScrollBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQScrollBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQScrollBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQScrollBar_vtable_callback_showEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQScrollBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQScrollBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQScrollBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQScrollBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQScrollBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQScrollBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQScrollBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQScrollBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQScrollBar_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQScrollBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQScrollBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQScrollBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQScrollBar_vtable_callback_disconnectNotify
  gen_qscrollbar_types.QScrollBar(h: fcQScrollBar_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qscrollbar_types.QScrollBar,
    vtbl: ref QScrollBarVTable = nil): gen_qscrollbar_types.QScrollBar =
  let vtbl = if vtbl == nil: new QScrollBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScrollBarVTable](fcQScrollBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQScrollBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQScrollBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQScrollBar_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQScrollBar_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQScrollBar_vtable_callback_event
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQScrollBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQScrollBar_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQScrollBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQScrollBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQScrollBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQScrollBar_vtable_callback_hideEvent
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = cQScrollBar_vtable_callback_sliderChange
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQScrollBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQScrollBar_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQScrollBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQScrollBar_vtable_callback_timerEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQScrollBar_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQScrollBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQScrollBar_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQScrollBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQScrollBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQScrollBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQScrollBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQScrollBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQScrollBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQScrollBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQScrollBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQScrollBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQScrollBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQScrollBar_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQScrollBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQScrollBar_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQScrollBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQScrollBar_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQScrollBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQScrollBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQScrollBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQScrollBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQScrollBar_vtable_callback_showEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQScrollBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQScrollBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQScrollBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQScrollBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQScrollBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQScrollBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQScrollBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQScrollBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQScrollBar_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQScrollBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQScrollBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQScrollBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQScrollBar_vtable_callback_disconnectNotify
  gen_qscrollbar_types.QScrollBar(h: fcQScrollBar_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qscrollbar_types.QScrollBar,
    param1: cint,
    vtbl: ref QScrollBarVTable = nil): gen_qscrollbar_types.QScrollBar =
  let vtbl = if vtbl == nil: new QScrollBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScrollBarVTable](fcQScrollBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQScrollBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQScrollBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQScrollBar_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQScrollBar_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQScrollBar_vtable_callback_event
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQScrollBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQScrollBar_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQScrollBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQScrollBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQScrollBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQScrollBar_vtable_callback_hideEvent
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = cQScrollBar_vtable_callback_sliderChange
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQScrollBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQScrollBar_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQScrollBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQScrollBar_vtable_callback_timerEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQScrollBar_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQScrollBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQScrollBar_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQScrollBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQScrollBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQScrollBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQScrollBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQScrollBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQScrollBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQScrollBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQScrollBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQScrollBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQScrollBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQScrollBar_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQScrollBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQScrollBar_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQScrollBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQScrollBar_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQScrollBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQScrollBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQScrollBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQScrollBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQScrollBar_vtable_callback_showEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQScrollBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQScrollBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQScrollBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQScrollBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQScrollBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQScrollBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQScrollBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQScrollBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQScrollBar_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQScrollBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQScrollBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQScrollBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQScrollBar_vtable_callback_disconnectNotify
  gen_qscrollbar_types.QScrollBar(h: fcQScrollBar_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(param1)), owned: true)

proc create*(T: type gen_qscrollbar_types.QScrollBar,
    param1: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QScrollBarVTable = nil): gen_qscrollbar_types.QScrollBar =
  let vtbl = if vtbl == nil: new QScrollBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScrollBarVTable](fcQScrollBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQScrollBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQScrollBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQScrollBar_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQScrollBar_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQScrollBar_vtable_callback_event
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQScrollBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQScrollBar_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQScrollBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQScrollBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQScrollBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQScrollBar_vtable_callback_hideEvent
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = cQScrollBar_vtable_callback_sliderChange
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQScrollBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQScrollBar_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQScrollBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQScrollBar_vtable_callback_timerEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQScrollBar_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQScrollBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQScrollBar_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQScrollBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQScrollBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQScrollBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQScrollBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQScrollBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQScrollBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQScrollBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQScrollBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQScrollBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQScrollBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQScrollBar_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQScrollBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQScrollBar_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQScrollBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQScrollBar_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQScrollBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQScrollBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQScrollBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQScrollBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQScrollBar_vtable_callback_showEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQScrollBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQScrollBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQScrollBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQScrollBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQScrollBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQScrollBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQScrollBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQScrollBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQScrollBar_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQScrollBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQScrollBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQScrollBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQScrollBar_vtable_callback_disconnectNotify
  gen_qscrollbar_types.QScrollBar(h: fcQScrollBar_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(param1), parent.h), owned: true)

const cQScrollBar_mvtbl = cQScrollBarVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQScrollBar()[])](self.fcQScrollBar_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQScrollBar_method_callback_metaObject,
  metacast: cQScrollBar_method_callback_metacast,
  metacall: cQScrollBar_method_callback_metacall,
  sizeHint: cQScrollBar_method_callback_sizeHint,
  event: cQScrollBar_method_callback_event,
  wheelEvent: cQScrollBar_method_callback_wheelEvent,
  paintEvent: cQScrollBar_method_callback_paintEvent,
  mousePressEvent: cQScrollBar_method_callback_mousePressEvent,
  mouseReleaseEvent: cQScrollBar_method_callback_mouseReleaseEvent,
  mouseMoveEvent: cQScrollBar_method_callback_mouseMoveEvent,
  hideEvent: cQScrollBar_method_callback_hideEvent,
  sliderChange: cQScrollBar_method_callback_sliderChange,
  contextMenuEvent: cQScrollBar_method_callback_contextMenuEvent,
  initStyleOption: cQScrollBar_method_callback_initStyleOption,
  keyPressEvent: cQScrollBar_method_callback_keyPressEvent,
  timerEvent: cQScrollBar_method_callback_timerEvent,
  changeEvent: cQScrollBar_method_callback_changeEvent,
  devType: cQScrollBar_method_callback_devType,
  setVisible: cQScrollBar_method_callback_setVisible,
  minimumSizeHint: cQScrollBar_method_callback_minimumSizeHint,
  heightForWidth: cQScrollBar_method_callback_heightForWidth,
  hasHeightForWidth: cQScrollBar_method_callback_hasHeightForWidth,
  paintEngine: cQScrollBar_method_callback_paintEngine,
  mouseDoubleClickEvent: cQScrollBar_method_callback_mouseDoubleClickEvent,
  keyReleaseEvent: cQScrollBar_method_callback_keyReleaseEvent,
  focusInEvent: cQScrollBar_method_callback_focusInEvent,
  focusOutEvent: cQScrollBar_method_callback_focusOutEvent,
  enterEvent: cQScrollBar_method_callback_enterEvent,
  leaveEvent: cQScrollBar_method_callback_leaveEvent,
  moveEvent: cQScrollBar_method_callback_moveEvent,
  resizeEvent: cQScrollBar_method_callback_resizeEvent,
  closeEvent: cQScrollBar_method_callback_closeEvent,
  tabletEvent: cQScrollBar_method_callback_tabletEvent,
  actionEvent: cQScrollBar_method_callback_actionEvent,
  dragEnterEvent: cQScrollBar_method_callback_dragEnterEvent,
  dragMoveEvent: cQScrollBar_method_callback_dragMoveEvent,
  dragLeaveEvent: cQScrollBar_method_callback_dragLeaveEvent,
  dropEvent: cQScrollBar_method_callback_dropEvent,
  showEvent: cQScrollBar_method_callback_showEvent,
  nativeEvent: cQScrollBar_method_callback_nativeEvent,
  metric: cQScrollBar_method_callback_metric,
  initPainter: cQScrollBar_method_callback_initPainter,
  redirected: cQScrollBar_method_callback_redirected,
  sharedPainter: cQScrollBar_method_callback_sharedPainter,
  inputMethodEvent: cQScrollBar_method_callback_inputMethodEvent,
  inputMethodQuery: cQScrollBar_method_callback_inputMethodQuery,
  focusNextPrevChild: cQScrollBar_method_callback_focusNextPrevChild,
  eventFilter: cQScrollBar_method_callback_eventFilter,
  childEvent: cQScrollBar_method_callback_childEvent,
  customEvent: cQScrollBar_method_callback_customEvent,
  connectNotify: cQScrollBar_method_callback_connectNotify,
  disconnectNotify: cQScrollBar_method_callback_disconnectNotify,
)
proc create*(T: type gen_qscrollbar_types.QScrollBar,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQScrollBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScrollBar_new(addr(cQScrollBar_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qscrollbar_types.QScrollBar,
    inst: VirtualQScrollBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScrollBar_new2(addr(cQScrollBar_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qscrollbar_types.QScrollBar,
    param1: cint,
    inst: VirtualQScrollBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScrollBar_new3(addr(cQScrollBar_mvtbl), addr(inst[]), cint(param1))
  inst[].owned = true

proc create*(T: type gen_qscrollbar_types.QScrollBar,
    param1: cint, parent: gen_qwidget_types.QWidget,
    inst: VirtualQScrollBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScrollBar_new4(addr(cQScrollBar_mvtbl), addr(inst[]), cint(param1), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qscrollbar_types.QScrollBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollBar_staticMetaObject())
