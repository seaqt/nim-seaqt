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


{.compile("gen_qsizegrip.cpp", QtWidgetsCFlags).}


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

proc fcQSizeGrip_metaObject(self: pointer): pointer {.importc: "QSizeGrip_metaObject".}
proc fcQSizeGrip_metacast(self: pointer, param1: cstring): pointer {.importc: "QSizeGrip_metacast".}
proc fcQSizeGrip_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSizeGrip_metacall".}
proc fcQSizeGrip_tr(s: cstring): struct_miqt_string {.importc: "QSizeGrip_tr".}
proc fcQSizeGrip_sizeHint(self: pointer): pointer {.importc: "QSizeGrip_sizeHint".}
proc fcQSizeGrip_setVisible(self: pointer, visible: bool): void {.importc: "QSizeGrip_setVisible".}
proc fcQSizeGrip_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSizeGrip_tr2".}
proc fcQSizeGrip_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSizeGrip_tr3".}
proc fcQSizeGrip_vtbl(self: pointer): pointer {.importc: "QSizeGrip_vtbl".}
proc fcQSizeGrip_vdata(self: pointer): pointer {.importc: "QSizeGrip_vdata".}
type cQSizeGripVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, mouseEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, moveEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, showEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, hideEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSizeGrip_virtualbase_metaObject(self: pointer): pointer {.importc: "QSizeGrip_virtualbase_metaObject".}
proc fcQSizeGrip_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSizeGrip_virtualbase_metacast".}
proc fcQSizeGrip_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSizeGrip_virtualbase_metacall".}
proc fcQSizeGrip_virtualbase_sizeHint(self: pointer): pointer {.importc: "QSizeGrip_virtualbase_sizeHint".}
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
proc fcQSizeGrip_virtualbase_devType(self: pointer): cint {.importc: "QSizeGrip_virtualbase_devType".}
proc fcQSizeGrip_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QSizeGrip_virtualbase_minimumSizeHint".}
proc fcQSizeGrip_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSizeGrip_virtualbase_heightForWidth".}
proc fcQSizeGrip_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QSizeGrip_virtualbase_hasHeightForWidth".}
proc fcQSizeGrip_virtualbase_paintEngine(self: pointer): pointer {.importc: "QSizeGrip_virtualbase_paintEngine".}
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
proc fcQSizeGrip_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QSizeGrip_virtualbase_sharedPainter".}
proc fcQSizeGrip_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSizeGrip_virtualbase_inputMethodEvent".}
proc fcQSizeGrip_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSizeGrip_virtualbase_inputMethodQuery".}
proc fcQSizeGrip_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSizeGrip_virtualbase_focusNextPrevChild".}
proc fcQSizeGrip_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_timerEvent".}
proc fcQSizeGrip_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_childEvent".}
proc fcQSizeGrip_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSizeGrip_virtualbase_customEvent".}
proc fcQSizeGrip_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSizeGrip_virtualbase_connectNotify".}
proc fcQSizeGrip_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSizeGrip_virtualbase_disconnectNotify".}
proc fcQSizeGrip_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QSizeGrip_protectedbase_updateMicroFocus".}
proc fcQSizeGrip_protectedbase_create(self: pointer): void {.importc: "QSizeGrip_protectedbase_create".}
proc fcQSizeGrip_protectedbase_destroy(self: pointer): void {.importc: "QSizeGrip_protectedbase_destroy".}
proc fcQSizeGrip_protectedbase_focusNextChild(self: pointer): bool {.importc: "QSizeGrip_protectedbase_focusNextChild".}
proc fcQSizeGrip_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QSizeGrip_protectedbase_focusPreviousChild".}
proc fcQSizeGrip_protectedbase_sender(self: pointer): pointer {.importc: "QSizeGrip_protectedbase_sender".}
proc fcQSizeGrip_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSizeGrip_protectedbase_senderSignalIndex".}
proc fcQSizeGrip_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSizeGrip_protectedbase_receivers".}
proc fcQSizeGrip_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSizeGrip_protectedbase_isSignalConnected".}
proc fcQSizeGrip_new(vtbl, vdata: pointer, parent: pointer): ptr cQSizeGrip {.importc: "QSizeGrip_new".}
proc fcQSizeGrip_staticMetaObject(): pointer {.importc: "QSizeGrip_staticMetaObject".}

