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
  ./gen_qstyleoption_types,
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
  gen_qstyleoption_types,
  gen_qwidget

type cQFocusFrame*{.exportc: "QFocusFrame", incompleteStruct.} = object

proc fcQFocusFrame_metaObject(self: pointer): pointer {.importc: "QFocusFrame_metaObject".}
proc fcQFocusFrame_metacast(self: pointer, param1: cstring): pointer {.importc: "QFocusFrame_metacast".}
proc fcQFocusFrame_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFocusFrame_metacall".}
proc fcQFocusFrame_tr(s: cstring): struct_miqt_string {.importc: "QFocusFrame_tr".}
proc fcQFocusFrame_setWidget(self: pointer, widget: pointer): void {.importc: "QFocusFrame_setWidget".}
proc fcQFocusFrame_widget(self: pointer): pointer {.importc: "QFocusFrame_widget".}
proc fcQFocusFrame_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFocusFrame_tr2".}
proc fcQFocusFrame_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFocusFrame_tr3".}
proc fcQFocusFrame_vtbl(self: pointer): pointer {.importc: "QFocusFrame_vtbl".}
proc fcQFocusFrame_vdata(self: pointer): pointer {.importc: "QFocusFrame_vdata".}
type cQFocusFrameVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQFocusFrame_virtualbase_metaObject(self: pointer): pointer {.importc: "QFocusFrame_virtualbase_metaObject".}
proc fcQFocusFrame_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFocusFrame_virtualbase_metacast".}
proc fcQFocusFrame_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFocusFrame_virtualbase_metacall".}
proc fcQFocusFrame_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QFocusFrame_virtualbase_event".}
proc fcQFocusFrame_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QFocusFrame_virtualbase_eventFilter".}
proc fcQFocusFrame_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QFocusFrame_virtualbase_paintEvent".}
proc fcQFocusFrame_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QFocusFrame_virtualbase_initStyleOption".}
proc fcQFocusFrame_virtualbase_devType(self: pointer): cint {.importc: "QFocusFrame_virtualbase_devType".}
proc fcQFocusFrame_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QFocusFrame_virtualbase_setVisible".}
proc fcQFocusFrame_virtualbase_sizeHint(self: pointer): pointer {.importc: "QFocusFrame_virtualbase_sizeHint".}
proc fcQFocusFrame_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QFocusFrame_virtualbase_minimumSizeHint".}
proc fcQFocusFrame_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QFocusFrame_virtualbase_heightForWidth".}
proc fcQFocusFrame_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QFocusFrame_virtualbase_hasHeightForWidth".}
proc fcQFocusFrame_virtualbase_paintEngine(self: pointer): pointer {.importc: "QFocusFrame_virtualbase_paintEngine".}
proc fcQFocusFrame_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_mousePressEvent".}
proc fcQFocusFrame_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_mouseReleaseEvent".}
proc fcQFocusFrame_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_mouseDoubleClickEvent".}
proc fcQFocusFrame_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_mouseMoveEvent".}
proc fcQFocusFrame_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_wheelEvent".}
proc fcQFocusFrame_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_keyPressEvent".}
proc fcQFocusFrame_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_keyReleaseEvent".}
proc fcQFocusFrame_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_focusInEvent".}
proc fcQFocusFrame_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_focusOutEvent".}
proc fcQFocusFrame_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_enterEvent".}
proc fcQFocusFrame_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_leaveEvent".}
proc fcQFocusFrame_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_moveEvent".}
proc fcQFocusFrame_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_resizeEvent".}
proc fcQFocusFrame_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_closeEvent".}
proc fcQFocusFrame_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_contextMenuEvent".}
proc fcQFocusFrame_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_tabletEvent".}
proc fcQFocusFrame_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_actionEvent".}
proc fcQFocusFrame_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_dragEnterEvent".}
proc fcQFocusFrame_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_dragMoveEvent".}
proc fcQFocusFrame_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_dragLeaveEvent".}
proc fcQFocusFrame_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_dropEvent".}
proc fcQFocusFrame_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_showEvent".}
proc fcQFocusFrame_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_hideEvent".}
proc fcQFocusFrame_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QFocusFrame_virtualbase_nativeEvent".}
proc fcQFocusFrame_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QFocusFrame_virtualbase_changeEvent".}
proc fcQFocusFrame_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QFocusFrame_virtualbase_metric".}
proc fcQFocusFrame_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QFocusFrame_virtualbase_initPainter".}
proc fcQFocusFrame_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QFocusFrame_virtualbase_redirected".}
proc fcQFocusFrame_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QFocusFrame_virtualbase_sharedPainter".}
proc fcQFocusFrame_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QFocusFrame_virtualbase_inputMethodEvent".}
proc fcQFocusFrame_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QFocusFrame_virtualbase_inputMethodQuery".}
proc fcQFocusFrame_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QFocusFrame_virtualbase_focusNextPrevChild".}
proc fcQFocusFrame_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_timerEvent".}
proc fcQFocusFrame_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_childEvent".}
proc fcQFocusFrame_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_customEvent".}
proc fcQFocusFrame_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFocusFrame_virtualbase_connectNotify".}
proc fcQFocusFrame_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFocusFrame_virtualbase_disconnectNotify".}
proc fcQFocusFrame_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QFocusFrame_protectedbase_updateMicroFocus".}
proc fcQFocusFrame_protectedbase_create(self: pointer): void {.importc: "QFocusFrame_protectedbase_create".}
proc fcQFocusFrame_protectedbase_destroy(self: pointer): void {.importc: "QFocusFrame_protectedbase_destroy".}
proc fcQFocusFrame_protectedbase_focusNextChild(self: pointer): bool {.importc: "QFocusFrame_protectedbase_focusNextChild".}
proc fcQFocusFrame_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QFocusFrame_protectedbase_focusPreviousChild".}
proc fcQFocusFrame_protectedbase_sender(self: pointer): pointer {.importc: "QFocusFrame_protectedbase_sender".}
proc fcQFocusFrame_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFocusFrame_protectedbase_senderSignalIndex".}
proc fcQFocusFrame_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFocusFrame_protectedbase_receivers".}
proc fcQFocusFrame_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFocusFrame_protectedbase_isSignalConnected".}
proc fcQFocusFrame_new(vtbl, vdata: pointer, parent: pointer): ptr cQFocusFrame {.importc: "QFocusFrame_new".}
proc fcQFocusFrame_new2(vtbl, vdata: pointer): ptr cQFocusFrame {.importc: "QFocusFrame_new2".}
proc fcQFocusFrame_staticMetaObject(): pointer {.importc: "QFocusFrame_staticMetaObject".}

