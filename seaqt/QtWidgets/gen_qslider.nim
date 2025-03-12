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
{.compile("gen_qslider.cpp", cflags).}


type QSliderTickPositionEnum* = distinct cint
template NoTicks*(_: type QSliderTickPositionEnum): untyped = 0
template TicksAbove*(_: type QSliderTickPositionEnum): untyped = 1
template TicksLeft*(_: type QSliderTickPositionEnum): untyped = 1
template TicksBelow*(_: type QSliderTickPositionEnum): untyped = 2
template TicksRight*(_: type QSliderTickPositionEnum): untyped = 2
template TicksBothSides*(_: type QSliderTickPositionEnum): untyped = 3


import ./gen_qslider_types
export gen_qslider_types

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

type cQSlider*{.exportc: "QSlider", incompleteStruct.} = object

proc fcQSlider_metaObject(self: pointer): pointer {.importc: "QSlider_metaObject".}
proc fcQSlider_metacast(self: pointer, param1: cstring): pointer {.importc: "QSlider_metacast".}
proc fcQSlider_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSlider_metacall".}
proc fcQSlider_tr(s: cstring): struct_miqt_string {.importc: "QSlider_tr".}
proc fcQSlider_sizeHint(self: pointer): pointer {.importc: "QSlider_sizeHint".}
proc fcQSlider_minimumSizeHint(self: pointer): pointer {.importc: "QSlider_minimumSizeHint".}
proc fcQSlider_setTickPosition(self: pointer, position: cint): void {.importc: "QSlider_setTickPosition".}
proc fcQSlider_tickPosition(self: pointer): cint {.importc: "QSlider_tickPosition".}
proc fcQSlider_setTickInterval(self: pointer, ti: cint): void {.importc: "QSlider_setTickInterval".}
proc fcQSlider_tickInterval(self: pointer): cint {.importc: "QSlider_tickInterval".}
proc fcQSlider_event(self: pointer, event: pointer): bool {.importc: "QSlider_event".}
proc fcQSlider_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSlider_tr2".}
proc fcQSlider_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSlider_tr3".}
proc fcQSlider_vtbl(self: pointer): pointer {.importc: "QSlider_vtbl".}
proc fcQSlider_vdata(self: pointer): pointer {.importc: "QSlider_vdata".}
type cQSliderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  sliderChange*: proc(self: pointer, change: cint): void {.cdecl, raises: [], gcsafe.}
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
proc fcQSlider_virtualbase_metaObject(self: pointer): pointer {.importc: "QSlider_virtualbase_metaObject".}
proc fcQSlider_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSlider_virtualbase_metacast".}
proc fcQSlider_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSlider_virtualbase_metacall".}
proc fcQSlider_virtualbase_sizeHint(self: pointer): pointer {.importc: "QSlider_virtualbase_sizeHint".}
proc fcQSlider_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QSlider_virtualbase_minimumSizeHint".}
proc fcQSlider_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSlider_virtualbase_event".}
proc fcQSlider_virtualbase_paintEvent(self: pointer, ev: pointer): void {.importc: "QSlider_virtualbase_paintEvent".}
proc fcQSlider_virtualbase_mousePressEvent(self: pointer, ev: pointer): void {.importc: "QSlider_virtualbase_mousePressEvent".}
proc fcQSlider_virtualbase_mouseReleaseEvent(self: pointer, ev: pointer): void {.importc: "QSlider_virtualbase_mouseReleaseEvent".}
proc fcQSlider_virtualbase_mouseMoveEvent(self: pointer, ev: pointer): void {.importc: "QSlider_virtualbase_mouseMoveEvent".}
proc fcQSlider_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QSlider_virtualbase_initStyleOption".}
proc fcQSlider_virtualbase_sliderChange(self: pointer, change: cint): void {.importc: "QSlider_virtualbase_sliderChange".}
proc fcQSlider_virtualbase_keyPressEvent(self: pointer, ev: pointer): void {.importc: "QSlider_virtualbase_keyPressEvent".}
proc fcQSlider_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QSlider_virtualbase_timerEvent".}
proc fcQSlider_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QSlider_virtualbase_wheelEvent".}
proc fcQSlider_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QSlider_virtualbase_changeEvent".}
proc fcQSlider_virtualbase_devType(self: pointer): cint {.importc: "QSlider_virtualbase_devType".}
proc fcQSlider_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSlider_virtualbase_setVisible".}
proc fcQSlider_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSlider_virtualbase_heightForWidth".}
proc fcQSlider_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QSlider_virtualbase_hasHeightForWidth".}
proc fcQSlider_virtualbase_paintEngine(self: pointer): pointer {.importc: "QSlider_virtualbase_paintEngine".}
proc fcQSlider_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_mouseDoubleClickEvent".}
proc fcQSlider_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_keyReleaseEvent".}
proc fcQSlider_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_focusInEvent".}
proc fcQSlider_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_focusOutEvent".}
proc fcQSlider_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_enterEvent".}
proc fcQSlider_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_leaveEvent".}
proc fcQSlider_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_moveEvent".}
proc fcQSlider_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_resizeEvent".}
proc fcQSlider_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_closeEvent".}
proc fcQSlider_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_contextMenuEvent".}
proc fcQSlider_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_tabletEvent".}
proc fcQSlider_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_actionEvent".}
proc fcQSlider_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_dragEnterEvent".}
proc fcQSlider_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_dragMoveEvent".}
proc fcQSlider_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_dragLeaveEvent".}
proc fcQSlider_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_dropEvent".}
proc fcQSlider_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_showEvent".}
proc fcQSlider_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_hideEvent".}
proc fcQSlider_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QSlider_virtualbase_nativeEvent".}
proc fcQSlider_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QSlider_virtualbase_metric".}
proc fcQSlider_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSlider_virtualbase_initPainter".}
proc fcQSlider_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSlider_virtualbase_redirected".}
proc fcQSlider_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QSlider_virtualbase_sharedPainter".}
proc fcQSlider_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSlider_virtualbase_inputMethodEvent".}
proc fcQSlider_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSlider_virtualbase_inputMethodQuery".}
proc fcQSlider_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSlider_virtualbase_focusNextPrevChild".}
proc fcQSlider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSlider_virtualbase_eventFilter".}
proc fcQSlider_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_childEvent".}
proc fcQSlider_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_customEvent".}
proc fcQSlider_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSlider_virtualbase_connectNotify".}
proc fcQSlider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSlider_virtualbase_disconnectNotify".}
proc fcQSlider_protectedbase_setRepeatAction(self: pointer, action: cint): void {.importc: "QSlider_protectedbase_setRepeatAction".}
proc fcQSlider_protectedbase_repeatAction(self: pointer): cint {.importc: "QSlider_protectedbase_repeatAction".}
proc fcQSlider_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QSlider_protectedbase_updateMicroFocus".}
proc fcQSlider_protectedbase_create(self: pointer): void {.importc: "QSlider_protectedbase_create".}
proc fcQSlider_protectedbase_destroy(self: pointer): void {.importc: "QSlider_protectedbase_destroy".}
proc fcQSlider_protectedbase_focusNextChild(self: pointer): bool {.importc: "QSlider_protectedbase_focusNextChild".}
proc fcQSlider_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QSlider_protectedbase_focusPreviousChild".}
proc fcQSlider_protectedbase_sender(self: pointer): pointer {.importc: "QSlider_protectedbase_sender".}
proc fcQSlider_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSlider_protectedbase_senderSignalIndex".}
proc fcQSlider_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSlider_protectedbase_receivers".}
proc fcQSlider_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSlider_protectedbase_isSignalConnected".}
proc fcQSlider_new(vtbl, vdata: pointer, parent: pointer): ptr cQSlider {.importc: "QSlider_new".}
proc fcQSlider_new2(vtbl, vdata: pointer): ptr cQSlider {.importc: "QSlider_new2".}
proc fcQSlider_new3(vtbl, vdata: pointer, orientation: cint): ptr cQSlider {.importc: "QSlider_new3".}
proc fcQSlider_new4(vtbl, vdata: pointer, orientation: cint, parent: pointer): ptr cQSlider {.importc: "QSlider_new4".}
proc fcQSlider_staticMetaObject(): pointer {.importc: "QSlider_staticMetaObject".}

