import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qsizegrip.cpp", cflags).}


import ./gen_qsizegrip_types
export gen_qsizegrip_types

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
  gen_qwidget

type cQSizeGrip*{.exportc: "QSizeGrip", incompleteStruct.} = object

proc fcQSizeGrip_metaObject(self: pointer, ): pointer {.importc: "QSizeGrip_metaObject".}
proc fcQSizeGrip_metacast(self: pointer, param1: cstring): pointer {.importc: "QSizeGrip_metacast".}
proc fcQSizeGrip_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSizeGrip_metacall".}
proc fcQSizeGrip_tr(s: cstring): struct_miqt_string {.importc: "QSizeGrip_tr".}
proc fcQSizeGrip_sizeHint(self: pointer, ): pointer {.importc: "QSizeGrip_sizeHint".}
proc fcQSizeGrip_setVisible(self: pointer, visible: bool): void {.importc: "QSizeGrip_setVisible".}
proc fcQSizeGrip_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSizeGrip_tr2".}
proc fcQSizeGrip_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSizeGrip_tr3".}
type cQSizeGripVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQSizeGripVTable, self: ptr cQSizeGrip) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, mouseEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, moveEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, showEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, hideEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSizeGrip_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSizeGrip_virtualbase_metaObject".}
proc fcQSizeGrip_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSizeGrip_virtualbase_metacast".}
proc fcQSizeGrip_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSizeGrip_virtualbase_metacall".}
proc fcQSizeGrip_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QSizeGrip_virtualbase_sizeHint".}
proc fcQSizeGrip_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSizeGrip_virtualbase_setVisible".}
proc fcQSizeGrip_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QSizeGrip_virtualbase_paintEvent".}
proc fcQSizeGrip_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QSizeGrip_virtualbase_mousePressEvent".}
proc fcQSizeGrip_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QSizeGrip_virtualbase_mouseMoveEvent".}
proc fcQSizeGrip_virtualbase_mouseReleaseEvent(self: pointer, mouseEvent: pointer): void {.importc: "QSizeGrip_virtualbase_mouseReleaseEvent".}
proc fcQSizeGrip_virtualbase_moveEvent(self: pointer, moveEvent: pointer): void {.importc: "QSizeGrip_virtualbase_moveEvent".}
proc fcQSizeGrip_virtualbase_showEvent(self: pointer, showEvent: pointer): void {.importc: "QSizeGrip_virtualbase_showEvent".}
proc fcQSizeGrip_virtualbase_hideEvent(self: pointer, hideEvent: pointer): void {.importc: "QSizeGrip_virtualbase_hideEvent".}
proc fcQSizeGrip_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QSizeGrip_virtualbase_eventFilter".}
proc fcQSizeGrip_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QSizeGrip_virtualbase_event".}
proc fcQSizeGrip_virtualbase_devType(self: pointer, ): cint {.importc: "QSizeGrip_virtualbase_devType".}
proc fcQSizeGrip_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QSizeGrip_virtualbase_minimumSizeHint".}
proc fcQSizeGrip_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSizeGrip_virtualbase_heightForWidth".}
proc fcQSizeGrip_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QSizeGrip_virtualbase_hasHeightForWidth".}
proc fcQSizeGrip_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QSizeGrip_virtualbase_paintEngine".}
proc fcQSizeGrip_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_mouseDoubleClickEvent".}
proc fcQSizeGrip_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_wheelEvent".}
proc fcQSizeGrip_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_keyPressEvent".}
proc fcQSizeGrip_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_keyReleaseEvent".}
proc fcQSizeGrip_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_focusInEvent".}
proc fcQSizeGrip_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_focusOutEvent".}
proc fcQSizeGrip_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_enterEvent".}
proc fcQSizeGrip_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_leaveEvent".}
proc fcQSizeGrip_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_resizeEvent".}
proc fcQSizeGrip_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_closeEvent".}
proc fcQSizeGrip_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_contextMenuEvent".}
proc fcQSizeGrip_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_tabletEvent".}
proc fcQSizeGrip_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_actionEvent".}
proc fcQSizeGrip_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_dragEnterEvent".}
proc fcQSizeGrip_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_dragMoveEvent".}
proc fcQSizeGrip_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_dragLeaveEvent".}
proc fcQSizeGrip_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_dropEvent".}
proc fcQSizeGrip_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QSizeGrip_virtualbase_nativeEvent".}
proc fcQSizeGrip_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QSizeGrip_virtualbase_changeEvent".}
proc fcQSizeGrip_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QSizeGrip_virtualbase_metric".}
proc fcQSizeGrip_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSizeGrip_virtualbase_initPainter".}
proc fcQSizeGrip_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSizeGrip_virtualbase_redirected".}
proc fcQSizeGrip_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QSizeGrip_virtualbase_sharedPainter".}
proc fcQSizeGrip_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSizeGrip_virtualbase_inputMethodEvent".}
proc fcQSizeGrip_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSizeGrip_virtualbase_inputMethodQuery".}
proc fcQSizeGrip_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSizeGrip_virtualbase_focusNextPrevChild".}
proc fcQSizeGrip_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_timerEvent".}
proc fcQSizeGrip_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_childEvent".}
proc fcQSizeGrip_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_customEvent".}
proc fcQSizeGrip_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSizeGrip_virtualbase_connectNotify".}
proc fcQSizeGrip_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSizeGrip_virtualbase_disconnectNotify".}
proc fcQSizeGrip_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QSizeGrip_protectedbase_updateMicroFocus".}
proc fcQSizeGrip_protectedbase_create(self: pointer, ): void {.importc: "QSizeGrip_protectedbase_create".}
proc fcQSizeGrip_protectedbase_destroy(self: pointer, ): void {.importc: "QSizeGrip_protectedbase_destroy".}
proc fcQSizeGrip_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QSizeGrip_protectedbase_focusNextChild".}
proc fcQSizeGrip_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QSizeGrip_protectedbase_focusPreviousChild".}
proc fcQSizeGrip_protectedbase_sender(self: pointer, ): pointer {.importc: "QSizeGrip_protectedbase_sender".}
proc fcQSizeGrip_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSizeGrip_protectedbase_senderSignalIndex".}
proc fcQSizeGrip_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSizeGrip_protectedbase_receivers".}
proc fcQSizeGrip_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSizeGrip_protectedbase_isSignalConnected".}
proc fcQSizeGrip_new(vtbl: pointer, parent: pointer): ptr cQSizeGrip {.importc: "QSizeGrip_new".}
proc fcQSizeGrip_staticMetaObject(): pointer {.importc: "QSizeGrip_staticMetaObject".}