proc metaObject*(self: gen_qfocusframe_types.QFocusFrame): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFocusFrame_metaObject(self.h), owned: false)

proc metacast*(self: gen_qfocusframe_types.QFocusFrame, param1: cstring): pointer =
  fcQFocusFrame_metacast(self.h, param1)

proc metacall*(self: gen_qfocusframe_types.QFocusFrame, param1: cint, param2: cint, param3: pointer): cint =
  fcQFocusFrame_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring): string =
  let v_ms = fcQFocusFrame_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWidget*(self: gen_qfocusframe_types.QFocusFrame, widget: gen_qwidget_types.QWidget): void =
  fcQFocusFrame_setWidget(self.h, widget.h)

proc widget*(self: gen_qfocusframe_types.QFocusFrame): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQFocusFrame_widget(self.h), owned: false)

proc tr*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring, c: cstring): string =
  let v_ms = fcQFocusFrame_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFocusFrame_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QFocusFramemetaObjectProc* = proc(self: QFocusFrame): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFocusFramemetacastProc* = proc(self: QFocusFrame, param1: cstring): pointer {.raises: [], gcsafe.}
type QFocusFramemetacallProc* = proc(self: QFocusFrame, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFocusFrameeventProc* = proc(self: QFocusFrame, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFocusFrameeventFilterProc* = proc(self: QFocusFrame, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFocusFramepaintEventProc* = proc(self: QFocusFrame, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QFocusFrameinitStyleOptionProc* = proc(self: QFocusFrame, option: gen_qstyleoption_types.QStyleOption): void {.raises: [], gcsafe.}
type QFocusFramedevTypeProc* = proc(self: QFocusFrame): cint {.raises: [], gcsafe.}
type QFocusFramesetVisibleProc* = proc(self: QFocusFrame, visible: bool): void {.raises: [], gcsafe.}
type QFocusFramesizeHintProc* = proc(self: QFocusFrame): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFocusFrameminimumSizeHintProc* = proc(self: QFocusFrame): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFocusFrameheightForWidthProc* = proc(self: QFocusFrame, param1: cint): cint {.raises: [], gcsafe.}
type QFocusFramehasHeightForWidthProc* = proc(self: QFocusFrame): bool {.raises: [], gcsafe.}
type QFocusFramepaintEngineProc* = proc(self: QFocusFrame): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QFocusFramemousePressEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFocusFramemouseReleaseEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFocusFramemouseDoubleClickEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFocusFramemouseMoveEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFocusFramewheelEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QFocusFramekeyPressEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QFocusFramekeyReleaseEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QFocusFramefocusInEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QFocusFramefocusOutEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QFocusFrameenterEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QFocusFrameleaveEventProc* = proc(self: QFocusFrame, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFocusFramemoveEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QFocusFrameresizeEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QFocusFramecloseEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QFocusFramecontextMenuEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QFocusFrametabletEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QFocusFrameactionEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QFocusFramedragEnterEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QFocusFramedragMoveEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QFocusFramedragLeaveEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QFocusFramedropEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QFocusFrameshowEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QFocusFramehideEventProc* = proc(self: QFocusFrame, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QFocusFramenativeEventProc* = proc(self: QFocusFrame, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QFocusFramechangeEventProc* = proc(self: QFocusFrame, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFocusFramemetricProc* = proc(self: QFocusFrame, param1: cint): cint {.raises: [], gcsafe.}
type QFocusFrameinitPainterProc* = proc(self: QFocusFrame, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QFocusFrameredirectedProc* = proc(self: QFocusFrame, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QFocusFramesharedPainterProc* = proc(self: QFocusFrame): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QFocusFrameinputMethodEventProc* = proc(self: QFocusFrame, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QFocusFrameinputMethodQueryProc* = proc(self: QFocusFrame, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QFocusFramefocusNextPrevChildProc* = proc(self: QFocusFrame, next: bool): bool {.raises: [], gcsafe.}
type QFocusFrametimerEventProc* = proc(self: QFocusFrame, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFocusFramechildEventProc* = proc(self: QFocusFrame, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFocusFramecustomEventProc* = proc(self: QFocusFrame, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFocusFrameconnectNotifyProc* = proc(self: QFocusFrame, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFocusFramedisconnectNotifyProc* = proc(self: QFocusFrame, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFocusFrameVTable* {.inheritable, pure.} = object
  vtbl: cQFocusFrameVTable
  metaObject*: QFocusFramemetaObjectProc
  metacast*: QFocusFramemetacastProc
  metacall*: QFocusFramemetacallProc
  event*: QFocusFrameeventProc
  eventFilter*: QFocusFrameeventFilterProc
  paintEvent*: QFocusFramepaintEventProc
  initStyleOption*: QFocusFrameinitStyleOptionProc
  devType*: QFocusFramedevTypeProc
  setVisible*: QFocusFramesetVisibleProc
  sizeHint*: QFocusFramesizeHintProc
  minimumSizeHint*: QFocusFrameminimumSizeHintProc
  heightForWidth*: QFocusFrameheightForWidthProc
  hasHeightForWidth*: QFocusFramehasHeightForWidthProc
  paintEngine*: QFocusFramepaintEngineProc
  mousePressEvent*: QFocusFramemousePressEventProc
  mouseReleaseEvent*: QFocusFramemouseReleaseEventProc
  mouseDoubleClickEvent*: QFocusFramemouseDoubleClickEventProc
  mouseMoveEvent*: QFocusFramemouseMoveEventProc
  wheelEvent*: QFocusFramewheelEventProc
  keyPressEvent*: QFocusFramekeyPressEventProc
  keyReleaseEvent*: QFocusFramekeyReleaseEventProc
  focusInEvent*: QFocusFramefocusInEventProc
  focusOutEvent*: QFocusFramefocusOutEventProc
  enterEvent*: QFocusFrameenterEventProc
  leaveEvent*: QFocusFrameleaveEventProc
  moveEvent*: QFocusFramemoveEventProc
  resizeEvent*: QFocusFrameresizeEventProc
  closeEvent*: QFocusFramecloseEventProc
  contextMenuEvent*: QFocusFramecontextMenuEventProc
  tabletEvent*: QFocusFrametabletEventProc
  actionEvent*: QFocusFrameactionEventProc
  dragEnterEvent*: QFocusFramedragEnterEventProc
  dragMoveEvent*: QFocusFramedragMoveEventProc
  dragLeaveEvent*: QFocusFramedragLeaveEventProc
  dropEvent*: QFocusFramedropEventProc
  showEvent*: QFocusFrameshowEventProc
  hideEvent*: QFocusFramehideEventProc
  nativeEvent*: QFocusFramenativeEventProc
  changeEvent*: QFocusFramechangeEventProc
  metric*: QFocusFramemetricProc
  initPainter*: QFocusFrameinitPainterProc
  redirected*: QFocusFrameredirectedProc
  sharedPainter*: QFocusFramesharedPainterProc
  inputMethodEvent*: QFocusFrameinputMethodEventProc
  inputMethodQuery*: QFocusFrameinputMethodQueryProc
  focusNextPrevChild*: QFocusFramefocusNextPrevChildProc
  timerEvent*: QFocusFrametimerEventProc
  childEvent*: QFocusFramechildEventProc
  customEvent*: QFocusFramecustomEventProc
  connectNotify*: QFocusFrameconnectNotifyProc
  disconnectNotify*: QFocusFramedisconnectNotifyProc
proc QFocusFramemetaObject*(self: gen_qfocusframe_types.QFocusFrame): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFocusFrame_virtualbase_metaObject(self.h), owned: false)

proc cQFocusFrame_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFocusFramemetacast*(self: gen_qfocusframe_types.QFocusFrame, param1: cstring): pointer =
  fcQFocusFrame_virtualbase_metacast(self.h, param1)

proc cQFocusFrame_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFocusFramemetacall*(self: gen_qfocusframe_types.QFocusFrame, param1: cint, param2: cint, param3: pointer): cint =
  fcQFocusFrame_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQFocusFrame_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFocusFrameevent*(self: gen_qfocusframe_types.QFocusFrame, e: gen_qcoreevent_types.QEvent): bool =
  fcQFocusFrame_virtualbase_event(self.h, e.h)

proc cQFocusFrame_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFocusFrameeventFilter*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQFocusFrame_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQFocusFrame_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFocusFramepaintEvent*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qevent_types.QPaintEvent): void =
  fcQFocusFrame_virtualbase_paintEvent(self.h, param1.h)

proc cQFocusFrame_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QFocusFrameinitStyleOption*(self: gen_qfocusframe_types.QFocusFrame, option: gen_qstyleoption_types.QStyleOption): void =
  fcQFocusFrame_virtualbase_initStyleOption(self.h, option.h)

proc cQFocusFrame_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QFocusFramedevType*(self: gen_qfocusframe_types.QFocusFrame): cint =
  fcQFocusFrame_virtualbase_devType(self.h)

proc cQFocusFrame_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QFocusFramesetVisible*(self: gen_qfocusframe_types.QFocusFrame, visible: bool): void =
  fcQFocusFrame_virtualbase_setVisible(self.h, visible)

proc cQFocusFrame_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QFocusFramesizeHint*(self: gen_qfocusframe_types.QFocusFrame): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFocusFrame_virtualbase_sizeHint(self.h), owned: true)

proc cQFocusFrame_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFocusFrameminimumSizeHint*(self: gen_qfocusframe_types.QFocusFrame): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFocusFrame_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQFocusFrame_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFocusFrameheightForWidth*(self: gen_qfocusframe_types.QFocusFrame, param1: cint): cint =
  fcQFocusFrame_virtualbase_heightForWidth(self.h, param1)

proc cQFocusFrame_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QFocusFramehasHeightForWidth*(self: gen_qfocusframe_types.QFocusFrame): bool =
  fcQFocusFrame_virtualbase_hasHeightForWidth(self.h)

proc cQFocusFrame_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QFocusFramepaintEngine*(self: gen_qfocusframe_types.QFocusFrame): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQFocusFrame_virtualbase_paintEngine(self.h), owned: false)

proc cQFocusFrame_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFocusFramemousePressEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFocusFrame_virtualbase_mousePressEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QFocusFramemouseReleaseEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFocusFrame_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QFocusFramemouseDoubleClickEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFocusFrame_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QFocusFramemouseMoveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFocusFrame_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QFocusFramewheelEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QWheelEvent): void =
  fcQFocusFrame_virtualbase_wheelEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QFocusFramekeyPressEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QKeyEvent): void =
  fcQFocusFrame_virtualbase_keyPressEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QFocusFramekeyReleaseEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QKeyEvent): void =
  fcQFocusFrame_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QFocusFramefocusInEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QFocusEvent): void =
  fcQFocusFrame_virtualbase_focusInEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QFocusFramefocusOutEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QFocusEvent): void =
  fcQFocusFrame_virtualbase_focusOutEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QFocusFrameenterEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QEnterEvent): void =
  fcQFocusFrame_virtualbase_enterEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QFocusFrameleaveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QEvent): void =
  fcQFocusFrame_virtualbase_leaveEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QFocusFramemoveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMoveEvent): void =
  fcQFocusFrame_virtualbase_moveEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QFocusFrameresizeEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QResizeEvent): void =
  fcQFocusFrame_virtualbase_resizeEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QFocusFramecloseEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QCloseEvent): void =
  fcQFocusFrame_virtualbase_closeEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QFocusFramecontextMenuEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QContextMenuEvent): void =
  fcQFocusFrame_virtualbase_contextMenuEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QFocusFrametabletEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QTabletEvent): void =
  fcQFocusFrame_virtualbase_tabletEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QFocusFrameactionEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QActionEvent): void =
  fcQFocusFrame_virtualbase_actionEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QFocusFramedragEnterEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDragEnterEvent): void =
  fcQFocusFrame_virtualbase_dragEnterEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QFocusFramedragMoveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDragMoveEvent): void =
  fcQFocusFrame_virtualbase_dragMoveEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QFocusFramedragLeaveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQFocusFrame_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QFocusFramedropEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDropEvent): void =
  fcQFocusFrame_virtualbase_dropEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QFocusFrameshowEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QShowEvent): void =
  fcQFocusFrame_virtualbase_showEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QFocusFramehideEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QHideEvent): void =
  fcQFocusFrame_virtualbase_hideEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QFocusFramenativeEvent*(self: gen_qfocusframe_types.QFocusFrame, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQFocusFrame_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQFocusFrame_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFocusFramechangeEvent*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qcoreevent_types.QEvent): void =
  fcQFocusFrame_virtualbase_changeEvent(self.h, param1.h)

