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
{.compile("gen_qscrollbar.cpp", cflags).}


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

proc fcQScrollBar_metaObject(self: pointer, ): pointer {.importc: "QScrollBar_metaObject".}
proc fcQScrollBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollBar_metacast".}
proc fcQScrollBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollBar_metacall".}
proc fcQScrollBar_tr(s: cstring): struct_miqt_string {.importc: "QScrollBar_tr".}
proc fcQScrollBar_sizeHint(self: pointer, ): pointer {.importc: "QScrollBar_sizeHint".}
proc fcQScrollBar_event(self: pointer, event: pointer): bool {.importc: "QScrollBar_event".}
proc fcQScrollBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScrollBar_tr2".}
proc fcQScrollBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScrollBar_tr3".}
type cQScrollBarVTable = object
  destructor*: proc(vtbl: ptr cQScrollBarVTable, self: ptr cQScrollBar) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  sliderChange*: proc(vtbl, self: pointer, change: cint): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQScrollBar_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QScrollBar_virtualbase_metaObject".}
proc fcQScrollBar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollBar_virtualbase_metacast".}
proc fcQScrollBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollBar_virtualbase_metacall".}
proc fcQScrollBar_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QScrollBar_virtualbase_sizeHint".}
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
proc fcQScrollBar_virtualbase_devType(self: pointer, ): cint {.importc: "QScrollBar_virtualbase_devType".}
proc fcQScrollBar_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QScrollBar_virtualbase_setVisible".}
proc fcQScrollBar_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QScrollBar_virtualbase_minimumSizeHint".}
proc fcQScrollBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QScrollBar_virtualbase_heightForWidth".}
proc fcQScrollBar_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QScrollBar_virtualbase_hasHeightForWidth".}
proc fcQScrollBar_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QScrollBar_virtualbase_paintEngine".}
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
proc fcQScrollBar_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QScrollBar_virtualbase_sharedPainter".}
proc fcQScrollBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QScrollBar_virtualbase_inputMethodEvent".}
proc fcQScrollBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QScrollBar_virtualbase_inputMethodQuery".}
proc fcQScrollBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QScrollBar_virtualbase_focusNextPrevChild".}
proc fcQScrollBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QScrollBar_virtualbase_eventFilter".}
proc fcQScrollBar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_childEvent".}
proc fcQScrollBar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QScrollBar_virtualbase_customEvent".}
proc fcQScrollBar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QScrollBar_virtualbase_connectNotify".}
proc fcQScrollBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QScrollBar_virtualbase_disconnectNotify".}
proc fcQScrollBar_protectedbase_setRepeatAction(self: pointer, action: cint): void {.importc: "QScrollBar_protectedbase_setRepeatAction".}
proc fcQScrollBar_protectedbase_repeatAction(self: pointer, ): cint {.importc: "QScrollBar_protectedbase_repeatAction".}
proc fcQScrollBar_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QScrollBar_protectedbase_updateMicroFocus".}
proc fcQScrollBar_protectedbase_create(self: pointer, ): void {.importc: "QScrollBar_protectedbase_create".}
proc fcQScrollBar_protectedbase_destroy(self: pointer, ): void {.importc: "QScrollBar_protectedbase_destroy".}
proc fcQScrollBar_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QScrollBar_protectedbase_focusNextChild".}
proc fcQScrollBar_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QScrollBar_protectedbase_focusPreviousChild".}
proc fcQScrollBar_protectedbase_sender(self: pointer, ): pointer {.importc: "QScrollBar_protectedbase_sender".}
proc fcQScrollBar_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QScrollBar_protectedbase_senderSignalIndex".}
proc fcQScrollBar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QScrollBar_protectedbase_receivers".}
proc fcQScrollBar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QScrollBar_protectedbase_isSignalConnected".}
proc fcQScrollBar_new(vtbl: pointer, parent: pointer): ptr cQScrollBar {.importc: "QScrollBar_new".}
proc fcQScrollBar_new2(vtbl: pointer, ): ptr cQScrollBar {.importc: "QScrollBar_new2".}
proc fcQScrollBar_new3(vtbl: pointer, param1: cint): ptr cQScrollBar {.importc: "QScrollBar_new3".}
proc fcQScrollBar_new4(vtbl: pointer, param1: cint, parent: pointer): ptr cQScrollBar {.importc: "QScrollBar_new4".}
proc fcQScrollBar_staticMetaObject(): pointer {.importc: "QScrollBar_staticMetaObject".}
proc fcQScrollBar_delete(self: pointer) {.importc: "QScrollBar_delete".}

