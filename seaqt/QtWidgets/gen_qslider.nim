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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
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

proc fcQSlider_metaObject(self: pointer, ): pointer {.importc: "QSlider_metaObject".}
proc fcQSlider_metacast(self: pointer, param1: cstring): pointer {.importc: "QSlider_metacast".}
proc fcQSlider_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSlider_metacall".}
proc fcQSlider_tr(s: cstring): struct_miqt_string {.importc: "QSlider_tr".}
proc fcQSlider_sizeHint(self: pointer, ): pointer {.importc: "QSlider_sizeHint".}
proc fcQSlider_minimumSizeHint(self: pointer, ): pointer {.importc: "QSlider_minimumSizeHint".}
proc fcQSlider_setTickPosition(self: pointer, position: cint): void {.importc: "QSlider_setTickPosition".}
proc fcQSlider_tickPosition(self: pointer, ): cint {.importc: "QSlider_tickPosition".}
proc fcQSlider_setTickInterval(self: pointer, ti: cint): void {.importc: "QSlider_setTickInterval".}
proc fcQSlider_tickInterval(self: pointer, ): cint {.importc: "QSlider_tickInterval".}
proc fcQSlider_event(self: pointer, event: pointer): bool {.importc: "QSlider_event".}
proc fcQSlider_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSlider_tr2".}
proc fcQSlider_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSlider_tr3".}
type cQSliderVTable = object
  destructor*: proc(vtbl: ptr cQSliderVTable, self: ptr cQSlider) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  sliderChange*: proc(vtbl, self: pointer, change: cint): void {.cdecl, raises: [], gcsafe.}
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
proc fcQSlider_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSlider_virtualbase_metaObject".}
proc fcQSlider_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSlider_virtualbase_metacast".}
proc fcQSlider_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSlider_virtualbase_metacall".}
proc fcQSlider_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QSlider_virtualbase_sizeHint".}
proc fcQSlider_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QSlider_virtualbase_minimumSizeHint".}
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
proc fcQSlider_virtualbase_devType(self: pointer, ): cint {.importc: "QSlider_virtualbase_devType".}
proc fcQSlider_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSlider_virtualbase_setVisible".}
proc fcQSlider_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSlider_virtualbase_heightForWidth".}
proc fcQSlider_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QSlider_virtualbase_hasHeightForWidth".}
proc fcQSlider_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QSlider_virtualbase_paintEngine".}
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
proc fcQSlider_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QSlider_virtualbase_sharedPainter".}
proc fcQSlider_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSlider_virtualbase_inputMethodEvent".}
proc fcQSlider_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSlider_virtualbase_inputMethodQuery".}
proc fcQSlider_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSlider_virtualbase_focusNextPrevChild".}
proc fcQSlider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSlider_virtualbase_eventFilter".}
proc fcQSlider_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_childEvent".}
proc fcQSlider_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSlider_virtualbase_customEvent".}
proc fcQSlider_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSlider_virtualbase_connectNotify".}
proc fcQSlider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSlider_virtualbase_disconnectNotify".}
proc fcQSlider_protectedbase_setRepeatAction(self: pointer, action: cint): void {.importc: "QSlider_protectedbase_setRepeatAction".}
proc fcQSlider_protectedbase_repeatAction(self: pointer, ): cint {.importc: "QSlider_protectedbase_repeatAction".}
proc fcQSlider_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QSlider_protectedbase_updateMicroFocus".}
proc fcQSlider_protectedbase_create(self: pointer, ): void {.importc: "QSlider_protectedbase_create".}
proc fcQSlider_protectedbase_destroy(self: pointer, ): void {.importc: "QSlider_protectedbase_destroy".}
proc fcQSlider_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QSlider_protectedbase_focusNextChild".}
proc fcQSlider_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QSlider_protectedbase_focusPreviousChild".}
proc fcQSlider_protectedbase_sender(self: pointer, ): pointer {.importc: "QSlider_protectedbase_sender".}
proc fcQSlider_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSlider_protectedbase_senderSignalIndex".}
proc fcQSlider_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSlider_protectedbase_receivers".}
proc fcQSlider_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSlider_protectedbase_isSignalConnected".}
proc fcQSlider_new(vtbl: pointer, parent: pointer): ptr cQSlider {.importc: "QSlider_new".}
proc fcQSlider_new2(vtbl: pointer, ): ptr cQSlider {.importc: "QSlider_new2".}
proc fcQSlider_new3(vtbl: pointer, orientation: cint): ptr cQSlider {.importc: "QSlider_new3".}
proc fcQSlider_new4(vtbl: pointer, orientation: cint, parent: pointer): ptr cQSlider {.importc: "QSlider_new4".}
proc fcQSlider_staticMetaObject(): pointer {.importc: "QSlider_staticMetaObject".}
proc fcQSlider_delete(self: pointer) {.importc: "QSlider_delete".}