proc metaObject*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSizeGrip_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsizegrip_types.QSizeGrip, param1: cstring): pointer =
  fcQSizeGrip_metacast(self.h, param1)

proc metacall*(self: gen_qsizegrip_types.QSizeGrip, param1: cint, param2: cint, param3: pointer): cint =
  fcQSizeGrip_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsizegrip_types.QSizeGrip, s: cstring): string =
  let v_ms = fcQSizeGrip_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSizeGrip_sizeHint(self.h), owned: true)

proc setVisible*(self: gen_qsizegrip_types.QSizeGrip, visible: bool): void =
  fcQSizeGrip_setVisible(self.h, visible)

proc tr*(_: type gen_qsizegrip_types.QSizeGrip, s: cstring, c: cstring): string =
  let v_ms = fcQSizeGrip_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsizegrip_types.QSizeGrip, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSizeGrip_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSizeGripmetaObjectProc* = proc(self: QSizeGrip): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSizeGripmetacastProc* = proc(self: QSizeGrip, param1: cstring): pointer {.raises: [], gcsafe.}
type QSizeGripmetacallProc* = proc(self: QSizeGrip, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSizeGripsizeHintProc* = proc(self: QSizeGrip): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSizeGripsetVisibleProc* = proc(self: QSizeGrip, visible: bool): void {.raises: [], gcsafe.}
type QSizeGrippaintEventProc* = proc(self: QSizeGrip, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QSizeGripmousePressEventProc* = proc(self: QSizeGrip, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSizeGripmouseMoveEventProc* = proc(self: QSizeGrip, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSizeGripmouseReleaseEventProc* = proc(self: QSizeGrip, mouseEvent: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSizeGripmoveEventProc* = proc(self: QSizeGrip, moveEvent: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QSizeGripshowEventProc* = proc(self: QSizeGrip, showEvent: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QSizeGriphideEventProc* = proc(self: QSizeGrip, hideEvent: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QSizeGripeventFilterProc* = proc(self: QSizeGrip, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSizeGripeventProc* = proc(self: QSizeGrip, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSizeGripdevTypeProc* = proc(self: QSizeGrip): cint {.raises: [], gcsafe.}
type QSizeGripminimumSizeHintProc* = proc(self: QSizeGrip): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSizeGripheightForWidthProc* = proc(self: QSizeGrip, param1: cint): cint {.raises: [], gcsafe.}
type QSizeGriphasHeightForWidthProc* = proc(self: QSizeGrip): bool {.raises: [], gcsafe.}
type QSizeGrippaintEngineProc* = proc(self: QSizeGrip): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QSizeGripmouseDoubleClickEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSizeGripwheelEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QSizeGripkeyPressEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSizeGripkeyReleaseEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSizeGripfocusInEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSizeGripfocusOutEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSizeGripenterEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QSizeGripleaveEventProc* = proc(self: QSizeGrip, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSizeGripresizeEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QSizeGripcloseEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QSizeGripcontextMenuEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QSizeGriptabletEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QSizeGripactionEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QSizeGripdragEnterEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QSizeGripdragMoveEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QSizeGripdragLeaveEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QSizeGripdropEventProc* = proc(self: QSizeGrip, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QSizeGripnativeEventProc* = proc(self: QSizeGrip, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QSizeGripchangeEventProc* = proc(self: QSizeGrip, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSizeGripmetricProc* = proc(self: QSizeGrip, param1: cint): cint {.raises: [], gcsafe.}
type QSizeGripinitPainterProc* = proc(self: QSizeGrip, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QSizeGripredirectedProc* = proc(self: QSizeGrip, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QSizeGripsharedPainterProc* = proc(self: QSizeGrip): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QSizeGripinputMethodEventProc* = proc(self: QSizeGrip, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QSizeGripinputMethodQueryProc* = proc(self: QSizeGrip, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSizeGripfocusNextPrevChildProc* = proc(self: QSizeGrip, next: bool): bool {.raises: [], gcsafe.}
type QSizeGriptimerEventProc* = proc(self: QSizeGrip, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSizeGripchildEventProc* = proc(self: QSizeGrip, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSizeGripcustomEventProc* = proc(self: QSizeGrip, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSizeGripconnectNotifyProc* = proc(self: QSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSizeGripdisconnectNotifyProc* = proc(self: QSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSizeGripVTable* {.inheritable, pure.} = object
  vtbl: cQSizeGripVTable
  metaObject*: QSizeGripmetaObjectProc
  metacast*: QSizeGripmetacastProc
  metacall*: QSizeGripmetacallProc
  sizeHint*: QSizeGripsizeHintProc
  setVisible*: QSizeGripsetVisibleProc
  paintEvent*: QSizeGrippaintEventProc
  mousePressEvent*: QSizeGripmousePressEventProc
  mouseMoveEvent*: QSizeGripmouseMoveEventProc
  mouseReleaseEvent*: QSizeGripmouseReleaseEventProc
  moveEvent*: QSizeGripmoveEventProc
  showEvent*: QSizeGripshowEventProc
  hideEvent*: QSizeGriphideEventProc
  eventFilter*: QSizeGripeventFilterProc
  event*: QSizeGripeventProc
  devType*: QSizeGripdevTypeProc
  minimumSizeHint*: QSizeGripminimumSizeHintProc
  heightForWidth*: QSizeGripheightForWidthProc
  hasHeightForWidth*: QSizeGriphasHeightForWidthProc
  paintEngine*: QSizeGrippaintEngineProc
  mouseDoubleClickEvent*: QSizeGripmouseDoubleClickEventProc
  wheelEvent*: QSizeGripwheelEventProc
  keyPressEvent*: QSizeGripkeyPressEventProc
  keyReleaseEvent*: QSizeGripkeyReleaseEventProc
  focusInEvent*: QSizeGripfocusInEventProc
  focusOutEvent*: QSizeGripfocusOutEventProc
  enterEvent*: QSizeGripenterEventProc
  leaveEvent*: QSizeGripleaveEventProc
  resizeEvent*: QSizeGripresizeEventProc
  closeEvent*: QSizeGripcloseEventProc
  contextMenuEvent*: QSizeGripcontextMenuEventProc
  tabletEvent*: QSizeGriptabletEventProc
  actionEvent*: QSizeGripactionEventProc
  dragEnterEvent*: QSizeGripdragEnterEventProc
  dragMoveEvent*: QSizeGripdragMoveEventProc
  dragLeaveEvent*: QSizeGripdragLeaveEventProc
  dropEvent*: QSizeGripdropEventProc
  nativeEvent*: QSizeGripnativeEventProc
  changeEvent*: QSizeGripchangeEventProc
  metric*: QSizeGripmetricProc
  initPainter*: QSizeGripinitPainterProc
  redirected*: QSizeGripredirectedProc
  sharedPainter*: QSizeGripsharedPainterProc
  inputMethodEvent*: QSizeGripinputMethodEventProc
  inputMethodQuery*: QSizeGripinputMethodQueryProc
  focusNextPrevChild*: QSizeGripfocusNextPrevChildProc
  timerEvent*: QSizeGriptimerEventProc
  childEvent*: QSizeGripchildEventProc
  customEvent*: QSizeGripcustomEventProc
  connectNotify*: QSizeGripconnectNotifyProc
  disconnectNotify*: QSizeGripdisconnectNotifyProc
proc QSizeGripmetaObject*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSizeGrip_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQSizeGrip_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripmetacast*(self: gen_qsizegrip_types.QSizeGrip, param1: cstring): pointer =
  fcQSizeGrip_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSizeGrip_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSizeGripmetacall*(self: gen_qsizegrip_types.QSizeGrip, param1: cint, param2: cint, param3: pointer): cint =
  fcQSizeGrip_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSizeGrip_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSizeGripsizeHint*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSizeGrip_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQSizeGrip_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripsetVisible*(self: gen_qsizegrip_types.QSizeGrip, visible: bool): void =
  fcQSizeGrip_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQSizeGrip_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QSizeGrippaintEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QPaintEvent): void =
  fcQSizeGrip_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQSizeGrip_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QSizeGripmousePressEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QMouseEvent): void =
  fcQSizeGrip_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQSizeGrip_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QSizeGripmouseMoveEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QMouseEvent): void =
  fcQSizeGrip_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQSizeGrip_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QSizeGripmouseReleaseEvent*(self: gen_qsizegrip_types.QSizeGrip, mouseEvent: gen_qevent_types.QMouseEvent): void =
  fcQSizeGrip_virtualbase_mouseReleaseEvent(self.h, mouseEvent.h)

proc miqt_exec_callback_cQSizeGrip_mouseReleaseEvent(vtbl: pointer, self: pointer, mouseEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QSizeGripmoveEvent*(self: gen_qsizegrip_types.QSizeGrip, moveEvent: gen_qevent_types.QMoveEvent): void =
  fcQSizeGrip_virtualbase_moveEvent(self.h, moveEvent.h)

proc miqt_exec_callback_cQSizeGrip_moveEvent(vtbl: pointer, self: pointer, moveEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: moveEvent, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QSizeGripshowEvent*(self: gen_qsizegrip_types.QSizeGrip, showEvent: gen_qevent_types.QShowEvent): void =
  fcQSizeGrip_virtualbase_showEvent(self.h, showEvent.h)

proc miqt_exec_callback_cQSizeGrip_showEvent(vtbl: pointer, self: pointer, showEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: showEvent, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QSizeGriphideEvent*(self: gen_qsizegrip_types.QSizeGrip, hideEvent: gen_qevent_types.QHideEvent): void =
  fcQSizeGrip_virtualbase_hideEvent(self.h, hideEvent.h)

proc miqt_exec_callback_cQSizeGrip_hideEvent(vtbl: pointer, self: pointer, hideEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: hideEvent, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QSizeGripeventFilter*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQSizeGrip_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQSizeGrip_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSizeGripevent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qcoreevent_types.QEvent): bool =
  fcQSizeGrip_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQSizeGrip_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSizeGripdevType*(self: gen_qsizegrip_types.QSizeGrip, ): cint =
  fcQSizeGrip_virtualbase_devType(self.h)

proc miqt_exec_callback_cQSizeGrip_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSizeGripminimumSizeHint*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSizeGrip_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQSizeGrip_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripheightForWidth*(self: gen_qsizegrip_types.QSizeGrip, param1: cint): cint =
  fcQSizeGrip_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQSizeGrip_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSizeGriphasHeightForWidth*(self: gen_qsizegrip_types.QSizeGrip, ): bool =
  fcQSizeGrip_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQSizeGrip_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSizeGrippaintEngine*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSizeGrip_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQSizeGrip_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripmouseDoubleClickEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QMouseEvent): void =
  fcQSizeGrip_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QSizeGripwheelEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QWheelEvent): void =
  fcQSizeGrip_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QSizeGripkeyPressEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QKeyEvent): void =
  fcQSizeGrip_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QSizeGripkeyReleaseEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QKeyEvent): void =
  fcQSizeGrip_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QSizeGripfocusInEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QFocusEvent): void =
  fcQSizeGrip_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QSizeGripfocusOutEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QFocusEvent): void =
  fcQSizeGrip_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QSizeGripenterEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QEnterEvent): void =
  fcQSizeGrip_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QSizeGripleaveEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QEvent): void =
  fcQSizeGrip_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QSizeGripresizeEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QResizeEvent): void =
  fcQSizeGrip_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QSizeGripcloseEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QCloseEvent): void =
  fcQSizeGrip_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QSizeGripcontextMenuEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSizeGrip_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QSizeGriptabletEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QTabletEvent): void =
  fcQSizeGrip_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QSizeGripactionEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QActionEvent): void =
  fcQSizeGrip_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QSizeGripdragEnterEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSizeGrip_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QSizeGripdragMoveEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSizeGrip_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QSizeGripdragLeaveEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSizeGrip_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QSizeGripdropEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDropEvent): void =
  fcQSizeGrip_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QSizeGripnativeEvent*(self: gen_qsizegrip_types.QSizeGrip, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQSizeGrip_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQSizeGrip_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSizeGripchangeEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qcoreevent_types.QEvent): void =
  fcQSizeGrip_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQSizeGrip_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QSizeGripmetric*(self: gen_qsizegrip_types.QSizeGrip, param1: cint): cint =
  fcQSizeGrip_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQSizeGrip_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSizeGripinitPainter*(self: gen_qsizegrip_types.QSizeGrip, painter: gen_qpainter_types.QPainter): void =
  fcQSizeGrip_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQSizeGrip_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QSizeGripredirected*(self: gen_qsizegrip_types.QSizeGrip, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSizeGrip_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQSizeGrip_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripsharedPainter*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSizeGrip_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQSizeGrip_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripinputMethodEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSizeGrip_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQSizeGrip_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QSizeGripinputMethodQuery*(self: gen_qsizegrip_types.QSizeGrip, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSizeGrip_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQSizeGrip_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripfocusNextPrevChild*(self: gen_qsizegrip_types.QSizeGrip, next: bool): bool =
  fcQSizeGrip_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQSizeGrip_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QSizeGriptimerEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSizeGrip_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSizeGripchildEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSizeGrip_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSizeGripcustomEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QEvent): void =
  fcQSizeGrip_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSizeGrip_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSizeGripconnectNotify*(self: gen_qsizegrip_types.QSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSizeGrip_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSizeGrip_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSizeGripdisconnectNotify*(self: gen_qsizegrip_types.QSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSizeGrip_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSizeGrip_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](vtbl)
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSizeGrip* {.inheritable.} = ref object of QSizeGrip
  vtbl*: cQSizeGripVTable
method metaObject*(self: VirtualQSizeGrip, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSizeGripmetaObject(self[])
proc miqt_exec_method_cQSizeGrip_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSizeGrip, param1: cstring): pointer {.base.} =
  QSizeGripmetacast(self[], param1)
proc miqt_exec_method_cQSizeGrip_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSizeGrip, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSizeGripmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQSizeGrip_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQSizeGrip, ): gen_qsize_types.QSize {.base.} =
  QSizeGripsizeHint(self[])
proc miqt_exec_method_cQSizeGrip_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setVisible*(self: VirtualQSizeGrip, visible: bool): void {.base.} =
  QSizeGripsetVisible(self[], visible)
proc miqt_exec_method_cQSizeGrip_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method paintEvent*(self: VirtualQSizeGrip, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QSizeGrippaintEvent(self[], param1)
proc miqt_exec_method_cQSizeGrip_paintEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl.paintEvent(slotval1)

method mousePressEvent*(self: VirtualQSizeGrip, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QSizeGripmousePressEvent(self[], param1)
proc miqt_exec_method_cQSizeGrip_mousePressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQSizeGrip, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QSizeGripmouseMoveEvent(self[], param1)
proc miqt_exec_method_cQSizeGrip_mouseMoveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQSizeGrip, mouseEvent: gen_qevent_types.QMouseEvent): void {.base.} =
  QSizeGripmouseReleaseEvent(self[], mouseEvent)
proc miqt_exec_method_cQSizeGrip_mouseReleaseEvent(vtbl: pointer, inst: pointer, mouseEvent: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method moveEvent*(self: VirtualQSizeGrip, moveEvent: gen_qevent_types.QMoveEvent): void {.base.} =
  QSizeGripmoveEvent(self[], moveEvent)
proc miqt_exec_method_cQSizeGrip_moveEvent(vtbl: pointer, inst: pointer, moveEvent: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: moveEvent, owned: false)
  vtbl.moveEvent(slotval1)

method showEvent*(self: VirtualQSizeGrip, showEvent: gen_qevent_types.QShowEvent): void {.base.} =
  QSizeGripshowEvent(self[], showEvent)
proc miqt_exec_method_cQSizeGrip_showEvent(vtbl: pointer, inst: pointer, showEvent: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: showEvent, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQSizeGrip, hideEvent: gen_qevent_types.QHideEvent): void {.base.} =
  QSizeGriphideEvent(self[], hideEvent)
proc miqt_exec_method_cQSizeGrip_hideEvent(vtbl: pointer, inst: pointer, hideEvent: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: hideEvent, owned: false)
  vtbl.hideEvent(slotval1)

method eventFilter*(self: VirtualQSizeGrip, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSizeGripeventFilter(self[], param1, param2)
proc miqt_exec_method_cQSizeGrip_eventFilter(vtbl: pointer, inst: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method event*(self: VirtualQSizeGrip, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSizeGripevent(self[], param1)
proc miqt_exec_method_cQSizeGrip_event(vtbl: pointer, inst: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method devType*(self: VirtualQSizeGrip, ): cint {.base.} =
  QSizeGripdevType(self[])
proc miqt_exec_method_cQSizeGrip_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method minimumSizeHint*(self: VirtualQSizeGrip, ): gen_qsize_types.QSize {.base.} =
  QSizeGripminimumSizeHint(self[])
proc miqt_exec_method_cQSizeGrip_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQSizeGrip, param1: cint): cint {.base.} =
  QSizeGripheightForWidth(self[], param1)
proc miqt_exec_method_cQSizeGrip_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQSizeGrip, ): bool {.base.} =
  QSizeGriphasHeightForWidth(self[])
proc miqt_exec_method_cQSizeGrip_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQSizeGrip, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QSizeGrippaintEngine(self[])
proc miqt_exec_method_cQSizeGrip_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSizeGripmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QSizeGripwheelEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSizeGripkeyPressEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSizeGripkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSizeGripfocusInEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSizeGripfocusOutEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QSizeGripenterEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQSizeGrip, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSizeGripleaveEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method resizeEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QSizeGripresizeEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method closeEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QSizeGripcloseEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QSizeGripcontextMenuEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QSizeGriptabletEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QActionEvent): void {.base.} =
  QSizeGripactionEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QSizeGripdragEnterEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QSizeGripdragMoveEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QSizeGripdragLeaveEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QDropEvent): void {.base.} =
  QSizeGripdropEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method nativeEvent*(self: VirtualQSizeGrip, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QSizeGripnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQSizeGrip_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQSizeGrip, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QSizeGripchangeEvent(self[], param1)
proc miqt_exec_method_cQSizeGrip_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method metric*(self: VirtualQSizeGrip, param1: cint): cint {.base.} =
  QSizeGripmetric(self[], param1)
proc miqt_exec_method_cQSizeGrip_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQSizeGrip, painter: gen_qpainter_types.QPainter): void {.base.} =
  QSizeGripinitPainter(self[], painter)
proc miqt_exec_method_cQSizeGrip_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQSizeGrip, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QSizeGripredirected(self[], offset)
proc miqt_exec_method_cQSizeGrip_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQSizeGrip, ): gen_qpainter_types.QPainter {.base.} =
  QSizeGripsharedPainter(self[])
proc miqt_exec_method_cQSizeGrip_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQSizeGrip, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QSizeGripinputMethodEvent(self[], param1)
proc miqt_exec_method_cQSizeGrip_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQSizeGrip, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QSizeGripinputMethodQuery(self[], param1)
proc miqt_exec_method_cQSizeGrip_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQSizeGrip, next: bool): bool {.base.} =
  QSizeGripfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQSizeGrip_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQSizeGrip, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSizeGriptimerEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQSizeGrip, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSizeGripchildEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQSizeGrip, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSizeGripcustomEvent(self[], event)
proc miqt_exec_method_cQSizeGrip_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSizeGripconnectNotify(self[], signal)
proc miqt_exec_method_cQSizeGrip_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSizeGripdisconnectNotify(self[], signal)
proc miqt_exec_method_cQSizeGrip_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSizeGrip](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qsizegrip_types.QSizeGrip, ): void =
  fcQSizeGrip_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qsizegrip_types.QSizeGrip, ): void =
  fcQSizeGrip_protectedbase_create(self.h)

proc destroy*(self: gen_qsizegrip_types.QSizeGrip, ): void =
  fcQSizeGrip_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qsizegrip_types.QSizeGrip, ): bool =
  fcQSizeGrip_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qsizegrip_types.QSizeGrip, ): bool =
  fcQSizeGrip_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSizeGrip_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsizegrip_types.QSizeGrip, ): cint =
  fcQSizeGrip_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsizegrip_types.QSizeGrip, signal: cstring): cint =
  fcQSizeGrip_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsizegrip_types.QSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSizeGrip_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsizegrip_types.QSizeGrip,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QSizeGripVTable = nil): gen_qsizegrip_types.QSizeGrip =
  let vtbl = if vtbl == nil: new QSizeGripVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSizeGripVTable, _: ptr cQSizeGrip) {.cdecl.} =
    let vtbl = cast[ref QSizeGripVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSizeGrip_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSizeGrip_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSizeGrip_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSizeGrip_sizeHint
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSizeGrip_setVisible
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSizeGrip_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSizeGrip_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSizeGrip_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSizeGrip_mouseReleaseEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSizeGrip_moveEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSizeGrip_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSizeGrip_hideEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSizeGrip_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSizeGrip_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSizeGrip_devType
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSizeGrip_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSizeGrip_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSizeGrip_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSizeGrip_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSizeGrip_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSizeGrip_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSizeGrip_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSizeGrip_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSizeGrip_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSizeGrip_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSizeGrip_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSizeGrip_leaveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSizeGrip_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSizeGrip_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSizeGrip_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSizeGrip_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSizeGrip_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSizeGrip_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSizeGrip_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSizeGrip_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSizeGrip_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSizeGrip_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSizeGrip_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSizeGrip_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSizeGrip_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSizeGrip_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSizeGrip_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSizeGrip_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSizeGrip_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSizeGrip_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSizeGrip_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSizeGrip_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSizeGrip_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSizeGrip_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSizeGrip_disconnectNotify
  gen_qsizegrip_types.QSizeGrip(h: fcQSizeGrip_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qsizegrip_types.QSizeGrip,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQSizeGrip) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSizeGripVTable, _: ptr cQSizeGrip) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSizeGrip()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSizeGrip, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSizeGrip_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSizeGrip_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSizeGrip_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQSizeGrip_sizeHint
  vtbl[].vtbl.setVisible = miqt_exec_method_cQSizeGrip_setVisible
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQSizeGrip_paintEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQSizeGrip_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQSizeGrip_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQSizeGrip_mouseReleaseEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQSizeGrip_moveEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQSizeGrip_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQSizeGrip_hideEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSizeGrip_eventFilter
  vtbl[].vtbl.event = miqt_exec_method_cQSizeGrip_event
  vtbl[].vtbl.devType = miqt_exec_method_cQSizeGrip_devType
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQSizeGrip_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQSizeGrip_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQSizeGrip_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQSizeGrip_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQSizeGrip_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQSizeGrip_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQSizeGrip_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQSizeGrip_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQSizeGrip_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQSizeGrip_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQSizeGrip_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQSizeGrip_leaveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQSizeGrip_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQSizeGrip_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQSizeGrip_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQSizeGrip_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQSizeGrip_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQSizeGrip_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQSizeGrip_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQSizeGrip_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQSizeGrip_dropEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQSizeGrip_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQSizeGrip_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQSizeGrip_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQSizeGrip_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQSizeGrip_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQSizeGrip_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQSizeGrip_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQSizeGrip_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQSizeGrip_focusNextPrevChild
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSizeGrip_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSizeGrip_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSizeGrip_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSizeGrip_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSizeGrip_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSizeGrip_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qsizegrip_types.QSizeGrip): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSizeGrip_staticMetaObject())