proc metaObject*(self: gen_qscrollbar_types.QScrollBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollBar_metaObject(self.h))

proc metacast*(self: gen_qscrollbar_types.QScrollBar, param1: cstring): pointer =
  fcQScrollBar_metacast(self.h, param1)

proc metacall*(self: gen_qscrollbar_types.QScrollBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQScrollBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscrollbar_types.QScrollBar, s: cstring): string =
  let v_ms = fcQScrollBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qscrollbar_types.QScrollBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollBar_sizeHint(self.h))

proc event*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): bool =
  fcQScrollBar_event(self.h, event.h)

proc tr*(_: type gen_qscrollbar_types.QScrollBar, s: cstring, c: cstring): string =
  let v_ms = fcQScrollBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscrollbar_types.QScrollBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScrollBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QScrollBarnativeEventProc* = proc(self: QScrollBar, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QScrollBarVTable* = object
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
proc QScrollBarmetaObject*(self: gen_qscrollbar_types.QScrollBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollBar_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQScrollBar_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QScrollBarmetacast*(self: gen_qscrollbar_types.QScrollBar, param1: cstring): pointer =
  fcQScrollBar_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQScrollBar_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QScrollBarmetacall*(self: gen_qscrollbar_types.QScrollBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQScrollBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQScrollBar_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QScrollBarsizeHint*(self: gen_qscrollbar_types.QScrollBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollBar_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQScrollBar_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QScrollBarevent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): bool =
  fcQScrollBar_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QScrollBarwheelEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QWheelEvent): void =
  fcQScrollBar_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollBar_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QScrollBarpaintEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QPaintEvent): void =
  fcQScrollBar_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollBar_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QScrollBarmousePressEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollBar_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollBar_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QScrollBarmouseReleaseEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollBar_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QScrollBarmouseMoveEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQScrollBar_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollBar_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QScrollBarhideEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QHideEvent): void =
  fcQScrollBar_virtualbase_hideEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollBar_hideEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)
  vtbl[].hideEvent(self, slotval1)

proc QScrollBarsliderChange*(self: gen_qscrollbar_types.QScrollBar, change: cint): void =
  fcQScrollBar_virtualbase_sliderChange(self.h, cint(change))

proc miqt_exec_callback_cQScrollBar_sliderChange(vtbl: pointer, self: pointer, change: cint): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = cint(change)
  vtbl[].sliderChange(self, slotval1)

proc QScrollBarcontextMenuEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQScrollBar_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollBar_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QScrollBarinitStyleOption*(self: gen_qscrollbar_types.QScrollBar, option: gen_qstyleoption_types.QStyleOptionSlider): void =
  fcQScrollBar_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQScrollBar_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionSlider(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QScrollBarkeyPressEvent*(self: gen_qscrollbar_types.QScrollBar, ev: gen_qevent_types.QKeyEvent): void =
  fcQScrollBar_virtualbase_keyPressEvent(self.h, ev.h)

proc miqt_exec_callback_cQScrollBar_keyPressEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev)
  vtbl[].keyPressEvent(self, slotval1)

proc QScrollBartimerEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQScrollBar_virtualbase_timerEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollBar_timerEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)
  vtbl[].timerEvent(self, slotval1)