proc metaObject*(self: gen_qslider_types.QSlider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSlider_metaObject(self.h), owned: false)

proc metacast*(self: gen_qslider_types.QSlider, param1: cstring): pointer =
  fcQSlider_metacast(self.h, param1)

proc metacall*(self: gen_qslider_types.QSlider, param1: cint, param2: cint, param3: pointer): cint =
  fcQSlider_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qslider_types.QSlider, s: cstring): string =
  let v_ms = fcQSlider_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qslider_types.QSlider): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSlider_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qslider_types.QSlider): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSlider_minimumSizeHint(self.h), owned: true)

proc setTickPosition*(self: gen_qslider_types.QSlider, position: cint): void =
  fcQSlider_setTickPosition(self.h, cint(position))

proc tickPosition*(self: gen_qslider_types.QSlider): cint =
  cint(fcQSlider_tickPosition(self.h))

proc setTickInterval*(self: gen_qslider_types.QSlider, ti: cint): void =
  fcQSlider_setTickInterval(self.h, ti)

proc tickInterval*(self: gen_qslider_types.QSlider): cint =
  fcQSlider_tickInterval(self.h)

proc event*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QEvent): bool =
  fcQSlider_event(self.h, event.h)

proc tr*(_: type gen_qslider_types.QSlider, s: cstring, c: cstring): string =
  let v_ms = fcQSlider_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qslider_types.QSlider, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSlider_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSlidermetaObjectProc* = proc(self: QSlider): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSlidermetacastProc* = proc(self: QSlider, param1: cstring): pointer {.raises: [], gcsafe.}