proc cQFocusFrame_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QFocusFramemetric*(self: gen_qfocusframe_types.QFocusFrame, param1: cint): cint =
  fcQFocusFrame_virtualbase_metric(self.h, cint(param1))

proc cQFocusFrame_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QFocusFrameinitPainter*(self: gen_qfocusframe_types.QFocusFrame, painter: gen_qpainter_types.QPainter): void =
  fcQFocusFrame_virtualbase_initPainter(self.h, painter.h)

proc cQFocusFrame_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QFocusFrameredirected*(self: gen_qfocusframe_types.QFocusFrame, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQFocusFrame_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQFocusFrame_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFocusFramesharedPainter*(self: gen_qfocusframe_types.QFocusFrame): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQFocusFrame_virtualbase_sharedPainter(self.h), owned: false)

proc cQFocusFrame_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFocusFrameinputMethodEvent*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQFocusFrame_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQFocusFrame_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QFocusFrameinputMethodQuery*(self: gen_qfocusframe_types.QFocusFrame, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFocusFrame_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQFocusFrame_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFocusFramefocusNextPrevChild*(self: gen_qfocusframe_types.QFocusFrame, next: bool): bool =
  fcQFocusFrame_virtualbase_focusNextPrevChild(self.h, next)

proc cQFocusFrame_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QFocusFrametimerEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFocusFrame_virtualbase_timerEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QFocusFramechildEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFocusFrame_virtualbase_childEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QFocusFramecustomEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QEvent): void =
  fcQFocusFrame_virtualbase_customEvent(self.h, event.h)

