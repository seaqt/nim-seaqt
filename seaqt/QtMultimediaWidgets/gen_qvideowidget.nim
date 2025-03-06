import ./Qt6MultimediaWidgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt6MultimediaWidgets") & " -fPIC"
{.compile("gen_qvideowidget.cpp", cflags).}


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

proc fcQVideoWidget_metaObject(self: pointer, ): pointer {.importc: "QVideoWidget_metaObject".}
proc fcQVideoWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoWidget_metacast".}
proc fcQVideoWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoWidget_metacall".}
proc fcQVideoWidget_tr(s: cstring): struct_miqt_string {.importc: "QVideoWidget_tr".}
proc fcQVideoWidget_videoSink(self: pointer, ): pointer {.importc: "QVideoWidget_videoSink".}
proc fcQVideoWidget_aspectRatioMode(self: pointer, ): cint {.importc: "QVideoWidget_aspectRatioMode".}
proc fcQVideoWidget_sizeHint(self: pointer, ): pointer {.importc: "QVideoWidget_sizeHint".}
proc fcQVideoWidget_setFullScreen(self: pointer, fullScreen: bool): void {.importc: "QVideoWidget_setFullScreen".}
proc fcQVideoWidget_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QVideoWidget_setAspectRatioMode".}
proc fcQVideoWidget_fullScreenChanged(self: pointer, fullScreen: bool): void {.importc: "QVideoWidget_fullScreenChanged".}
proc fcQVideoWidget_connect_fullScreenChanged(self: pointer, slot: int, callback: proc (slot: int, fullScreen: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWidget_connect_fullScreenChanged".}
proc fcQVideoWidget_aspectRatioModeChanged(self: pointer, mode: cint): void {.importc: "QVideoWidget_aspectRatioModeChanged".}
proc fcQVideoWidget_connect_aspectRatioModeChanged(self: pointer, slot: int, callback: proc (slot: int, mode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWidget_connect_aspectRatioModeChanged".}
proc fcQVideoWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidget_tr2".}
proc fcQVideoWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidget_tr3".}
type cQVideoWidgetVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQVideoWidgetVTable, self: ptr cQVideoWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQVideoWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QVideoWidget_virtualbase_metaObject".}
proc fcQVideoWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoWidget_virtualbase_metacast".}
proc fcQVideoWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoWidget_virtualbase_metacall".}
proc fcQVideoWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QVideoWidget_virtualbase_sizeHint".}
proc fcQVideoWidget_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QVideoWidget_virtualbase_event".}
proc fcQVideoWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_showEvent".}
proc fcQVideoWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_hideEvent".}
proc fcQVideoWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_resizeEvent".}
proc fcQVideoWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_moveEvent".}
proc fcQVideoWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QVideoWidget_virtualbase_devType".}
proc fcQVideoWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QVideoWidget_virtualbase_setVisible".}
proc fcQVideoWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QVideoWidget_virtualbase_minimumSizeHint".}
proc fcQVideoWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QVideoWidget_virtualbase_heightForWidth".}
proc fcQVideoWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QVideoWidget_virtualbase_hasHeightForWidth".}
proc fcQVideoWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QVideoWidget_virtualbase_paintEngine".}
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
proc fcQVideoWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QVideoWidget_virtualbase_sharedPainter".}
proc fcQVideoWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QVideoWidget_virtualbase_inputMethodEvent".}
proc fcQVideoWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QVideoWidget_virtualbase_inputMethodQuery".}
proc fcQVideoWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QVideoWidget_virtualbase_focusNextPrevChild".}
proc fcQVideoWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QVideoWidget_virtualbase_eventFilter".}
proc fcQVideoWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_timerEvent".}
proc fcQVideoWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_childEvent".}
proc fcQVideoWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_customEvent".}
proc fcQVideoWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QVideoWidget_virtualbase_connectNotify".}
proc fcQVideoWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QVideoWidget_virtualbase_disconnectNotify".}
proc fcQVideoWidget_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QVideoWidget_protectedbase_updateMicroFocus".}
proc fcQVideoWidget_protectedbase_create(self: pointer, ): void {.importc: "QVideoWidget_protectedbase_create".}
proc fcQVideoWidget_protectedbase_destroy(self: pointer, ): void {.importc: "QVideoWidget_protectedbase_destroy".}
proc fcQVideoWidget_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QVideoWidget_protectedbase_focusNextChild".}
proc fcQVideoWidget_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QVideoWidget_protectedbase_focusPreviousChild".}
proc fcQVideoWidget_protectedbase_sender(self: pointer, ): pointer {.importc: "QVideoWidget_protectedbase_sender".}
proc fcQVideoWidget_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QVideoWidget_protectedbase_senderSignalIndex".}
proc fcQVideoWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVideoWidget_protectedbase_receivers".}
proc fcQVideoWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVideoWidget_protectedbase_isSignalConnected".}
proc fcQVideoWidget_new(vtbl: pointer, parent: pointer): ptr cQVideoWidget {.importc: "QVideoWidget_new".}
proc fcQVideoWidget_new2(vtbl: pointer, ): ptr cQVideoWidget {.importc: "QVideoWidget_new2".}
proc fcQVideoWidget_staticMetaObject(): pointer {.importc: "QVideoWidget_staticMetaObject".}

proc metaObject*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvideowidget_types.QVideoWidget, param1: cstring): pointer =
  fcQVideoWidget_metacast(self.h, param1)

proc metacall*(self: gen_qvideowidget_types.QVideoWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring): string =
  let v_ms = fcQVideoWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoSink*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qvideosink_types.QVideoSink =
  gen_qvideosink_types.QVideoSink(h: fcQVideoWidget_videoSink(self.h), owned: false)

proc aspectRatioMode*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  cint(fcQVideoWidget_aspectRatioMode(self.h))

proc sizeHint*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoWidget_sizeHint(self.h), owned: true)

proc setFullScreen*(self: gen_qvideowidget_types.QVideoWidget, fullScreen: bool): void =
  fcQVideoWidget_setFullScreen(self.h, fullScreen)

proc setAspectRatioMode*(self: gen_qvideowidget_types.QVideoWidget, mode: cint): void =
  fcQVideoWidget_setAspectRatioMode(self.h, cint(mode))

proc fullScreenChanged*(self: gen_qvideowidget_types.QVideoWidget, fullScreen: bool): void =
  fcQVideoWidget_fullScreenChanged(self.h, fullScreen)

type QVideoWidgetfullScreenChangedSlot* = proc(fullScreen: bool)
proc miqt_exec_callback_cQVideoWidget_fullScreenChanged(slot: int, fullScreen: bool) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWidgetfullScreenChangedSlot](cast[pointer](slot))
  let slotval1 = fullScreen

  nimfunc[](slotval1)

proc miqt_exec_callback_cQVideoWidget_fullScreenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWidgetfullScreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfullScreenChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetfullScreenChangedSlot) =
  var tmp = new QVideoWidgetfullScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_fullScreenChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQVideoWidget_fullScreenChanged, miqt_exec_callback_cQVideoWidget_fullScreenChanged_release)