proc metaObject*(self: gen_qsizegrip_types.QSizeGrip): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSizeGrip_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsizegrip_types.QSizeGrip, param1: cstring): pointer =
  fcQSizeGrip_metacast(self.h, param1)

proc metacall*(self: gen_qsizegrip_types.QSizeGrip, param1: cint, param2: cint, param3: pointer): cint =
  fcQSizeGrip_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsizegrip_types.QSizeGrip, s: cstring): string =
  let v_ms = fcQSizeGrip_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qsizegrip_types.QSizeGrip): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSizeGrip_sizeHint(self.h), owned: true)

proc setVisible*(self: gen_qsizegrip_types.QSizeGrip, visible: bool): void =
  fcQSizeGrip_setVisible(self.h, visible)

proc tr*(_: type gen_qsizegrip_types.QSizeGrip, s: cstring, c: cstring): string =
  let v_ms = fcQSizeGrip_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsizegrip_types.QSizeGrip, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSizeGrip_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QSizeGripnativeEventProc* = proc(self: QSizeGrip, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
proc QSizeGripmetaObject*(self: gen_qsizegrip_types.QSizeGrip): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSizeGrip_virtualbase_metaObject(self.h), owned: false)

proc cQSizeGrip_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripmetacast*(self: gen_qsizegrip_types.QSizeGrip, param1: cstring): pointer =
  fcQSizeGrip_virtualbase_metacast(self.h, param1)

proc cQSizeGrip_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSizeGripmetacall*(self: gen_qsizegrip_types.QSizeGrip, param1: cint, param2: cint, param3: pointer): cint =
  fcQSizeGrip_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSizeGrip_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSizeGripsizeHint*(self: gen_qsizegrip_types.QSizeGrip): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSizeGrip_virtualbase_sizeHint(self.h), owned: true)

proc cQSizeGrip_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripsetVisible*(self: gen_qsizegrip_types.QSizeGrip, visible: bool): void =
  fcQSizeGrip_virtualbase_setVisible(self.h, visible)

proc cQSizeGrip_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QSizeGrippaintEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QPaintEvent): void =
  fcQSizeGrip_virtualbase_paintEvent(self.h, param1.h)

proc cQSizeGrip_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QSizeGripmousePressEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QMouseEvent): void =
  fcQSizeGrip_virtualbase_mousePressEvent(self.h, param1.h)

proc cQSizeGrip_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QSizeGripmouseMoveEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QMouseEvent): void =
  fcQSizeGrip_virtualbase_mouseMoveEvent(self.h, param1.h)

proc cQSizeGrip_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QSizeGripmouseReleaseEvent*(self: gen_qsizegrip_types.QSizeGrip, mouseEvent: gen_qevent_types.QMouseEvent): void =
  fcQSizeGrip_virtualbase_mouseReleaseEvent(self.h, mouseEvent.h)