proc metaObject*(self: gen_qslider_types.QSlider, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSlider_metaObject(self.h))

proc metacast*(self: gen_qslider_types.QSlider, param1: cstring): pointer =
  fcQSlider_metacast(self.h, param1)

proc metacall*(self: gen_qslider_types.QSlider, param1: cint, param2: cint, param3: pointer): cint =
  fcQSlider_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qslider_types.QSlider, s: cstring): string =
  let v_ms = fcQSlider_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qslider_types.QSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSlider_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qslider_types.QSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSlider_minimumSizeHint(self.h))

proc setTickPosition*(self: gen_qslider_types.QSlider, position: cint): void =
  fcQSlider_setTickPosition(self.h, cint(position))

proc tickPosition*(self: gen_qslider_types.QSlider, ): cint =
  cint(fcQSlider_tickPosition(self.h))

proc setTickInterval*(self: gen_qslider_types.QSlider, ti: cint): void =
  fcQSlider_setTickInterval(self.h, ti)

proc tickInterval*(self: gen_qslider_types.QSlider, ): cint =
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
type QSliderVTable* = object
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
proc QSlidermetaObject*(self: gen_qslider_types.QSlider, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSlider_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSlider_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSlidermetacast*(self: gen_qslider_types.QSlider, param1: cstring): pointer =
  fcQSlider_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSlider_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSlidermetacall*(self: gen_qslider_types.QSlider, param1: cint, param2: cint, param3: pointer): cint =
  fcQSlider_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSlider_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSlidersizeHint*(self: gen_qslider_types.QSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSlider_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQSlider_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QSliderminimumSizeHint*(self: gen_qslider_types.QSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSlider_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQSlider_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QSliderevent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QEvent): bool =
  fcQSlider_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSlider_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSliderpaintEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QPaintEvent): void =
  fcQSlider_virtualbase_paintEvent(self.h, ev.h)

proc miqt_exec_callback_cQSlider_paintEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: ev)
  vtbl[].paintEvent(self, slotval1)

proc QSlidermousePressEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QMouseEvent): void =
  fcQSlider_virtualbase_mousePressEvent(self.h, ev.h)

proc miqt_exec_callback_cQSlider_mousePressEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)
  vtbl[].mousePressEvent(self, slotval1)

proc QSlidermouseReleaseEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QMouseEvent): void =
  fcQSlider_virtualbase_mouseReleaseEvent(self.h, ev.h)

proc miqt_exec_callback_cQSlider_mouseReleaseEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QSlidermouseMoveEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QMouseEvent): void =
  fcQSlider_virtualbase_mouseMoveEvent(self.h, ev.h)

proc miqt_exec_callback_cQSlider_mouseMoveEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QSliderinitStyleOption*(self: gen_qslider_types.QSlider, option: gen_qstyleoption_types.QStyleOptionSlider): void =
  fcQSlider_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQSlider_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionSlider(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QSlidersliderChange*(self: gen_qslider_types.QSlider, change: cint): void =
  fcQSlider_virtualbase_sliderChange(self.h, cint(change))

proc miqt_exec_callback_cQSlider_sliderChange(vtbl: pointer, self: pointer, change: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = cint(change)
  vtbl[].sliderChange(self, slotval1)

proc QSliderkeyPressEvent*(self: gen_qslider_types.QSlider, ev: gen_qevent_types.QKeyEvent): void =
  fcQSlider_virtualbase_keyPressEvent(self.h, ev.h)

proc miqt_exec_callback_cQSlider_keyPressEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev)
  vtbl[].keyPressEvent(self, slotval1)

proc QSlidertimerEvent*(self: gen_qslider_types.QSlider, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQSlider_virtualbase_timerEvent(self.h, param1.h)

proc miqt_exec_callback_cQSlider_timerEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)
  vtbl[].timerEvent(self, slotval1)

proc QSliderwheelEvent*(self: gen_qslider_types.QSlider, e: gen_qevent_types.QWheelEvent): void =
  fcQSlider_virtualbase_wheelEvent(self.h, e.h)

proc miqt_exec_callback_cQSlider_wheelEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)
  vtbl[].wheelEvent(self, slotval1)

