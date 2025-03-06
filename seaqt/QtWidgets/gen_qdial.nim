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
{.compile("gen_qdial.cpp", cflags).}


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

proc fcQDial_metaObject(self: pointer, ): pointer {.importc: "QDial_metaObject".}
proc fcQDial_metacast(self: pointer, param1: cstring): pointer {.importc: "QDial_metacast".}
proc fcQDial_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDial_metacall".}
proc fcQDial_tr(s: cstring): struct_miqt_string {.importc: "QDial_tr".}
proc fcQDial_wrapping(self: pointer, ): bool {.importc: "QDial_wrapping".}
proc fcQDial_notchSize(self: pointer, ): cint {.importc: "QDial_notchSize".}
proc fcQDial_setNotchTarget(self: pointer, target: float64): void {.importc: "QDial_setNotchTarget".}
proc fcQDial_notchTarget(self: pointer, ): float64 {.importc: "QDial_notchTarget".}
proc fcQDial_notchesVisible(self: pointer, ): bool {.importc: "QDial_notchesVisible".}
proc fcQDial_sizeHint(self: pointer, ): pointer {.importc: "QDial_sizeHint".}
proc fcQDial_minimumSizeHint(self: pointer, ): pointer {.importc: "QDial_minimumSizeHint".}
proc fcQDial_setNotchesVisible(self: pointer, visible: bool): void {.importc: "QDial_setNotchesVisible".}
proc fcQDial_setWrapping(self: pointer, on: bool): void {.importc: "QDial_setWrapping".}
proc fcQDial_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDial_tr2".}
proc fcQDial_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDial_tr3".}
type cQDialVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQDialVTable, self: ptr cQDial) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, re: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, pe: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, me: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, me: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, me: pointer): void {.cdecl, raises: [], gcsafe.}
  sliderChange*: proc(vtbl, self: pointer, change: cint): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQDial_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QDial_virtualbase_metaObject".}
proc fcQDial_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDial_virtualbase_metacast".}
proc fcQDial_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDial_virtualbase_metacall".}
proc fcQDial_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QDial_virtualbase_sizeHint".}
proc fcQDial_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QDial_virtualbase_minimumSizeHint".}
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
proc fcQDial_virtualbase_devType(self: pointer, ): cint {.importc: "QDial_virtualbase_devType".}
proc fcQDial_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDial_virtualbase_setVisible".}
proc fcQDial_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDial_virtualbase_heightForWidth".}
proc fcQDial_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QDial_virtualbase_hasHeightForWidth".}
proc fcQDial_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QDial_virtualbase_paintEngine".}
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
proc fcQDial_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QDial_virtualbase_sharedPainter".}
proc fcQDial_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDial_virtualbase_inputMethodEvent".}
proc fcQDial_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDial_virtualbase_inputMethodQuery".}
proc fcQDial_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDial_virtualbase_focusNextPrevChild".}
proc fcQDial_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDial_virtualbase_eventFilter".}
proc fcQDial_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_childEvent".}
proc fcQDial_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDial_virtualbase_customEvent".}
proc fcQDial_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDial_virtualbase_connectNotify".}
proc fcQDial_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDial_virtualbase_disconnectNotify".}
proc fcQDial_protectedbase_setRepeatAction(self: pointer, action: cint): void {.importc: "QDial_protectedbase_setRepeatAction".}
proc fcQDial_protectedbase_repeatAction(self: pointer, ): cint {.importc: "QDial_protectedbase_repeatAction".}
proc fcQDial_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QDial_protectedbase_updateMicroFocus".}
proc fcQDial_protectedbase_create(self: pointer, ): void {.importc: "QDial_protectedbase_create".}
proc fcQDial_protectedbase_destroy(self: pointer, ): void {.importc: "QDial_protectedbase_destroy".}
proc fcQDial_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QDial_protectedbase_focusNextChild".}
proc fcQDial_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QDial_protectedbase_focusPreviousChild".}
proc fcQDial_protectedbase_sender(self: pointer, ): pointer {.importc: "QDial_protectedbase_sender".}
proc fcQDial_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QDial_protectedbase_senderSignalIndex".}
proc fcQDial_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDial_protectedbase_receivers".}
proc fcQDial_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDial_protectedbase_isSignalConnected".}
proc fcQDial_new(vtbl: pointer, parent: pointer): ptr cQDial {.importc: "QDial_new".}
proc fcQDial_new2(vtbl: pointer, ): ptr cQDial {.importc: "QDial_new2".}
proc fcQDial_staticMetaObject(): pointer {.importc: "QDial_staticMetaObject".}

