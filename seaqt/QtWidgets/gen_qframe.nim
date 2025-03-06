import ./Qt5Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free

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
{.compile("gen_qframe.cpp", cflags).}


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

proc fcQFrame_metaObject(self: pointer, ): pointer {.importc: "QFrame_metaObject".}
proc fcQFrame_metacast(self: pointer, param1: cstring): pointer {.importc: "QFrame_metacast".}
proc fcQFrame_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFrame_metacall".}
proc fcQFrame_tr(s: cstring): struct_miqt_string {.importc: "QFrame_tr".}
proc fcQFrame_trUtf8(s: cstring): struct_miqt_string {.importc: "QFrame_trUtf8".}
proc fcQFrame_frameStyle(self: pointer, ): cint {.importc: "QFrame_frameStyle".}
proc fcQFrame_setFrameStyle(self: pointer, frameStyle: cint): void {.importc: "QFrame_setFrameStyle".}
proc fcQFrame_frameWidth(self: pointer, ): cint {.importc: "QFrame_frameWidth".}
proc fcQFrame_sizeHint(self: pointer, ): pointer {.importc: "QFrame_sizeHint".}
proc fcQFrame_frameShape(self: pointer, ): cint {.importc: "QFrame_frameShape".}
proc fcQFrame_setFrameShape(self: pointer, frameShape: cint): void {.importc: "QFrame_setFrameShape".}
proc fcQFrame_frameShadow(self: pointer, ): cint {.importc: "QFrame_frameShadow".}
proc fcQFrame_setFrameShadow(self: pointer, frameShadow: cint): void {.importc: "QFrame_setFrameShadow".}
proc fcQFrame_lineWidth(self: pointer, ): cint {.importc: "QFrame_lineWidth".}
proc fcQFrame_setLineWidth(self: pointer, lineWidth: cint): void {.importc: "QFrame_setLineWidth".}
proc fcQFrame_midLineWidth(self: pointer, ): cint {.importc: "QFrame_midLineWidth".}
proc fcQFrame_setMidLineWidth(self: pointer, midLineWidth: cint): void {.importc: "QFrame_setMidLineWidth".}
proc fcQFrame_frameRect(self: pointer, ): pointer {.importc: "QFrame_frameRect".}
proc fcQFrame_setFrameRect(self: pointer, frameRect: pointer): void {.importc: "QFrame_setFrameRect".}
proc fcQFrame_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFrame_tr2".}
proc fcQFrame_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFrame_tr3".}
proc fcQFrame_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFrame_trUtf82".}
proc fcQFrame_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFrame_trUtf83".}
type cQFrameVTable = object
  destructor*: proc(vtbl: ptr cQFrameVTable, self: ptr cQFrame) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQFrame_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QFrame_virtualbase_metaObject".}
proc fcQFrame_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFrame_virtualbase_metacast".}
proc fcQFrame_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFrame_virtualbase_metacall".}
proc fcQFrame_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QFrame_virtualbase_sizeHint".}
proc fcQFrame_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QFrame_virtualbase_event".}
proc fcQFrame_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QFrame_virtualbase_paintEvent".}
proc fcQFrame_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QFrame_virtualbase_changeEvent".}
proc fcQFrame_virtualbase_devType(self: pointer, ): cint {.importc: "QFrame_virtualbase_devType".}
proc fcQFrame_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QFrame_virtualbase_setVisible".}
proc fcQFrame_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QFrame_virtualbase_minimumSizeHint".}
proc fcQFrame_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QFrame_virtualbase_heightForWidth".}
proc fcQFrame_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QFrame_virtualbase_hasHeightForWidth".}
proc fcQFrame_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QFrame_virtualbase_paintEngine".}
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
proc fcQFrame_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QFrame_virtualbase_nativeEvent".}
proc fcQFrame_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QFrame_virtualbase_metric".}
proc fcQFrame_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QFrame_virtualbase_initPainter".}
proc fcQFrame_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QFrame_virtualbase_redirected".}
proc fcQFrame_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QFrame_virtualbase_sharedPainter".}
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
proc fcQFrame_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QFrame_protectedbase_initStyleOption".}
proc fcQFrame_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QFrame_protectedbase_updateMicroFocus".}
proc fcQFrame_protectedbase_create(self: pointer, ): void {.importc: "QFrame_protectedbase_create".}
proc fcQFrame_protectedbase_destroy(self: pointer, ): void {.importc: "QFrame_protectedbase_destroy".}
proc fcQFrame_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QFrame_protectedbase_focusNextChild".}
proc fcQFrame_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QFrame_protectedbase_focusPreviousChild".}
proc fcQFrame_protectedbase_sender(self: pointer, ): pointer {.importc: "QFrame_protectedbase_sender".}
proc fcQFrame_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QFrame_protectedbase_senderSignalIndex".}
proc fcQFrame_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFrame_protectedbase_receivers".}
proc fcQFrame_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFrame_protectedbase_isSignalConnected".}
proc fcQFrame_new(vtbl: pointer, parent: pointer): ptr cQFrame {.importc: "QFrame_new".}
proc fcQFrame_new2(vtbl: pointer, ): ptr cQFrame {.importc: "QFrame_new2".}
proc fcQFrame_new3(vtbl: pointer, parent: pointer, f: cint): ptr cQFrame {.importc: "QFrame_new3".}
proc fcQFrame_staticMetaObject(): pointer {.importc: "QFrame_staticMetaObject".}
proc fcQFrame_delete(self: pointer) {.importc: "QFrame_delete".}