proc aspectRatioModeChanged*(self: gen_qvideowidget_types.QVideoWidget, mode: cint): void =
  fcQVideoWidget_aspectRatioModeChanged(self.h, cint(mode))

type QVideoWidgetaspectRatioModeChangedSlot* = proc(mode: cint)
proc miqt_exec_callback_cQVideoWidget_aspectRatioModeChanged(slot: int, mode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWidgetaspectRatioModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(mode)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQVideoWidget_aspectRatioModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWidgetaspectRatioModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaspectRatioModeChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetaspectRatioModeChangedSlot) =
  var tmp = new QVideoWidgetaspectRatioModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_aspectRatioModeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQVideoWidget_aspectRatioModeChanged, miqt_exec_callback_cQVideoWidget_aspectRatioModeChanged_release)

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QVideoWidgetnativeEventProc* = proc(self: QVideoWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
proc QVideoWidgetmetaObject*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidget_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQVideoWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetmetacast*(self: gen_qvideowidget_types.QVideoWidget, param1: cstring): pointer =
  fcQVideoWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQVideoWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QVideoWidgetmetacall*(self: gen_qvideowidget_types.QVideoWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQVideoWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVideoWidgetsizeHint*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoWidget_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQVideoWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetevent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoWidget_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QVideoWidgetshowEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QShowEvent): void =
  fcQVideoWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QVideoWidgethideEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QHideEvent): void =
  fcQVideoWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QVideoWidgetresizeEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQVideoWidget_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QVideoWidgetmoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQVideoWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QVideoWidgetdevType*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fcQVideoWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQVideoWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QVideoWidgetsetVisible*(self: gen_qvideowidget_types.QVideoWidget, visible: bool): void =
  fcQVideoWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQVideoWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QVideoWidgetminimumSizeHint*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoWidget_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQVideoWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetheightForWidth*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): cint =
  fcQVideoWidget_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQVideoWidget_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QVideoWidgethasHeightForWidth*(self: gen_qvideowidget_types.QVideoWidget, ): bool =
  fcQVideoWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQVideoWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QVideoWidgetpaintEngine*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQVideoWidget_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQVideoWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetmousePressEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QVideoWidgetmouseReleaseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QVideoWidgetmouseDoubleClickEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QVideoWidgetmouseMoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QVideoWidgetwheelEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQVideoWidget_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QVideoWidgetkeyPressEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQVideoWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QVideoWidgetkeyReleaseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQVideoWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QVideoWidgetfocusInEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQVideoWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QVideoWidgetfocusOutEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQVideoWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QVideoWidgetenterEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QEnterEvent): void =
  fcQVideoWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QVideoWidgetleaveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QVideoWidgetpaintEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQVideoWidget_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QVideoWidgetcloseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQVideoWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QVideoWidgetcontextMenuEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQVideoWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QVideoWidgettabletEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQVideoWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QVideoWidgetactionEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QActionEvent): void =
  fcQVideoWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QVideoWidgetdragEnterEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQVideoWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QVideoWidgetdragMoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQVideoWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QVideoWidgetdragLeaveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQVideoWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QVideoWidgetdropEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDropEvent): void =
  fcQVideoWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QVideoWidgetnativeEvent*(self: gen_qvideowidget_types.QVideoWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQVideoWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQVideoWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVideoWidgetchangeEvent*(self: gen_qvideowidget_types.QVideoWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQVideoWidget_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQVideoWidget_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QVideoWidgetmetric*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): cint =
  fcQVideoWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQVideoWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QVideoWidgetinitPainter*(self: gen_qvideowidget_types.QVideoWidget, painter: gen_qpainter_types.QPainter): void =
  fcQVideoWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQVideoWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QVideoWidgetredirected*(self: gen_qvideowidget_types.QVideoWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQVideoWidget_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQVideoWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetsharedPainter*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQVideoWidget_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQVideoWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetinputMethodEvent*(self: gen_qvideowidget_types.QVideoWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQVideoWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQVideoWidget_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QVideoWidgetinputMethodQuery*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVideoWidget_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQVideoWidget_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoWidgetfocusNextPrevChild*(self: gen_qvideowidget_types.QVideoWidget, next: bool): bool =
  fcQVideoWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQVideoWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QVideoWidgeteventFilter*(self: gen_qvideowidget_types.QVideoWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQVideoWidget_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QVideoWidgettimerEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVideoWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QVideoWidgetchildEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQVideoWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QVideoWidgetcustomEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QVideoWidgetconnectNotify*(self: gen_qvideowidget_types.QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVideoWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QVideoWidgetdisconnectNotify*(self: gen_qvideowidget_types.QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVideoWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQVideoWidget* {.inheritable.} = ref object of QVideoWidget
  vtbl*: cQVideoWidgetVTable
method metaObject*(self: VirtualQVideoWidget, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QVideoWidgetmetaObject(self[])
proc miqt_exec_method_cQVideoWidget_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQVideoWidget, param1: cstring): pointer {.base.} =
  QVideoWidgetmetacast(self[], param1)
proc miqt_exec_method_cQVideoWidget_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQVideoWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QVideoWidgetmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQVideoWidget_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQVideoWidget, ): gen_qsize_types.QSize {.base.} =
  QVideoWidgetsizeHint(self[])
proc miqt_exec_method_cQVideoWidget_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQVideoWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVideoWidgetevent(self[], event)
proc miqt_exec_method_cQVideoWidget_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method showEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QVideoWidgetshowEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QVideoWidgethideEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method resizeEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QVideoWidgetresizeEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method moveEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QVideoWidgetmoveEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method devType*(self: VirtualQVideoWidget, ): cint {.base.} =
  QVideoWidgetdevType(self[])
proc miqt_exec_method_cQVideoWidget_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQVideoWidget, visible: bool): void {.base.} =
  QVideoWidgetsetVisible(self[], visible)
proc miqt_exec_method_cQVideoWidget_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method minimumSizeHint*(self: VirtualQVideoWidget, ): gen_qsize_types.QSize {.base.} =
  QVideoWidgetminimumSizeHint(self[])
proc miqt_exec_method_cQVideoWidget_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQVideoWidget, param1: cint): cint {.base.} =
  QVideoWidgetheightForWidth(self[], param1)
proc miqt_exec_method_cQVideoWidget_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQVideoWidget, ): bool {.base.} =
  QVideoWidgethasHeightForWidth(self[])
proc miqt_exec_method_cQVideoWidget_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQVideoWidget, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QVideoWidgetpaintEngine(self[])
proc miqt_exec_method_cQVideoWidget_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QVideoWidgetmousePressEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QVideoWidgetmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QVideoWidgetmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QVideoWidgetmouseMoveEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QVideoWidgetwheelEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QVideoWidgetkeyPressEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QVideoWidgetkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QVideoWidgetfocusInEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QVideoWidgetfocusOutEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QVideoWidgetenterEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQVideoWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QVideoWidgetleaveEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method paintEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QVideoWidgetpaintEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_paintEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl.paintEvent(slotval1)

method closeEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QVideoWidgetcloseEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QVideoWidgetcontextMenuEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QVideoWidgettabletEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QActionEvent): void {.base.} =
  QVideoWidgetactionEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QVideoWidgetdragEnterEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QVideoWidgetdragMoveEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QVideoWidgetdragLeaveEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQVideoWidget, event: gen_qevent_types.QDropEvent): void {.base.} =
  QVideoWidgetdropEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method nativeEvent*(self: VirtualQVideoWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QVideoWidgetnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQVideoWidget_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQVideoWidget, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QVideoWidgetchangeEvent(self[], param1)
proc miqt_exec_method_cQVideoWidget_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method metric*(self: VirtualQVideoWidget, param1: cint): cint {.base.} =
  QVideoWidgetmetric(self[], param1)
proc miqt_exec_method_cQVideoWidget_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQVideoWidget, painter: gen_qpainter_types.QPainter): void {.base.} =
  QVideoWidgetinitPainter(self[], painter)