proc cQSizeGrip_vtable_callback_mouseReleaseEvent(self: pointer, mouseEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QSizeGripmoveEvent*(self: gen_qsizegrip_types.QSizeGrip, moveEvent: gen_qevent_types.QMoveEvent): void =
  fcQSizeGrip_virtualbase_moveEvent(self.h, moveEvent.h)

proc cQSizeGrip_vtable_callback_moveEvent(self: pointer, moveEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: moveEvent, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QSizeGripshowEvent*(self: gen_qsizegrip_types.QSizeGrip, showEvent: gen_qevent_types.QShowEvent): void =
  fcQSizeGrip_virtualbase_showEvent(self.h, showEvent.h)

proc cQSizeGrip_vtable_callback_showEvent(self: pointer, showEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: showEvent, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QSizeGriphideEvent*(self: gen_qsizegrip_types.QSizeGrip, hideEvent: gen_qevent_types.QHideEvent): void =
  fcQSizeGrip_virtualbase_hideEvent(self.h, hideEvent.h)

proc cQSizeGrip_vtable_callback_hideEvent(self: pointer, hideEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: hideEvent, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QSizeGripeventFilter*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQSizeGrip_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQSizeGrip_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSizeGripevent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qcoreevent_types.QEvent): bool =
  fcQSizeGrip_virtualbase_event(self.h, param1.h)

proc cQSizeGrip_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSizeGripdevType*(self: gen_qsizegrip_types.QSizeGrip): cint =
  fcQSizeGrip_virtualbase_devType(self.h)

proc cQSizeGrip_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSizeGripminimumSizeHint*(self: gen_qsizegrip_types.QSizeGrip): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSizeGrip_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQSizeGrip_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripheightForWidth*(self: gen_qsizegrip_types.QSizeGrip, param1: cint): cint =
  fcQSizeGrip_virtualbase_heightForWidth(self.h, param1)

proc cQSizeGrip_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSizeGriphasHeightForWidth*(self: gen_qsizegrip_types.QSizeGrip): bool =
  fcQSizeGrip_virtualbase_hasHeightForWidth(self.h)

proc cQSizeGrip_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSizeGrippaintEngine*(self: gen_qsizegrip_types.QSizeGrip): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSizeGrip_virtualbase_paintEngine(self.h), owned: false)

proc cQSizeGrip_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripmouseDoubleClickEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QMouseEvent): void =
  fcQSizeGrip_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QSizeGripwheelEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QWheelEvent): void =
  fcQSizeGrip_virtualbase_wheelEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QSizeGripkeyPressEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QKeyEvent): void =
  fcQSizeGrip_virtualbase_keyPressEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QSizeGripkeyReleaseEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QKeyEvent): void =
  fcQSizeGrip_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QSizeGripfocusInEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QFocusEvent): void =
  fcQSizeGrip_virtualbase_focusInEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QSizeGripfocusOutEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QFocusEvent): void =
  fcQSizeGrip_virtualbase_focusOutEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QSizeGripenterEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QEnterEvent): void =
  fcQSizeGrip_virtualbase_enterEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QSizeGripleaveEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QEvent): void =
  fcQSizeGrip_virtualbase_leaveEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QSizeGripresizeEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QResizeEvent): void =
  fcQSizeGrip_virtualbase_resizeEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QSizeGripcloseEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QCloseEvent): void =
  fcQSizeGrip_virtualbase_closeEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QSizeGripcontextMenuEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSizeGrip_virtualbase_contextMenuEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QSizeGriptabletEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QTabletEvent): void =
  fcQSizeGrip_virtualbase_tabletEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QSizeGripactionEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QActionEvent): void =
  fcQSizeGrip_virtualbase_actionEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QSizeGripdragEnterEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSizeGrip_virtualbase_dragEnterEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QSizeGripdragMoveEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSizeGrip_virtualbase_dragMoveEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QSizeGripdragLeaveEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSizeGrip_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QSizeGripdropEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDropEvent): void =
  fcQSizeGrip_virtualbase_dropEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QSizeGripnativeEvent*(self: gen_qsizegrip_types.QSizeGrip, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQSizeGrip_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQSizeGrip_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSizeGripchangeEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qcoreevent_types.QEvent): void =
  fcQSizeGrip_virtualbase_changeEvent(self.h, param1.h)

proc cQSizeGrip_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QSizeGripmetric*(self: gen_qsizegrip_types.QSizeGrip, param1: cint): cint =
  fcQSizeGrip_virtualbase_metric(self.h, cint(param1))

proc cQSizeGrip_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSizeGripinitPainter*(self: gen_qsizegrip_types.QSizeGrip, painter: gen_qpainter_types.QPainter): void =
  fcQSizeGrip_virtualbase_initPainter(self.h, painter.h)

proc cQSizeGrip_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QSizeGripredirected*(self: gen_qsizegrip_types.QSizeGrip, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSizeGrip_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQSizeGrip_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripsharedPainter*(self: gen_qsizegrip_types.QSizeGrip): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSizeGrip_virtualbase_sharedPainter(self.h), owned: false)

proc cQSizeGrip_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripinputMethodEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSizeGrip_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQSizeGrip_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QSizeGripinputMethodQuery*(self: gen_qsizegrip_types.QSizeGrip, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSizeGrip_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQSizeGrip_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSizeGripfocusNextPrevChild*(self: gen_qsizegrip_types.QSizeGrip, next: bool): bool =
  fcQSizeGrip_virtualbase_focusNextPrevChild(self.h, next)

proc cQSizeGrip_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QSizeGriptimerEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSizeGrip_virtualbase_timerEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSizeGripchildEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSizeGrip_virtualbase_childEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSizeGripcustomEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QEvent): void =
  fcQSizeGrip_virtualbase_customEvent(self.h, event.h)