proc metaObject*(self: gen_qframe_types.QFrame, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFrame_metaObject(self.h))

proc metacast*(self: gen_qframe_types.QFrame, param1: cstring): pointer =
  fcQFrame_metacast(self.h, param1)

proc metacall*(self: gen_qframe_types.QFrame, param1: cint, param2: cint, param3: pointer): cint =
  fcQFrame_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qframe_types.QFrame, s: cstring): string =
  let v_ms = fcQFrame_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qframe_types.QFrame, s: cstring): string =
  let v_ms = fcQFrame_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc frameStyle*(self: gen_qframe_types.QFrame, ): cint =
  fcQFrame_frameStyle(self.h)

proc setFrameStyle*(self: gen_qframe_types.QFrame, frameStyle: cint): void =
  fcQFrame_setFrameStyle(self.h, frameStyle)

proc frameWidth*(self: gen_qframe_types.QFrame, ): cint =
  fcQFrame_frameWidth(self.h)

proc sizeHint*(self: gen_qframe_types.QFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFrame_sizeHint(self.h))

proc frameShape*(self: gen_qframe_types.QFrame, ): cint =
  cint(fcQFrame_frameShape(self.h))

proc setFrameShape*(self: gen_qframe_types.QFrame, frameShape: cint): void =
  fcQFrame_setFrameShape(self.h, cint(frameShape))

proc frameShadow*(self: gen_qframe_types.QFrame, ): cint =
  cint(fcQFrame_frameShadow(self.h))

proc setFrameShadow*(self: gen_qframe_types.QFrame, frameShadow: cint): void =
  fcQFrame_setFrameShadow(self.h, cint(frameShadow))

proc lineWidth*(self: gen_qframe_types.QFrame, ): cint =
  fcQFrame_lineWidth(self.h)

proc setLineWidth*(self: gen_qframe_types.QFrame, lineWidth: cint): void =
  fcQFrame_setLineWidth(self.h, lineWidth)

proc midLineWidth*(self: gen_qframe_types.QFrame, ): cint =
  fcQFrame_midLineWidth(self.h)

proc setMidLineWidth*(self: gen_qframe_types.QFrame, midLineWidth: cint): void =
  fcQFrame_setMidLineWidth(self.h, midLineWidth)

proc frameRect*(self: gen_qframe_types.QFrame, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFrame_frameRect(self.h))

proc setFrameRect*(self: gen_qframe_types.QFrame, frameRect: gen_qrect_types.QRect): void =
  fcQFrame_setFrameRect(self.h, frameRect.h)

proc tr*(_: type gen_qframe_types.QFrame, s: cstring, c: cstring): string =
  let v_ms = fcQFrame_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qframe_types.QFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFrame_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qframe_types.QFrame, s: cstring, c: cstring): string =
  let v_ms = fcQFrame_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qframe_types.QFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFrame_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QFramemetaObjectProc* = proc(self: QFrame): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFramemetacastProc* = proc(self: QFrame, param1: cstring): pointer {.raises: [], gcsafe.}
