import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
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

proc fcQFocusFrame_metaObject(self: pointer, ): pointer {.importc: "QFocusFrame_metaObject".}
proc fcQFocusFrame_metacast(self: pointer, param1: cstring): pointer {.importc: "QFocusFrame_metacast".}
proc fcQFocusFrame_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFocusFrame_metacall".}
proc fcQFocusFrame_tr(s: cstring): struct_miqt_string {.importc: "QFocusFrame_tr".}
proc fcQFocusFrame_trUtf8(s: cstring): struct_miqt_string {.importc: "QFocusFrame_trUtf8".}
proc fcQFocusFrame_setWidget(self: pointer, widget: pointer): void {.importc: "QFocusFrame_setWidget".}
proc fcQFocusFrame_widget(self: pointer, ): pointer {.importc: "QFocusFrame_widget".}
proc fcQFocusFrame_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFocusFrame_tr2".}
proc fcQFocusFrame_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFocusFrame_tr3".}
proc fcQFocusFrame_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFocusFrame_trUtf82".}
proc fcQFocusFrame_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFocusFrame_trUtf83".}
type cQFocusFrameVTable = object
  destructor*: proc(vtbl: ptr cQFocusFrameVTable, self: ptr cQFocusFrame) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
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
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQFocusFrame_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QFocusFrame_virtualbase_metaObject".}
proc fcQFocusFrame_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFocusFrame_virtualbase_metacast".}
proc fcQFocusFrame_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFocusFrame_virtualbase_metacall".}
proc fcQFocusFrame_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QFocusFrame_virtualbase_event".}
proc fcQFocusFrame_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QFocusFrame_virtualbase_eventFilter".}
proc fcQFocusFrame_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QFocusFrame_virtualbase_paintEvent".}
proc fcQFocusFrame_virtualbase_devType(self: pointer, ): cint {.importc: "QFocusFrame_virtualbase_devType".}
proc fcQFocusFrame_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QFocusFrame_virtualbase_setVisible".}
proc fcQFocusFrame_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QFocusFrame_virtualbase_sizeHint".}
proc fcQFocusFrame_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QFocusFrame_virtualbase_minimumSizeHint".}
proc fcQFocusFrame_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QFocusFrame_virtualbase_heightForWidth".}
proc fcQFocusFrame_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QFocusFrame_virtualbase_hasHeightForWidth".}
proc fcQFocusFrame_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QFocusFrame_virtualbase_paintEngine".}
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
proc fcQFocusFrame_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QFocusFrame_virtualbase_nativeEvent".}
proc fcQFocusFrame_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QFocusFrame_virtualbase_changeEvent".}
proc fcQFocusFrame_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QFocusFrame_virtualbase_metric".}
proc fcQFocusFrame_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QFocusFrame_virtualbase_initPainter".}
proc fcQFocusFrame_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QFocusFrame_virtualbase_redirected".}
proc fcQFocusFrame_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QFocusFrame_virtualbase_sharedPainter".}
proc fcQFocusFrame_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QFocusFrame_virtualbase_inputMethodEvent".}
proc fcQFocusFrame_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QFocusFrame_virtualbase_inputMethodQuery".}
proc fcQFocusFrame_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QFocusFrame_virtualbase_focusNextPrevChild".}
proc fcQFocusFrame_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_timerEvent".}
proc fcQFocusFrame_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_childEvent".}
proc fcQFocusFrame_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFocusFrame_virtualbase_customEvent".}
proc fcQFocusFrame_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFocusFrame_virtualbase_connectNotify".}
proc fcQFocusFrame_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFocusFrame_virtualbase_disconnectNotify".}
proc fcQFocusFrame_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QFocusFrame_protectedbase_initStyleOption".}
proc fcQFocusFrame_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QFocusFrame_protectedbase_updateMicroFocus".}
proc fcQFocusFrame_protectedbase_create(self: pointer, ): void {.importc: "QFocusFrame_protectedbase_create".}
proc fcQFocusFrame_protectedbase_destroy(self: pointer, ): void {.importc: "QFocusFrame_protectedbase_destroy".}
proc fcQFocusFrame_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QFocusFrame_protectedbase_focusNextChild".}
proc fcQFocusFrame_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QFocusFrame_protectedbase_focusPreviousChild".}
proc fcQFocusFrame_protectedbase_sender(self: pointer, ): pointer {.importc: "QFocusFrame_protectedbase_sender".}
proc fcQFocusFrame_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QFocusFrame_protectedbase_senderSignalIndex".}
proc fcQFocusFrame_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFocusFrame_protectedbase_receivers".}
proc fcQFocusFrame_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFocusFrame_protectedbase_isSignalConnected".}
proc fcQFocusFrame_new(vtbl: pointer, parent: pointer): ptr cQFocusFrame {.importc: "QFocusFrame_new".}
proc fcQFocusFrame_new2(vtbl: pointer, ): ptr cQFocusFrame {.importc: "QFocusFrame_new2".}
proc fcQFocusFrame_staticMetaObject(): pointer {.importc: "QFocusFrame_staticMetaObject".}
proc fcQFocusFrame_delete(self: pointer) {.importc: "QFocusFrame_delete".}