proc cQSizeGrip_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSizeGripconnectNotify*(self: gen_qsizegrip_types.QSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSizeGrip_virtualbase_connectNotify(self.h, signal.h)

proc cQSizeGrip_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSizeGripdisconnectNotify*(self: gen_qsizegrip_types.QSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSizeGrip_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSizeGrip_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSizeGripVTable](fcQSizeGrip_vdata(self))
  let self = QSizeGrip(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSizeGrip* {.inheritable.} = ref object of QSizeGrip
  vtbl*: cQSizeGripVTable
method metaObject*(self: VirtualQSizeGrip): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSizeGripmetaObject(self[])
proc cQSizeGrip_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSizeGrip, param1: cstring): pointer {.base.} =
  QSizeGripmetacast(self[], param1)
proc cQSizeGrip_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSizeGrip, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSizeGripmetacall(self[], param1, param2, param3)
proc cQSizeGrip_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQSizeGrip): gen_qsize_types.QSize {.base.} =
  QSizeGripsizeHint(self[])
proc cQSizeGrip_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setVisible*(self: VirtualQSizeGrip, visible: bool): void {.base.} =
  QSizeGripsetVisible(self[], visible)
proc cQSizeGrip_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method paintEvent*(self: VirtualQSizeGrip, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QSizeGrippaintEvent(self[], param1)
proc cQSizeGrip_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method mousePressEvent*(self: VirtualQSizeGrip, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QSizeGripmousePressEvent(self[], param1)
proc cQSizeGrip_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQSizeGrip, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QSizeGripmouseMoveEvent(self[], param1)
proc cQSizeGrip_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQSizeGrip, mouseEvent: gen_qevent_types.QMouseEvent): void {.base.} =
  QSizeGripmouseReleaseEvent(self[], mouseEvent)
proc cQSizeGrip_method_callback_mouseReleaseEvent(self: pointer, mouseEvent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent, owned: false)
  inst.mouseReleaseEvent(slotval1)

method moveEvent*(self: VirtualQSizeGrip, moveEvent: gen_qevent_types.QMoveEvent): void {.base.} =
  QSizeGripmoveEvent(self[], moveEvent)
proc cQSizeGrip_method_callback_moveEvent(self: pointer, moveEvent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: moveEvent, owned: false)
  inst.moveEvent(slotval1)

method showEvent*(self: VirtualQSizeGrip, showEvent: gen_qevent_types.QShowEvent): void {.base.} =
  QSizeGripshowEvent(self[], showEvent)
proc cQSizeGrip_method_callback_showEvent(self: pointer, showEvent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: showEvent, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQSizeGrip, hideEvent: gen_qevent_types.QHideEvent): void {.base.} =
  QSizeGriphideEvent(self[], hideEvent)
proc cQSizeGrip_method_callback_hideEvent(self: pointer, hideEvent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: hideEvent, owned: false)
  inst.hideEvent(slotval1)

method eventFilter*(self: VirtualQSizeGrip, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSizeGripeventFilter(self[], param1, param2)
proc cQSizeGrip_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method event*(self: VirtualQSizeGrip, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSizeGripevent(self[], param1)
proc cQSizeGrip_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method devType*(self: VirtualQSizeGrip): cint {.base.} =
  QSizeGripdevType(self[])
proc cQSizeGrip_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method minimumSizeHint*(self: VirtualQSizeGrip): gen_qsize_types.QSize {.base.} =
  QSizeGripminimumSizeHint(self[])
proc cQSizeGrip_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQSizeGrip, param1: cint): cint {.base.} =
  QSizeGripheightForWidth(self[], param1)
proc cQSizeGrip_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQSizeGrip): bool {.base.} =
  QSizeGriphasHeightForWidth(self[])
proc cQSizeGrip_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQSizeGrip): gen_qpaintengine_types.QPaintEngine {.base.} =
  QSizeGrippaintEngine(self[])
