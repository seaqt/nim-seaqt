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


{.compile("gen_qframe.cpp", QtWidgetsCFlags).}


type QFrameShapeEnum* = distinct cint
template NoFrame*(_: type QFrameShapeEnum): untyped = 0
template Box*(_: type QFrameShapeEnum): untyped = 1
template Panel*(_: type QFrameShapeEnum): untyped = 2
template WinPanel*(_: type QFrameShapeEnum): untyped = 3
template HLine*(_: type QFrameShapeEnum): untyped = 4
template VLine*(_: type QFrameShapeEnum): untyped = 5
template StyledPanel*(_: type QFrameShapeEnum): untyped = 6


type QFrameShadowEnum* = distinct cint
template Plain*(_: type QFrameShadowEnum): untyped = 16
template Raised*(_: type QFrameShadowEnum): untyped = 32
template Sunken*(_: type QFrameShadowEnum): untyped = 48


type QFrameStyleMaskEnum* = distinct cint
template Shadow_Mask*(_: type QFrameStyleMaskEnum): untyped = 240
template Shape_Mask*(_: type QFrameStyleMaskEnum): untyped = 15


import ./gen_qframe_types
export gen_qframe_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
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
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qstyleoption_types,
  gen_qwidget

type cQFrame*{.exportc: "QFrame", incompleteStruct.} = object