proc cQFocusFrame_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QFocusFrameconnectNotify*(self: gen_qfocusframe_types.QFocusFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFocusFrame_virtualbase_connectNotify(self.h, signal.h)

proc cQFocusFrame_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QFocusFramedisconnectNotify*(self: gen_qfocusframe_types.QFocusFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFocusFrame_virtualbase_disconnectNotify(self.h, signal.h)

proc cQFocusFrame_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](fcQFocusFrame_vdata(self))
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQFocusFrame* {.inheritable.} = ref object of QFocusFrame
  vtbl*: cQFocusFrameVTable
method metaObject*(self: VirtualQFocusFrame): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFocusFramemetaObject(self[])
proc cQFocusFrame_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQFocusFrame, param1: cstring): pointer {.base.} =
  QFocusFramemetacast(self[], param1)
proc cQFocusFrame_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQFocusFrame, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFocusFramemetacall(self[], param1, param2, param3)
proc cQFocusFrame_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQFocusFrame, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFocusFrameevent(self[], e)
proc cQFocusFrame_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQFocusFrame, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFocusFrameeventFilter(self[], param1, param2)
proc cQFocusFrame_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method paintEvent*(self: VirtualQFocusFrame, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QFocusFramepaintEvent(self[], param1)
proc cQFocusFrame_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method initStyleOption*(self: VirtualQFocusFrame, option: gen_qstyleoption_types.QStyleOption): void {.base.} =
  QFocusFrameinitStyleOption(self[], option)
proc cQFocusFrame_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  inst.initStyleOption(slotval1)

method devType*(self: VirtualQFocusFrame): cint {.base.} =
  QFocusFramedevType(self[])
proc cQFocusFrame_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQFocusFrame, visible: bool): void {.base.} =
  QFocusFramesetVisible(self[], visible)