type QFramemetacallProc* = proc(self: QFrame, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFramesizeHintProc* = proc(self: QFrame): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFrameeventProc* = proc(self: QFrame, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFramepaintEventProc* = proc(self: QFrame, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QFramechangeEventProc* = proc(self: QFrame, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
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
type QFrameenterEventProc* = proc(self: QFrame, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
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
type QFramenativeEventProc* = proc(self: QFrame, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QFrameVTable* = object
  vtbl: cQFrameVTable
  metaObject*: QFramemetaObjectProc
  metacast*: QFramemetacastProc
  metacall*: QFramemetacallProc
  sizeHint*: QFramesizeHintProc
  event*: QFrameeventProc
  paintEvent*: QFramepaintEventProc
  changeEvent*: QFramechangeEventProc
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
proc QFramemetaObject*(self: gen_qframe_types.QFrame, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFrame_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQFrame_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QFramemetacast*(self: gen_qframe_types.QFrame, param1: cstring): pointer =
  fcQFrame_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQFrame_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFramemetacall*(self: gen_qframe_types.QFrame, param1: cint, param2: cint, param3: pointer): cint =
  fcQFrame_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQFrame_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFramesizeHint*(self: gen_qframe_types.QFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFrame_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQFrame_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QFrameevent*(self: gen_qframe_types.QFrame, e: gen_qcoreevent_types.QEvent): bool =
  fcQFrame_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQFrame_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFramepaintEvent*(self: gen_qframe_types.QFrame, param1: gen_qevent_types.QPaintEvent): void =
  fcQFrame_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQFrame_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QFramechangeEvent*(self: gen_qframe_types.QFrame, param1: gen_qcoreevent_types.QEvent): void =
  fcQFrame_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQFrame_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QFramedevType*(self: gen_qframe_types.QFrame, ): cint =
  fcQFrame_virtualbase_devType(self.h)

proc miqt_exec_callback_cQFrame_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QFramesetVisible*(self: gen_qframe_types.QFrame, visible: bool): void =
  fcQFrame_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQFrame_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QFrameminimumSizeHint*(self: gen_qframe_types.QFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFrame_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQFrame_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QFrameheightForWidth*(self: gen_qframe_types.QFrame, param1: cint): cint =
  fcQFrame_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQFrame_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QFramehasHeightForWidth*(self: gen_qframe_types.QFrame, ): bool =
  fcQFrame_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQFrame_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QFramepaintEngine*(self: gen_qframe_types.QFrame, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQFrame_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQFrame_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QFramemousePressEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFrame_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QFramemouseReleaseEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFrame_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QFramemouseDoubleClickEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFrame_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QFramemouseMoveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMouseEvent): void =
  fcQFrame_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QFramewheelEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QWheelEvent): void =
  fcQFrame_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QFramekeyPressEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QKeyEvent): void =
  fcQFrame_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QFramekeyReleaseEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QKeyEvent): void =
  fcQFrame_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QFramefocusInEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QFocusEvent): void =
  fcQFrame_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QFramefocusOutEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QFocusEvent): void =
  fcQFrame_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QFrameenterEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QEvent): void =
  fcQFrame_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QFrameleaveEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QEvent): void =
  fcQFrame_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QFramemoveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QMoveEvent): void =
  fcQFrame_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QFrameresizeEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QResizeEvent): void =
  fcQFrame_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QFramecloseEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QCloseEvent): void =
  fcQFrame_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QFramecontextMenuEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QContextMenuEvent): void =
  fcQFrame_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QFrametabletEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QTabletEvent): void =
  fcQFrame_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QFrameactionEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QActionEvent): void =
  fcQFrame_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QFramedragEnterEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDragEnterEvent): void =
  fcQFrame_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QFramedragMoveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDragMoveEvent): void =
  fcQFrame_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QFramedragLeaveEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQFrame_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QFramedropEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QDropEvent): void =
  fcQFrame_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QFrameshowEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QShowEvent): void =
  fcQFrame_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QFramehideEvent*(self: gen_qframe_types.QFrame, event: gen_qevent_types.QHideEvent): void =
  fcQFrame_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QFramenativeEvent*(self: gen_qframe_types.QFrame, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQFrame_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQFrame_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFramemetric*(self: gen_qframe_types.QFrame, param1: cint): cint =
  fcQFrame_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQFrame_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QFrameinitPainter*(self: gen_qframe_types.QFrame, painter: gen_qpainter_types.QPainter): void =
  fcQFrame_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQFrame_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QFrameredirected*(self: gen_qframe_types.QFrame, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQFrame_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQFrame_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QFramesharedPainter*(self: gen_qframe_types.QFrame, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQFrame_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQFrame_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QFrameinputMethodEvent*(self: gen_qframe_types.QFrame, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQFrame_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQFrame_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QFrameinputMethodQuery*(self: gen_qframe_types.QFrame, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFrame_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQFrame_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QFramefocusNextPrevChild*(self: gen_qframe_types.QFrame, next: bool): bool =
  fcQFrame_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQFrame_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QFrameeventFilter*(self: gen_qframe_types.QFrame, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFrame_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQFrame_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFrametimerEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFrame_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QFramechildEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFrame_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QFramecustomEvent*(self: gen_qframe_types.QFrame, event: gen_qcoreevent_types.QEvent): void =
  fcQFrame_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQFrame_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QFrameconnectNotify*(self: gen_qframe_types.QFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFrame_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFrame_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QFramedisconnectNotify*(self: gen_qframe_types.QFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFrame_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFrame_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFrameVTable](vtbl)
  let self = QFrame(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc drawFrame*(self: gen_qframe_types.QFrame, param1: gen_qpainter_types.QPainter): void =
  fcQFrame_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qframe_types.QFrame, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQFrame_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qframe_types.QFrame, ): void =
  fcQFrame_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qframe_types.QFrame, ): void =
  fcQFrame_protectedbase_create(self.h)

proc destroy*(self: gen_qframe_types.QFrame, ): void =
  fcQFrame_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qframe_types.QFrame, ): bool =
  fcQFrame_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qframe_types.QFrame, ): bool =
  fcQFrame_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qframe_types.QFrame, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFrame_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qframe_types.QFrame, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFrameVTable, _: ptr cQFrame) {.cdecl.} =
    let vtbl = cast[ref QFrameVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFrame_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFrame_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFrame_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFrame_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFrame_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFrame_paintEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFrame_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFrame_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFrame_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFrame_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFrame_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFrame_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFrame_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFrame_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFrame_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFrame_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFrame_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFrame_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFrame_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFrame_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFrame_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFrame_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFrame_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFrame_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFrame_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFrame_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFrame_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFrame_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFrame_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFrame_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFrame_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFrame_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFrame_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFrame_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFrame_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFrame_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFrame_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFrame_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFrame_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFrame_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFrame_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFrame_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFrame_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFrame_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFrame_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFrame_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFrame_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFrame_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFrame_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFrame_disconnectNotify
  gen_qframe_types.QFrame(h: fcQFrame_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qframe_types.QFrame,
    vtbl: ref QFrameVTable = nil): gen_qframe_types.QFrame =
  let vtbl = if vtbl == nil: new QFrameVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFrameVTable, _: ptr cQFrame) {.cdecl.} =
    let vtbl = cast[ref QFrameVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFrame_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFrame_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFrame_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFrame_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFrame_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFrame_paintEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFrame_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFrame_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFrame_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFrame_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFrame_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFrame_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFrame_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFrame_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFrame_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFrame_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFrame_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFrame_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFrame_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFrame_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFrame_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFrame_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFrame_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFrame_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFrame_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFrame_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFrame_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFrame_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFrame_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFrame_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFrame_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFrame_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFrame_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFrame_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFrame_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFrame_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFrame_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFrame_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFrame_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFrame_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFrame_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFrame_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFrame_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFrame_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFrame_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFrame_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFrame_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFrame_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFrame_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFrame_disconnectNotify
  gen_qframe_types.QFrame(h: fcQFrame_new2(addr(vtbl[]), ))

proc create*(T: type gen_qframe_types.QFrame,
    parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QFrameVTable = nil): gen_qframe_types.QFrame =
  let vtbl = if vtbl == nil: new QFrameVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFrameVTable, _: ptr cQFrame) {.cdecl.} =
    let vtbl = cast[ref QFrameVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFrame_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFrame_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFrame_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFrame_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFrame_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFrame_paintEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFrame_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFrame_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFrame_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFrame_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFrame_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFrame_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFrame_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFrame_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFrame_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFrame_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFrame_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFrame_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFrame_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFrame_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFrame_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFrame_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFrame_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFrame_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFrame_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFrame_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFrame_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFrame_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFrame_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFrame_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFrame_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFrame_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFrame_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFrame_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFrame_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFrame_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFrame_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFrame_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFrame_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFrame_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFrame_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFrame_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFrame_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFrame_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFrame_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFrame_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFrame_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFrame_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFrame_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFrame_disconnectNotify
  gen_qframe_types.QFrame(h: fcQFrame_new3(addr(vtbl[]), parent.h, cint(f)))

proc staticMetaObject*(_: type gen_qframe_types.QFrame): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFrame_staticMetaObject())
proc delete*(self: gen_qframe_types.QFrame) =
  fcQFrame_delete(self.h)
