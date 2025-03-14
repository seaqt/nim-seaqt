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


{.compile("gen_qdial.cpp", QtWidgetsCFlags).}


import ./gen_qdial_types
export gen_qdial_types

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

type cQDial*{.exportc: "QDial", incompleteStruct.} = object

proc fcQDial_metaObject(self: pointer): pointer {.importc: "QDial_metaObject".}
proc fcQDial_metacast(self: pointer, param1: cstring): pointer {.importc: "QDial_metacast".}
proc fcQDial_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDial_metacall".}
proc fcQDial_tr(s: cstring): struct_miqt_string {.importc: "QDial_tr".}
proc fcQDial_wrapping(self: pointer): bool {.importc: "QDial_wrapping".}
proc fcQDial_notchSize(self: pointer): cint {.importc: "QDial_notchSize".}
proc fcQDial_setNotchTarget(self: pointer, target: float64): void {.importc: "QDial_setNotchTarget".}
proc fcQDial_notchTarget(self: pointer): float64 {.importc: "QDial_notchTarget".}
proc fcQDial_notchesVisible(self: pointer): bool {.importc: "QDial_notchesVisible".}
proc fcQDial_sizeHint(self: pointer): pointer {.importc: "QDial_sizeHint".}
proc fcQDial_minimumSizeHint(self: pointer): pointer {.importc: "QDial_minimumSizeHint".}
proc fcQDial_setNotchesVisible(self: pointer, visible: bool): void {.importc: "QDial_setNotchesVisible".}
proc fcQDial_setWrapping(self: pointer, on: bool): void {.importc: "QDial_setWrapping".}
proc fcQDial_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDial_tr2".}
proc fcQDial_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDial_tr3".}
proc fcQDial_vtbl(self: pointer): pointer {.importc: "QDial_vtbl".}
proc fcQDial_vdata(self: pointer): pointer {.importc: "QDial_vdata".}
type cQDialVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, re: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, pe: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, me: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, me: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, me: pointer): void {.cdecl, raises: [], gcsafe.}
  sliderChange*: proc(self: pointer, change: cint): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQDial_virtualbase_metaObject(self: pointer): pointer {.importc: "QDial_virtualbase_metaObject".}