proc cQFocusFrame_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQFocusFrame): gen_qsize_types.QSize {.base.} =
  QFocusFramesizeHint(self[])
proc cQFocusFrame_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQFocusFrame): gen_qsize_types.QSize {.base.} =
  QFocusFrameminimumSizeHint(self[])
proc cQFocusFrame_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQFocusFrame, param1: cint): cint {.base.} =
  QFocusFrameheightForWidth(self[], param1)
proc cQFocusFrame_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQFocusFrame): bool {.base.} =
  QFocusFramehasHeightForWidth(self[])
proc cQFocusFrame_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQFocusFrame): gen_qpaintengine_types.QPaintEngine {.base.} =
  QFocusFramepaintEngine(self[])
proc cQFocusFrame_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFocusFramemousePressEvent(self[], event)
proc cQFocusFrame_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFocusFramemouseReleaseEvent(self[], event)
proc cQFocusFrame_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFocusFramemouseDoubleClickEvent(self[], event)
proc cQFocusFrame_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFocusFramemouseMoveEvent(self[], event)
proc cQFocusFrame_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QFocusFramewheelEvent(self[], event)
proc cQFocusFrame_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QFocusFramekeyPressEvent(self[], event)
proc cQFocusFrame_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QFocusFramekeyReleaseEvent(self[], event)
proc cQFocusFrame_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QFocusFramefocusInEvent(self[], event)
proc cQFocusFrame_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QFocusFramefocusOutEvent(self[], event)
proc cQFocusFrame_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QFocusFrameenterEvent(self[], event)
proc cQFocusFrame_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQFocusFrame, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFocusFrameleaveEvent(self[], event)
proc cQFocusFrame_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QFocusFramemoveEvent(self[], event)
proc cQFocusFrame_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QFocusFrameresizeEvent(self[], event)
proc cQFocusFrame_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QFocusFramecloseEvent(self[], event)
proc cQFocusFrame_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QFocusFramecontextMenuEvent(self[], event)
proc cQFocusFrame_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QFocusFrametabletEvent(self[], event)
proc cQFocusFrame_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QActionEvent): void {.base.} =
  QFocusFrameactionEvent(self[], event)