proc cQSizeGrip_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSizeGripmouseDoubleClickEvent(self[], event)
proc cQSizeGrip_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QSizeGripwheelEvent(self[], event)
proc cQSizeGrip_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSizeGripkeyPressEvent(self[], event)
proc cQSizeGrip_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSizeGripkeyReleaseEvent(self[], event)
proc cQSizeGrip_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSizeGripfocusInEvent(self[], event)
proc cQSizeGrip_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSizeGripfocusOutEvent(self[], event)
proc cQSizeGrip_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QSizeGripenterEvent(self[], event)
proc cQSizeGrip_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQSizeGrip, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSizeGripleaveEvent(self[], event)
proc cQSizeGrip_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method resizeEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QSizeGripresizeEvent(self[], event)
proc cQSizeGrip_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QSizeGripcloseEvent(self[], event)
proc cQSizeGrip_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QSizeGripcontextMenuEvent(self[], event)
proc cQSizeGrip_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QSizeGriptabletEvent(self[], event)
proc cQSizeGrip_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QActionEvent): void {.base.} =
  QSizeGripactionEvent(self[], event)
proc cQSizeGrip_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QSizeGripdragEnterEvent(self[], event)
proc cQSizeGrip_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QSizeGripdragMoveEvent(self[], event)
proc cQSizeGrip_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QSizeGripdragLeaveEvent(self[], event)
proc cQSizeGrip_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQSizeGrip, event: gen_qevent_types.QDropEvent): void {.base.} =
  QSizeGripdropEvent(self[], event)
proc cQSizeGrip_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method nativeEvent*(self: VirtualQSizeGrip, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QSizeGripnativeEvent(self[], eventType, message, resultVal)
proc cQSizeGrip_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQSizeGrip, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QSizeGripchangeEvent(self[], param1)
proc cQSizeGrip_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQSizeGrip, param1: cint): cint {.base.} =
  QSizeGripmetric(self[], param1)
proc cQSizeGrip_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQSizeGrip, painter: gen_qpainter_types.QPainter): void {.base.} =
  QSizeGripinitPainter(self[], painter)
proc cQSizeGrip_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQSizeGrip, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QSizeGripredirected(self[], offset)
proc cQSizeGrip_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQSizeGrip): gen_qpainter_types.QPainter {.base.} =
  QSizeGripsharedPainter(self[])
proc cQSizeGrip_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQSizeGrip, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QSizeGripinputMethodEvent(self[], param1)
proc cQSizeGrip_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQSizeGrip, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QSizeGripinputMethodQuery(self[], param1)
proc cQSizeGrip_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQSizeGrip, next: bool): bool {.base.} =
  QSizeGripfocusNextPrevChild(self[], next)
proc cQSizeGrip_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQSizeGrip, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSizeGriptimerEvent(self[], event)
proc cQSizeGrip_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQSizeGrip, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSizeGripchildEvent(self[], event)
proc cQSizeGrip_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQSizeGrip, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSizeGripcustomEvent(self[], event)
proc cQSizeGrip_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSizeGripconnectNotify(self[], signal)
proc cQSizeGrip_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSizeGripdisconnectNotify(self[], signal)
proc cQSizeGrip_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSizeGrip](fcQSizeGrip_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qsizegrip_types.QSizeGrip): void =
  fcQSizeGrip_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qsizegrip_types.QSizeGrip): void =
  fcQSizeGrip_protectedbase_create(self.h)