proc fcQDial_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDial_virtualbase_metacast".}
proc fcQDial_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDial_virtualbase_metacall".}
proc fcQDial_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDial_virtualbase_sizeHint".}
proc fcQDial_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDial_virtualbase_minimumSizeHint".}
proc fcQDial_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QDial_virtualbase_event".}
proc fcQDial_virtualbase_resizeEvent(self: pointer, re: pointer): void {.importc: "QDial_virtualbase_resizeEvent".}
proc fcQDial_virtualbase_paintEvent(self: pointer, pe: pointer): void {.importc: "QDial_virtualbase_paintEvent".}
proc fcQDial_virtualbase_mousePressEvent(self: pointer, me: pointer): void {.importc: "QDial_virtualbase_mousePressEvent".}
proc fcQDial_virtualbase_mouseReleaseEvent(self: pointer, me: pointer): void {.importc: "QDial_virtualbase_mouseReleaseEvent".}
proc fcQDial_virtualbase_mouseMoveEvent(self: pointer, me: pointer): void {.importc: "QDial_virtualbase_mouseMoveEvent".}
proc fcQDial_virtualbase_sliderChange(self: pointer, change: cint): void {.importc: "QDial_virtualbase_sliderChange".}
proc fcQDial_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QDial_virtualbase_initStyleOption".}
proc fcQDial_virtualbase_keyPressEvent(self: pointer, ev: pointer): void {.importc: "QDial_virtualbase_keyPressEvent".}
proc fcQDial_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QDial_virtualbase_timerEvent".}
proc fcQDial_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QDial_virtualbase_wheelEvent".}
proc fcQDial_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QDial_virtualbase_changeEvent".}
proc fcQDial_virtualbase_devType(self: pointer): cint {.importc: "QDial_virtualbase_devType".}
proc fcQDial_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDial_virtualbase_setVisible".}
proc fcQDial_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDial_virtualbase_heightForWidth".}
proc fcQDial_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDial_virtualbase_hasHeightForWidth".}
proc fcQDial_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDial_virtualbase_paintEngine".}
proc fcQDial_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_mouseDoubleClickEvent".}
proc fcQDial_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_keyReleaseEvent".}
proc fcQDial_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_focusInEvent".}
proc fcQDial_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_focusOutEvent".}
proc fcQDial_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_enterEvent".}
proc fcQDial_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_leaveEvent".}
proc fcQDial_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_moveEvent".}
proc fcQDial_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_closeEvent".}
proc fcQDial_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_contextMenuEvent".}
proc fcQDial_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_tabletEvent".}
proc fcQDial_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_actionEvent".}
proc fcQDial_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_dragEnterEvent".}
proc fcQDial_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_dragMoveEvent".}
proc fcQDial_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_dragLeaveEvent".}
proc fcQDial_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_dropEvent".}
proc fcQDial_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_showEvent".}
proc fcQDial_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_hideEvent".}
proc fcQDial_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QDial_virtualbase_nativeEvent".}
proc fcQDial_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDial_virtualbase_metric".}
proc fcQDial_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDial_virtualbase_initPainter".}
proc fcQDial_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDial_virtualbase_redirected".}
proc fcQDial_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDial_virtualbase_sharedPainter".}
proc fcQDial_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDial_virtualbase_inputMethodEvent".}
proc fcQDial_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDial_virtualbase_inputMethodQuery".}
proc fcQDial_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDial_virtualbase_focusNextPrevChild".}
proc fcQDial_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDial_virtualbase_eventFilter".}
proc fcQDial_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_childEvent".}
proc fcQDial_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_customEvent".}
proc fcQDial_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDial_virtualbase_connectNotify".}
proc fcQDial_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDial_virtualbase_disconnectNotify".}
proc fcQDial_protectedbase_setRepeatAction(self: pointer, action: cint): void {.importc: "QDial_protectedbase_setRepeatAction".}
proc fcQDial_protectedbase_repeatAction(self: pointer): cint {.importc: "QDial_protectedbase_repeatAction".}
proc fcQDial_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDial_protectedbase_updateMicroFocus".}
proc fcQDial_protectedbase_create(self: pointer): void {.importc: "QDial_protectedbase_create".}
proc fcQDial_protectedbase_destroy(self: pointer): void {.importc: "QDial_protectedbase_destroy".}
proc fcQDial_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDial_protectedbase_focusNextChild".}
proc fcQDial_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDial_protectedbase_focusPreviousChild".}
proc fcQDial_protectedbase_sender(self: pointer): pointer {.importc: "QDial_protectedbase_sender".}
proc fcQDial_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDial_protectedbase_senderSignalIndex".}
proc fcQDial_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDial_protectedbase_receivers".}
proc fcQDial_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDial_protectedbase_isSignalConnected".}
proc fcQDial_new(vtbl, vdata: pointer, parent: pointer): ptr cQDial {.importc: "QDial_new".}
proc fcQDial_new2(vtbl, vdata: pointer): ptr cQDial {.importc: "QDial_new2".}
proc fcQDial_staticMetaObject(): pointer {.importc: "QDial_staticMetaObject".}

proc metaObject*(self: gen_qdial_types.QDial): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDial_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdial_types.QDial, param1: cstring): pointer =
  fcQDial_metacast(self.h, param1)

proc metacall*(self: gen_qdial_types.QDial, param1: cint, param2: cint, param3: pointer): cint =
  fcQDial_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdial_types.QDial, s: cstring): string =
  let v_ms = fcQDial_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc wrapping*(self: gen_qdial_types.QDial): bool =
  fcQDial_wrapping(self.h)

proc notchSize*(self: gen_qdial_types.QDial): cint =
  fcQDial_notchSize(self.h)

proc setNotchTarget*(self: gen_qdial_types.QDial, target: float64): void =
  fcQDial_setNotchTarget(self.h, target)

proc notchTarget*(self: gen_qdial_types.QDial): float64 =
  fcQDial_notchTarget(self.h)

proc notchesVisible*(self: gen_qdial_types.QDial): bool =
  fcQDial_notchesVisible(self.h)

proc sizeHint*(self: gen_qdial_types.QDial): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDial_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qdial_types.QDial): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDial_minimumSizeHint(self.h), owned: true)

proc setNotchesVisible*(self: gen_qdial_types.QDial, visible: bool): void =
  fcQDial_setNotchesVisible(self.h, visible)

proc setWrapping*(self: gen_qdial_types.QDial, on: bool): void =
  fcQDial_setWrapping(self.h, on)

proc tr*(_: type gen_qdial_types.QDial, s: cstring, c: cstring): string =
  let v_ms = fcQDial_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdial_types.QDial, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDial_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QDialmetaObjectProc* = proc(self: QDial): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDialmetacastProc* = proc(self: QDial, param1: cstring): pointer {.raises: [], gcsafe.}