proc cQFocusFrame_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QFocusFramedragEnterEvent(self[], event)
proc cQFocusFrame_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QFocusFramedragMoveEvent(self[], event)
proc cQFocusFrame_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QFocusFramedragLeaveEvent(self[], event)
proc cQFocusFrame_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QDropEvent): void {.base.} =
  QFocusFramedropEvent(self[], event)
proc cQFocusFrame_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QShowEvent): void {.base.} =
  QFocusFrameshowEvent(self[], event)
proc cQFocusFrame_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQFocusFrame, event: gen_qevent_types.QHideEvent): void {.base.} =
  QFocusFramehideEvent(self[], event)
proc cQFocusFrame_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQFocusFrame, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QFocusFramenativeEvent(self[], eventType, message, resultVal)
proc cQFocusFrame_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQFocusFrame, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QFocusFramechangeEvent(self[], param1)
proc cQFocusFrame_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQFocusFrame, param1: cint): cint {.base.} =
  QFocusFramemetric(self[], param1)
proc cQFocusFrame_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQFocusFrame, painter: gen_qpainter_types.QPainter): void {.base.} =
  QFocusFrameinitPainter(self[], painter)
proc cQFocusFrame_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQFocusFrame, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QFocusFrameredirected(self[], offset)
proc cQFocusFrame_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQFocusFrame): gen_qpainter_types.QPainter {.base.} =
  QFocusFramesharedPainter(self[])