type QSlidermetacallProc* = proc(self: QSlider, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSlidersizeHintProc* = proc(self: QSlider): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSliderminimumSizeHintProc* = proc(self: QSlider): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSlidereventProc* = proc(self: QSlider, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSliderpaintEventProc* = proc(self: QSlider, ev: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QSlidermousePressEventProc* = proc(self: QSlider, ev: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSlidermouseReleaseEventProc* = proc(self: QSlider, ev: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSlidermouseMoveEventProc* = proc(self: QSlider, ev: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSliderinitStyleOptionProc* = proc(self: QSlider, option: gen_qstyleoption_types.QStyleOptionSlider): void {.raises: [], gcsafe.}
type QSlidersliderChangeProc* = proc(self: QSlider, change: cint): void {.raises: [], gcsafe.}
type QSliderkeyPressEventProc* = proc(self: QSlider, ev: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSlidertimerEventProc* = proc(self: QSlider, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSliderwheelEventProc* = proc(self: QSlider, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QSliderchangeEventProc* = proc(self: QSlider, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSliderdevTypeProc* = proc(self: QSlider): cint {.raises: [], gcsafe.}
type QSlidersetVisibleProc* = proc(self: QSlider, visible: bool): void {.raises: [], gcsafe.}
type QSliderheightForWidthProc* = proc(self: QSlider, param1: cint): cint {.raises: [], gcsafe.}
type QSliderhasHeightForWidthProc* = proc(self: QSlider): bool {.raises: [], gcsafe.}
type QSliderpaintEngineProc* = proc(self: QSlider): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QSlidermouseDoubleClickEventProc* = proc(self: QSlider, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSliderkeyReleaseEventProc* = proc(self: QSlider, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSliderfocusInEventProc* = proc(self: QSlider, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSliderfocusOutEventProc* = proc(self: QSlider, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSliderenterEventProc* = proc(self: QSlider, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QSliderleaveEventProc* = proc(self: QSlider, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSlidermoveEventProc* = proc(self: QSlider, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QSliderresizeEventProc* = proc(self: QSlider, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QSlidercloseEventProc* = proc(self: QSlider, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QSlidercontextMenuEventProc* = proc(self: QSlider, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QSlidertabletEventProc* = proc(self: QSlider, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QSlideractionEventProc* = proc(self: QSlider, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QSliderdragEnterEventProc* = proc(self: QSlider, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QSliderdragMoveEventProc* = proc(self: QSlider, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QSliderdragLeaveEventProc* = proc(self: QSlider, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QSliderdropEventProc* = proc(self: QSlider, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QSlidershowEventProc* = proc(self: QSlider, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QSliderhideEventProc* = proc(self: QSlider, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QSlidernativeEventProc* = proc(self: QSlider, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QSlidermetricProc* = proc(self: QSlider, param1: cint): cint {.raises: [], gcsafe.}
type QSliderinitPainterProc* = proc(self: QSlider, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QSliderredirectedProc* = proc(self: QSlider, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QSlidersharedPainterProc* = proc(self: QSlider): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QSliderinputMethodEventProc* = proc(self: QSlider, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QSliderinputMethodQueryProc* = proc(self: QSlider, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSliderfocusNextPrevChildProc* = proc(self: QSlider, next: bool): bool {.raises: [], gcsafe.}
type QSlidereventFilterProc* = proc(self: QSlider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSliderchildEventProc* = proc(self: QSlider, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSlidercustomEventProc* = proc(self: QSlider, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSliderconnectNotifyProc* = proc(self: QSlider, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSliderdisconnectNotifyProc* = proc(self: QSlider, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSliderVTable* {.inheritable, pure.} = object
  vtbl: cQSliderVTable
  metaObject*: QSlidermetaObjectProc
  metacast*: QSlidermetacastProc
  metacall*: QSlidermetacallProc
  sizeHint*: QSlidersizeHintProc
  minimumSizeHint*: QSliderminimumSizeHintProc
  event*: QSlidereventProc
  paintEvent*: QSliderpaintEventProc
  mousePressEvent*: QSlidermousePressEventProc
  mouseReleaseEvent*: QSlidermouseReleaseEventProc
  mouseMoveEvent*: QSlidermouseMoveEventProc
  initStyleOption*: QSliderinitStyleOptionProc
  sliderChange*: QSlidersliderChangeProc
  keyPressEvent*: QSliderkeyPressEventProc
  timerEvent*: QSlidertimerEventProc
  wheelEvent*: QSliderwheelEventProc
  changeEvent*: QSliderchangeEventProc
  devType*: QSliderdevTypeProc
  setVisible*: QSlidersetVisibleProc
  heightForWidth*: QSliderheightForWidthProc
  hasHeightForWidth*: QSliderhasHeightForWidthProc
  paintEngine*: QSliderpaintEngineProc
  mouseDoubleClickEvent*: QSlidermouseDoubleClickEventProc
  keyReleaseEvent*: QSliderkeyReleaseEventProc
  focusInEvent*: QSliderfocusInEventProc
  focusOutEvent*: QSliderfocusOutEventProc
  enterEvent*: QSliderenterEventProc
  leaveEvent*: QSliderleaveEventProc
  moveEvent*: QSlidermoveEventProc
  resizeEvent*: QSliderresizeEventProc
  closeEvent*: QSlidercloseEventProc
  contextMenuEvent*: QSlidercontextMenuEventProc
  tabletEvent*: QSlidertabletEventProc
  actionEvent*: QSlideractionEventProc
  dragEnterEvent*: QSliderdragEnterEventProc
  dragMoveEvent*: QSliderdragMoveEventProc
  dragLeaveEvent*: QSliderdragLeaveEventProc
  dropEvent*: QSliderdropEventProc
  showEvent*: QSlidershowEventProc
  hideEvent*: QSliderhideEventProc
  nativeEvent*: QSlidernativeEventProc
  metric*: QSlidermetricProc
  initPainter*: QSliderinitPainterProc
  redirected*: QSliderredirectedProc
  sharedPainter*: QSlidersharedPainterProc
  inputMethodEvent*: QSliderinputMethodEventProc
  inputMethodQuery*: QSliderinputMethodQueryProc
  focusNextPrevChild*: QSliderfocusNextPrevChildProc
  eventFilter*: QSlidereventFilterProc
  childEvent*: QSliderchildEventProc
  customEvent*: QSlidercustomEventProc
  connectNotify*: QSliderconnectNotifyProc
  disconnectNotify*: QSliderdisconnectNotifyProc
proc QSlidermetaObject*(self: gen_qslider_types.QSlider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSlider_virtualbase_metaObject(self.h), owned: false)

proc cQSlider_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSlidermetacast*(self: gen_qslider_types.QSlider, param1: cstring): pointer =
  fcQSlider_virtualbase_metacast(self.h, param1)

proc cQSlider_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSlidermetacall*(self: gen_qslider_types.QSlider, param1: cint, param2: cint, param3: pointer): cint =
  fcQSlider_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSlider_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSlidersizeHint*(self: gen_qslider_types.QSlider): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSlider_virtualbase_sizeHint(self.h), owned: true)

proc cQSlider_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSliderminimumSizeHint*(self: gen_qslider_types.QSlider): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSlider_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQSlider_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSliderevent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QEvent): bool =
  fcQSlider_virtualbase_event(self.h, event.h)

proc cQSlider_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSliderpaintEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QPaintEvent): void =
  fcQSlider_virtualbase_paintEvent(self.h, ev.h)

proc cQSlider_vtable_callback_paintEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: ev, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QSlidermousePressEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QMouseEvent): void =
  fcQSlider_virtualbase_mousePressEvent(self.h, ev.h)

proc cQSlider_vtable_callback_mousePressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QSlidermouseReleaseEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QMouseEvent): void =
  fcQSlider_virtualbase_mouseReleaseEvent(self.h, ev.h)

proc cQSlider_vtable_callback_mouseReleaseEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QSlidermouseMoveEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QMouseEvent): void =
  fcQSlider_virtualbase_mouseMoveEvent(self.h, ev.h)

proc cQSlider_vtable_callback_mouseMoveEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QSliderinitStyleOption*(self: gen_qslider_types.QSlider, option: gen_qstyleoption_types.QStyleOptionSlider): void =
  fcQSlider_virtualbase_initStyleOption(self.h, option.h)

proc cQSlider_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionSlider(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QSlidersliderChange*(self: gen_qslider_types.QSlider, change: cint): void =
  fcQSlider_virtualbase_sliderChange(self.h, cint(change))

proc cQSlider_vtable_callback_sliderChange(self: pointer, change: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = cint(change)
  vtbl[].sliderChange(self, slotval1)

proc QSliderkeyPressEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QKeyEvent): void =
  fcQSlider_virtualbase_keyPressEvent(self.h, ev.h)

proc cQSlider_vtable_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QSlidertimerEvent*(self: gen_qslider_types.QSlider, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQSlider_virtualbase_timerEvent(self.h, param1.h)

proc cQSlider_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSliderwheelEvent*(self: gen_qslider_types.QSlider, e: gen_qevent_types.QWheelEvent): void =
  fcQSlider_virtualbase_wheelEvent(self.h, e.h)

proc cQSlider_vtable_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QSliderchangeEvent*(self: gen_qslider_types.QSlider, e: gen_qcoreevent_types.QEvent): void =
  fcQSlider_virtualbase_changeEvent(self.h, e.h)

proc cQSlider_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QSliderdevType*(self: gen_qslider_types.QSlider): cint =
  fcQSlider_virtualbase_devType(self.h)

proc cQSlider_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSlidersetVisible*(self: gen_qslider_types.QSlider, visible: bool): void =
  fcQSlider_virtualbase_setVisible(self.h, visible)

proc cQSlider_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QSliderheightForWidth*(self: gen_qslider_types.QSlider, param1: cint): cint =
  fcQSlider_virtualbase_heightForWidth(self.h, param1)

proc cQSlider_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSliderhasHeightForWidth*(self: gen_qslider_types.QSlider): bool =
  fcQSlider_virtualbase_hasHeightForWidth(self.h)

proc cQSlider_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSliderpaintEngine*(self: gen_qslider_types.QSlider): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSlider_virtualbase_paintEngine(self.h), owned: false)

proc cQSlider_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSlidermouseDoubleClickEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QMouseEvent): void =
  fcQSlider_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQSlider_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QSliderkeyReleaseEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QKeyEvent): void =
  fcQSlider_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQSlider_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QSliderfocusInEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QFocusEvent): void =
  fcQSlider_virtualbase_focusInEvent(self.h, event.h)

proc cQSlider_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QSliderfocusOutEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QFocusEvent): void =
  fcQSlider_virtualbase_focusOutEvent(self.h, event.h)

proc cQSlider_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QSliderenterEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QEnterEvent): void =
  fcQSlider_virtualbase_enterEvent(self.h, event.h)

proc cQSlider_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QSliderleaveEvent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QEvent): void =
  fcQSlider_virtualbase_leaveEvent(self.h, event.h)

proc cQSlider_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QSlidermoveEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QMoveEvent): void =
  fcQSlider_virtualbase_moveEvent(self.h, event.h)

proc cQSlider_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QSliderresizeEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QResizeEvent): void =
  fcQSlider_virtualbase_resizeEvent(self.h, event.h)

proc cQSlider_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QSlidercloseEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QCloseEvent): void =
  fcQSlider_virtualbase_closeEvent(self.h, event.h)

proc cQSlider_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QSlidercontextMenuEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSlider_virtualbase_contextMenuEvent(self.h, event.h)

proc cQSlider_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QSlidertabletEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QTabletEvent): void =
  fcQSlider_virtualbase_tabletEvent(self.h, event.h)

proc cQSlider_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QSlideractionEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QActionEvent): void =
  fcQSlider_virtualbase_actionEvent(self.h, event.h)

proc cQSlider_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QSliderdragEnterEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSlider_virtualbase_dragEnterEvent(self.h, event.h)

proc cQSlider_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QSliderdragMoveEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSlider_virtualbase_dragMoveEvent(self.h, event.h)

proc cQSlider_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QSliderdragLeaveEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSlider_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQSlider_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QSliderdropEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDropEvent): void =
  fcQSlider_virtualbase_dropEvent(self.h, event.h)

proc cQSlider_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QSlidershowEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QShowEvent): void =
  fcQSlider_virtualbase_showEvent(self.h, event.h)

proc cQSlider_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QSliderhideEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QHideEvent): void =
  fcQSlider_virtualbase_hideEvent(self.h, event.h)

proc cQSlider_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QSlidernativeEvent*(self: gen_qslider_types.QSlider, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQSlider_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQSlider_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSlidermetric*(self: gen_qslider_types.QSlider, param1: cint): cint =
  fcQSlider_virtualbase_metric(self.h, cint(param1))

proc cQSlider_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSliderinitPainter*(self: gen_qslider_types.QSlider, painter: gen_qpainter_types.QPainter): void =
  fcQSlider_virtualbase_initPainter(self.h, painter.h)

proc cQSlider_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QSliderredirected*(self: gen_qslider_types.QSlider, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSlider_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQSlider_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSlidersharedPainter*(self: gen_qslider_types.QSlider): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSlider_virtualbase_sharedPainter(self.h), owned: false)

proc cQSlider_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSliderinputMethodEvent*(self: gen_qslider_types.QSlider, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSlider_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQSlider_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QSliderinputMethodQuery*(self: gen_qslider_types.QSlider, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSlider_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQSlider_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSliderfocusNextPrevChild*(self: gen_qslider_types.QSlider, next: bool): bool =
  fcQSlider_virtualbase_focusNextPrevChild(self.h, next)

proc cQSlider_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QSlidereventFilter*(self: gen_qslider_types.QSlider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSlider_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQSlider_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSliderchildEvent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSlider_virtualbase_childEvent(self.h, event.h)

proc cQSlider_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSlidercustomEvent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QEvent): void =
  fcQSlider_virtualbase_customEvent(self.h, event.h)

proc cQSlider_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSliderconnectNotify*(self: gen_qslider_types.QSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSlider_virtualbase_connectNotify(self.h, signal.h)

proc cQSlider_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSliderdisconnectNotify*(self: gen_qslider_types.QSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSlider_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSlider_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](fcQSlider_vdata(self))
  let self = QSlider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSlider* {.inheritable.} = ref object of QSlider
  vtbl*: cQSliderVTable
method metaObject*(self: VirtualQSlider): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSlidermetaObject(self[])
proc cQSlider_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSlider, param1: cstring): pointer {.base.} =
  QSlidermetacast(self[], param1)
proc cQSlider_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSlider, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSlidermetacall(self[], param1, param2, param3)
proc cQSlider_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQSlider): gen_qsize_types.QSize {.base.} =
  QSlidersizeHint(self[])
proc cQSlider_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQSlider): gen_qsize_types.QSize {.base.} =
  QSliderminimumSizeHint(self[])
proc cQSlider_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQSlider, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSliderevent(self[], event)
proc cQSlider_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method paintEvent*(self: VirtualQSlider, ev: gen_qevent_types.QPaintEvent): void {.base.} =
  QSliderpaintEvent(self[], ev)
proc cQSlider_method_callback_paintEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: ev, owned: false)
  inst.paintEvent(slotval1)

method mousePressEvent*(self: VirtualQSlider, ev: gen_qevent_types.QMouseEvent): void {.base.} =
  QSlidermousePressEvent(self[], ev)
proc cQSlider_method_callback_mousePressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQSlider, ev: gen_qevent_types.QMouseEvent): void {.base.} =
  QSlidermouseReleaseEvent(self[], ev)
proc cQSlider_method_callback_mouseReleaseEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQSlider, ev: gen_qevent_types.QMouseEvent): void {.base.} =
  QSlidermouseMoveEvent(self[], ev)
proc cQSlider_method_callback_mouseMoveEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  inst.mouseMoveEvent(slotval1)

method initStyleOption*(self: VirtualQSlider, option: gen_qstyleoption_types.QStyleOptionSlider): void {.base.} =
  QSliderinitStyleOption(self[], option)
proc cQSlider_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSlider(h: option, owned: false)
  inst.initStyleOption(slotval1)

method sliderChange*(self: VirtualQSlider, change: cint): void {.base.} =
  QSlidersliderChange(self[], change)
proc cQSlider_method_callback_sliderChange(self: pointer, change: cint): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = cint(change)
  inst.sliderChange(slotval1)

method keyPressEvent*(self: VirtualQSlider, ev: gen_qevent_types.QKeyEvent): void {.base.} =
  QSliderkeyPressEvent(self[], ev)
proc cQSlider_method_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  inst.keyPressEvent(slotval1)

method timerEvent*(self: VirtualQSlider, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSlidertimerEvent(self[], param1)
proc cQSlider_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

method wheelEvent*(self: VirtualQSlider, e: gen_qevent_types.QWheelEvent): void {.base.} =
  QSliderwheelEvent(self[], e)
proc cQSlider_method_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  inst.wheelEvent(slotval1)

method changeEvent*(self: VirtualQSlider, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QSliderchangeEvent(self[], e)
proc cQSlider_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

method devType*(self: VirtualQSlider): cint {.base.} =
  QSliderdevType(self[])
proc cQSlider_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQSlider, visible: bool): void {.base.} =
  QSlidersetVisible(self[], visible)
proc cQSlider_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQSlider, param1: cint): cint {.base.} =
  QSliderheightForWidth(self[], param1)
proc cQSlider_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQSlider): bool {.base.} =
  QSliderhasHeightForWidth(self[])
proc cQSlider_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQSlider): gen_qpaintengine_types.QPaintEngine {.base.} =
  QSliderpaintEngine(self[])
proc cQSlider_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQSlider, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSlidermouseDoubleClickEvent(self[], event)
proc cQSlider_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method keyReleaseEvent*(self: VirtualQSlider, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSliderkeyReleaseEvent(self[], event)
proc cQSlider_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQSlider, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSliderfocusInEvent(self[], event)
proc cQSlider_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQSlider, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSliderfocusOutEvent(self[], event)
proc cQSlider_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQSlider, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QSliderenterEvent(self[], event)
proc cQSlider_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQSlider, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSliderleaveEvent(self[], event)
proc cQSlider_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQSlider, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QSlidermoveEvent(self[], event)
proc cQSlider_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQSlider, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QSliderresizeEvent(self[], event)
proc cQSlider_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQSlider, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QSlidercloseEvent(self[], event)
proc cQSlider_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQSlider, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QSlidercontextMenuEvent(self[], event)
proc cQSlider_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQSlider, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QSlidertabletEvent(self[], event)
proc cQSlider_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQSlider, event: gen_qevent_types.QActionEvent): void {.base.} =
  QSlideractionEvent(self[], event)
proc cQSlider_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQSlider, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QSliderdragEnterEvent(self[], event)
proc cQSlider_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQSlider, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QSliderdragMoveEvent(self[], event)
proc cQSlider_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQSlider, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QSliderdragLeaveEvent(self[], event)
proc cQSlider_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQSlider, event: gen_qevent_types.QDropEvent): void {.base.} =
  QSliderdropEvent(self[], event)
proc cQSlider_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQSlider, event: gen_qevent_types.QShowEvent): void {.base.} =
  QSlidershowEvent(self[], event)
proc cQSlider_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQSlider, event: gen_qevent_types.QHideEvent): void {.base.} =
  QSliderhideEvent(self[], event)
proc cQSlider_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQSlider, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QSlidernativeEvent(self[], eventType, message, resultVal)
proc cQSlider_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQSlider, param1: cint): cint {.base.} =
  QSlidermetric(self[], param1)
proc cQSlider_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQSlider, painter: gen_qpainter_types.QPainter): void {.base.} =
  QSliderinitPainter(self[], painter)
proc cQSlider_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQSlider, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QSliderredirected(self[], offset)
proc cQSlider_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQSlider): gen_qpainter_types.QPainter {.base.} =
  QSlidersharedPainter(self[])
proc cQSlider_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQSlider, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QSliderinputMethodEvent(self[], param1)
proc cQSlider_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQSlider, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QSliderinputMethodQuery(self[], param1)
proc cQSlider_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQSlider, next: bool): bool {.base.} =
  QSliderfocusNextPrevChild(self[], next)
proc cQSlider_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSlider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSlidereventFilter(self[], watched, event)
proc cQSlider_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQSlider, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSliderchildEvent(self[], event)
proc cQSlider_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQSlider, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSlidercustomEvent(self[], event)
proc cQSlider_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSlider, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSliderconnectNotify(self[], signal)
proc cQSlider_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSlider, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSliderdisconnectNotify(self[], signal)
proc cQSlider_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSlider](fcQSlider_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setRepeatAction*(self: gen_qslider_types.QSlider, action: cint): void =
  fcQSlider_protectedbase_setRepeatAction(self.h, cint(action))

proc repeatAction*(self: gen_qslider_types.QSlider): cint =
  cint(fcQSlider_protectedbase_repeatAction(self.h))

proc updateMicroFocus*(self: gen_qslider_types.QSlider): void =
  fcQSlider_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qslider_types.QSlider): void =
  fcQSlider_protectedbase_create(self.h)

proc destroy*(self: gen_qslider_types.QSlider): void =
  fcQSlider_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qslider_types.QSlider): bool =
  fcQSlider_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qslider_types.QSlider): bool =
  fcQSlider_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qslider_types.QSlider): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSlider_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qslider_types.QSlider): cint =
  fcQSlider_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qslider_types.QSlider, signal: cstring): cint =
  fcQSlider_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qslider_types.QSlider, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSlider_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qslider_types.QSlider,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QSliderVTable = nil): gen_qslider_types.QSlider =
  let vtbl = if vtbl == nil: new QSliderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSliderVTable](fcQSlider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSlider_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSlider_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSlider_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQSlider_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQSlider_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSlider_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQSlider_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQSlider_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQSlider_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQSlider_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQSlider_vtable_callback_initStyleOption
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = cQSlider_vtable_callback_sliderChange
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQSlider_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSlider_vtable_callback_timerEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQSlider_vtable_callback_wheelEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQSlider_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQSlider_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQSlider_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQSlider_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQSlider_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQSlider_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQSlider_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQSlider_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQSlider_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQSlider_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQSlider_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQSlider_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQSlider_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQSlider_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQSlider_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQSlider_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQSlider_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQSlider_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQSlider_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQSlider_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQSlider_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQSlider_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQSlider_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQSlider_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQSlider_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQSlider_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQSlider_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQSlider_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQSlider_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQSlider_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQSlider_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQSlider_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSlider_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSlider_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSlider_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSlider_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSlider_vtable_callback_disconnectNotify
  gen_qslider_types.QSlider(h: fcQSlider_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qslider_types.QSlider,
    vtbl: ref QSliderVTable = nil): gen_qslider_types.QSlider =
  let vtbl = if vtbl == nil: new QSliderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSliderVTable](fcQSlider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSlider_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSlider_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSlider_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQSlider_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQSlider_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSlider_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQSlider_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQSlider_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQSlider_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQSlider_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQSlider_vtable_callback_initStyleOption
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = cQSlider_vtable_callback_sliderChange
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQSlider_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSlider_vtable_callback_timerEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQSlider_vtable_callback_wheelEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQSlider_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQSlider_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQSlider_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQSlider_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQSlider_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQSlider_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQSlider_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQSlider_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQSlider_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQSlider_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQSlider_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQSlider_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQSlider_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQSlider_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQSlider_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQSlider_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQSlider_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQSlider_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQSlider_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQSlider_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQSlider_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQSlider_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQSlider_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQSlider_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQSlider_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQSlider_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQSlider_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQSlider_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQSlider_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQSlider_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQSlider_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQSlider_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSlider_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSlider_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSlider_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSlider_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSlider_vtable_callback_disconnectNotify
  gen_qslider_types.QSlider(h: fcQSlider_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qslider_types.QSlider,
    orientation: cint,
    vtbl: ref QSliderVTable = nil): gen_qslider_types.QSlider =
  let vtbl = if vtbl == nil: new QSliderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSliderVTable](fcQSlider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSlider_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSlider_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSlider_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQSlider_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQSlider_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSlider_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQSlider_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQSlider_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQSlider_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQSlider_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQSlider_vtable_callback_initStyleOption
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = cQSlider_vtable_callback_sliderChange
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQSlider_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSlider_vtable_callback_timerEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQSlider_vtable_callback_wheelEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQSlider_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQSlider_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQSlider_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQSlider_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQSlider_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQSlider_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQSlider_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQSlider_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQSlider_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQSlider_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQSlider_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQSlider_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQSlider_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQSlider_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQSlider_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQSlider_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQSlider_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQSlider_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQSlider_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQSlider_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQSlider_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQSlider_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQSlider_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQSlider_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQSlider_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQSlider_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQSlider_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQSlider_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQSlider_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQSlider_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQSlider_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQSlider_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSlider_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSlider_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSlider_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSlider_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSlider_vtable_callback_disconnectNotify
  gen_qslider_types.QSlider(h: fcQSlider_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(orientation)), owned: true)