type QDialmetacallProc* = proc(self: QDial, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDialsizeHintProc* = proc(self: QDial): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDialminimumSizeHintProc* = proc(self: QDial): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDialeventProc* = proc(self: QDial, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDialresizeEventProc* = proc(self: QDial, re: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDialpaintEventProc* = proc(self: QDial, pe: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDialmousePressEventProc* = proc(self: QDial, me: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialmouseReleaseEventProc* = proc(self: QDial, me: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialmouseMoveEventProc* = proc(self: QDial, me: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialsliderChangeProc* = proc(self: QDial, change: cint): void {.raises: [], gcsafe.}
type QDialinitStyleOptionProc* = proc(self: QDial, option: gen_qstyleoption_types.QStyleOptionSlider): void {.raises: [], gcsafe.}
type QDialkeyPressEventProc* = proc(self: QDial, ev: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDialtimerEventProc* = proc(self: QDial, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDialwheelEventProc* = proc(self: QDial, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDialchangeEventProc* = proc(self: QDial, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDialdevTypeProc* = proc(self: QDial): cint {.raises: [], gcsafe.}
type QDialsetVisibleProc* = proc(self: QDial, visible: bool): void {.raises: [], gcsafe.}
type QDialheightForWidthProc* = proc(self: QDial, param1: cint): cint {.raises: [], gcsafe.}
type QDialhasHeightForWidthProc* = proc(self: QDial): bool {.raises: [], gcsafe.}
type QDialpaintEngineProc* = proc(self: QDial): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDialmouseDoubleClickEventProc* = proc(self: QDial, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialkeyReleaseEventProc* = proc(self: QDial, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDialfocusInEventProc* = proc(self: QDial, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDialfocusOutEventProc* = proc(self: QDial, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDialenterEventProc* = proc(self: QDial, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QDialleaveEventProc* = proc(self: QDial, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDialmoveEventProc* = proc(self: QDial, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDialcloseEventProc* = proc(self: QDial, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDialcontextMenuEventProc* = proc(self: QDial, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDialtabletEventProc* = proc(self: QDial, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDialactionEventProc* = proc(self: QDial, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDialdragEnterEventProc* = proc(self: QDial, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDialdragMoveEventProc* = proc(self: QDial, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDialdragLeaveEventProc* = proc(self: QDial, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDialdropEventProc* = proc(self: QDial, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDialshowEventProc* = proc(self: QDial, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDialhideEventProc* = proc(self: QDial, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDialnativeEventProc* = proc(self: QDial, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QDialmetricProc* = proc(self: QDial, param1: cint): cint {.raises: [], gcsafe.}
type QDialinitPainterProc* = proc(self: QDial, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDialredirectedProc* = proc(self: QDial, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDialsharedPainterProc* = proc(self: QDial): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDialinputMethodEventProc* = proc(self: QDial, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDialinputMethodQueryProc* = proc(self: QDial, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDialfocusNextPrevChildProc* = proc(self: QDial, next: bool): bool {.raises: [], gcsafe.}
type QDialeventFilterProc* = proc(self: QDial, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDialchildEventProc* = proc(self: QDial, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDialcustomEventProc* = proc(self: QDial, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDialconnectNotifyProc* = proc(self: QDial, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDialdisconnectNotifyProc* = proc(self: QDial, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDialVTable* {.inheritable, pure.} = object
  vtbl: cQDialVTable
  metaObject*: QDialmetaObjectProc
  metacast*: QDialmetacastProc
  metacall*: QDialmetacallProc
  sizeHint*: QDialsizeHintProc
  minimumSizeHint*: QDialminimumSizeHintProc
  event*: QDialeventProc
  resizeEvent*: QDialresizeEventProc
  paintEvent*: QDialpaintEventProc
  mousePressEvent*: QDialmousePressEventProc
  mouseReleaseEvent*: QDialmouseReleaseEventProc
  mouseMoveEvent*: QDialmouseMoveEventProc
  sliderChange*: QDialsliderChangeProc
  initStyleOption*: QDialinitStyleOptionProc
  keyPressEvent*: QDialkeyPressEventProc
  timerEvent*: QDialtimerEventProc
  wheelEvent*: QDialwheelEventProc
  changeEvent*: QDialchangeEventProc
  devType*: QDialdevTypeProc
  setVisible*: QDialsetVisibleProc
  heightForWidth*: QDialheightForWidthProc
  hasHeightForWidth*: QDialhasHeightForWidthProc
  paintEngine*: QDialpaintEngineProc
  mouseDoubleClickEvent*: QDialmouseDoubleClickEventProc
  keyReleaseEvent*: QDialkeyReleaseEventProc
  focusInEvent*: QDialfocusInEventProc
  focusOutEvent*: QDialfocusOutEventProc
  enterEvent*: QDialenterEventProc
  leaveEvent*: QDialleaveEventProc
  moveEvent*: QDialmoveEventProc
  closeEvent*: QDialcloseEventProc
  contextMenuEvent*: QDialcontextMenuEventProc
  tabletEvent*: QDialtabletEventProc
  actionEvent*: QDialactionEventProc
  dragEnterEvent*: QDialdragEnterEventProc
  dragMoveEvent*: QDialdragMoveEventProc
  dragLeaveEvent*: QDialdragLeaveEventProc
  dropEvent*: QDialdropEventProc
  showEvent*: QDialshowEventProc
  hideEvent*: QDialhideEventProc
  nativeEvent*: QDialnativeEventProc
  metric*: QDialmetricProc
  initPainter*: QDialinitPainterProc
  redirected*: QDialredirectedProc
  sharedPainter*: QDialsharedPainterProc
  inputMethodEvent*: QDialinputMethodEventProc
  inputMethodQuery*: QDialinputMethodQueryProc
  focusNextPrevChild*: QDialfocusNextPrevChildProc
  eventFilter*: QDialeventFilterProc
  childEvent*: QDialchildEventProc
  customEvent*: QDialcustomEventProc
  connectNotify*: QDialconnectNotifyProc
  disconnectNotify*: QDialdisconnectNotifyProc
proc QDialmetaObject*(self: gen_qdial_types.QDial): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDial_virtualbase_metaObject(self.h), owned: false)

proc cQDial_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialmetacast*(self: gen_qdial_types.QDial, param1: cstring): pointer =
  fcQDial_virtualbase_metacast(self.h, param1)

proc cQDial_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDialmetacall*(self: gen_qdial_types.QDial, param1: cint, param2: cint, param3: pointer): cint =
  fcQDial_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQDial_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDialsizeHint*(self: gen_qdial_types.QDial): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDial_virtualbase_sizeHint(self.h), owned: true)

proc cQDial_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialminimumSizeHint*(self: gen_qdial_types.QDial): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDial_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQDial_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialevent*(self: gen_qdial_types.QDial, e: gen_qcoreevent_types.QEvent): bool =
  fcQDial_virtualbase_event(self.h, e.h)

proc cQDial_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDialresizeEvent*(self: gen_qdial_types.QDial, re: gen_qevent_types.QResizeEvent): void =
  fcQDial_virtualbase_resizeEvent(self.h, re.h)

proc cQDial_vtable_callback_resizeEvent(self: pointer, re: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: re, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QDialpaintEvent*(self: gen_qdial_types.QDial, pe: gen_qevent_types.QPaintEvent): void =
  fcQDial_virtualbase_paintEvent(self.h, pe.h)

proc cQDial_vtable_callback_paintEvent(self: pointer, pe: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: pe, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QDialmousePressEvent*(self: gen_qdial_types.QDial, me: gen_qevent_types.QMouseEvent): void =
  fcQDial_virtualbase_mousePressEvent(self.h, me.h)

proc cQDial_vtable_callback_mousePressEvent(self: pointer, me: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QDialmouseReleaseEvent*(self: gen_qdial_types.QDial, me: gen_qevent_types.QMouseEvent): void =
  fcQDial_virtualbase_mouseReleaseEvent(self.h, me.h)

proc cQDial_vtable_callback_mouseReleaseEvent(self: pointer, me: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QDialmouseMoveEvent*(self: gen_qdial_types.QDial, me: gen_qevent_types.QMouseEvent): void =
  fcQDial_virtualbase_mouseMoveEvent(self.h, me.h)

proc cQDial_vtable_callback_mouseMoveEvent(self: pointer, me: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QDialsliderChange*(self: gen_qdial_types.QDial, change: cint): void =
  fcQDial_virtualbase_sliderChange(self.h, cint(change))

proc cQDial_vtable_callback_sliderChange(self: pointer, change: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = cint(change)
  vtbl[].sliderChange(self, slotval1)

proc QDialinitStyleOption*(self: gen_qdial_types.QDial, option: gen_qstyleoption_types.QStyleOptionSlider): void =
  fcQDial_virtualbase_initStyleOption(self.h, option.h)

proc cQDial_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionSlider(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QDialkeyPressEvent*(self: gen_qdial_types.QDial, ev: gen_qevent_types.QKeyEvent): void =
  fcQDial_virtualbase_keyPressEvent(self.h, ev.h)

proc cQDial_vtable_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QDialtimerEvent*(self: gen_qdial_types.QDial, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQDial_virtualbase_timerEvent(self.h, param1.h)

proc cQDial_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QDialwheelEvent*(self: gen_qdial_types.QDial, e: gen_qevent_types.QWheelEvent): void =
  fcQDial_virtualbase_wheelEvent(self.h, e.h)

proc cQDial_vtable_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QDialchangeEvent*(self: gen_qdial_types.QDial, e: gen_qcoreevent_types.QEvent): void =
  fcQDial_virtualbase_changeEvent(self.h, e.h)

proc cQDial_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QDialdevType*(self: gen_qdial_types.QDial): cint =
  fcQDial_virtualbase_devType(self.h)

proc cQDial_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QDialsetVisible*(self: gen_qdial_types.QDial, visible: bool): void =
  fcQDial_virtualbase_setVisible(self.h, visible)

proc cQDial_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QDialheightForWidth*(self: gen_qdial_types.QDial, param1: cint): cint =
  fcQDial_virtualbase_heightForWidth(self.h, param1)

proc cQDial_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QDialhasHeightForWidth*(self: gen_qdial_types.QDial): bool =
  fcQDial_virtualbase_hasHeightForWidth(self.h)

proc cQDial_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QDialpaintEngine*(self: gen_qdial_types.QDial): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDial_virtualbase_paintEngine(self.h), owned: false)

proc cQDial_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialmouseDoubleClickEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QMouseEvent): void =
  fcQDial_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQDial_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QDialkeyReleaseEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QKeyEvent): void =
  fcQDial_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQDial_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QDialfocusInEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QFocusEvent): void =
  fcQDial_virtualbase_focusInEvent(self.h, event.h)

proc cQDial_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QDialfocusOutEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QFocusEvent): void =
  fcQDial_virtualbase_focusOutEvent(self.h, event.h)

proc cQDial_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QDialenterEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QEnterEvent): void =
  fcQDial_virtualbase_enterEvent(self.h, event.h)

proc cQDial_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QDialleaveEvent*(self: gen_qdial_types.QDial, event: gen_qcoreevent_types.QEvent): void =
  fcQDial_virtualbase_leaveEvent(self.h, event.h)

proc cQDial_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QDialmoveEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QMoveEvent): void =
  fcQDial_virtualbase_moveEvent(self.h, event.h)

proc cQDial_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QDialcloseEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QCloseEvent): void =
  fcQDial_virtualbase_closeEvent(self.h, event.h)

proc cQDial_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QDialcontextMenuEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDial_virtualbase_contextMenuEvent(self.h, event.h)

proc cQDial_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QDialtabletEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QTabletEvent): void =
  fcQDial_virtualbase_tabletEvent(self.h, event.h)

proc cQDial_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QDialactionEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QActionEvent): void =
  fcQDial_virtualbase_actionEvent(self.h, event.h)

proc cQDial_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QDialdragEnterEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDial_virtualbase_dragEnterEvent(self.h, event.h)

proc cQDial_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QDialdragMoveEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDial_virtualbase_dragMoveEvent(self.h, event.h)

proc cQDial_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QDialdragLeaveEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDial_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQDial_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QDialdropEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDropEvent): void =
  fcQDial_virtualbase_dropEvent(self.h, event.h)

proc cQDial_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QDialshowEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QShowEvent): void =
  fcQDial_virtualbase_showEvent(self.h, event.h)

proc cQDial_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QDialhideEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QHideEvent): void =
  fcQDial_virtualbase_hideEvent(self.h, event.h)

proc cQDial_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QDialnativeEvent*(self: gen_qdial_types.QDial, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQDial_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQDial_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDialmetric*(self: gen_qdial_types.QDial, param1: cint): cint =
  fcQDial_virtualbase_metric(self.h, cint(param1))

proc cQDial_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QDialinitPainter*(self: gen_qdial_types.QDial, painter: gen_qpainter_types.QPainter): void =
  fcQDial_virtualbase_initPainter(self.h, painter.h)

proc cQDial_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QDialredirected*(self: gen_qdial_types.QDial, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDial_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQDial_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialsharedPainter*(self: gen_qdial_types.QDial): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDial_virtualbase_sharedPainter(self.h), owned: false)

proc cQDial_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialinputMethodEvent*(self: gen_qdial_types.QDial, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDial_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQDial_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QDialinputMethodQuery*(self: gen_qdial_types.QDial, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDial_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQDial_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialfocusNextPrevChild*(self: gen_qdial_types.QDial, next: bool): bool =
  fcQDial_virtualbase_focusNextPrevChild(self.h, next)

proc cQDial_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QDialeventFilter*(self: gen_qdial_types.QDial, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDial_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQDial_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDialchildEvent*(self: gen_qdial_types.QDial, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDial_virtualbase_childEvent(self.h, event.h)

proc cQDial_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QDialcustomEvent*(self: gen_qdial_types.QDial, event: gen_qcoreevent_types.QEvent): void =
  fcQDial_virtualbase_customEvent(self.h, event.h)

proc cQDial_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QDialconnectNotify*(self: gen_qdial_types.QDial, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDial_virtualbase_connectNotify(self.h, signal.h)

proc cQDial_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QDialdisconnectNotify*(self: gen_qdial_types.QDial, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDial_virtualbase_disconnectNotify(self.h, signal.h)

proc cQDial_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](fcQDial_vdata(self))
  let self = QDial(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDial* {.inheritable.} = ref object of QDial
  vtbl*: cQDialVTable
method metaObject*(self: VirtualQDial): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDialmetaObject(self[])
proc cQDial_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQDial, param1: cstring): pointer {.base.} =
  QDialmetacast(self[], param1)
proc cQDial_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQDial, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDialmetacall(self[], param1, param2, param3)
proc cQDial_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQDial): gen_qsize_types.QSize {.base.} =
  QDialsizeHint(self[])
proc cQDial_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQDial): gen_qsize_types.QSize {.base.} =
  QDialminimumSizeHint(self[])
proc cQDial_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQDial, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDialevent(self[], e)
proc cQDial_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method resizeEvent*(self: VirtualQDial, re: gen_qevent_types.QResizeEvent): void {.base.} =
  QDialresizeEvent(self[], re)
proc cQDial_method_callback_resizeEvent(self: pointer, re: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: re, owned: false)
  inst.resizeEvent(slotval1)

method paintEvent*(self: VirtualQDial, pe: gen_qevent_types.QPaintEvent): void {.base.} =
  QDialpaintEvent(self[], pe)
proc cQDial_method_callback_paintEvent(self: pointer, pe: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: pe, owned: false)
  inst.paintEvent(slotval1)

method mousePressEvent*(self: VirtualQDial, me: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialmousePressEvent(self[], me)
proc cQDial_method_callback_mousePressEvent(self: pointer, me: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQDial, me: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialmouseReleaseEvent(self[], me)
proc cQDial_method_callback_mouseReleaseEvent(self: pointer, me: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQDial, me: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialmouseMoveEvent(self[], me)
proc cQDial_method_callback_mouseMoveEvent(self: pointer, me: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  inst.mouseMoveEvent(slotval1)

method sliderChange*(self: VirtualQDial, change: cint): void {.base.} =
  QDialsliderChange(self[], change)
proc cQDial_method_callback_sliderChange(self: pointer, change: cint): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = cint(change)
  inst.sliderChange(slotval1)

method initStyleOption*(self: VirtualQDial, option: gen_qstyleoption_types.QStyleOptionSlider): void {.base.} =
  QDialinitStyleOption(self[], option)
proc cQDial_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSlider(h: option, owned: false)
  inst.initStyleOption(slotval1)

method keyPressEvent*(self: VirtualQDial, ev: gen_qevent_types.QKeyEvent): void {.base.} =
  QDialkeyPressEvent(self[], ev)
proc cQDial_method_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  inst.keyPressEvent(slotval1)

method timerEvent*(self: VirtualQDial, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDialtimerEvent(self[], param1)
proc cQDial_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

method wheelEvent*(self: VirtualQDial, e: gen_qevent_types.QWheelEvent): void {.base.} =
  QDialwheelEvent(self[], e)
proc cQDial_method_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  inst.wheelEvent(slotval1)

method changeEvent*(self: VirtualQDial, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialchangeEvent(self[], e)
proc cQDial_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

method devType*(self: VirtualQDial): cint {.base.} =
  QDialdevType(self[])
proc cQDial_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQDial, visible: bool): void {.base.} =
  QDialsetVisible(self[], visible)
proc cQDial_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQDial, param1: cint): cint {.base.} =
  QDialheightForWidth(self[], param1)
proc cQDial_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQDial): bool {.base.} =
  QDialhasHeightForWidth(self[])
proc cQDial_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQDial): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDialpaintEngine(self[])
proc cQDial_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQDial, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialmouseDoubleClickEvent(self[], event)
proc cQDial_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method keyReleaseEvent*(self: VirtualQDial, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDialkeyReleaseEvent(self[], event)
proc cQDial_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQDial, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDialfocusInEvent(self[], event)
proc cQDial_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQDial, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDialfocusOutEvent(self[], event)
proc cQDial_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQDial, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QDialenterEvent(self[], event)
proc cQDial_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQDial, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialleaveEvent(self[], event)
proc cQDial_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQDial, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDialmoveEvent(self[], event)
proc cQDial_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQDial, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDialcloseEvent(self[], event)
proc cQDial_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQDial, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDialcontextMenuEvent(self[], event)
proc cQDial_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQDial, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDialtabletEvent(self[], event)
proc cQDial_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQDial, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDialactionEvent(self[], event)
proc cQDial_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQDial, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDialdragEnterEvent(self[], event)
proc cQDial_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQDial, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDialdragMoveEvent(self[], event)
proc cQDial_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQDial, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDialdragLeaveEvent(self[], event)
proc cQDial_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQDial, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDialdropEvent(self[], event)
proc cQDial_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQDial, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDialshowEvent(self[], event)
proc cQDial_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQDial, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDialhideEvent(self[], event)
proc cQDial_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQDial, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QDialnativeEvent(self[], eventType, message, resultVal)
proc cQDial_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQDial, param1: cint): cint {.base.} =
  QDialmetric(self[], param1)
proc cQDial_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQDial, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDialinitPainter(self[], painter)
proc cQDial_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQDial, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDialredirected(self[], offset)
proc cQDial_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQDial): gen_qpainter_types.QPainter {.base.} =
  QDialsharedPainter(self[])
proc cQDial_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQDial, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDialinputMethodEvent(self[], param1)
proc cQDial_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQDial, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDialinputMethodQuery(self[], param1)
proc cQDial_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQDial, next: bool): bool {.base.} =
  QDialfocusNextPrevChild(self[], next)
proc cQDial_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQDial, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDialeventFilter(self[], watched, event)
proc cQDial_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQDial, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDialchildEvent(self[], event)
proc cQDial_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQDial, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialcustomEvent(self[], event)
proc cQDial_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQDial, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDialconnectNotify(self[], signal)
proc cQDial_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQDial, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDialdisconnectNotify(self[], signal)
proc cQDial_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDial](fcQDial_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setRepeatAction*(self: gen_qdial_types.QDial, action: cint): void =
  fcQDial_protectedbase_setRepeatAction(self.h, cint(action))

proc repeatAction*(self: gen_qdial_types.QDial): cint =
  cint(fcQDial_protectedbase_repeatAction(self.h))

proc updateMicroFocus*(self: gen_qdial_types.QDial): void =
  fcQDial_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qdial_types.QDial): void =
  fcQDial_protectedbase_create(self.h)

proc destroy*(self: gen_qdial_types.QDial): void =
  fcQDial_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qdial_types.QDial): bool =
  fcQDial_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qdial_types.QDial): bool =
  fcQDial_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qdial_types.QDial): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDial_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdial_types.QDial): cint =
  fcQDial_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdial_types.QDial, signal: cstring): cint =
  fcQDial_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdial_types.QDial, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDial_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdial_types.QDial,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDialVTable = nil): gen_qdial_types.QDial =
  let vtbl = if vtbl == nil: new QDialVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialVTable](fcQDial_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDial_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDial_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDial_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDial_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDial_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDial_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDial_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDial_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDial_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDial_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDial_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = cQDial_vtable_callback_sliderChange
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDial_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDial_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDial_vtable_callback_timerEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDial_vtable_callback_wheelEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDial_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDial_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDial_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDial_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDial_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDial_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDial_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDial_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDial_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDial_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDial_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDial_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDial_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDial_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDial_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDial_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDial_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDial_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDial_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDial_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDial_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDial_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDial_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDial_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDial_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDial_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDial_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDial_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDial_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDial_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDial_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDial_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDial_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDial_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDial_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDial_vtable_callback_disconnectNotify
  gen_qdial_types.QDial(h: fcQDial_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qdial_types.QDial,
    vtbl: ref QDialVTable = nil): gen_qdial_types.QDial =
  let vtbl = if vtbl == nil: new QDialVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialVTable](fcQDial_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDial_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDial_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDial_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDial_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDial_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDial_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDial_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDial_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDial_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDial_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDial_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = cQDial_vtable_callback_sliderChange
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDial_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDial_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDial_vtable_callback_timerEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDial_vtable_callback_wheelEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDial_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDial_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDial_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDial_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDial_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDial_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDial_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDial_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDial_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDial_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDial_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDial_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDial_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDial_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDial_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDial_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDial_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDial_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDial_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDial_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDial_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDial_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDial_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDial_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDial_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDial_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDial_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDial_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDial_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDial_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDial_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDial_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDial_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDial_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDial_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDial_vtable_callback_disconnectNotify
  gen_qdial_types.QDial(h: fcQDial_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQDial_mvtbl = cQDialVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDial()[])](self.fcQDial_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQDial_method_callback_metaObject,
  metacast: cQDial_method_callback_metacast,
  metacall: cQDial_method_callback_metacall,
  sizeHint: cQDial_method_callback_sizeHint,
  minimumSizeHint: cQDial_method_callback_minimumSizeHint,
  event: cQDial_method_callback_event,
  resizeEvent: cQDial_method_callback_resizeEvent,
  paintEvent: cQDial_method_callback_paintEvent,
  mousePressEvent: cQDial_method_callback_mousePressEvent,
  mouseReleaseEvent: cQDial_method_callback_mouseReleaseEvent,
  mouseMoveEvent: cQDial_method_callback_mouseMoveEvent,
  sliderChange: cQDial_method_callback_sliderChange,
  initStyleOption: cQDial_method_callback_initStyleOption,
  keyPressEvent: cQDial_method_callback_keyPressEvent,
  timerEvent: cQDial_method_callback_timerEvent,
  wheelEvent: cQDial_method_callback_wheelEvent,
  changeEvent: cQDial_method_callback_changeEvent,
  devType: cQDial_method_callback_devType,
  setVisible: cQDial_method_callback_setVisible,
  heightForWidth: cQDial_method_callback_heightForWidth,
  hasHeightForWidth: cQDial_method_callback_hasHeightForWidth,
  paintEngine: cQDial_method_callback_paintEngine,
  mouseDoubleClickEvent: cQDial_method_callback_mouseDoubleClickEvent,
  keyReleaseEvent: cQDial_method_callback_keyReleaseEvent,
  focusInEvent: cQDial_method_callback_focusInEvent,
  focusOutEvent: cQDial_method_callback_focusOutEvent,
  enterEvent: cQDial_method_callback_enterEvent,
  leaveEvent: cQDial_method_callback_leaveEvent,
  moveEvent: cQDial_method_callback_moveEvent,
  closeEvent: cQDial_method_callback_closeEvent,
  contextMenuEvent: cQDial_method_callback_contextMenuEvent,
  tabletEvent: cQDial_method_callback_tabletEvent,
  actionEvent: cQDial_method_callback_actionEvent,
  dragEnterEvent: cQDial_method_callback_dragEnterEvent,
  dragMoveEvent: cQDial_method_callback_dragMoveEvent,
  dragLeaveEvent: cQDial_method_callback_dragLeaveEvent,
  dropEvent: cQDial_method_callback_dropEvent,
  showEvent: cQDial_method_callback_showEvent,
  hideEvent: cQDial_method_callback_hideEvent,
  nativeEvent: cQDial_method_callback_nativeEvent,
  metric: cQDial_method_callback_metric,
  initPainter: cQDial_method_callback_initPainter,
  redirected: cQDial_method_callback_redirected,
  sharedPainter: cQDial_method_callback_sharedPainter,
  inputMethodEvent: cQDial_method_callback_inputMethodEvent,
  inputMethodQuery: cQDial_method_callback_inputMethodQuery,
  focusNextPrevChild: cQDial_method_callback_focusNextPrevChild,
  eventFilter: cQDial_method_callback_eventFilter,
  childEvent: cQDial_method_callback_childEvent,
  customEvent: cQDial_method_callback_customEvent,
  connectNotify: cQDial_method_callback_connectNotify,
  disconnectNotify: cQDial_method_callback_disconnectNotify,
)
proc create*(T: type gen_qdial_types.QDial,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQDial) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDial_new(addr(cQDial_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qdial_types.QDial,
    inst: VirtualQDial) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDial_new2(addr(cQDial_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qdial_types.QDial): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDial_staticMetaObject())