proc cQFocusFrame_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQFocusFrame, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QFocusFrameinputMethodEvent(self[], param1)
proc cQFocusFrame_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQFocusFrame, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QFocusFrameinputMethodQuery(self[], param1)
proc cQFocusFrame_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQFocusFrame, next: bool): bool {.base.} =
  QFocusFramefocusNextPrevChild(self[], next)
proc cQFocusFrame_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQFocusFrame, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFocusFrametimerEvent(self[], event)
proc cQFocusFrame_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQFocusFrame, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFocusFramechildEvent(self[], event)
proc cQFocusFrame_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQFocusFrame, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFocusFramecustomEvent(self[], event)
proc cQFocusFrame_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQFocusFrame, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFocusFrameconnectNotify(self[], signal)
proc cQFocusFrame_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQFocusFrame, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFocusFramedisconnectNotify(self[], signal)
proc cQFocusFrame_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFocusFrame](fcQFocusFrame_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qfocusframe_types.QFocusFrame): void =
  fcQFocusFrame_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qfocusframe_types.QFocusFrame): void =
  fcQFocusFrame_protectedbase_create(self.h)

proc destroy*(self: gen_qfocusframe_types.QFocusFrame): void =
  fcQFocusFrame_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qfocusframe_types.QFocusFrame): bool =
  fcQFocusFrame_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qfocusframe_types.QFocusFrame): bool =
  fcQFocusFrame_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qfocusframe_types.QFocusFrame): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFocusFrame_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfocusframe_types.QFocusFrame): cint =
  fcQFocusFrame_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfocusframe_types.QFocusFrame, signal: cstring): cint =
  fcQFocusFrame_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfocusframe_types.QFocusFrame, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFocusFrame_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfocusframe_types.QFocusFrame,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QFocusFrameVTable = nil): gen_qfocusframe_types.QFocusFrame =
  let vtbl = if vtbl == nil: new QFocusFrameVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFocusFrameVTable](fcQFocusFrame_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFocusFrame_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFocusFrame_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFocusFrame_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFocusFrame_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFocusFrame_vtable_callback_eventFilter
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFocusFrame_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQFocusFrame_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFocusFrame_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFocusFrame_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFocusFrame_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFocusFrame_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFocusFrame_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFocusFrame_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFocusFrame_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFocusFrame_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFocusFrame_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFocusFrame_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFocusFrame_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFocusFrame_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFocusFrame_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFocusFrame_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFocusFrame_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFocusFrame_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFocusFrame_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFocusFrame_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFocusFrame_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFocusFrame_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFocusFrame_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFocusFrame_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFocusFrame_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFocusFrame_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFocusFrame_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFocusFrame_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFocusFrame_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFocusFrame_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFocusFrame_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFocusFrame_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFocusFrame_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFocusFrame_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFocusFrame_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFocusFrame_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFocusFrame_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFocusFrame_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFocusFrame_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFocusFrame_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFocusFrame_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFocusFrame_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFocusFrame_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFocusFrame_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFocusFrame_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFocusFrame_vtable_callback_disconnectNotify
  gen_qfocusframe_types.QFocusFrame(h: fcQFocusFrame_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qfocusframe_types.QFocusFrame,
    vtbl: ref QFocusFrameVTable = nil): gen_qfocusframe_types.QFocusFrame =
  let vtbl = if vtbl == nil: new QFocusFrameVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFocusFrameVTable](fcQFocusFrame_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFocusFrame_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFocusFrame_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFocusFrame_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFocusFrame_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFocusFrame_vtable_callback_eventFilter
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFocusFrame_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQFocusFrame_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFocusFrame_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFocusFrame_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFocusFrame_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFocusFrame_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFocusFrame_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFocusFrame_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFocusFrame_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFocusFrame_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFocusFrame_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFocusFrame_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFocusFrame_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFocusFrame_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFocusFrame_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFocusFrame_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFocusFrame_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFocusFrame_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFocusFrame_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFocusFrame_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFocusFrame_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFocusFrame_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFocusFrame_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFocusFrame_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFocusFrame_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFocusFrame_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFocusFrame_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFocusFrame_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFocusFrame_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFocusFrame_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFocusFrame_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFocusFrame_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFocusFrame_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFocusFrame_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFocusFrame_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFocusFrame_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFocusFrame_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFocusFrame_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFocusFrame_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFocusFrame_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFocusFrame_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFocusFrame_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFocusFrame_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFocusFrame_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFocusFrame_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFocusFrame_vtable_callback_disconnectNotify
  gen_qfocusframe_types.QFocusFrame(h: fcQFocusFrame_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQFocusFrame_mvtbl = cQFocusFrameVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFocusFrame()[])](self.fcQFocusFrame_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQFocusFrame_method_callback_metaObject,
  metacast: cQFocusFrame_method_callback_metacast,
  metacall: cQFocusFrame_method_callback_metacall,
  event: cQFocusFrame_method_callback_event,
  eventFilter: cQFocusFrame_method_callback_eventFilter,
  paintEvent: cQFocusFrame_method_callback_paintEvent,
  initStyleOption: cQFocusFrame_method_callback_initStyleOption,
  devType: cQFocusFrame_method_callback_devType,
  setVisible: cQFocusFrame_method_callback_setVisible,
  sizeHint: cQFocusFrame_method_callback_sizeHint,
  minimumSizeHint: cQFocusFrame_method_callback_minimumSizeHint,
  heightForWidth: cQFocusFrame_method_callback_heightForWidth,
  hasHeightForWidth: cQFocusFrame_method_callback_hasHeightForWidth,
  paintEngine: cQFocusFrame_method_callback_paintEngine,
  mousePressEvent: cQFocusFrame_method_callback_mousePressEvent,
  mouseReleaseEvent: cQFocusFrame_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQFocusFrame_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQFocusFrame_method_callback_mouseMoveEvent,
  wheelEvent: cQFocusFrame_method_callback_wheelEvent,
  keyPressEvent: cQFocusFrame_method_callback_keyPressEvent,
  keyReleaseEvent: cQFocusFrame_method_callback_keyReleaseEvent,
  focusInEvent: cQFocusFrame_method_callback_focusInEvent,
  focusOutEvent: cQFocusFrame_method_callback_focusOutEvent,
  enterEvent: cQFocusFrame_method_callback_enterEvent,
  leaveEvent: cQFocusFrame_method_callback_leaveEvent,
  moveEvent: cQFocusFrame_method_callback_moveEvent,
  resizeEvent: cQFocusFrame_method_callback_resizeEvent,
  closeEvent: cQFocusFrame_method_callback_closeEvent,
  contextMenuEvent: cQFocusFrame_method_callback_contextMenuEvent,
  tabletEvent: cQFocusFrame_method_callback_tabletEvent,
  actionEvent: cQFocusFrame_method_callback_actionEvent,
  dragEnterEvent: cQFocusFrame_method_callback_dragEnterEvent,
  dragMoveEvent: cQFocusFrame_method_callback_dragMoveEvent,
  dragLeaveEvent: cQFocusFrame_method_callback_dragLeaveEvent,
  dropEvent: cQFocusFrame_method_callback_dropEvent,
  showEvent: cQFocusFrame_method_callback_showEvent,
  hideEvent: cQFocusFrame_method_callback_hideEvent,
  nativeEvent: cQFocusFrame_method_callback_nativeEvent,
  changeEvent: cQFocusFrame_method_callback_changeEvent,
  metric: cQFocusFrame_method_callback_metric,
  initPainter: cQFocusFrame_method_callback_initPainter,
  redirected: cQFocusFrame_method_callback_redirected,
  sharedPainter: cQFocusFrame_method_callback_sharedPainter,
  inputMethodEvent: cQFocusFrame_method_callback_inputMethodEvent,
  inputMethodQuery: cQFocusFrame_method_callback_inputMethodQuery,
  focusNextPrevChild: cQFocusFrame_method_callback_focusNextPrevChild,
  timerEvent: cQFocusFrame_method_callback_timerEvent,
  childEvent: cQFocusFrame_method_callback_childEvent,
  customEvent: cQFocusFrame_method_callback_customEvent,
  connectNotify: cQFocusFrame_method_callback_connectNotify,
  disconnectNotify: cQFocusFrame_method_callback_disconnectNotify,
)
proc create*(T: type gen_qfocusframe_types.QFocusFrame,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQFocusFrame) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFocusFrame_new(addr(cQFocusFrame_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qfocusframe_types.QFocusFrame,
    inst: VirtualQFocusFrame) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFocusFrame_new2(addr(cQFocusFrame_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qfocusframe_types.QFocusFrame): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFocusFrame_staticMetaObject())