proc miqt_exec_method_cQVideoWidget_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQVideoWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QVideoWidgetredirected(self[], offset)
proc miqt_exec_method_cQVideoWidget_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQVideoWidget, ): gen_qpainter_types.QPainter {.base.} =
  QVideoWidgetsharedPainter(self[])
proc miqt_exec_method_cQVideoWidget_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQVideoWidget, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QVideoWidgetinputMethodEvent(self[], param1)
proc miqt_exec_method_cQVideoWidget_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQVideoWidget, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QVideoWidgetinputMethodQuery(self[], param1)
proc miqt_exec_method_cQVideoWidget_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQVideoWidget, next: bool): bool {.base.} =
  QVideoWidgetfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQVideoWidget_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQVideoWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVideoWidgeteventFilter(self[], watched, event)
proc miqt_exec_method_cQVideoWidget_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQVideoWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QVideoWidgettimerEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQVideoWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QVideoWidgetchildEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQVideoWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QVideoWidgetcustomEvent(self[], event)
proc miqt_exec_method_cQVideoWidget_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVideoWidgetconnectNotify(self[], signal)
proc miqt_exec_method_cQVideoWidget_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVideoWidgetdisconnectNotify(self[], signal)
proc miqt_exec_method_cQVideoWidget_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQVideoWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qvideowidget_types.QVideoWidget, ): void =
  fcQVideoWidget_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qvideowidget_types.QVideoWidget, ): void =
  fcQVideoWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qvideowidget_types.QVideoWidget, ): void =
  fcQVideoWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qvideowidget_types.QVideoWidget, ): bool =
  fcQVideoWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qvideowidget_types.QVideoWidget, ): bool =
  fcQVideoWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVideoWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQVideoWidgetVTable, _: ptr cQVideoWidget) {.cdecl.} =
    let vtbl = cast[ref QVideoWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVideoWidget_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVideoWidget_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVideoWidget_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQVideoWidget_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVideoWidget_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQVideoWidget_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQVideoWidget_hideEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQVideoWidget_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQVideoWidget_moveEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQVideoWidget_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQVideoWidget_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQVideoWidget_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQVideoWidget_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQVideoWidget_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQVideoWidget_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQVideoWidget_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQVideoWidget_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQVideoWidget_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQVideoWidget_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQVideoWidget_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQVideoWidget_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQVideoWidget_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQVideoWidget_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQVideoWidget_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQVideoWidget_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQVideoWidget_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQVideoWidget_paintEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQVideoWidget_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQVideoWidget_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQVideoWidget_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQVideoWidget_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQVideoWidget_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQVideoWidget_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQVideoWidget_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQVideoWidget_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQVideoWidget_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQVideoWidget_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQVideoWidget_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQVideoWidget_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQVideoWidget_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQVideoWidget_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQVideoWidget_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQVideoWidget_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQVideoWidget_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVideoWidget_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVideoWidget_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVideoWidget_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVideoWidget_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVideoWidget_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVideoWidget_disconnectNotify
  gen_qvideowidget_types.QVideoWidget(h: fcQVideoWidget_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qvideowidget_types.QVideoWidget,
    vtbl: ref QVideoWidgetVTable = nil): gen_qvideowidget_types.QVideoWidget =
  let vtbl = if vtbl == nil: new QVideoWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQVideoWidgetVTable, _: ptr cQVideoWidget) {.cdecl.} =
    let vtbl = cast[ref QVideoWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVideoWidget_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVideoWidget_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVideoWidget_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQVideoWidget_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVideoWidget_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQVideoWidget_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQVideoWidget_hideEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQVideoWidget_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQVideoWidget_moveEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQVideoWidget_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQVideoWidget_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQVideoWidget_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQVideoWidget_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQVideoWidget_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQVideoWidget_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQVideoWidget_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQVideoWidget_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQVideoWidget_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQVideoWidget_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQVideoWidget_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQVideoWidget_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQVideoWidget_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQVideoWidget_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQVideoWidget_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQVideoWidget_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQVideoWidget_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQVideoWidget_paintEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQVideoWidget_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQVideoWidget_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQVideoWidget_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQVideoWidget_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQVideoWidget_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQVideoWidget_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQVideoWidget_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQVideoWidget_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQVideoWidget_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQVideoWidget_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQVideoWidget_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQVideoWidget_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQVideoWidget_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQVideoWidget_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQVideoWidget_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQVideoWidget_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQVideoWidget_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVideoWidget_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVideoWidget_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVideoWidget_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVideoWidget_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVideoWidget_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVideoWidget_disconnectNotify
  gen_qvideowidget_types.QVideoWidget(h: fcQVideoWidget_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qvideowidget_types.QVideoWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQVideoWidget) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQVideoWidgetVTable, _: ptr cQVideoWidget) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQVideoWidget()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQVideoWidget_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQVideoWidget_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQVideoWidget_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQVideoWidget_sizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQVideoWidget_event
  vtbl[].vtbl.showEvent = miqt_exec_method_cQVideoWidget_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQVideoWidget_hideEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQVideoWidget_resizeEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQVideoWidget_moveEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQVideoWidget_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQVideoWidget_setVisible
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQVideoWidget_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQVideoWidget_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQVideoWidget_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQVideoWidget_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQVideoWidget_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQVideoWidget_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQVideoWidget_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQVideoWidget_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQVideoWidget_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQVideoWidget_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQVideoWidget_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQVideoWidget_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQVideoWidget_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQVideoWidget_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQVideoWidget_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQVideoWidget_paintEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQVideoWidget_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQVideoWidget_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQVideoWidget_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQVideoWidget_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQVideoWidget_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQVideoWidget_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQVideoWidget_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQVideoWidget_dropEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQVideoWidget_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQVideoWidget_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQVideoWidget_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQVideoWidget_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQVideoWidget_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQVideoWidget_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQVideoWidget_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQVideoWidget_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQVideoWidget_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQVideoWidget_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQVideoWidget_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQVideoWidget_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQVideoWidget_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQVideoWidget_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQVideoWidget_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQVideoWidget_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qvideowidget_types.QVideoWidget,
    vtbl: VirtualQVideoWidget) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQVideoWidgetVTable, _: ptr cQVideoWidget) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQVideoWidget()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQVideoWidget, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQVideoWidget_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQVideoWidget_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQVideoWidget_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQVideoWidget_sizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQVideoWidget_event
  vtbl[].vtbl.showEvent = miqt_exec_method_cQVideoWidget_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQVideoWidget_hideEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQVideoWidget_resizeEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQVideoWidget_moveEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQVideoWidget_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQVideoWidget_setVisible
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQVideoWidget_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQVideoWidget_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQVideoWidget_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQVideoWidget_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQVideoWidget_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQVideoWidget_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQVideoWidget_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQVideoWidget_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQVideoWidget_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQVideoWidget_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQVideoWidget_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQVideoWidget_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQVideoWidget_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQVideoWidget_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQVideoWidget_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQVideoWidget_paintEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQVideoWidget_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQVideoWidget_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQVideoWidget_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQVideoWidget_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQVideoWidget_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQVideoWidget_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQVideoWidget_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQVideoWidget_dropEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQVideoWidget_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQVideoWidget_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQVideoWidget_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQVideoWidget_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQVideoWidget_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQVideoWidget_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQVideoWidget_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQVideoWidget_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQVideoWidget_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQVideoWidget_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQVideoWidget_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQVideoWidget_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQVideoWidget_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQVideoWidget_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQVideoWidget_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQVideoWidget_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qvideowidget_types.QVideoWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidget_staticMetaObject())