proc destroy*(self: gen_qsizegrip_types.QSizeGrip): void =
  fcQSizeGrip_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qsizegrip_types.QSizeGrip): bool =
  fcQSizeGrip_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qsizegrip_types.QSizeGrip): bool =
  fcQSizeGrip_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qsizegrip_types.QSizeGrip): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSizeGrip_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsizegrip_types.QSizeGrip): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSizeGripVTable](fcQSizeGrip_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSizeGrip_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSizeGrip_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSizeGrip_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQSizeGrip_vtable_callback_sizeHint
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQSizeGrip_vtable_callback_setVisible
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQSizeGrip_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQSizeGrip_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQSizeGrip_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQSizeGrip_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQSizeGrip_vtable_callback_moveEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQSizeGrip_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQSizeGrip_vtable_callback_hideEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSizeGrip_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSizeGrip_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQSizeGrip_vtable_callback_devType
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQSizeGrip_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQSizeGrip_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQSizeGrip_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQSizeGrip_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQSizeGrip_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQSizeGrip_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQSizeGrip_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQSizeGrip_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQSizeGrip_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQSizeGrip_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQSizeGrip_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQSizeGrip_vtable_callback_leaveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQSizeGrip_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQSizeGrip_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQSizeGrip_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQSizeGrip_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQSizeGrip_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQSizeGrip_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQSizeGrip_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQSizeGrip_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQSizeGrip_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQSizeGrip_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQSizeGrip_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQSizeGrip_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQSizeGrip_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQSizeGrip_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQSizeGrip_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQSizeGrip_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQSizeGrip_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQSizeGrip_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSizeGrip_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSizeGrip_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSizeGrip_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSizeGrip_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSizeGrip_vtable_callback_disconnectNotify
  gen_qsizegrip_types.QSizeGrip(h: fcQSizeGrip_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQSizeGrip_mvtbl = cQSizeGripVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSizeGrip()[])](self.fcQSizeGrip_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSizeGrip_method_callback_metaObject,
  metacast: cQSizeGrip_method_callback_metacast,
  metacall: cQSizeGrip_method_callback_metacall,
  sizeHint: cQSizeGrip_method_callback_sizeHint,
  setVisible: cQSizeGrip_method_callback_setVisible,
  paintEvent: cQSizeGrip_method_callback_paintEvent,
  mousePressEvent: cQSizeGrip_method_callback_mousePressEvent,
  mouseMoveEvent: cQSizeGrip_method_callback_mouseMoveEvent,
  mouseReleaseEvent: cQSizeGrip_method_callback_mouseReleaseEvent,
  moveEvent: cQSizeGrip_method_callback_moveEvent,
  showEvent: cQSizeGrip_method_callback_showEvent,
  hideEvent: cQSizeGrip_method_callback_hideEvent,
  eventFilter: cQSizeGrip_method_callback_eventFilter,
  event: cQSizeGrip_method_callback_event,
  devType: cQSizeGrip_method_callback_devType,
  minimumSizeHint: cQSizeGrip_method_callback_minimumSizeHint,
  heightForWidth: cQSizeGrip_method_callback_heightForWidth,
  hasHeightForWidth: cQSizeGrip_method_callback_hasHeightForWidth,
  paintEngine: cQSizeGrip_method_callback_paintEngine,
  mouseDoubleClickEvent: cQSizeGrip_method_callback_mouseDoubleClickEvent,
  wheelEvent: cQSizeGrip_method_callback_wheelEvent,
  keyPressEvent: cQSizeGrip_method_callback_keyPressEvent,
  keyReleaseEvent: cQSizeGrip_method_callback_keyReleaseEvent,
  focusInEvent: cQSizeGrip_method_callback_focusInEvent,
  focusOutEvent: cQSizeGrip_method_callback_focusOutEvent,
  enterEvent: cQSizeGrip_method_callback_enterEvent,
  leaveEvent: cQSizeGrip_method_callback_leaveEvent,
  resizeEvent: cQSizeGrip_method_callback_resizeEvent,
  closeEvent: cQSizeGrip_method_callback_closeEvent,
  contextMenuEvent: cQSizeGrip_method_callback_contextMenuEvent,
  tabletEvent: cQSizeGrip_method_callback_tabletEvent,
  actionEvent: cQSizeGrip_method_callback_actionEvent,
  dragEnterEvent: cQSizeGrip_method_callback_dragEnterEvent,
  dragMoveEvent: cQSizeGrip_method_callback_dragMoveEvent,
  dragLeaveEvent: cQSizeGrip_method_callback_dragLeaveEvent,
  dropEvent: cQSizeGrip_method_callback_dropEvent,
  nativeEvent: cQSizeGrip_method_callback_nativeEvent,
  changeEvent: cQSizeGrip_method_callback_changeEvent,
  metric: cQSizeGrip_method_callback_metric,
  initPainter: cQSizeGrip_method_callback_initPainter,
  redirected: cQSizeGrip_method_callback_redirected,
  sharedPainter: cQSizeGrip_method_callback_sharedPainter,
  inputMethodEvent: cQSizeGrip_method_callback_inputMethodEvent,
  inputMethodQuery: cQSizeGrip_method_callback_inputMethodQuery,
  focusNextPrevChild: cQSizeGrip_method_callback_focusNextPrevChild,
  timerEvent: cQSizeGrip_method_callback_timerEvent,
  childEvent: cQSizeGrip_method_callback_childEvent,
  customEvent: cQSizeGrip_method_callback_customEvent,
  connectNotify: cQSizeGrip_method_callback_connectNotify,
  disconnectNotify: cQSizeGrip_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsizegrip_types.QSizeGrip,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQSizeGrip) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSizeGrip_new(addr(cQSizeGrip_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsizegrip_types.QSizeGrip): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSizeGrip_staticMetaObject())