proc QSliderchangeEvent*(self: gen_qslider_types.QSlider, e: gen_qcoreevent_types.QEvent): void =
  fcQSlider_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQSlider_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QSliderdevType*(self: gen_qslider_types.QSlider, ): cint =
  fcQSlider_virtualbase_devType(self.h)

proc miqt_exec_callback_cQSlider_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSlidersetVisible*(self: gen_qslider_types.QSlider, visible: bool): void =
  fcQSlider_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQSlider_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QSliderheightForWidth*(self: gen_qslider_types.QSlider, param1: cint): cint =
  fcQSlider_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQSlider_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSliderhasHeightForWidth*(self: gen_qslider_types.QSlider, ): bool =
  fcQSlider_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQSlider_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSliderpaintEngine*(self: gen_qslider_types.QSlider, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSlider_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQSlider_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QSlidermouseDoubleClickEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QMouseEvent): void =
  fcQSlider_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QSliderkeyReleaseEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QKeyEvent): void =
  fcQSlider_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QSliderfocusInEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QFocusEvent): void =
  fcQSlider_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QSliderfocusOutEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QFocusEvent): void =
  fcQSlider_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QSliderenterEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QEnterEvent): void =
  fcQSlider_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QSliderleaveEvent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QEvent): void =
  fcQSlider_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QSlidermoveEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QMoveEvent): void =
  fcQSlider_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QSliderresizeEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QResizeEvent): void =
  fcQSlider_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QSlidercloseEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QCloseEvent): void =
  fcQSlider_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QSlidercontextMenuEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSlider_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QSlidertabletEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QTabletEvent): void =
  fcQSlider_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QSlideractionEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QActionEvent): void =
  fcQSlider_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QSliderdragEnterEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSlider_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QSliderdragMoveEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSlider_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QSliderdragLeaveEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSlider_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QSliderdropEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QDropEvent): void =
  fcQSlider_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QSlidershowEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QShowEvent): void =
  fcQSlider_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QSliderhideEvent*(self: gen_qslider_types.QSlider, event: gen_qevent_types.QHideEvent): void =
  fcQSlider_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QSlidernativeEvent*(self: gen_qslider_types.QSlider, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQSlider_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQSlider_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
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

proc miqt_exec_callback_cQSlider_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSliderinitPainter*(self: gen_qslider_types.QSlider, painter: gen_qpainter_types.QPainter): void =
  fcQSlider_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQSlider_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QSliderredirected*(self: gen_qslider_types.QSlider, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSlider_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQSlider_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QSlidersharedPainter*(self: gen_qslider_types.QSlider, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSlider_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQSlider_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QSliderinputMethodEvent*(self: gen_qslider_types.QSlider, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSlider_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQSlider_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QSliderinputMethodQuery*(self: gen_qslider_types.QSlider, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSlider_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQSlider_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QSliderfocusNextPrevChild*(self: gen_qslider_types.QSlider, next: bool): bool =
  fcQSlider_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQSlider_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QSlidereventFilter*(self: gen_qslider_types.QSlider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSlider_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSlider_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSliderchildEvent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSlider_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSlidercustomEvent*(self: gen_qslider_types.QSlider, event: gen_qcoreevent_types.QEvent): void =
  fcQSlider_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSlider_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSliderconnectNotify*(self: gen_qslider_types.QSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSlider_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSlider_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSliderdisconnectNotify*(self: gen_qslider_types.QSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSlider_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSlider_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSliderVTable](vtbl)
  let self = QSlider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc setRepeatAction*(self: gen_qslider_types.QSlider, action: cint): void =
  fcQSlider_protectedbase_setRepeatAction(self.h, cint(action))

proc repeatAction*(self: gen_qslider_types.QSlider, ): cint =
  cint(fcQSlider_protectedbase_repeatAction(self.h))

proc updateMicroFocus*(self: gen_qslider_types.QSlider, ): void =
  fcQSlider_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qslider_types.QSlider, ): void =
  fcQSlider_protectedbase_create(self.h)

proc destroy*(self: gen_qslider_types.QSlider, ): void =
  fcQSlider_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qslider_types.QSlider, ): bool =
  fcQSlider_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qslider_types.QSlider, ): bool =
  fcQSlider_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qslider_types.QSlider, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSlider_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qslider_types.QSlider, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSliderVTable, _: ptr cQSlider) {.cdecl.} =
    let vtbl = cast[ref QSliderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSlider_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSlider_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSlider_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSlider_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSlider_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSlider_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSlider_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSlider_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSlider_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSlider_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQSlider_initStyleOption
  if not isNil(vtbl.sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQSlider_sliderChange
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSlider_keyPressEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSlider_timerEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSlider_wheelEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSlider_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSlider_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSlider_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSlider_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSlider_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSlider_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSlider_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSlider_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSlider_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSlider_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSlider_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSlider_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSlider_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSlider_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSlider_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSlider_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSlider_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSlider_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSlider_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSlider_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSlider_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSlider_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSlider_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSlider_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSlider_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSlider_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSlider_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSlider_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSlider_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSlider_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSlider_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSlider_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSlider_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSlider_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSlider_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSlider_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSlider_disconnectNotify
  gen_qslider_types.QSlider(h: fcQSlider_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qslider_types.QSlider,
    vtbl: ref QSliderVTable = nil): gen_qslider_types.QSlider =
  let vtbl = if vtbl == nil: new QSliderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSliderVTable, _: ptr cQSlider) {.cdecl.} =
    let vtbl = cast[ref QSliderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSlider_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSlider_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSlider_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSlider_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSlider_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSlider_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSlider_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSlider_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSlider_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSlider_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQSlider_initStyleOption
  if not isNil(vtbl.sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQSlider_sliderChange
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSlider_keyPressEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSlider_timerEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSlider_wheelEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSlider_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSlider_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSlider_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSlider_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSlider_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSlider_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSlider_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSlider_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSlider_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSlider_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSlider_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSlider_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSlider_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSlider_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSlider_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSlider_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSlider_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSlider_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSlider_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSlider_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSlider_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSlider_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSlider_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSlider_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSlider_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSlider_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSlider_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSlider_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSlider_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSlider_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSlider_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSlider_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSlider_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSlider_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSlider_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSlider_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSlider_disconnectNotify
  gen_qslider_types.QSlider(h: fcQSlider_new2(addr(vtbl[]), ))

proc create*(T: type gen_qslider_types.QSlider,
    orientation: cint,
    vtbl: ref QSliderVTable = nil): gen_qslider_types.QSlider =
  let vtbl = if vtbl == nil: new QSliderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSliderVTable, _: ptr cQSlider) {.cdecl.} =
    let vtbl = cast[ref QSliderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSlider_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSlider_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSlider_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSlider_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSlider_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSlider_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSlider_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSlider_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSlider_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSlider_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQSlider_initStyleOption
  if not isNil(vtbl.sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQSlider_sliderChange
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSlider_keyPressEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSlider_timerEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSlider_wheelEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSlider_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSlider_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSlider_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSlider_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSlider_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSlider_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSlider_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSlider_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSlider_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSlider_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSlider_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSlider_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSlider_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSlider_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSlider_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSlider_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSlider_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSlider_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSlider_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSlider_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSlider_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSlider_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSlider_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSlider_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSlider_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSlider_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSlider_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSlider_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSlider_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSlider_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSlider_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSlider_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSlider_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSlider_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSlider_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSlider_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSlider_disconnectNotify
  gen_qslider_types.QSlider(h: fcQSlider_new3(addr(vtbl[]), cint(orientation)))

proc create*(T: type gen_qslider_types.QSlider,
    orientation: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QSliderVTable = nil): gen_qslider_types.QSlider =
  let vtbl = if vtbl == nil: new QSliderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSliderVTable, _: ptr cQSlider) {.cdecl.} =
    let vtbl = cast[ref QSliderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSlider_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSlider_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSlider_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSlider_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSlider_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSlider_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSlider_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSlider_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSlider_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSlider_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQSlider_initStyleOption
  if not isNil(vtbl.sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQSlider_sliderChange
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSlider_keyPressEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSlider_timerEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSlider_wheelEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSlider_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSlider_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSlider_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSlider_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSlider_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSlider_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSlider_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSlider_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSlider_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSlider_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSlider_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSlider_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSlider_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSlider_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSlider_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSlider_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSlider_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSlider_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSlider_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSlider_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSlider_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSlider_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSlider_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSlider_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSlider_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSlider_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSlider_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSlider_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSlider_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSlider_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSlider_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSlider_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSlider_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSlider_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSlider_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSlider_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSlider_disconnectNotify
  gen_qslider_types.QSlider(h: fcQSlider_new4(addr(vtbl[]), cint(orientation), parent.h))

proc staticMetaObject*(_: type gen_qslider_types.QSlider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSlider_staticMetaObject())
proc delete*(self: gen_qslider_types.QSlider) =
  fcQSlider_delete(self.h)