proc fcQFrame_metaObject(self: pointer): pointer {.importc: "QFrame_metaObject".}
proc fcQFrame_metacast(self: pointer, param1: cstring): pointer {.importc: "QFrame_metacast".}
proc fcQFrame_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFrame_metacall".}
proc fcQFrame_tr(s: cstring): struct_miqt_string {.importc: "QFrame_tr".}
proc fcQFrame_frameStyle(self: pointer): cint {.importc: "QFrame_frameStyle".}
proc fcQFrame_setFrameStyle(self: pointer, frameStyle: cint): void {.importc: "QFrame_setFrameStyle".}
proc fcQFrame_frameWidth(self: pointer): cint {.importc: "QFrame_frameWidth".}
proc fcQFrame_sizeHint(self: pointer): pointer {.importc: "QFrame_sizeHint".}
proc fcQFrame_frameShape(self: pointer): cint {.importc: "QFrame_frameShape".}
proc fcQFrame_setFrameShape(self: pointer, frameShape: cint): void {.importc: "QFrame_setFrameShape".}
proc fcQFrame_frameShadow(self: pointer): cint {.importc: "QFrame_frameShadow".}
proc fcQFrame_setFrameShadow(self: pointer, frameShadow: cint): void {.importc: "QFrame_setFrameShadow".}
proc fcQFrame_lineWidth(self: pointer): cint {.importc: "QFrame_lineWidth".}
proc fcQFrame_setLineWidth(self: pointer, lineWidth: cint): void {.importc: "QFrame_setLineWidth".}
proc fcQFrame_midLineWidth(self: pointer): cint {.importc: "QFrame_midLineWidth".}
proc fcQFrame_setMidLineWidth(self: pointer, midLineWidth: cint): void {.importc: "QFrame_setMidLineWidth".}
proc fcQFrame_frameRect(self: pointer): pointer {.importc: "QFrame_frameRect".}
proc fcQFrame_setFrameRect(self: pointer, frameRect: pointer): void {.importc: "QFrame_setFrameRect".}
proc fcQFrame_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFrame_tr2".}
proc fcQFrame_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFrame_tr3".}
proc fcQFrame_vtbl(self: pointer): pointer {.importc: "QFrame_vtbl".}
proc fcQFrame_vdata(self: pointer): pointer {.importc: "QFrame_vdata".}
type cQFrameVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
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
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQFrame_virtualbase_metaObject(self: pointer): pointer {.importc: "QFrame_virtualbase_metaObject".}
proc fcQFrame_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFrame_virtualbase_metacast".}
proc fcQFrame_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFrame_virtualbase_metacall".}
proc fcQFrame_virtualbase_sizeHint(self: pointer): pointer {.importc: "QFrame_virtualbase_sizeHint".}
proc fcQFrame_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QFrame_virtualbase_event".}
proc fcQFrame_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QFrame_virtualbase_paintEvent".}
proc fcQFrame_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QFrame_virtualbase_changeEvent".}
proc fcQFrame_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QFrame_virtualbase_initStyleOption".}
proc fcQFrame_virtualbase_devType(self: pointer): cint {.importc: "QFrame_virtualbase_devType".}
proc fcQFrame_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QFrame_virtualbase_setVisible".}
proc fcQFrame_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QFrame_virtualbase_minimumSizeHint".}
proc fcQFrame_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QFrame_virtualbase_heightForWidth".}
proc fcQFrame_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QFrame_virtualbase_hasHeightForWidth".}
proc fcQFrame_virtualbase_paintEngine(self: pointer): pointer {.importc: "QFrame_virtualbase_paintEngine".}
proc fcQFrame_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_mousePressEvent".}
proc fcQFrame_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_mouseReleaseEvent".}
proc fcQFrame_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_mouseDoubleClickEvent".}
proc fcQFrame_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_mouseMoveEvent".}
proc fcQFrame_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_wheelEvent".}
proc fcQFrame_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_keyPressEvent".}
proc fcQFrame_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_keyReleaseEvent".}
proc fcQFrame_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_focusInEvent".}
proc fcQFrame_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_focusOutEvent".}
proc fcQFrame_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_enterEvent".}
proc fcQFrame_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_leaveEvent".}
proc fcQFrame_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_moveEvent".}
proc fcQFrame_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_resizeEvent".}
proc fcQFrame_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_closeEvent".}
proc fcQFrame_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_contextMenuEvent".}
proc fcQFrame_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_tabletEvent".}
proc fcQFrame_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_actionEvent".}
proc fcQFrame_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_dragEnterEvent".}
proc fcQFrame_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_dragMoveEvent".}
proc fcQFrame_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_dragLeaveEvent".}
proc fcQFrame_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_dropEvent".}
proc fcQFrame_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_showEvent".}
proc fcQFrame_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_hideEvent".}
proc fcQFrame_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QFrame_virtualbase_nativeEvent".}
proc fcQFrame_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QFrame_virtualbase_metric".}
proc fcQFrame_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QFrame_virtualbase_initPainter".}
proc fcQFrame_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QFrame_virtualbase_redirected".}
proc fcQFrame_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QFrame_virtualbase_sharedPainter".}
proc fcQFrame_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QFrame_virtualbase_inputMethodEvent".}
proc fcQFrame_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QFrame_virtualbase_inputMethodQuery".}
proc fcQFrame_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QFrame_virtualbase_focusNextPrevChild".}
proc fcQFrame_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFrame_virtualbase_eventFilter".}
proc fcQFrame_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_timerEvent".}
proc fcQFrame_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_childEvent".}
proc fcQFrame_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFrame_virtualbase_customEvent".}
proc fcQFrame_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFrame_virtualbase_connectNotify".}
proc fcQFrame_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFrame_virtualbase_disconnectNotify".}
proc fcQFrame_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QFrame_protectedbase_drawFrame".}
proc fcQFrame_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QFrame_protectedbase_updateMicroFocus".}
proc fcQFrame_protectedbase_create(self: pointer): void {.importc: "QFrame_protectedbase_create".}
proc fcQFrame_protectedbase_destroy(self: pointer): void {.importc: "QFrame_protectedbase_destroy".}
proc fcQFrame_protectedbase_focusNextChild(self: pointer): bool {.importc: "QFrame_protectedbase_focusNextChild".}
proc fcQFrame_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QFrame_protectedbase_focusPreviousChild".}
proc fcQFrame_protectedbase_sender(self: pointer): pointer {.importc: "QFrame_protectedbase_sender".}
proc fcQFrame_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFrame_protectedbase_senderSignalIndex".}
proc fcQFrame_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFrame_protectedbase_receivers".}
proc fcQFrame_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFrame_protectedbase_isSignalConnected".}
proc fcQFrame_new(vtbl, vdata: pointer, parent: pointer): ptr cQFrame {.importc: "QFrame_new".}
proc fcQFrame_new2(vtbl, vdata: pointer): ptr cQFrame {.importc: "QFrame_new2".}
proc fcQFrame_new3(vtbl, vdata: pointer, parent: pointer, f: cint): ptr cQFrame {.importc: "QFrame_new3".}
proc fcQFrame_staticMetaObject(): pointer {.importc: "QFrame_staticMetaObject".}

proc metaObject*(self: gen_qframe_types.QFrame): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFrame_metaObject(self.h), owned: false)

proc metacast*(self: gen_qframe_types.QFrame, param1: cstring): pointer =
  fcQFrame_metacast(self.h, param1)

proc metacall*(self: gen_qframe_types.QFrame, param1: cint, param2: cint, param3: pointer): cint =
  fcQFrame_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qframe_types.QFrame, s: cstring): string =
  let v_ms = fcQFrame_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc frameStyle*(self: gen_qframe_types.QFrame): cint =
  fcQFrame_frameStyle(self.h)

proc setFrameStyle*(self: gen_qframe_types.QFrame, frameStyle: cint): void =
  fcQFrame_setFrameStyle(self.h, frameStyle)