proc create*(T: type gen_qslider_types.QSlider,
    orientation: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QSliderVTable = nil): gen_qslider_types.QSlider =
  let vtbl = if vtbl == nil: new QSliderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSliderVTable](fcQSlider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSlider_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSlider_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSlider_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQSlider_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQSlider_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSlider_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQSlider_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQSlider_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQSlider_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQSlider_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQSlider_vtable_callback_initStyleOption
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = cQSlider_vtable_callback_sliderChange
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQSlider_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSlider_vtable_callback_timerEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQSlider_vtable_callback_wheelEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQSlider_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQSlider_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQSlider_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQSlider_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQSlider_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQSlider_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQSlider_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQSlider_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQSlider_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQSlider_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQSlider_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQSlider_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQSlider_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQSlider_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQSlider_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQSlider_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQSlider_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQSlider_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQSlider_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQSlider_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQSlider_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQSlider_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQSlider_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQSlider_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQSlider_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQSlider_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQSlider_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQSlider_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQSlider_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQSlider_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQSlider_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQSlider_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSlider_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSlider_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSlider_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSlider_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSlider_vtable_callback_disconnectNotify
  gen_qslider_types.QSlider(h: fcQSlider_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(orientation), parent.h), owned: true)

const cQSlider_mvtbl = cQSliderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSlider()[])](self.fcQSlider_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSlider_method_callback_metaObject,
  metacast: cQSlider_method_callback_metacast,
  metacall: cQSlider_method_callback_metacall,
  sizeHint: cQSlider_method_callback_sizeHint,
  minimumSizeHint: cQSlider_method_callback_minimumSizeHint,
  event: cQSlider_method_callback_event,
  paintEvent: cQSlider_method_callback_paintEvent,
  mousePressEvent: cQSlider_method_callback_mousePressEvent,
  mouseReleaseEvent: cQSlider_method_callback_mouseReleaseEvent,
  mouseMoveEvent: cQSlider_method_callback_mouseMoveEvent,
  initStyleOption: cQSlider_method_callback_initStyleOption,
  sliderChange: cQSlider_method_callback_sliderChange,
  keyPressEvent: cQSlider_method_callback_keyPressEvent,
  timerEvent: cQSlider_method_callback_timerEvent,
  wheelEvent: cQSlider_method_callback_wheelEvent,
  changeEvent: cQSlider_method_callback_changeEvent,
  devType: cQSlider_method_callback_devType,
  setVisible: cQSlider_method_callback_setVisible,
  heightForWidth: cQSlider_method_callback_heightForWidth,
  hasHeightForWidth: cQSlider_method_callback_hasHeightForWidth,
  paintEngine: cQSlider_method_callback_paintEngine,
  mouseDoubleClickEvent: cQSlider_method_callback_mouseDoubleClickEvent,
  keyReleaseEvent: cQSlider_method_callback_keyReleaseEvent,
  focusInEvent: cQSlider_method_callback_focusInEvent,
  focusOutEvent: cQSlider_method_callback_focusOutEvent,
  enterEvent: cQSlider_method_callback_enterEvent,
  leaveEvent: cQSlider_method_callback_leaveEvent,
  moveEvent: cQSlider_method_callback_moveEvent,
  resizeEvent: cQSlider_method_callback_resizeEvent,
  closeEvent: cQSlider_method_callback_closeEvent,
  contextMenuEvent: cQSlider_method_callback_contextMenuEvent,
  tabletEvent: cQSlider_method_callback_tabletEvent,
  actionEvent: cQSlider_method_callback_actionEvent,
  dragEnterEvent: cQSlider_method_callback_dragEnterEvent,
  dragMoveEvent: cQSlider_method_callback_dragMoveEvent,
  dragLeaveEvent: cQSlider_method_callback_dragLeaveEvent,
  dropEvent: cQSlider_method_callback_dropEvent,
  showEvent: cQSlider_method_callback_showEvent,
  hideEvent: cQSlider_method_callback_hideEvent,
  nativeEvent: cQSlider_method_callback_nativeEvent,
  metric: cQSlider_method_callback_metric,
  initPainter: cQSlider_method_callback_initPainter,
  redirected: cQSlider_method_callback_redirected,
  sharedPainter: cQSlider_method_callback_sharedPainter,
  inputMethodEvent: cQSlider_method_callback_inputMethodEvent,
  inputMethodQuery: cQSlider_method_callback_inputMethodQuery,
  focusNextPrevChild: cQSlider_method_callback_focusNextPrevChild,
  eventFilter: cQSlider_method_callback_eventFilter,
  childEvent: cQSlider_method_callback_childEvent,
  customEvent: cQSlider_method_callback_customEvent,
  connectNotify: cQSlider_method_callback_connectNotify,
  disconnectNotify: cQSlider_method_callback_disconnectNotify,
)
proc create*(T: type gen_qslider_types.QSlider,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQSlider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSlider_new(addr(cQSlider_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qslider_types.QSlider,
    inst: VirtualQSlider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSlider_new2(addr(cQSlider_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qslider_types.QSlider,
    orientation: cint,
    inst: VirtualQSlider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSlider_new3(addr(cQSlider_mvtbl), addr(inst[]), cint(orientation))
  inst[].owned = true

proc create*(T: type gen_qslider_types.QSlider,
    orientation: cint, parent: gen_qwidget_types.QWidget,
    inst: VirtualQSlider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSlider_new4(addr(cQSlider_mvtbl), addr(inst[]), cint(orientation), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qslider_types.QSlider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSlider_staticMetaObject())
