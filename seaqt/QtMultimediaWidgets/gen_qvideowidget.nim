import ./qtmultimediawidgets_pkg

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


{.compile("gen_qvideowidget.cpp", QtMultimediaWidgetsCFlags).}


import ./gen_qvideowidget_types
export gen_qvideowidget_types

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
  ../QtMultimedia/gen_qvideosink_types,
  ../QtWidgets/gen_qwidget
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
  gen_qvideosink_types,
  gen_qwidget

type cQVideoWidget*{.exportc: "QVideoWidget", incompleteStruct.} = object

proc fcQVideoWidget_metaObject(self: pointer): pointer {.importc: "QVideoWidget_metaObject".}
proc fcQVideoWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoWidget_metacast".}
proc fcQVideoWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoWidget_metacall".}
proc fcQVideoWidget_tr(s: cstring): struct_miqt_string {.importc: "QVideoWidget_tr".}
proc fcQVideoWidget_videoSink(self: pointer): pointer {.importc: "QVideoWidget_videoSink".}
proc fcQVideoWidget_aspectRatioMode(self: pointer): cint {.importc: "QVideoWidget_aspectRatioMode".}
proc fcQVideoWidget_sizeHint(self: pointer): pointer {.importc: "QVideoWidget_sizeHint".}
proc fcQVideoWidget_setFullScreen(self: pointer, fullScreen: bool): void {.importc: "QVideoWidget_setFullScreen".}
proc fcQVideoWidget_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QVideoWidget_setAspectRatioMode".}
proc fcQVideoWidget_fullScreenChanged(self: pointer, fullScreen: bool): void {.importc: "QVideoWidget_fullScreenChanged".}
proc fcQVideoWidget_connect_fullScreenChanged(self: pointer, slot: int, callback: proc (slot: int, fullScreen: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWidget_connect_fullScreenChanged".}
proc fcQVideoWidget_aspectRatioModeChanged(self: pointer, mode: cint): void {.importc: "QVideoWidget_aspectRatioModeChanged".}
proc fcQVideoWidget_connect_aspectRatioModeChanged(self: pointer, slot: int, callback: proc (slot: int, mode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWidget_connect_aspectRatioModeChanged".}
proc fcQVideoWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidget_tr2".}
proc fcQVideoWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidget_tr3".}
proc fcQVideoWidget_vtbl(self: pointer): pointer {.importc: "QVideoWidget_vtbl".}
proc fcQVideoWidget_vdata(self: pointer): pointer {.importc: "QVideoWidget_vdata".}
type cQVideoWidgetVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
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
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQVideoWidget_virtualbase_metaObject(self: pointer): pointer {.importc: "QVideoWidget_virtualbase_metaObject".}
proc fcQVideoWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoWidget_virtualbase_metacast".}
proc fcQVideoWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoWidget_virtualbase_metacall".}
proc fcQVideoWidget_virtualbase_sizeHint(self: pointer): pointer {.importc: "QVideoWidget_virtualbase_sizeHint".}
proc fcQVideoWidget_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QVideoWidget_virtualbase_event".}
proc fcQVideoWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_showEvent".}
proc fcQVideoWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_hideEvent".}
proc fcQVideoWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_resizeEvent".}
proc fcQVideoWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_moveEvent".}
proc fcQVideoWidget_virtualbase_devType(self: pointer): cint {.importc: "QVideoWidget_virtualbase_devType".}
proc fcQVideoWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QVideoWidget_virtualbase_setVisible".}
proc fcQVideoWidget_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QVideoWidget_virtualbase_minimumSizeHint".}
proc fcQVideoWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QVideoWidget_virtualbase_heightForWidth".}
proc fcQVideoWidget_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QVideoWidget_virtualbase_hasHeightForWidth".}
proc fcQVideoWidget_virtualbase_paintEngine(self: pointer): pointer {.importc: "QVideoWidget_virtualbase_paintEngine".}
proc fcQVideoWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_mousePressEvent".}
proc fcQVideoWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_mouseReleaseEvent".}
proc fcQVideoWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQVideoWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_mouseMoveEvent".}
proc fcQVideoWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_wheelEvent".}
proc fcQVideoWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_keyPressEvent".}
proc fcQVideoWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_keyReleaseEvent".}
proc fcQVideoWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_focusInEvent".}
proc fcQVideoWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_focusOutEvent".}
proc fcQVideoWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_enterEvent".}
proc fcQVideoWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_leaveEvent".}
proc fcQVideoWidget_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_paintEvent".}
proc fcQVideoWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_closeEvent".}
proc fcQVideoWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_contextMenuEvent".}
proc fcQVideoWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_tabletEvent".}
proc fcQVideoWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_actionEvent".}
proc fcQVideoWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_dragEnterEvent".}
proc fcQVideoWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_dragMoveEvent".}
proc fcQVideoWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_dragLeaveEvent".}
proc fcQVideoWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_dropEvent".}
proc fcQVideoWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QVideoWidget_virtualbase_nativeEvent".}
proc fcQVideoWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QVideoWidget_virtualbase_changeEvent".}
proc fcQVideoWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QVideoWidget_virtualbase_metric".}
proc fcQVideoWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QVideoWidget_virtualbase_initPainter".}
proc fcQVideoWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QVideoWidget_virtualbase_redirected".}
proc fcQVideoWidget_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QVideoWidget_virtualbase_sharedPainter".}
proc fcQVideoWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QVideoWidget_virtualbase_inputMethodEvent".}
proc fcQVideoWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QVideoWidget_virtualbase_inputMethodQuery".}
proc fcQVideoWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QVideoWidget_virtualbase_focusNextPrevChild".}
proc fcQVideoWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QVideoWidget_virtualbase_eventFilter".}
proc fcQVideoWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_timerEvent".}
proc fcQVideoWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_childEvent".}
proc fcQVideoWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_customEvent".}
proc fcQVideoWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QVideoWidget_virtualbase_connectNotify".}
proc fcQVideoWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QVideoWidget_virtualbase_disconnectNotify".}
proc fcQVideoWidget_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QVideoWidget_protectedbase_updateMicroFocus".}
proc fcQVideoWidget_protectedbase_create(self: pointer): void {.importc: "QVideoWidget_protectedbase_create".}
proc fcQVideoWidget_protectedbase_destroy(self: pointer): void {.importc: "QVideoWidget_protectedbase_destroy".}
proc fcQVideoWidget_protectedbase_focusNextChild(self: pointer): bool {.importc: "QVideoWidget_protectedbase_focusNextChild".}
proc fcQVideoWidget_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QVideoWidget_protectedbase_focusPreviousChild".}
proc fcQVideoWidget_protectedbase_sender(self: pointer): pointer {.importc: "QVideoWidget_protectedbase_sender".}
proc fcQVideoWidget_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QVideoWidget_protectedbase_senderSignalIndex".}
proc fcQVideoWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVideoWidget_protectedbase_receivers".}
proc fcQVideoWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVideoWidget_protectedbase_isSignalConnected".}
proc fcQVideoWidget_new(vtbl, vdata: pointer, parent: pointer): ptr cQVideoWidget {.importc: "QVideoWidget_new".}
proc fcQVideoWidget_new2(vtbl, vdata: pointer): ptr cQVideoWidget {.importc: "QVideoWidget_new2".}
proc fcQVideoWidget_staticMetaObject(): pointer {.importc: "QVideoWidget_staticMetaObject".}

proc metaObject*(self: gen_qvideowidget_types.QVideoWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvideowidget_types.QVideoWidget, param1: cstring): pointer =
  fcQVideoWidget_metacast(self.h, param1)

proc metacall*(self: gen_qvideowidget_types.QVideoWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring): string =
  let v_ms = fcQVideoWidget_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc videoSink*(self: gen_qvideowidget_types.QVideoWidget): gen_qvideosink_types.QVideoSink =
  gen_qvideosink_types.QVideoSink(h: fcQVideoWidget_videoSink(self.h), owned: false)

proc aspectRatioMode*(self: gen_qvideowidget_types.QVideoWidget): cint =
  cint(fcQVideoWidget_aspectRatioMode(self.h))

proc sizeHint*(self: gen_qvideowidget_types.QVideoWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoWidget_sizeHint(self.h), owned: true)

proc setFullScreen*(self: gen_qvideowidget_types.QVideoWidget, fullScreen: bool): void =
  fcQVideoWidget_setFullScreen(self.h, fullScreen)

proc setAspectRatioMode*(self: gen_qvideowidget_types.QVideoWidget, mode: cint): void =
  fcQVideoWidget_setAspectRatioMode(self.h, cint(mode))

proc fullScreenChanged*(self: gen_qvideowidget_types.QVideoWidget, fullScreen: bool): void =
  fcQVideoWidget_fullScreenChanged(self.h, fullScreen)

type QVideoWidgetfullScreenChangedSlot* = proc(fullScreen: bool)
proc cQVideoWidget_slot_callback_fullScreenChanged(slot: int, fullScreen: bool) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWidgetfullScreenChangedSlot](cast[pointer](slot))
  let slotval1 = fullScreen

  nimfunc[](slotval1)

proc cQVideoWidget_slot_callback_fullScreenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWidgetfullScreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfullScreenChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetfullScreenChangedSlot) =
  var tmp = new QVideoWidgetfullScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_fullScreenChanged(self.h, cast[int](addr tmp[]), cQVideoWidget_slot_callback_fullScreenChanged, cQVideoWidget_slot_callback_fullScreenChanged_release)

proc aspectRatioModeChanged*(self: gen_qvideowidget_types.QVideoWidget, mode: cint): void =
  fcQVideoWidget_aspectRatioModeChanged(self.h, cint(mode))

type QVideoWidgetaspectRatioModeChangedSlot* = proc(mode: cint)
proc cQVideoWidget_slot_callback_aspectRatioModeChanged(slot: int, mode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWidgetaspectRatioModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(mode)

  nimfunc[](slotval1)

proc cQVideoWidget_slot_callback_aspectRatioModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWidgetaspectRatioModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaspectRatioModeChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetaspectRatioModeChangedSlot) =
  var tmp = new QVideoWidgetaspectRatioModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_aspectRatioModeChanged(self.h, cast[int](addr tmp[]), cQVideoWidget_slot_callback_aspectRatioModeChanged, cQVideoWidget_slot_callback_aspectRatioModeChanged_release)

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWidget_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QVideoWidgetmetaObjectProc* = proc(self: QVideoWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QVideoWidgetmetacastProc* = proc(self: QVideoWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QVideoWidgetmetacallProc* = proc(self: QVideoWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QVideoWidgetsizeHintProc* = proc(self: QVideoWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QVideoWidgeteventProc* = proc(self: QVideoWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoWidgetshowEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QVideoWidgethideEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QVideoWidgetresizeEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QVideoWidgetmoveEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QVideoWidgetdevTypeProc* = proc(self: QVideoWidget): cint {.raises: [], gcsafe.}
type QVideoWidgetsetVisibleProc* = proc(self: QVideoWidget, visible: bool): void {.raises: [], gcsafe.}
type QVideoWidgetminimumSizeHintProc* = proc(self: QVideoWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QVideoWidgetheightForWidthProc* = proc(self: QVideoWidget, param1: cint): cint {.raises: [], gcsafe.}
type QVideoWidgethasHeightForWidthProc* = proc(self: QVideoWidget): bool {.raises: [], gcsafe.}
type QVideoWidgetpaintEngineProc* = proc(self: QVideoWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QVideoWidgetmousePressEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QVideoWidgetmouseReleaseEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QVideoWidgetmouseDoubleClickEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QVideoWidgetmouseMoveEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QVideoWidgetwheelEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QVideoWidgetkeyPressEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QVideoWidgetkeyReleaseEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QVideoWidgetfocusInEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QVideoWidgetfocusOutEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QVideoWidgetenterEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QVideoWidgetleaveEventProc* = proc(self: QVideoWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVideoWidgetpaintEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QVideoWidgetcloseEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QVideoWidgetcontextMenuEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QVideoWidgettabletEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QVideoWidgetactionEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QVideoWidgetdragEnterEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QVideoWidgetdragMoveEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QVideoWidgetdragLeaveEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QVideoWidgetdropEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QVideoWidgetnativeEventProc* = proc(self: QVideoWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QVideoWidgetchangeEventProc* = proc(self: QVideoWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVideoWidgetmetricProc* = proc(self: QVideoWidget, param1: cint): cint {.raises: [], gcsafe.}
type QVideoWidgetinitPainterProc* = proc(self: QVideoWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QVideoWidgetredirectedProc* = proc(self: QVideoWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QVideoWidgetsharedPainterProc* = proc(self: QVideoWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QVideoWidgetinputMethodEventProc* = proc(self: QVideoWidget, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QVideoWidgetinputMethodQueryProc* = proc(self: QVideoWidget, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QVideoWidgetfocusNextPrevChildProc* = proc(self: QVideoWidget, next: bool): bool {.raises: [], gcsafe.}
type QVideoWidgeteventFilterProc* = proc(self: QVideoWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoWidgettimerEventProc* = proc(self: QVideoWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QVideoWidgetchildEventProc* = proc(self: QVideoWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QVideoWidgetcustomEventProc* = proc(self: QVideoWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVideoWidgetconnectNotifyProc* = proc(self: QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVideoWidgetdisconnectNotifyProc* = proc(self: QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVideoWidgetVTable* {.inheritable, pure.} = object
  vtbl: cQVideoWidgetVTable
  metaObject*: QVideoWidgetmetaObjectProc
  metacast*: QVideoWidgetmetacastProc
  metacall*: QVideoWidgetmetacallProc
  sizeHint*: QVideoWidgetsizeHintProc
  event*: QVideoWidgeteventProc
  showEvent*: QVideoWidgetshowEventProc
  hideEvent*: QVideoWidgethideEventProc
  resizeEvent*: QVideoWidgetresizeEventProc
  moveEvent*: QVideoWidgetmoveEventProc
  devType*: QVideoWidgetdevTypeProc
  setVisible*: QVideoWidgetsetVisibleProc
  minimumSizeHint*: QVideoWidgetminimumSizeHintProc
  heightForWidth*: QVideoWidgetheightForWidthProc
  hasHeightForWidth*: QVideoWidgethasHeightForWidthProc
  paintEngine*: QVideoWidgetpaintEngineProc
  mousePressEvent*: QVideoWidgetmousePressEventProc
  mouseReleaseEvent*: QVideoWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QVideoWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QVideoWidgetmouseMoveEventProc
  wheelEvent*: QVideoWidgetwheelEventProc
  keyPressEvent*: QVideoWidgetkeyPressEventProc
  keyReleaseEvent*: QVideoWidgetkeyReleaseEventProc
  focusInEvent*: QVideoWidgetfocusInEventProc
  focusOutEvent*: QVideoWidgetfocusOutEventProc
  enterEvent*: QVideoWidgetenterEventProc
  leaveEvent*: QVideoWidgetleaveEventProc
  paintEvent*: QVideoWidgetpaintEventProc
  closeEvent*: QVideoWidgetcloseEventProc
  contextMenuEvent*: QVideoWidgetcontextMenuEventProc
  tabletEvent*: QVideoWidgettabletEventProc
  actionEvent*: QVideoWidgetactionEventProc
  dragEnterEvent*: QVideoWidgetdragEnterEventProc
  dragMoveEvent*: QVideoWidgetdragMoveEventProc
  dragLeaveEvent*: QVideoWidgetdragLeaveEventProc
  dropEvent*: QVideoWidgetdropEventProc
  nativeEvent*: QVideoWidgetnativeEventProc
  changeEvent*: QVideoWidgetchangeEventProc
  metric*: QVideoWidgetmetricProc
  initPainter*: QVideoWidgetinitPainterProc
  redirected*: QVideoWidgetredirectedProc
  sharedPainter*: QVideoWidgetsharedPainterProc
  inputMethodEvent*: QVideoWidgetinputMethodEventProc
  inputMethodQuery*: QVideoWidgetinputMethodQueryProc
  focusNextPrevChild*: QVideoWidgetfocusNextPrevChildProc
  eventFilter*: QVideoWidgeteventFilterProc
  timerEvent*: QVideoWidgettimerEventProc
  childEvent*: QVideoWidgetchildEventProc
  customEvent*: QVideoWidgetcustomEventProc
  connectNotify*: QVideoWidgetconnectNotifyProc
  disconnectNotify*: QVideoWidgetdisconnectNotifyProc
proc QVideoWidgetmetaObject*(self: gen_qvideowidget_types.QVideoWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidget_virtualbase_metaObject(self.h), owned: false)

proc cQVideoWidget_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetmetacast*(self: gen_qvideowidget_types.QVideoWidget, param1: cstring): pointer =
  fcQVideoWidget_virtualbase_metacast(self.h, param1)

proc cQVideoWidget_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QVideoWidgetmetacall*(self: gen_qvideowidget_types.QVideoWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQVideoWidget_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVideoWidgetsizeHint*(self: gen_qvideowidget_types.QVideoWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoWidget_virtualbase_sizeHint(self.h), owned: true)

proc cQVideoWidget_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetevent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoWidget_virtualbase_event(self.h, event.h)

proc cQVideoWidget_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QVideoWidgetshowEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QShowEvent): void =
  fcQVideoWidget_virtualbase_showEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QVideoWidgethideEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QHideEvent): void =
  fcQVideoWidget_virtualbase_hideEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QVideoWidgetresizeEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQVideoWidget_virtualbase_resizeEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QVideoWidgetmoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQVideoWidget_virtualbase_moveEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QVideoWidgetdevType*(self: gen_qvideowidget_types.QVideoWidget): cint =
  fcQVideoWidget_virtualbase_devType(self.h)

proc cQVideoWidget_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QVideoWidgetsetVisible*(self: gen_qvideowidget_types.QVideoWidget, visible: bool): void =
  fcQVideoWidget_virtualbase_setVisible(self.h, visible)

proc cQVideoWidget_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QVideoWidgetminimumSizeHint*(self: gen_qvideowidget_types.QVideoWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoWidget_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQVideoWidget_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetheightForWidth*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): cint =
  fcQVideoWidget_virtualbase_heightForWidth(self.h, param1)

proc cQVideoWidget_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QVideoWidgethasHeightForWidth*(self: gen_qvideowidget_types.QVideoWidget): bool =
  fcQVideoWidget_virtualbase_hasHeightForWidth(self.h)

proc cQVideoWidget_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QVideoWidgetpaintEngine*(self: gen_qvideowidget_types.QVideoWidget): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQVideoWidget_virtualbase_paintEngine(self.h), owned: false)

proc cQVideoWidget_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetmousePressEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mousePressEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QVideoWidgetmouseReleaseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QVideoWidgetmouseDoubleClickEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QVideoWidgetmouseMoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QVideoWidgetwheelEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQVideoWidget_virtualbase_wheelEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QVideoWidgetkeyPressEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQVideoWidget_virtualbase_keyPressEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QVideoWidgetkeyReleaseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQVideoWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QVideoWidgetfocusInEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQVideoWidget_virtualbase_focusInEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QVideoWidgetfocusOutEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQVideoWidget_virtualbase_focusOutEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QVideoWidgetenterEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QEnterEvent): void =
  fcQVideoWidget_virtualbase_enterEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QVideoWidgetleaveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoWidget_virtualbase_leaveEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QVideoWidgetpaintEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQVideoWidget_virtualbase_paintEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QVideoWidgetcloseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQVideoWidget_virtualbase_closeEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QVideoWidgetcontextMenuEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQVideoWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QVideoWidgettabletEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQVideoWidget_virtualbase_tabletEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QVideoWidgetactionEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QActionEvent): void =
  fcQVideoWidget_virtualbase_actionEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QVideoWidgetdragEnterEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQVideoWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QVideoWidgetdragMoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQVideoWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QVideoWidgetdragLeaveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQVideoWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QVideoWidgetdropEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDropEvent): void =
  fcQVideoWidget_virtualbase_dropEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QVideoWidgetnativeEvent*(self: gen_qvideowidget_types.QVideoWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQVideoWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQVideoWidget_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVideoWidgetchangeEvent*(self: gen_qvideowidget_types.QVideoWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQVideoWidget_virtualbase_changeEvent(self.h, param1.h)

proc cQVideoWidget_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QVideoWidgetmetric*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): cint =
  fcQVideoWidget_virtualbase_metric(self.h, cint(param1))

proc cQVideoWidget_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QVideoWidgetinitPainter*(self: gen_qvideowidget_types.QVideoWidget, painter: gen_qpainter_types.QPainter): void =
  fcQVideoWidget_virtualbase_initPainter(self.h, painter.h)

proc cQVideoWidget_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QVideoWidgetredirected*(self: gen_qvideowidget_types.QVideoWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQVideoWidget_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQVideoWidget_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetsharedPainter*(self: gen_qvideowidget_types.QVideoWidget): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQVideoWidget_virtualbase_sharedPainter(self.h), owned: false)

proc cQVideoWidget_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetinputMethodEvent*(self: gen_qvideowidget_types.QVideoWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQVideoWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQVideoWidget_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QVideoWidgetinputMethodQuery*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVideoWidget_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQVideoWidget_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetfocusNextPrevChild*(self: gen_qvideowidget_types.QVideoWidget, next: bool): bool =
  fcQVideoWidget_virtualbase_focusNextPrevChild(self.h, next)

proc cQVideoWidget_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QVideoWidgeteventFilter*(self: gen_qvideowidget_types.QVideoWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQVideoWidget_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QVideoWidgettimerEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVideoWidget_virtualbase_timerEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QVideoWidgetchildEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQVideoWidget_virtualbase_childEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QVideoWidgetcustomEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoWidget_virtualbase_customEvent(self.h, event.h)

proc cQVideoWidget_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QVideoWidgetconnectNotify*(self: gen_qvideowidget_types.QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoWidget_virtualbase_connectNotify(self.h, signal.h)

proc cQVideoWidget_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QVideoWidgetdisconnectNotify*(self: gen_qvideowidget_types.QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc cQVideoWidget_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](fcQVideoWidget_vdata(self))
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQVideoWidget* {.inheritable.} = ref object of QVideoWidget
  vtbl*: cQVideoWidgetVTable
method metaObject*(self: VirtualQVideoWidget): gen_qobjectdefs_types.QMetaObject {.base.} =
  QVideoWidgetmetaObject(self[])
proc cQVideoWidget_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQVideoWidget, param1: cstring): pointer {.base.} =
  QVideoWidgetmetacast(self[], param1)
proc cQVideoWidget_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQVideoWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QVideoWidgetmetacall(self[], param1, param2, param3)
proc cQVideoWidget_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQVideoWidget): gen_qsize_types.QSize {.base.} =
  QVideoWidgetsizeHint(self[])
proc cQVideoWidget_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQVideoWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVideoWidgetevent(self[], event)
proc cQVideoWidget_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method showEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QVideoWidgetshowEvent(self[], event)
proc cQVideoWidget_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QVideoWidgethideEvent(self[], event)
proc cQVideoWidget_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method resizeEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QVideoWidgetresizeEvent(self[], event)
proc cQVideoWidget_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method moveEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QVideoWidgetmoveEvent(self[], event)
proc cQVideoWidget_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method devType*(self: VirtualQVideoWidget): cint {.base.} =
  QVideoWidgetdevType(self[])
proc cQVideoWidget_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQVideoWidget, visible: bool): void {.base.} =
  QVideoWidgetsetVisible(self[], visible)
proc cQVideoWidget_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method minimumSizeHint*(self: VirtualQVideoWidget): gen_qsize_types.QSize {.base.} =
  QVideoWidgetminimumSizeHint(self[])
proc cQVideoWidget_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQVideoWidget, param1: cint): cint {.base.} =
  QVideoWidgetheightForWidth(self[], param1)
proc cQVideoWidget_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQVideoWidget): bool {.base.} =
  QVideoWidgethasHeightForWidth(self[])
proc cQVideoWidget_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQVideoWidget): gen_qpaintengine_types.QPaintEngine {.base.} =
  QVideoWidgetpaintEngine(self[])
proc cQVideoWidget_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QVideoWidgetmousePressEvent(self[], event)
proc cQVideoWidget_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QVideoWidgetmouseReleaseEvent(self[], event)
proc cQVideoWidget_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QVideoWidgetmouseDoubleClickEvent(self[], event)
proc cQVideoWidget_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QVideoWidgetmouseMoveEvent(self[], event)
proc cQVideoWidget_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QVideoWidgetwheelEvent(self[], event)
proc cQVideoWidget_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QVideoWidgetkeyPressEvent(self[], event)
proc cQVideoWidget_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QVideoWidgetkeyReleaseEvent(self[], event)
proc cQVideoWidget_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QVideoWidgetfocusInEvent(self[], event)
proc cQVideoWidget_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QVideoWidgetfocusOutEvent(self[], event)
proc cQVideoWidget_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QVideoWidgetenterEvent(self[], event)
proc cQVideoWidget_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQVideoWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QVideoWidgetleaveEvent(self[], event)
proc cQVideoWidget_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QVideoWidgetpaintEvent(self[], event)
proc cQVideoWidget_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method closeEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QVideoWidgetcloseEvent(self[], event)
proc cQVideoWidget_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QVideoWidgetcontextMenuEvent(self[], event)
proc cQVideoWidget_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QVideoWidgettabletEvent(self[], event)
proc cQVideoWidget_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QActionEvent): void {.base.} =
  QVideoWidgetactionEvent(self[], event)
proc cQVideoWidget_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QVideoWidgetdragEnterEvent(self[], event)
proc cQVideoWidget_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QVideoWidgetdragMoveEvent(self[], event)
proc cQVideoWidget_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QVideoWidgetdragLeaveEvent(self[], event)
proc cQVideoWidget_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QDropEvent): void {.base.} =
  QVideoWidgetdropEvent(self[], event)
proc cQVideoWidget_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method nativeEvent*(self: VirtualQVideoWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QVideoWidgetnativeEvent(self[], eventType, message, resultVal)
proc cQVideoWidget_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQVideoWidget, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QVideoWidgetchangeEvent(self[], param1)
proc cQVideoWidget_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQVideoWidget, param1: cint): cint {.base.} =
  QVideoWidgetmetric(self[], param1)
proc cQVideoWidget_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQVideoWidget, painter: gen_qpainter_types.QPainter): void {.base.} =
  QVideoWidgetinitPainter(self[], painter)
proc cQVideoWidget_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQVideoWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QVideoWidgetredirected(self[], offset)
proc cQVideoWidget_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQVideoWidget): gen_qpainter_types.QPainter {.base.} =
  QVideoWidgetsharedPainter(self[])
proc cQVideoWidget_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQVideoWidget, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QVideoWidgetinputMethodEvent(self[], param1)
proc cQVideoWidget_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQVideoWidget, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QVideoWidgetinputMethodQuery(self[], param1)
proc cQVideoWidget_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQVideoWidget, next: bool): bool {.base.} =
  QVideoWidgetfocusNextPrevChild(self[], next)
proc cQVideoWidget_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQVideoWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVideoWidgeteventFilter(self[], watched, event)
proc cQVideoWidget_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQVideoWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QVideoWidgettimerEvent(self[], event)
proc cQVideoWidget_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQVideoWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QVideoWidgetchildEvent(self[], event)
proc cQVideoWidget_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQVideoWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QVideoWidgetcustomEvent(self[], event)
proc cQVideoWidget_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVideoWidgetconnectNotify(self[], signal)
proc cQVideoWidget_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVideoWidgetdisconnectNotify(self[], signal)
proc cQVideoWidget_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoWidget](fcQVideoWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qvideowidget_types.QVideoWidget): void =
  fcQVideoWidget_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qvideowidget_types.QVideoWidget): void =
  fcQVideoWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qvideowidget_types.QVideoWidget): void =
  fcQVideoWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qvideowidget_types.QVideoWidget): bool =
  fcQVideoWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qvideowidget_types.QVideoWidget): bool =
  fcQVideoWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qvideowidget_types.QVideoWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVideoWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvideowidget_types.QVideoWidget): cint =
  fcQVideoWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvideowidget_types.QVideoWidget, signal: cstring): cint =
  fcQVideoWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvideowidget_types.QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVideoWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvideowidget_types.QVideoWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QVideoWidgetVTable = nil): gen_qvideowidget_types.QVideoWidget =
  let vtbl = if vtbl == nil: new QVideoWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVideoWidgetVTable](fcQVideoWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQVideoWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQVideoWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQVideoWidget_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQVideoWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQVideoWidget_vtable_callback_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQVideoWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQVideoWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQVideoWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQVideoWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQVideoWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQVideoWidget_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQVideoWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQVideoWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQVideoWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQVideoWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQVideoWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQVideoWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQVideoWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQVideoWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQVideoWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQVideoWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQVideoWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQVideoWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQVideoWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQVideoWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQVideoWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQVideoWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQVideoWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQVideoWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQVideoWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQVideoWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQVideoWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQVideoWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQVideoWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQVideoWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQVideoWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQVideoWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQVideoWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQVideoWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQVideoWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQVideoWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQVideoWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQVideoWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQVideoWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQVideoWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQVideoWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQVideoWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQVideoWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQVideoWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQVideoWidget_vtable_callback_disconnectNotify
  gen_qvideowidget_types.QVideoWidget(h: fcQVideoWidget_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qvideowidget_types.QVideoWidget,
    vtbl: ref QVideoWidgetVTable = nil): gen_qvideowidget_types.QVideoWidget =
  let vtbl = if vtbl == nil: new QVideoWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVideoWidgetVTable](fcQVideoWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQVideoWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQVideoWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQVideoWidget_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQVideoWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQVideoWidget_vtable_callback_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQVideoWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQVideoWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQVideoWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQVideoWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQVideoWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQVideoWidget_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQVideoWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQVideoWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQVideoWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQVideoWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQVideoWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQVideoWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQVideoWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQVideoWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQVideoWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQVideoWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQVideoWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQVideoWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQVideoWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQVideoWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQVideoWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQVideoWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQVideoWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQVideoWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQVideoWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQVideoWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQVideoWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQVideoWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQVideoWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQVideoWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQVideoWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQVideoWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQVideoWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQVideoWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQVideoWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQVideoWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQVideoWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQVideoWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQVideoWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQVideoWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQVideoWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQVideoWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQVideoWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQVideoWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQVideoWidget_vtable_callback_disconnectNotify
  gen_qvideowidget_types.QVideoWidget(h: fcQVideoWidget_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQVideoWidget_mvtbl = cQVideoWidgetVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQVideoWidget()[])](self.fcQVideoWidget_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQVideoWidget_method_callback_metaObject,
  metacast: cQVideoWidget_method_callback_metacast,
  metacall: cQVideoWidget_method_callback_metacall,
  sizeHint: cQVideoWidget_method_callback_sizeHint,
  event: cQVideoWidget_method_callback_event,
  showEvent: cQVideoWidget_method_callback_showEvent,
  hideEvent: cQVideoWidget_method_callback_hideEvent,
  resizeEvent: cQVideoWidget_method_callback_resizeEvent,
  moveEvent: cQVideoWidget_method_callback_moveEvent,
  devType: cQVideoWidget_method_callback_devType,
  setVisible: cQVideoWidget_method_callback_setVisible,
  minimumSizeHint: cQVideoWidget_method_callback_minimumSizeHint,
  heightForWidth: cQVideoWidget_method_callback_heightForWidth,
  hasHeightForWidth: cQVideoWidget_method_callback_hasHeightForWidth,
  paintEngine: cQVideoWidget_method_callback_paintEngine,
  mousePressEvent: cQVideoWidget_method_callback_mousePressEvent,
  mouseReleaseEvent: cQVideoWidget_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQVideoWidget_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQVideoWidget_method_callback_mouseMoveEvent,
  wheelEvent: cQVideoWidget_method_callback_wheelEvent,
  keyPressEvent: cQVideoWidget_method_callback_keyPressEvent,
  keyReleaseEvent: cQVideoWidget_method_callback_keyReleaseEvent,
  focusInEvent: cQVideoWidget_method_callback_focusInEvent,
  focusOutEvent: cQVideoWidget_method_callback_focusOutEvent,
  enterEvent: cQVideoWidget_method_callback_enterEvent,
  leaveEvent: cQVideoWidget_method_callback_leaveEvent,
  paintEvent: cQVideoWidget_method_callback_paintEvent,
  closeEvent: cQVideoWidget_method_callback_closeEvent,
  contextMenuEvent: cQVideoWidget_method_callback_contextMenuEvent,
  tabletEvent: cQVideoWidget_method_callback_tabletEvent,
  actionEvent: cQVideoWidget_method_callback_actionEvent,
  dragEnterEvent: cQVideoWidget_method_callback_dragEnterEvent,
  dragMoveEvent: cQVideoWidget_method_callback_dragMoveEvent,
  dragLeaveEvent: cQVideoWidget_method_callback_dragLeaveEvent,
  dropEvent: cQVideoWidget_method_callback_dropEvent,
  nativeEvent: cQVideoWidget_method_callback_nativeEvent,
  changeEvent: cQVideoWidget_method_callback_changeEvent,
  metric: cQVideoWidget_method_callback_metric,
  initPainter: cQVideoWidget_method_callback_initPainter,
  redirected: cQVideoWidget_method_callback_redirected,
  sharedPainter: cQVideoWidget_method_callback_sharedPainter,
  inputMethodEvent: cQVideoWidget_method_callback_inputMethodEvent,
  inputMethodQuery: cQVideoWidget_method_callback_inputMethodQuery,
  focusNextPrevChild: cQVideoWidget_method_callback_focusNextPrevChild,
  eventFilter: cQVideoWidget_method_callback_eventFilter,
  timerEvent: cQVideoWidget_method_callback_timerEvent,
  childEvent: cQVideoWidget_method_callback_childEvent,
  customEvent: cQVideoWidget_method_callback_customEvent,
  connectNotify: cQVideoWidget_method_callback_connectNotify,
  disconnectNotify: cQVideoWidget_method_callback_disconnectNotify,
)
proc create*(T: type gen_qvideowidget_types.QVideoWidget,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQVideoWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVideoWidget_new(addr(cQVideoWidget_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qvideowidget_types.QVideoWidget,
    inst: VirtualQVideoWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVideoWidget_new2(addr(cQVideoWidget_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qvideowidget_types.QVideoWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidget_staticMetaObject())