proc frameWidth*(self: gen_qframe_types.QFrame): cint =
  fcQFrame_frameWidth(self.h)

proc sizeHint*(self: gen_qframe_types.QFrame): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFrame_sizeHint(self.h), owned: true)

proc frameShape*(self: gen_qframe_types.QFrame): cint =
  cint(fcQFrame_frameShape(self.h))

proc setFrameShape*(self: gen_qframe_types.QFrame, frameShape: cint): void =
  fcQFrame_setFrameShape(self.h, cint(frameShape))

proc frameShadow*(self: gen_qframe_types.QFrame): cint =
  cint(fcQFrame_frameShadow(self.h))

proc setFrameShadow*(self: gen_qframe_types.QFrame, frameShadow: cint): void =
  fcQFrame_setFrameShadow(self.h, cint(frameShadow))

proc lineWidth*(self: gen_qframe_types.QFrame): cint =
  fcQFrame_lineWidth(self.h)

proc setLineWidth*(self: gen_qframe_types.QFrame, lineWidth: cint): void =
  fcQFrame_setLineWidth(self.h, lineWidth)

proc midLineWidth*(self: gen_qframe_types.QFrame): cint =
  fcQFrame_midLineWidth(self.h)

proc setMidLineWidth*(self: gen_qframe_types.QFrame, midLineWidth: cint): void =
  fcQFrame_setMidLineWidth(self.h, midLineWidth)

proc frameRect*(self: gen_qframe_types.QFrame): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFrame_frameRect(self.h), owned: true)

proc setFrameRect*(self: gen_qframe_types.QFrame, frameRect: gen_qrect_types.QRect): void =
  fcQFrame_setFrameRect(self.h, frameRect.h)

proc tr*(_: type gen_qframe_types.QFrame, s: cstring, c: cstring): string =
  let v_ms = fcQFrame_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qframe_types.QFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFrame_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QFramemetaObjectProc* = proc(self: QFrame): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFramemetacastProc* = proc(self: QFrame, param1: cstring): pointer {.raises: [], gcsafe.}