proc QScrollBarchangeEvent*(self: gen_qscrollbar_types.QScrollBar, e: gen_qcoreevent_types.QEvent): void =
  fcQScrollBar_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQScrollBar_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QScrollBardevType*(self: gen_qscrollbar_types.QScrollBar, ): cint =
  fcQScrollBar_virtualbase_devType(self.h)

proc miqt_exec_callback_cQScrollBar_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QScrollBarsetVisible*(self: gen_qscrollbar_types.QScrollBar, visible: bool): void =
  fcQScrollBar_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQScrollBar_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QScrollBarminimumSizeHint*(self: gen_qscrollbar_types.QScrollBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollBar_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQScrollBar_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QScrollBarheightForWidth*(self: gen_qscrollbar_types.QScrollBar, param1: cint): cint =
  fcQScrollBar_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQScrollBar_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QScrollBarhasHeightForWidth*(self: gen_qscrollbar_types.QScrollBar, ): bool =
  fcQScrollBar_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQScrollBar_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QScrollBarpaintEngine*(self: gen_qscrollbar_types.QScrollBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQScrollBar_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQScrollBar_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QScrollBarmouseDoubleClickEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QMouseEvent): void =
  fcQScrollBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QScrollBarkeyReleaseEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QKeyEvent): void =
  fcQScrollBar_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QScrollBarfocusInEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QFocusEvent): void =
  fcQScrollBar_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QScrollBarfocusOutEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QFocusEvent): void =
  fcQScrollBar_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QScrollBarenterEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QEnterEvent): void =
  fcQScrollBar_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QScrollBarleaveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): void =
  fcQScrollBar_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QScrollBarmoveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QMoveEvent): void =
  fcQScrollBar_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QScrollBarresizeEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QResizeEvent): void =
  fcQScrollBar_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QScrollBarcloseEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QCloseEvent): void =
  fcQScrollBar_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QScrollBartabletEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QTabletEvent): void =
  fcQScrollBar_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QScrollBaractionEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QActionEvent): void =
  fcQScrollBar_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QScrollBardragEnterEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDragEnterEvent): void =
  fcQScrollBar_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QScrollBardragMoveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDragMoveEvent): void =
  fcQScrollBar_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QScrollBardragLeaveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQScrollBar_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QScrollBardropEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDropEvent): void =
  fcQScrollBar_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QScrollBarshowEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QShowEvent): void =
  fcQScrollBar_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QScrollBarnativeEvent*(self: gen_qscrollbar_types.QScrollBar, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQScrollBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQScrollBar_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QScrollBarmetric*(self: gen_qscrollbar_types.QScrollBar, param1: cint): cint =
  fcQScrollBar_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQScrollBar_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QScrollBarinitPainter*(self: gen_qscrollbar_types.QScrollBar, painter: gen_qpainter_types.QPainter): void =
  fcQScrollBar_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQScrollBar_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QScrollBarredirected*(self: gen_qscrollbar_types.QScrollBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQScrollBar_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQScrollBar_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QScrollBarsharedPainter*(self: gen_qscrollbar_types.QScrollBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQScrollBar_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQScrollBar_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QScrollBarinputMethodEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQScrollBar_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQScrollBar_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QScrollBarinputMethodQuery*(self: gen_qscrollbar_types.QScrollBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScrollBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQScrollBar_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QScrollBarfocusNextPrevChild*(self: gen_qscrollbar_types.QScrollBar, next: bool): bool =
  fcQScrollBar_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQScrollBar_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QScrollBareventFilter*(self: gen_qscrollbar_types.QScrollBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQScrollBar_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQScrollBar_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QScrollBarchildEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQScrollBar_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QScrollBarcustomEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): void =
  fcQScrollBar_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQScrollBar_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QScrollBarconnectNotify*(self: gen_qscrollbar_types.QScrollBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScrollBar_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQScrollBar_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QScrollBardisconnectNotify*(self: gen_qscrollbar_types.QScrollBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScrollBar_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQScrollBar_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScrollBarVTable](vtbl)
  let self = QScrollBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc setRepeatAction*(self: gen_qscrollbar_types.QScrollBar, action: cint): void =
  fcQScrollBar_protectedbase_setRepeatAction(self.h, cint(action))

proc repeatAction*(self: gen_qscrollbar_types.QScrollBar, ): cint =
  cint(fcQScrollBar_protectedbase_repeatAction(self.h))

proc updateMicroFocus*(self: gen_qscrollbar_types.QScrollBar, ): void =
  fcQScrollBar_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qscrollbar_types.QScrollBar, ): void =
  fcQScrollBar_protectedbase_create(self.h)

proc destroy*(self: gen_qscrollbar_types.QScrollBar, ): void =
  fcQScrollBar_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qscrollbar_types.QScrollBar, ): bool =
  fcQScrollBar_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qscrollbar_types.QScrollBar, ): bool =
  fcQScrollBar_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qscrollbar_types.QScrollBar, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQScrollBar_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscrollbar_types.QScrollBar, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQScrollBarVTable, _: ptr cQScrollBar) {.cdecl.} =
    let vtbl = cast[ref QScrollBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQScrollBar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQScrollBar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQScrollBar_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQScrollBar_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQScrollBar_event
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQScrollBar_wheelEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQScrollBar_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQScrollBar_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQScrollBar_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQScrollBar_mouseMoveEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQScrollBar_hideEvent
  if not isNil(vtbl.sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQScrollBar_sliderChange
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQScrollBar_contextMenuEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQScrollBar_initStyleOption
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQScrollBar_keyPressEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQScrollBar_timerEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQScrollBar_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQScrollBar_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQScrollBar_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQScrollBar_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQScrollBar_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQScrollBar_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQScrollBar_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQScrollBar_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQScrollBar_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQScrollBar_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQScrollBar_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQScrollBar_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQScrollBar_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQScrollBar_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQScrollBar_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQScrollBar_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQScrollBar_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQScrollBar_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQScrollBar_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQScrollBar_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQScrollBar_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQScrollBar_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQScrollBar_showEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQScrollBar_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQScrollBar_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQScrollBar_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQScrollBar_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQScrollBar_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQScrollBar_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQScrollBar_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQScrollBar_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQScrollBar_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQScrollBar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQScrollBar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQScrollBar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQScrollBar_disconnectNotify
  gen_qscrollbar_types.QScrollBar(h: fcQScrollBar_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qscrollbar_types.QScrollBar,
    vtbl: ref QScrollBarVTable = nil): gen_qscrollbar_types.QScrollBar =
  let vtbl = if vtbl == nil: new QScrollBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQScrollBarVTable, _: ptr cQScrollBar) {.cdecl.} =
    let vtbl = cast[ref QScrollBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQScrollBar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQScrollBar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQScrollBar_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQScrollBar_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQScrollBar_event
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQScrollBar_wheelEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQScrollBar_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQScrollBar_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQScrollBar_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQScrollBar_mouseMoveEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQScrollBar_hideEvent
  if not isNil(vtbl.sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQScrollBar_sliderChange
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQScrollBar_contextMenuEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQScrollBar_initStyleOption
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQScrollBar_keyPressEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQScrollBar_timerEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQScrollBar_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQScrollBar_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQScrollBar_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQScrollBar_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQScrollBar_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQScrollBar_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQScrollBar_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQScrollBar_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQScrollBar_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQScrollBar_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQScrollBar_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQScrollBar_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQScrollBar_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQScrollBar_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQScrollBar_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQScrollBar_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQScrollBar_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQScrollBar_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQScrollBar_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQScrollBar_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQScrollBar_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQScrollBar_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQScrollBar_showEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQScrollBar_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQScrollBar_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQScrollBar_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQScrollBar_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQScrollBar_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQScrollBar_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQScrollBar_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQScrollBar_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQScrollBar_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQScrollBar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQScrollBar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQScrollBar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQScrollBar_disconnectNotify
  gen_qscrollbar_types.QScrollBar(h: fcQScrollBar_new2(addr(vtbl[]), ))

proc create*(T: type gen_qscrollbar_types.QScrollBar,
    param1: cint,
    vtbl: ref QScrollBarVTable = nil): gen_qscrollbar_types.QScrollBar =
  let vtbl = if vtbl == nil: new QScrollBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQScrollBarVTable, _: ptr cQScrollBar) {.cdecl.} =
    let vtbl = cast[ref QScrollBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQScrollBar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQScrollBar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQScrollBar_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQScrollBar_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQScrollBar_event
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQScrollBar_wheelEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQScrollBar_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQScrollBar_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQScrollBar_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQScrollBar_mouseMoveEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQScrollBar_hideEvent
  if not isNil(vtbl.sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQScrollBar_sliderChange
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQScrollBar_contextMenuEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQScrollBar_initStyleOption
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQScrollBar_keyPressEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQScrollBar_timerEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQScrollBar_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQScrollBar_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQScrollBar_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQScrollBar_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQScrollBar_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQScrollBar_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQScrollBar_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQScrollBar_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQScrollBar_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQScrollBar_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQScrollBar_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQScrollBar_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQScrollBar_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQScrollBar_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQScrollBar_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQScrollBar_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQScrollBar_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQScrollBar_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQScrollBar_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQScrollBar_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQScrollBar_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQScrollBar_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQScrollBar_showEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQScrollBar_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQScrollBar_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQScrollBar_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQScrollBar_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQScrollBar_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQScrollBar_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQScrollBar_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQScrollBar_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQScrollBar_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQScrollBar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQScrollBar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQScrollBar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQScrollBar_disconnectNotify
  gen_qscrollbar_types.QScrollBar(h: fcQScrollBar_new3(addr(vtbl[]), cint(param1)))

proc create*(T: type gen_qscrollbar_types.QScrollBar,
    param1: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QScrollBarVTable = nil): gen_qscrollbar_types.QScrollBar =
  let vtbl = if vtbl == nil: new QScrollBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQScrollBarVTable, _: ptr cQScrollBar) {.cdecl.} =
    let vtbl = cast[ref QScrollBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQScrollBar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQScrollBar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQScrollBar_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQScrollBar_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQScrollBar_event
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQScrollBar_wheelEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQScrollBar_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQScrollBar_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQScrollBar_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQScrollBar_mouseMoveEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQScrollBar_hideEvent
  if not isNil(vtbl.sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQScrollBar_sliderChange
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQScrollBar_contextMenuEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQScrollBar_initStyleOption
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQScrollBar_keyPressEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQScrollBar_timerEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQScrollBar_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQScrollBar_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQScrollBar_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQScrollBar_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQScrollBar_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQScrollBar_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQScrollBar_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQScrollBar_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQScrollBar_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQScrollBar_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQScrollBar_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQScrollBar_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQScrollBar_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQScrollBar_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQScrollBar_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQScrollBar_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQScrollBar_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQScrollBar_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQScrollBar_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQScrollBar_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQScrollBar_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQScrollBar_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQScrollBar_showEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQScrollBar_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQScrollBar_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQScrollBar_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQScrollBar_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQScrollBar_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQScrollBar_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQScrollBar_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQScrollBar_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQScrollBar_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQScrollBar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQScrollBar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQScrollBar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQScrollBar_disconnectNotify
  gen_qscrollbar_types.QScrollBar(h: fcQScrollBar_new4(addr(vtbl[]), cint(param1), parent.h))

proc staticMetaObject*(_: type gen_qscrollbar_types.QScrollBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollBar_staticMetaObject())
proc delete*(self: gen_qscrollbar_types.QScrollBar) =
  fcQScrollBar_delete(self.h)