proc metaObject*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFocusFrame_metaObject(self.h))

proc metacast*(self: gen_qfocusframe_types.QFocusFrame, param1: cstring): pointer =
  fcQFocusFrame_metacast(self.h, param1)

proc metacall*(self: gen_qfocusframe_types.QFocusFrame, param1: cint, param2: cint, param3: pointer): cint =
  fcQFocusFrame_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring): string =
  let v_ms = fcQFocusFrame_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring): string =
  let v_ms = fcQFocusFrame_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWidget*(self: gen_qfocusframe_types.QFocusFrame, widget: gen_qwidget_types.QWidget): void =
  fcQFocusFrame_setWidget(self.h, widget.h)

proc widget*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQFocusFrame_widget(self.h))

proc tr*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring, c: cstring): string =
  let v_ms = fcQFocusFrame_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFocusFrame_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring, c: cstring): string =
  let v_ms = fcQFocusFrame_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfocusframe_types.QFocusFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFocusFrame_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QFocusFramemetaObjectProc* = proc(self: QFocusFrame): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFocusFramemetacastProc* = proc(self: QFocusFrame, param1: cstring): pointer {.raises: [], gcsafe.}
type QFocusFramemetacallProc* = proc(self: QFocusFrame, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFocusFrameeventProc* = proc(self: QFocusFrame, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFocusFrameeventFilterProc* = proc(self: QFocusFrame, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFocusFramepaintEventProc* = proc(self: QFocusFrame, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
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
type QFocusFrameenterEventProc* = proc(self: QFocusFrame, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
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
type QFocusFramenativeEventProc* = proc(self: QFocusFrame, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QFocusFrameVTable* = object
  vtbl: cQFocusFrameVTable
  metaObject*: QFocusFramemetaObjectProc
  metacast*: QFocusFramemetacastProc
  metacall*: QFocusFramemetacallProc
  event*: QFocusFrameeventProc
  eventFilter*: QFocusFrameeventFilterProc
  paintEvent*: QFocusFramepaintEventProc
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
proc QFocusFramemetaObject*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFocusFrame_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQFocusFrame_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QFocusFramemetacast*(self: gen_qfocusframe_types.QFocusFrame, param1: cstring): pointer =
  fcQFocusFrame_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQFocusFrame_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFocusFramemetacall*(self: gen_qfocusframe_types.QFocusFrame, param1: cint, param2: cint, param3: pointer): cint =
  fcQFocusFrame_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQFocusFrame_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFocusFrameevent*(self: gen_qfocusframe_types.QFocusFrame, e: gen_qcoreevent_types.QEvent): bool =
  fcQFocusFrame_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQFocusFrame_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFocusFrameeventFilter*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQFocusFrame_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQFocusFrame_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFocusFramepaintEvent*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qevent_types.QPaintEvent): void =
  fcQFocusFrame_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQFocusFrame_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QFocusFramedevType*(self: gen_qfocusframe_types.QFocusFrame, ): cint =
  fcQFocusFrame_virtualbase_devType(self.h)

proc miqt_exec_callback_cQFocusFrame_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QFocusFramesetVisible*(self: gen_qfocusframe_types.QFocusFrame, visible: bool): void =
  fcQFocusFrame_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQFocusFrame_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QFocusFramesizeHint*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFocusFrame_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQFocusFrame_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QFocusFrameminimumSizeHint*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFocusFrame_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQFocusFrame_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QFocusFrameheightForWidth*(self: gen_qfocusframe_types.QFocusFrame, param1: cint): cint =
  fcQFocusFrame_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQFocusFrame_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QFocusFramehasHeightForWidth*(self: gen_qfocusframe_types.QFocusFrame, ): bool =
  fcQFocusFrame_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQFocusFrame_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QFocusFramepaintEngine*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQFocusFrame_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQFocusFrame_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QFocusFramemousePressEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFocusFrame_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QFocusFramemouseReleaseEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFocusFrame_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QFocusFramemouseDoubleClickEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFocusFrame_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QFocusFramemouseMoveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFocusFrame_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QFocusFramewheelEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QWheelEvent): void =
  fcQFocusFrame_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QFocusFramekeyPressEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QKeyEvent): void =
  fcQFocusFrame_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QFocusFramekeyReleaseEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QKeyEvent): void =
  fcQFocusFrame_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QFocusFramefocusInEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QFocusEvent): void =
  fcQFocusFrame_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QFocusFramefocusOutEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QFocusEvent): void =
  fcQFocusFrame_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QFocusFrameenterEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QEvent): void =
  fcQFocusFrame_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QFocusFrameleaveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QEvent): void =
  fcQFocusFrame_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QFocusFramemoveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QMoveEvent): void =
  fcQFocusFrame_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QFocusFrameresizeEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QResizeEvent): void =
  fcQFocusFrame_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QFocusFramecloseEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QCloseEvent): void =
  fcQFocusFrame_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QFocusFramecontextMenuEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QContextMenuEvent): void =
  fcQFocusFrame_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QFocusFrametabletEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QTabletEvent): void =
  fcQFocusFrame_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QFocusFrameactionEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QActionEvent): void =
  fcQFocusFrame_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QFocusFramedragEnterEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDragEnterEvent): void =
  fcQFocusFrame_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QFocusFramedragMoveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDragMoveEvent): void =
  fcQFocusFrame_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QFocusFramedragLeaveEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQFocusFrame_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QFocusFramedropEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QDropEvent): void =
  fcQFocusFrame_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QFocusFrameshowEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QShowEvent): void =
  fcQFocusFrame_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QFocusFramehideEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qevent_types.QHideEvent): void =
  fcQFocusFrame_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QFocusFramenativeEvent*(self: gen_qfocusframe_types.QFocusFrame, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQFocusFrame_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQFocusFrame_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFocusFramechangeEvent*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qcoreevent_types.QEvent): void =
  fcQFocusFrame_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQFocusFrame_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QFocusFramemetric*(self: gen_qfocusframe_types.QFocusFrame, param1: cint): cint =
  fcQFocusFrame_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQFocusFrame_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QFocusFrameinitPainter*(self: gen_qfocusframe_types.QFocusFrame, painter: gen_qpainter_types.QPainter): void =
  fcQFocusFrame_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQFocusFrame_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QFocusFrameredirected*(self: gen_qfocusframe_types.QFocusFrame, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQFocusFrame_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQFocusFrame_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QFocusFramesharedPainter*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQFocusFrame_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQFocusFrame_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QFocusFrameinputMethodEvent*(self: gen_qfocusframe_types.QFocusFrame, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQFocusFrame_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQFocusFrame_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QFocusFrameinputMethodQuery*(self: gen_qfocusframe_types.QFocusFrame, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFocusFrame_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQFocusFrame_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QFocusFramefocusNextPrevChild*(self: gen_qfocusframe_types.QFocusFrame, next: bool): bool =
  fcQFocusFrame_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQFocusFrame_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QFocusFrametimerEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFocusFrame_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QFocusFramechildEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFocusFrame_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QFocusFramecustomEvent*(self: gen_qfocusframe_types.QFocusFrame, event: gen_qcoreevent_types.QEvent): void =
  fcQFocusFrame_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQFocusFrame_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QFocusFrameconnectNotify*(self: gen_qfocusframe_types.QFocusFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFocusFrame_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFocusFrame_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QFocusFramedisconnectNotify*(self: gen_qfocusframe_types.QFocusFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFocusFrame_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFocusFrame_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFocusFrameVTable](vtbl)
  let self = QFocusFrame(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc initStyleOption*(self: gen_qfocusframe_types.QFocusFrame, option: gen_qstyleoption_types.QStyleOption): void =
  fcQFocusFrame_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qfocusframe_types.QFocusFrame, ): void =
  fcQFocusFrame_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qfocusframe_types.QFocusFrame, ): void =
  fcQFocusFrame_protectedbase_create(self.h)

proc destroy*(self: gen_qfocusframe_types.QFocusFrame, ): void =
  fcQFocusFrame_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qfocusframe_types.QFocusFrame, ): bool =
  fcQFocusFrame_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qfocusframe_types.QFocusFrame, ): bool =
  fcQFocusFrame_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qfocusframe_types.QFocusFrame, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFocusFrame_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qfocusframe_types.QFocusFrame, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFocusFrameVTable, _: ptr cQFocusFrame) {.cdecl.} =
    let vtbl = cast[ref QFocusFrameVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFocusFrame_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFocusFrame_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFocusFrame_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFocusFrame_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFocusFrame_eventFilter
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFocusFrame_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFocusFrame_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFocusFrame_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFocusFrame_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFocusFrame_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFocusFrame_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFocusFrame_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFocusFrame_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFocusFrame_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFocusFrame_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFocusFrame_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFocusFrame_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFocusFrame_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFocusFrame_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFocusFrame_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFocusFrame_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFocusFrame_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFocusFrame_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFocusFrame_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFocusFrame_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFocusFrame_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFocusFrame_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFocusFrame_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFocusFrame_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFocusFrame_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFocusFrame_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFocusFrame_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFocusFrame_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFocusFrame_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFocusFrame_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFocusFrame_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFocusFrame_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFocusFrame_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFocusFrame_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFocusFrame_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFocusFrame_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFocusFrame_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFocusFrame_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFocusFrame_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFocusFrame_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFocusFrame_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFocusFrame_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFocusFrame_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFocusFrame_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFocusFrame_disconnectNotify
  gen_qfocusframe_types.QFocusFrame(h: fcQFocusFrame_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qfocusframe_types.QFocusFrame,
    vtbl: ref QFocusFrameVTable = nil): gen_qfocusframe_types.QFocusFrame =
  let vtbl = if vtbl == nil: new QFocusFrameVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFocusFrameVTable, _: ptr cQFocusFrame) {.cdecl.} =
    let vtbl = cast[ref QFocusFrameVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFocusFrame_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFocusFrame_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFocusFrame_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFocusFrame_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFocusFrame_eventFilter
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFocusFrame_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFocusFrame_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFocusFrame_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFocusFrame_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFocusFrame_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFocusFrame_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFocusFrame_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFocusFrame_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFocusFrame_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFocusFrame_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFocusFrame_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFocusFrame_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFocusFrame_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFocusFrame_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFocusFrame_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFocusFrame_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFocusFrame_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFocusFrame_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFocusFrame_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFocusFrame_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFocusFrame_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFocusFrame_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFocusFrame_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFocusFrame_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFocusFrame_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFocusFrame_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFocusFrame_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFocusFrame_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFocusFrame_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFocusFrame_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFocusFrame_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFocusFrame_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFocusFrame_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFocusFrame_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFocusFrame_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFocusFrame_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFocusFrame_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFocusFrame_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFocusFrame_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFocusFrame_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFocusFrame_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFocusFrame_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFocusFrame_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFocusFrame_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFocusFrame_disconnectNotify
  gen_qfocusframe_types.QFocusFrame(h: fcQFocusFrame_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qfocusframe_types.QFocusFrame): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFocusFrame_staticMetaObject())
proc delete*(self: gen_qfocusframe_types.QFocusFrame) =
  fcQFocusFrame_delete(self.h)