type QFramemetacallProc* = proc(self: QFrame, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFramesizeHintProc* = proc(self: QFrame): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFrameeventProc* = proc(self: QFrame, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFramepaintEventProc* = proc(self: QFrame, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QFramechangeEventProc* = proc(self: QFrame, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFrameinitStyleOptionProc* = proc(self: QFrame, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QFramedevTypeProc* = proc(self: QFrame): cint {.raises: [], gcsafe.}
type QFramesetVisibleProc* = proc(self: QFrame, visible: bool): void {.raises: [], gcsafe.}
type QFrameminimumSizeHintProc* = proc(self: QFrame): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFrameheightForWidthProc* = proc(self: QFrame, param1: cint): cint {.raises: [], gcsafe.}
type QFramehasHeightForWidthProc* = proc(self: QFrame): bool {.raises: [], gcsafe.}
type QFramepaintEngineProc* = proc(self: QFrame): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QFramemousePressEventProc* = proc(self: QFrame, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFramemouseReleaseEventProc* = proc(self: QFrame, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFramemouseDoubleClickEventProc* = proc(self: QFrame, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFramemouseMoveEventProc* = proc(self: QFrame, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFramewheelEventProc* = proc(self: QFrame, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QFramekeyPressEventProc* = proc(self: QFrame, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QFramekeyReleaseEventProc* = proc(self: QFrame, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QFramefocusInEventProc* = proc(self: QFrame, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QFramefocusOutEventProc* = proc(self: QFrame, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QFrameenterEventProc* = proc(self: QFrame, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QFrameleaveEventProc* = proc(self: QFrame, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFramemoveEventProc* = proc(self: QFrame, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QFrameresizeEventProc* = proc(self: QFrame, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QFramecloseEventProc* = proc(self: QFrame, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QFramecontextMenuEventProc* = proc(self: QFrame, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QFrametabletEventProc* = proc(self: QFrame, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QFrameactionEventProc* = proc(self: QFrame, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QFramedragEnterEventProc* = proc(self: QFrame, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QFramedragMoveEventProc* = proc(self: QFrame, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QFramedragLeaveEventProc* = proc(self: QFrame, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QFramedropEventProc* = proc(self: QFrame, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QFrameshowEventProc* = proc(self: QFrame, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QFramehideEventProc* = proc(self: QFrame, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QFramenativeEventProc* = proc(self: QFrame, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QFramemetricProc* = proc(self: QFrame, param1: cint): cint {.raises: [], gcsafe.}
type QFrameinitPainterProc* = proc(self: QFrame, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QFrameredirectedProc* = proc(self: QFrame, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QFramesharedPainterProc* = proc(self: QFrame): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QFrameinputMethodEventProc* = proc(self: QFrame, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QFrameinputMethodQueryProc* = proc(self: QFrame, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QFramefocusNextPrevChildProc* = proc(self: QFrame, next: bool): bool {.raises: [], gcsafe.}
type QFrameeventFilterProc* = proc(self: QFrame, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFrametimerEventProc* = proc(self: QFrame, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFramechildEventProc* = proc(self: QFrame, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFramecustomEventProc* = proc(self: QFrame, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFrameconnectNotifyProc* = proc(self: QFrame, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFramedisconnectNotifyProc* = proc(self: QFrame, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFrameVTable* {.inheritable, pure.} = object
  vtbl: cQFrameVTable
  metaObject*: QFramemetaObjectProc
  metacast*: QFramemetacastProc
  metacall*: QFramemetacallProc
  sizeHint*: QFramesizeHintProc
  event*: QFrameeventProc
  paintEvent*: QFramepaintEventProc
  changeEvent*: QFramechangeEventProc
  initStyleOption*: QFrameinitStyleOptionProc
  devType*: QFramedevTypeProc
  setVisible*: QFramesetVisibleProc
  minimumSizeHint*: QFrameminimumSizeHintProc
  heightForWidth*: QFrameheightForWidthProc
  hasHeightForWidth*: QFramehasHeightForWidthProc
  paintEngine*: QFramepaintEngineProc
  mousePressEvent*: QFramemousePressEventProc
  mouseReleaseEvent*: QFramemouseReleaseEventProc
  mouseDoubleClickEvent*: QFramemouseDoubleClickEventProc
  mouseMoveEvent*: QFramemouseMoveEventProc
  wheelEvent*: QFramewheelEventProc
  keyPressEvent*: QFramekeyPressEventProc
  keyReleaseEvent*: QFramekeyReleaseEventProc
  focusInEvent*: QFramefocusInEventProc
  focusOutEvent*: QFramefocusOutEventProc
  enterEvent*: QFrameenterEventProc
  leaveEvent*: QFrameleaveEventProc
  moveEvent*: QFramemoveEventProc
  resizeEvent*: QFrameresizeEventProc
  closeEvent*: QFramecloseEventProc
  contextMenuEvent*: QFramecontextMenuEventProc
  tabletEvent*: QFrametabletEventProc
  actionEvent*: QFrameactionEventProc
  dragEnterEvent*: QFramedragEnterEventProc
  dragMoveEvent*: QFramedragMoveEventProc
  dragLeaveEvent*: QFramedragLeaveEventProc
  dropEvent*: QFramedropEventProc
  showEvent*: QFrameshowEventProc
  hideEvent*: QFramehideEventProc
  nativeEvent*: QFramenativeEventProc
  metric*: QFramemetricProc
  initPainter*: QFrameinitPainterProc
  redirected*: QFrameredirectedProc
  sharedPainter*: QFramesharedPainterProc
  inputMethodEvent*: QFrameinputMethodEventProc
  inputMethodQuery*: QFrameinputMethodQueryProc
  focusNextPrevChild*: QFramefocusNextPrevChildProc
  eventFilter*: QFrameeventFilterProc
  timerEvent*: QFrametimerEventProc
  childEvent*: QFramechildEventProc
  customEvent*: QFramecustomEventProc
  connectNotify*: QFrameconnectNotifyProc
  disconnectNotify*: QFramedisconnectNotifyProc
proc QFramemetaObject*(self: gen_qframe_types.QFrame): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFrame_virtualbase_metaObject(self.h), owned: false)

proc cQFrame_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFramemetacast*(self: gen_qframe_types.QFrame, param1: cstring): pointer =
  fcQFrame_virtualbase_metacast(self.h, param1)

proc cQFrame_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFramemetacall*(self: gen_qframe_types.QFrame, param1: cint, param2: cint, param3: pointer): cint =
  fcQFrame_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQFrame_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFramesizeHint*(self: gen_qframe_types.QFrame): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFrame_virtualbase_sizeHint(self.h), owned: true)

proc cQFrame_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFrameevent*(self: gen_qframe_types.QFrame, e: gen_qcoreevent_types.QEvent): bool =
  fcQFrame_virtualbase_event(self.h, e.h)

proc cQFrame_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFramepaintEvent*(self: gen_qframe_types.QFrame, param1: gen_qevent_types.QPaintEvent): void =
  fcQFrame_virtualbase_paintEvent(self.h, param1.h)

proc cQFrame_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QFramechangeEvent*(self: gen_qframe_types.QFrame, param1: gen_qcoreevent_types.QEvent): void =
  fcQFrame_virtualbase_changeEvent(self.h, param1.h)

proc cQFrame_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QFrameinitStyleOption*(self: gen_qframe_types.QFrame, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQFrame_virtualbase_initStyleOption(self.h, option.h)

proc cQFrame_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QFramedevType*(self: gen_qframe_types.QFrame): cint =
  fcQFrame_virtualbase_devType(self.h)

proc cQFrame_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QFramesetVisible*(self: gen_qframe_types.QFrame, visible: bool): void =
  fcQFrame_virtualbase_setVisible(self.h, visible)

proc cQFrame_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QFrameminimumSizeHint*(self: gen_qframe_types.QFrame): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFrame_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQFrame_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFrameheightForWidth*(self: gen_qframe_types.QFrame, param1: cint): cint =
  fcQFrame_virtualbase_heightForWidth(self.h, param1)

proc cQFrame_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QFramehasHeightForWidth*(self: gen_qframe_types.QFrame): bool =
  fcQFrame_virtualbase_hasHeightForWidth(self.h)

proc cQFrame_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QFramepaintEngine*(self: gen_qframe_types.QFrame): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQFrame_virtualbase_paintEngine(self.h), owned: false)

proc cQFrame_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFramemousePressEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFrame_virtualbase_mousePressEvent(self.h, event.h)

proc cQFrame_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QFramemouseReleaseEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFrame_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQFrame_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QFramemouseDoubleClickEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFrame_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQFrame_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QFramemouseMoveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFrame_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQFrame_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QFramewheelEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QWheelEvent): void =
  fcQFrame_virtualbase_wheelEvent(self.h, event.h)

proc cQFrame_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QFramekeyPressEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QKeyEvent): void =
  fcQFrame_virtualbase_keyPressEvent(self.h, event.h)

proc cQFrame_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QFramekeyReleaseEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QKeyEvent): void =
  fcQFrame_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQFrame_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QFramefocusInEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QFocusEvent): void =
  fcQFrame_virtualbase_focusInEvent(self.h, event.h)

proc cQFrame_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QFramefocusOutEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QFocusEvent): void =
  fcQFrame_virtualbase_focusOutEvent(self.h, event.h)

proc cQFrame_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QFrameenterEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QEnterEvent): void =
  fcQFrame_virtualbase_enterEvent(self.h, event.h)

proc cQFrame_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QFrameleaveEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QEvent): void =
  fcQFrame_virtualbase_leaveEvent(self.h, event.h)

proc cQFrame_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QFramemoveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMoveEvent): void =
  fcQFrame_virtualbase_moveEvent(self.h, event.h)

proc cQFrame_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QFrameresizeEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QResizeEvent): void =
  fcQFrame_virtualbase_resizeEvent(self.h, event.h)

proc cQFrame_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QFramecloseEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QCloseEvent): void =
  fcQFrame_virtualbase_closeEvent(self.h, event.h)

proc cQFrame_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QFramecontextMenuEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QContextMenuEvent): void =
  fcQFrame_virtualbase_contextMenuEvent(self.h, event.h)

proc cQFrame_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QFrametabletEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QTabletEvent): void =
  fcQFrame_virtualbase_tabletEvent(self.h, event.h)

proc cQFrame_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QFrameactionEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QActionEvent): void =
  fcQFrame_virtualbase_actionEvent(self.h, event.h)

proc cQFrame_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QFramedragEnterEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDragEnterEvent): void =
  fcQFrame_virtualbase_dragEnterEvent(self.h, event.h)

proc cQFrame_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QFramedragMoveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDragMoveEvent): void =
  fcQFrame_virtualbase_dragMoveEvent(self.h, event.h)

proc cQFrame_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QFramedragLeaveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQFrame_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQFrame_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QFramedropEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDropEvent): void =
  fcQFrame_virtualbase_dropEvent(self.h, event.h)

proc cQFrame_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QFrameshowEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QShowEvent): void =
  fcQFrame_virtualbase_showEvent(self.h, event.h)

proc cQFrame_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QFramehideEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QHideEvent): void =
  fcQFrame_virtualbase_hideEvent(self.h, event.h)

proc cQFrame_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QFramenativeEvent*(self: gen_qframe_types.QFrame, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQFrame_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQFrame_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFramemetric*(self: gen_qframe_types.QFrame, param1: cint): cint =
  fcQFrame_virtualbase_metric(self.h, cint(param1))

proc cQFrame_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QFrameinitPainter*(self: gen_qframe_types.QFrame, painter: gen_qpainter_types.QPainter): void =
  fcQFrame_virtualbase_initPainter(self.h, painter.h)

proc cQFrame_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QFrameredirected*(self: gen_qframe_types.QFrame, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQFrame_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQFrame_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFramesharedPainter*(self: gen_qframe_types.QFrame): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQFrame_virtualbase_sharedPainter(self.h), owned: false)

proc cQFrame_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFrameinputMethodEvent*(self: gen_qframe_types.QFrame, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQFrame_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQFrame_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QFrameinputMethodQuery*(self: gen_qframe_types.QFrame, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFrame_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQFrame_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFramefocusNextPrevChild*(self: gen_qframe_types.QFrame, next: bool): bool =
  fcQFrame_virtualbase_focusNextPrevChild(self.h, next)

proc cQFrame_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QFrameeventFilter*(self: gen_qframe_types.QFrame, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFrame_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQFrame_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFrametimerEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFrame_virtualbase_timerEvent(self.h, event.h)

proc cQFrame_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QFramechildEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFrame_virtualbase_childEvent(self.h, event.h)

proc cQFrame_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QFramecustomEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QEvent): void =
  fcQFrame_virtualbase_customEvent(self.h, event.h)

proc cQFrame_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QFrameconnectNotify*(self: gen_qframe_types.QFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFrame_virtualbase_connectNotify(self.h, signal.h)

proc cQFrame_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QFramedisconnectNotify*(self: gen_qframe_types.QFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFrame_virtualbase_disconnectNotify(self.h, signal.h)

proc cQFrame_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](fcQFrame_vdata(self))
  let self = QFrame(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQFrame* {.inheritable.} = ref object of QFrame
  vtbl*: cQFrameVTable
method metaObject*(self: VirtualQFrame): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFramemetaObject(self[])
proc cQFrame_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQFrame, param1: cstring): pointer {.base.} =
  QFramemetacast(self[], param1)
proc cQFrame_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQFrame, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFramemetacall(self[], param1, param2, param3)
proc cQFrame_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQFrame): gen_qsize_types.QSize {.base.} =
  QFramesizeHint(self[])
proc cQFrame_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQFrame, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFrameevent(self[], e)
proc cQFrame_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method paintEvent*(self: VirtualQFrame, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QFramepaintEvent(self[], param1)
proc cQFrame_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method changeEvent*(self: VirtualQFrame, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QFramechangeEvent(self[], param1)
proc cQFrame_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method initStyleOption*(self: VirtualQFrame, option: gen_qstyleoption_types.QStyleOptionFrame): void {.base.} =
  QFrameinitStyleOption(self[], option)
proc cQFrame_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  inst.initStyleOption(slotval1)

method devType*(self: VirtualQFrame): cint {.base.} =
  QFramedevType(self[])
proc cQFrame_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQFrame, visible: bool): void {.base.} =
  QFramesetVisible(self[], visible)
proc cQFrame_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method minimumSizeHint*(self: VirtualQFrame): gen_qsize_types.QSize {.base.} =
  QFrameminimumSizeHint(self[])
proc cQFrame_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQFrame, param1: cint): cint {.base.} =
  QFrameheightForWidth(self[], param1)
proc cQFrame_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQFrame): bool {.base.} =
  QFramehasHeightForWidth(self[])
proc cQFrame_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQFrame): gen_qpaintengine_types.QPaintEngine {.base.} =
  QFramepaintEngine(self[])
proc cQFrame_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQFrame, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFramemousePressEvent(self[], event)
proc cQFrame_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQFrame, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFramemouseReleaseEvent(self[], event)
proc cQFrame_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQFrame, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFramemouseDoubleClickEvent(self[], event)
proc cQFrame_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQFrame, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFramemouseMoveEvent(self[], event)
proc cQFrame_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQFrame, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QFramewheelEvent(self[], event)
proc cQFrame_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQFrame, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QFramekeyPressEvent(self[], event)
proc cQFrame_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQFrame, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QFramekeyReleaseEvent(self[], event)
proc cQFrame_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQFrame, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QFramefocusInEvent(self[], event)
proc cQFrame_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQFrame, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QFramefocusOutEvent(self[], event)
proc cQFrame_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQFrame, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QFrameenterEvent(self[], event)
proc cQFrame_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQFrame, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFrameleaveEvent(self[], event)
proc cQFrame_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQFrame, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QFramemoveEvent(self[], event)
proc cQFrame_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQFrame, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QFrameresizeEvent(self[], event)
proc cQFrame_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQFrame, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QFramecloseEvent(self[], event)
proc cQFrame_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQFrame, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QFramecontextMenuEvent(self[], event)
proc cQFrame_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQFrame, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QFrametabletEvent(self[], event)
proc cQFrame_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQFrame, event: gen_qevent_types.QActionEvent): void {.base.} =
  QFrameactionEvent(self[], event)
proc cQFrame_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQFrame, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QFramedragEnterEvent(self[], event)
proc cQFrame_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQFrame, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QFramedragMoveEvent(self[], event)
proc cQFrame_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQFrame, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QFramedragLeaveEvent(self[], event)
proc cQFrame_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQFrame, event: gen_qevent_types.QDropEvent): void {.base.} =
  QFramedropEvent(self[], event)
proc cQFrame_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQFrame, event: gen_qevent_types.QShowEvent): void {.base.} =
  QFrameshowEvent(self[], event)
proc cQFrame_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQFrame, event: gen_qevent_types.QHideEvent): void {.base.} =
  QFramehideEvent(self[], event)
proc cQFrame_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQFrame, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QFramenativeEvent(self[], eventType, message, resultVal)
proc cQFrame_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQFrame, param1: cint): cint {.base.} =
  QFramemetric(self[], param1)
proc cQFrame_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQFrame, painter: gen_qpainter_types.QPainter): void {.base.} =
  QFrameinitPainter(self[], painter)
proc cQFrame_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQFrame, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QFrameredirected(self[], offset)
proc cQFrame_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQFrame): gen_qpainter_types.QPainter {.base.} =
  QFramesharedPainter(self[])
proc cQFrame_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQFrame, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QFrameinputMethodEvent(self[], param1)
proc cQFrame_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQFrame, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QFrameinputMethodQuery(self[], param1)
proc cQFrame_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQFrame, next: bool): bool {.base.} =
  QFramefocusNextPrevChild(self[], next)
proc cQFrame_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQFrame, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFrameeventFilter(self[], watched, event)
proc cQFrame_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQFrame, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFrametimerEvent(self[], event)
proc cQFrame_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQFrame, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFramechildEvent(self[], event)
proc cQFrame_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQFrame, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFramecustomEvent(self[], event)
proc cQFrame_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQFrame, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFrameconnectNotify(self[], signal)
proc cQFrame_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQFrame, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFramedisconnectNotify(self[], signal)
proc cQFrame_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFrame](fcQFrame_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc drawFrame*(self: gen_qframe_types.QFrame, param1: gen_qpainter_types.QPainter): void =
  fcQFrame_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qframe_types.QFrame): void =
  fcQFrame_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qframe_types.QFrame): void =
  fcQFrame_protectedbase_create(self.h)

proc destroy*(self: gen_qframe_types.QFrame): void =
  fcQFrame_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qframe_types.QFrame): bool =
  fcQFrame_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qframe_types.QFrame): bool =
  fcQFrame_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qframe_types.QFrame): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFrame_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qframe_types.QFrame): cint =
  fcQFrame_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qframe_types.QFrame, signal: cstring): cint =
  fcQFrame_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qframe_types.QFrame, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFrame_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qframe_types.QFrame,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QFrameVTable = nil): gen_qframe_types.QFrame =
  let vtbl = if vtbl == nil: new QFrameVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFrameVTable](fcQFrame_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFrame_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFrame_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFrame_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFrame_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFrame_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFrame_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFrame_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQFrame_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFrame_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFrame_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFrame_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFrame_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFrame_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFrame_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFrame_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFrame_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFrame_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFrame_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFrame_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFrame_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFrame_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFrame_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFrame_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFrame_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFrame_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFrame_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFrame_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFrame_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFrame_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFrame_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFrame_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFrame_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFrame_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFrame_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFrame_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFrame_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFrame_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFrame_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFrame_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFrame_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFrame_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFrame_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFrame_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFrame_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFrame_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFrame_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFrame_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFrame_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFrame_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFrame_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFrame_vtable_callback_disconnectNotify
  gen_qframe_types.QFrame(h: fcQFrame_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qframe_types.QFrame,
    vtbl: ref QFrameVTable = nil): gen_qframe_types.QFrame =
  let vtbl = if vtbl == nil: new QFrameVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFrameVTable](fcQFrame_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFrame_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFrame_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFrame_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFrame_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFrame_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFrame_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFrame_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQFrame_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFrame_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFrame_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFrame_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFrame_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFrame_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFrame_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFrame_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFrame_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFrame_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFrame_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFrame_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFrame_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFrame_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFrame_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFrame_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFrame_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFrame_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFrame_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFrame_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFrame_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFrame_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFrame_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFrame_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFrame_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFrame_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFrame_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFrame_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFrame_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFrame_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFrame_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFrame_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFrame_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFrame_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFrame_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFrame_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFrame_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFrame_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFrame_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFrame_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFrame_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFrame_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFrame_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFrame_vtable_callback_disconnectNotify
  gen_qframe_types.QFrame(h: fcQFrame_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qframe_types.QFrame,
    parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QFrameVTable = nil): gen_qframe_types.QFrame =
  let vtbl = if vtbl == nil: new QFrameVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFrameVTable](fcQFrame_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFrame_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFrame_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFrame_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFrame_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFrame_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFrame_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFrame_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQFrame_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFrame_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFrame_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFrame_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFrame_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFrame_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFrame_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFrame_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFrame_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFrame_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFrame_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFrame_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFrame_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFrame_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFrame_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFrame_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFrame_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFrame_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFrame_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFrame_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFrame_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFrame_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFrame_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFrame_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFrame_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFrame_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFrame_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFrame_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFrame_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFrame_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFrame_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFrame_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFrame_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFrame_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFrame_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFrame_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFrame_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFrame_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFrame_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFrame_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFrame_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFrame_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFrame_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFrame_vtable_callback_disconnectNotify
  gen_qframe_types.QFrame(h: fcQFrame_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(f)), owned: true)

const cQFrame_mvtbl = cQFrameVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFrame()[])](self.fcQFrame_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQFrame_method_callback_metaObject,
  metacast: cQFrame_method_callback_metacast,
  metacall: cQFrame_method_callback_metacall,
  sizeHint: cQFrame_method_callback_sizeHint,
  event: cQFrame_method_callback_event,
  paintEvent: cQFrame_method_callback_paintEvent,
  changeEvent: cQFrame_method_callback_changeEvent,
  initStyleOption: cQFrame_method_callback_initStyleOption,
  devType: cQFrame_method_callback_devType,
  setVisible: cQFrame_method_callback_setVisible,
  minimumSizeHint: cQFrame_method_callback_minimumSizeHint,
  heightForWidth: cQFrame_method_callback_heightForWidth,
  hasHeightForWidth: cQFrame_method_callback_hasHeightForWidth,
  paintEngine: cQFrame_method_callback_paintEngine,
  mousePressEvent: cQFrame_method_callback_mousePressEvent,
  mouseReleaseEvent: cQFrame_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQFrame_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQFrame_method_callback_mouseMoveEvent,
  wheelEvent: cQFrame_method_callback_wheelEvent,
  keyPressEvent: cQFrame_method_callback_keyPressEvent,
  keyReleaseEvent: cQFrame_method_callback_keyReleaseEvent,
  focusInEvent: cQFrame_method_callback_focusInEvent,
  focusOutEvent: cQFrame_method_callback_focusOutEvent,
  enterEvent: cQFrame_method_callback_enterEvent,
  leaveEvent: cQFrame_method_callback_leaveEvent,
  moveEvent: cQFrame_method_callback_moveEvent,
  resizeEvent: cQFrame_method_callback_resizeEvent,
  closeEvent: cQFrame_method_callback_closeEvent,
  contextMenuEvent: cQFrame_method_callback_contextMenuEvent,
  tabletEvent: cQFrame_method_callback_tabletEvent,
  actionEvent: cQFrame_method_callback_actionEvent,
  dragEnterEvent: cQFrame_method_callback_dragEnterEvent,
  dragMoveEvent: cQFrame_method_callback_dragMoveEvent,
  dragLeaveEvent: cQFrame_method_callback_dragLeaveEvent,
  dropEvent: cQFrame_method_callback_dropEvent,
  showEvent: cQFrame_method_callback_showEvent,
  hideEvent: cQFrame_method_callback_hideEvent,
  nativeEvent: cQFrame_method_callback_nativeEvent,
  metric: cQFrame_method_callback_metric,
  initPainter: cQFrame_method_callback_initPainter,
  redirected: cQFrame_method_callback_redirected,
  sharedPainter: cQFrame_method_callback_sharedPainter,
  inputMethodEvent: cQFrame_method_callback_inputMethodEvent,
  inputMethodQuery: cQFrame_method_callback_inputMethodQuery,
  focusNextPrevChild: cQFrame_method_callback_focusNextPrevChild,
  eventFilter: cQFrame_method_callback_eventFilter,
  timerEvent: cQFrame_method_callback_timerEvent,
  childEvent: cQFrame_method_callback_childEvent,
  customEvent: cQFrame_method_callback_customEvent,
  connectNotify: cQFrame_method_callback_connectNotify,
  disconnectNotify: cQFrame_method_callback_disconnectNotify,
)
proc create*(T: type gen_qframe_types.QFrame,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQFrame) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFrame_new(addr(cQFrame_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qframe_types.QFrame,
    inst: VirtualQFrame) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFrame_new2(addr(cQFrame_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qframe_types.QFrame,
    parent: gen_qwidget_types.QWidget, f: cint,
    inst: VirtualQFrame) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFrame_new3(addr(cQFrame_mvtbl), addr(inst[]), parent.h, cint(f))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qframe_types.QFrame): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFrame_staticMetaObject())