proc metaObject*(self: gen_qdial_types.QDial, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDial_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdial_types.QDial, param1: cstring): pointer =
  fcQDial_metacast(self.h, param1)

proc metacall*(self: gen_qdial_types.QDial, param1: cint, param2: cint, param3: pointer): cint =
  fcQDial_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdial_types.QDial, s: cstring): string =
  let v_ms = fcQDial_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc wrapping*(self: gen_qdial_types.QDial, ): bool =
  fcQDial_wrapping(self.h)

proc notchSize*(self: gen_qdial_types.QDial, ): cint =
  fcQDial_notchSize(self.h)

proc setNotchTarget*(self: gen_qdial_types.QDial, target: float64): void =
  fcQDial_setNotchTarget(self.h, target)

proc notchTarget*(self: gen_qdial_types.QDial, ): float64 =
  fcQDial_notchTarget(self.h)

proc notchesVisible*(self: gen_qdial_types.QDial, ): bool =
  fcQDial_notchesVisible(self.h)

proc sizeHint*(self: gen_qdial_types.QDial, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDial_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qdial_types.QDial, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDial_minimumSizeHint(self.h), owned: true)

proc setNotchesVisible*(self: gen_qdial_types.QDial, visible: bool): void =
  fcQDial_setNotchesVisible(self.h, visible)

proc setWrapping*(self: gen_qdial_types.QDial, on: bool): void =
  fcQDial_setWrapping(self.h, on)

proc tr*(_: type gen_qdial_types.QDial, s: cstring, c: cstring): string =
  let v_ms = fcQDial_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdial_types.QDial, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDial_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QDialnativeEventProc* = proc(self: QDial, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
proc QDialmetaObject*(self: gen_qdial_types.QDial, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDial_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQDial_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialmetacast*(self: gen_qdial_types.QDial, param1: cstring): pointer =
  fcQDial_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQDial_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDialmetacall*(self: gen_qdial_types.QDial, param1: cint, param2: cint, param3: pointer): cint =
  fcQDial_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQDial_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDialsizeHint*(self: gen_qdial_types.QDial, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDial_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQDial_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialminimumSizeHint*(self: gen_qdial_types.QDial, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDial_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQDial_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialevent*(self: gen_qdial_types.QDial, e: gen_qcoreevent_types.QEvent): bool =
  fcQDial_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQDial_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDialresizeEvent*(self: gen_qdial_types.QDial, re: gen_qevent_types.QResizeEvent): void =
  fcQDial_virtualbase_resizeEvent(self.h, re.h)

proc miqt_exec_callback_cQDial_resizeEvent(vtbl: pointer, self: pointer, re: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: re, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QDialpaintEvent*(self: gen_qdial_types.QDial, pe: gen_qevent_types.QPaintEvent): void =
  fcQDial_virtualbase_paintEvent(self.h, pe.h)

proc miqt_exec_callback_cQDial_paintEvent(vtbl: pointer, self: pointer, pe: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: pe, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QDialmousePressEvent*(self: gen_qdial_types.QDial, me: gen_qevent_types.QMouseEvent): void =
  fcQDial_virtualbase_mousePressEvent(self.h, me.h)

proc miqt_exec_callback_cQDial_mousePressEvent(vtbl: pointer, self: pointer, me: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QDialmouseReleaseEvent*(self: gen_qdial_types.QDial, me: gen_qevent_types.QMouseEvent): void =
  fcQDial_virtualbase_mouseReleaseEvent(self.h, me.h)

proc miqt_exec_callback_cQDial_mouseReleaseEvent(vtbl: pointer, self: pointer, me: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QDialmouseMoveEvent*(self: gen_qdial_types.QDial, me: gen_qevent_types.QMouseEvent): void =
  fcQDial_virtualbase_mouseMoveEvent(self.h, me.h)

proc miqt_exec_callback_cQDial_mouseMoveEvent(vtbl: pointer, self: pointer, me: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QDialsliderChange*(self: gen_qdial_types.QDial, change: cint): void =
  fcQDial_virtualbase_sliderChange(self.h, cint(change))

proc miqt_exec_callback_cQDial_sliderChange(vtbl: pointer, self: pointer, change: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = cint(change)
  vtbl[].sliderChange(self, slotval1)

proc QDialinitStyleOption*(self: gen_qdial_types.QDial, option: gen_qstyleoption_types.QStyleOptionSlider): void =
  fcQDial_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQDial_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionSlider(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QDialkeyPressEvent*(self: gen_qdial_types.QDial, ev: gen_qevent_types.QKeyEvent): void =
  fcQDial_virtualbase_keyPressEvent(self.h, ev.h)

proc miqt_exec_callback_cQDial_keyPressEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QDialtimerEvent*(self: gen_qdial_types.QDial, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQDial_virtualbase_timerEvent(self.h, param1.h)

proc miqt_exec_callback_cQDial_timerEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QDialwheelEvent*(self: gen_qdial_types.QDial, e: gen_qevent_types.QWheelEvent): void =
  fcQDial_virtualbase_wheelEvent(self.h, e.h)

proc miqt_exec_callback_cQDial_wheelEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QDialchangeEvent*(self: gen_qdial_types.QDial, e: gen_qcoreevent_types.QEvent): void =
  fcQDial_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQDial_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QDialdevType*(self: gen_qdial_types.QDial, ): cint =
  fcQDial_virtualbase_devType(self.h)

proc miqt_exec_callback_cQDial_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QDialsetVisible*(self: gen_qdial_types.QDial, visible: bool): void =
  fcQDial_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQDial_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QDialheightForWidth*(self: gen_qdial_types.QDial, param1: cint): cint =
  fcQDial_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQDial_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QDialhasHeightForWidth*(self: gen_qdial_types.QDial, ): bool =
  fcQDial_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQDial_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QDialpaintEngine*(self: gen_qdial_types.QDial, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDial_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQDial_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialmouseDoubleClickEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QMouseEvent): void =
  fcQDial_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QDialkeyReleaseEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QKeyEvent): void =
  fcQDial_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QDialfocusInEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QFocusEvent): void =
  fcQDial_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QDialfocusOutEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QFocusEvent): void =
  fcQDial_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QDialenterEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QEnterEvent): void =
  fcQDial_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QDialleaveEvent*(self: gen_qdial_types.QDial, event: gen_qcoreevent_types.QEvent): void =
  fcQDial_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QDialmoveEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QMoveEvent): void =
  fcQDial_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QDialcloseEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QCloseEvent): void =
  fcQDial_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QDialcontextMenuEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDial_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QDialtabletEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QTabletEvent): void =
  fcQDial_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QDialactionEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QActionEvent): void =
  fcQDial_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QDialdragEnterEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDial_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QDialdragMoveEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDial_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QDialdragLeaveEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDial_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QDialdropEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QDropEvent): void =
  fcQDial_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QDialshowEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QShowEvent): void =
  fcQDial_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QDialhideEvent*(self: gen_qdial_types.QDial, event: gen_qevent_types.QHideEvent): void =
  fcQDial_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QDialnativeEvent*(self: gen_qdial_types.QDial, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQDial_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQDial_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDialmetric*(self: gen_qdial_types.QDial, param1: cint): cint =
  fcQDial_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQDial_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QDialinitPainter*(self: gen_qdial_types.QDial, painter: gen_qpainter_types.QPainter): void =
  fcQDial_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQDial_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QDialredirected*(self: gen_qdial_types.QDial, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDial_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQDial_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialsharedPainter*(self: gen_qdial_types.QDial, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDial_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQDial_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialinputMethodEvent*(self: gen_qdial_types.QDial, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDial_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQDial_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QDialinputMethodQuery*(self: gen_qdial_types.QDial, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDial_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQDial_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialfocusNextPrevChild*(self: gen_qdial_types.QDial, next: bool): bool =
  fcQDial_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQDial_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QDialeventFilter*(self: gen_qdial_types.QDial, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDial_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQDial_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDialchildEvent*(self: gen_qdial_types.QDial, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDial_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QDialcustomEvent*(self: gen_qdial_types.QDial, event: gen_qcoreevent_types.QEvent): void =
  fcQDial_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQDial_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QDialconnectNotify*(self: gen_qdial_types.QDial, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDial_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDial_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QDialdisconnectNotify*(self: gen_qdial_types.QDial, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDial_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDial_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialVTable](vtbl)
  let self = QDial(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDial* {.inheritable.} = ref object of QDial
  vtbl*: cQDialVTable
method metaObject*(self: VirtualQDial, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDialmetaObject(self[])
proc miqt_exec_method_cQDial_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQDial, param1: cstring): pointer {.base.} =
  QDialmetacast(self[], param1)
proc miqt_exec_method_cQDial_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQDial, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDialmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQDial_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQDial, ): gen_qsize_types.QSize {.base.} =
  QDialsizeHint(self[])
proc miqt_exec_method_cQDial_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQDial, ): gen_qsize_types.QSize {.base.} =
  QDialminimumSizeHint(self[])
proc miqt_exec_method_cQDial_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQDial, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDialevent(self[], e)
proc miqt_exec_method_cQDial_event(vtbl: pointer, inst: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method resizeEvent*(self: VirtualQDial, re: gen_qevent_types.QResizeEvent): void {.base.} =
  QDialresizeEvent(self[], re)
proc miqt_exec_method_cQDial_resizeEvent(vtbl: pointer, inst: pointer, re: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: re, owned: false)
  vtbl.resizeEvent(slotval1)

method paintEvent*(self: VirtualQDial, pe: gen_qevent_types.QPaintEvent): void {.base.} =
  QDialpaintEvent(self[], pe)
proc miqt_exec_method_cQDial_paintEvent(vtbl: pointer, inst: pointer, pe: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: pe, owned: false)
  vtbl.paintEvent(slotval1)

method mousePressEvent*(self: VirtualQDial, me: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialmousePressEvent(self[], me)
proc miqt_exec_method_cQDial_mousePressEvent(vtbl: pointer, inst: pointer, me: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQDial, me: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialmouseReleaseEvent(self[], me)
proc miqt_exec_method_cQDial_mouseReleaseEvent(vtbl: pointer, inst: pointer, me: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQDial, me: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialmouseMoveEvent(self[], me)
proc miqt_exec_method_cQDial_mouseMoveEvent(vtbl: pointer, inst: pointer, me: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: me, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method sliderChange*(self: VirtualQDial, change: cint): void {.base.} =
  QDialsliderChange(self[], change)
proc miqt_exec_method_cQDial_sliderChange(vtbl: pointer, inst: pointer, change: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = cint(change)
  vtbl.sliderChange(slotval1)

method initStyleOption*(self: VirtualQDial, option: gen_qstyleoption_types.QStyleOptionSlider): void {.base.} =
  QDialinitStyleOption(self[], option)
proc miqt_exec_method_cQDial_initStyleOption(vtbl: pointer, inst: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSlider(h: option, owned: false)
  vtbl.initStyleOption(slotval1)

method keyPressEvent*(self: VirtualQDial, ev: gen_qevent_types.QKeyEvent): void {.base.} =
  QDialkeyPressEvent(self[], ev)
proc miqt_exec_method_cQDial_keyPressEvent(vtbl: pointer, inst: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  vtbl.keyPressEvent(slotval1)

method timerEvent*(self: VirtualQDial, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDialtimerEvent(self[], param1)
proc miqt_exec_method_cQDial_timerEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl.timerEvent(slotval1)

method wheelEvent*(self: VirtualQDial, e: gen_qevent_types.QWheelEvent): void {.base.} =
  QDialwheelEvent(self[], e)
proc miqt_exec_method_cQDial_wheelEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl.wheelEvent(slotval1)

method changeEvent*(self: VirtualQDial, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialchangeEvent(self[], e)
proc miqt_exec_method_cQDial_changeEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl.changeEvent(slotval1)

method devType*(self: VirtualQDial, ): cint {.base.} =
  QDialdevType(self[])
proc miqt_exec_method_cQDial_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQDial, visible: bool): void {.base.} =
  QDialsetVisible(self[], visible)
proc miqt_exec_method_cQDial_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method heightForWidth*(self: VirtualQDial, param1: cint): cint {.base.} =
  QDialheightForWidth(self[], param1)
proc miqt_exec_method_cQDial_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQDial, ): bool {.base.} =
  QDialhasHeightForWidth(self[])
proc miqt_exec_method_cQDial_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQDial, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDialpaintEngine(self[])
proc miqt_exec_method_cQDial_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQDial, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQDial_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method keyReleaseEvent*(self: VirtualQDial, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDialkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQDial_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQDial, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDialfocusInEvent(self[], event)
proc miqt_exec_method_cQDial_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQDial, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDialfocusOutEvent(self[], event)
proc miqt_exec_method_cQDial_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQDial, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QDialenterEvent(self[], event)
proc miqt_exec_method_cQDial_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQDial, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialleaveEvent(self[], event)
proc miqt_exec_method_cQDial_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method moveEvent*(self: VirtualQDial, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDialmoveEvent(self[], event)
proc miqt_exec_method_cQDial_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method closeEvent*(self: VirtualQDial, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDialcloseEvent(self[], event)
proc miqt_exec_method_cQDial_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQDial, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDialcontextMenuEvent(self[], event)
proc miqt_exec_method_cQDial_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQDial, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDialtabletEvent(self[], event)
proc miqt_exec_method_cQDial_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQDial, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDialactionEvent(self[], event)
proc miqt_exec_method_cQDial_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQDial, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDialdragEnterEvent(self[], event)
proc miqt_exec_method_cQDial_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQDial, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDialdragMoveEvent(self[], event)
proc miqt_exec_method_cQDial_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQDial, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDialdragLeaveEvent(self[], event)
proc miqt_exec_method_cQDial_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQDial, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDialdropEvent(self[], event)
proc miqt_exec_method_cQDial_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method showEvent*(self: VirtualQDial, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDialshowEvent(self[], event)
proc miqt_exec_method_cQDial_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQDial, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDialhideEvent(self[], event)
proc miqt_exec_method_cQDial_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQDial, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QDialnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQDial_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQDial, param1: cint): cint {.base.} =
  QDialmetric(self[], param1)
proc miqt_exec_method_cQDial_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQDial, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDialinitPainter(self[], painter)
proc miqt_exec_method_cQDial_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQDial, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDialredirected(self[], offset)
proc miqt_exec_method_cQDial_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQDial, ): gen_qpainter_types.QPainter {.base.} =
  QDialsharedPainter(self[])
proc miqt_exec_method_cQDial_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQDial, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDialinputMethodEvent(self[], param1)
proc miqt_exec_method_cQDial_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQDial, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDialinputMethodQuery(self[], param1)
proc miqt_exec_method_cQDial_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQDial, next: bool): bool {.base.} =
  QDialfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQDial_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQDial, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDialeventFilter(self[], watched, event)
proc miqt_exec_method_cQDial_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQDial, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDialchildEvent(self[], event)
proc miqt_exec_method_cQDial_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQDial, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialcustomEvent(self[], event)
proc miqt_exec_method_cQDial_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQDial, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDialconnectNotify(self[], signal)
proc miqt_exec_method_cQDial_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQDial, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDialdisconnectNotify(self[], signal)
proc miqt_exec_method_cQDial_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDial](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc setRepeatAction*(self: gen_qdial_types.QDial, action: cint): void =
  fcQDial_protectedbase_setRepeatAction(self.h, cint(action))

proc repeatAction*(self: gen_qdial_types.QDial, ): cint =
  cint(fcQDial_protectedbase_repeatAction(self.h))

proc updateMicroFocus*(self: gen_qdial_types.QDial, ): void =
  fcQDial_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qdial_types.QDial, ): void =
  fcQDial_protectedbase_create(self.h)

proc destroy*(self: gen_qdial_types.QDial, ): void =
  fcQDial_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qdial_types.QDial, ): bool =
  fcQDial_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qdial_types.QDial, ): bool =
  fcQDial_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qdial_types.QDial, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDial_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdial_types.QDial, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQDialVTable, _: ptr cQDial) {.cdecl.} =
    let vtbl = cast[ref QDialVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDial_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDial_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDial_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDial_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDial_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDial_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDial_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDial_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDial_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDial_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDial_mouseMoveEvent
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQDial_sliderChange
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQDial_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDial_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDial_timerEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDial_wheelEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDial_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDial_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDial_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDial_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDial_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDial_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDial_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDial_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDial_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDial_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDial_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDial_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDial_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDial_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDial_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDial_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDial_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDial_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDial_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDial_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDial_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDial_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDial_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDial_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDial_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDial_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDial_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDial_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDial_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDial_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDial_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDial_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDial_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDial_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDial_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDial_disconnectNotify
  gen_qdial_types.QDial(h: fcQDial_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qdial_types.QDial,
    vtbl: ref QDialVTable = nil): gen_qdial_types.QDial =
  let vtbl = if vtbl == nil: new QDialVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQDialVTable, _: ptr cQDial) {.cdecl.} =
    let vtbl = cast[ref QDialVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDial_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDial_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDial_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDial_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDial_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDial_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDial_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDial_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDial_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDial_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDial_mouseMoveEvent
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQDial_sliderChange
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQDial_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDial_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDial_timerEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDial_wheelEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDial_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDial_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDial_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDial_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDial_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDial_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDial_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDial_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDial_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDial_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDial_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDial_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDial_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDial_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDial_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDial_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDial_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDial_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDial_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDial_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDial_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDial_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDial_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDial_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDial_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDial_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDial_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDial_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDial_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDial_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDial_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDial_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDial_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDial_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDial_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDial_disconnectNotify
  gen_qdial_types.QDial(h: fcQDial_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qdial_types.QDial,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQDial) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQDialVTable, _: ptr cQDial) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQDial()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQDial_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQDial_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQDial_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQDial_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQDial_minimumSizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQDial_event
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQDial_resizeEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQDial_paintEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQDial_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQDial_mouseReleaseEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQDial_mouseMoveEvent
  vtbl[].vtbl.sliderChange = miqt_exec_method_cQDial_sliderChange
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQDial_initStyleOption
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQDial_keyPressEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQDial_timerEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQDial_wheelEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQDial_changeEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQDial_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQDial_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQDial_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQDial_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQDial_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQDial_mouseDoubleClickEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQDial_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQDial_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQDial_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQDial_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQDial_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQDial_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQDial_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQDial_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQDial_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQDial_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQDial_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQDial_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQDial_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQDial_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQDial_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQDial_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQDial_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQDial_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQDial_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQDial_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQDial_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQDial_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQDial_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQDial_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQDial_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQDial_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQDial_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQDial_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQDial_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQDial_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qdial_types.QDial,
    vtbl: VirtualQDial) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQDialVTable, _: ptr cQDial) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQDial()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQDial, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQDial_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQDial_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQDial_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQDial_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQDial_minimumSizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQDial_event
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQDial_resizeEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQDial_paintEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQDial_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQDial_mouseReleaseEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQDial_mouseMoveEvent
  vtbl[].vtbl.sliderChange = miqt_exec_method_cQDial_sliderChange
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQDial_initStyleOption
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQDial_keyPressEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQDial_timerEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQDial_wheelEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQDial_changeEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQDial_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQDial_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQDial_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQDial_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQDial_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQDial_mouseDoubleClickEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQDial_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQDial_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQDial_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQDial_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQDial_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQDial_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQDial_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQDial_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQDial_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQDial_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQDial_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQDial_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQDial_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQDial_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQDial_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQDial_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQDial_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQDial_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQDial_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQDial_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQDial_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQDial_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQDial_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQDial_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQDial_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQDial_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQDial_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQDial_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQDial_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQDial_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qdial_types.QDial): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDial_staticMetaObject())
