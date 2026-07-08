import ./qtwidgets_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qrhiwidget.cpp", QtWidgetsCFlags).}


type QRhiWidgetApiEnum* = distinct cint
template Null*(_: type QRhiWidgetApiEnum): untyped = 0
template OpenGL*(_: type QRhiWidgetApiEnum): untyped = 1
template Metal*(_: type QRhiWidgetApiEnum): untyped = 2
template Vulkan*(_: type QRhiWidgetApiEnum): untyped = 3
template Direct3D11*(_: type QRhiWidgetApiEnum): untyped = 4
template Direct3D12*(_: type QRhiWidgetApiEnum): untyped = 5


type QRhiWidgetTextureFormatEnum* = distinct cint
template RGBA8*(_: type QRhiWidgetTextureFormatEnum): untyped = 0
template RGBA16F*(_: type QRhiWidgetTextureFormatEnum): untyped = 1
template RGBA32F*(_: type QRhiWidgetTextureFormatEnum): untyped = 2
template RGB10A2*(_: type QRhiWidgetTextureFormatEnum): untyped = 3


import ./gen_qrhiwidget_types
export gen_qrhiwidget_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qimage_types,
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
  gen_qimage_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qwidget

type cQRhiWidget*{.exportc: "QRhiWidget", incompleteStruct.} = object

proc fcQRhiWidget_metaObject(self: pointer): pointer {.importc: "QRhiWidget_metaObject".}
proc fcQRhiWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QRhiWidget_metacast".}
proc fcQRhiWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRhiWidget_metacall".}
proc fcQRhiWidget_trS(s: cstring): struct_seaqt_string {.importc: "QRhiWidget_tr_s".}
proc fcQRhiWidget_api(self: pointer): cint {.importc: "QRhiWidget_api".}
proc fcQRhiWidget_setApi(self: pointer, api: cint): void {.importc: "QRhiWidget_setApi".}
proc fcQRhiWidget_isDebugLayerEnabled(self: pointer): bool {.importc: "QRhiWidget_isDebugLayerEnabled".}
proc fcQRhiWidget_setDebugLayerEnabled(self: pointer, enable: bool): void {.importc: "QRhiWidget_setDebugLayerEnabled".}
proc fcQRhiWidget_sampleCount(self: pointer): cint {.importc: "QRhiWidget_sampleCount".}
proc fcQRhiWidget_setSampleCount(self: pointer, samples: cint): void {.importc: "QRhiWidget_setSampleCount".}
proc fcQRhiWidget_colorBufferFormat(self: pointer): cint {.importc: "QRhiWidget_colorBufferFormat".}
proc fcQRhiWidget_setColorBufferFormat(self: pointer, format: cint): void {.importc: "QRhiWidget_setColorBufferFormat".}
proc fcQRhiWidget_fixedColorBufferSize(self: pointer): pointer {.importc: "QRhiWidget_fixedColorBufferSize".}
proc fcQRhiWidget_setFixedColorBufferSizePixelSize(self: pointer, pixelSize: pointer): void {.importc: "QRhiWidget_setFixedColorBufferSize_pixelSize".}
proc fcQRhiWidget_setFixedColorBufferSizeWH(self: pointer, w: cint, h: cint): void {.importc: "QRhiWidget_setFixedColorBufferSize_w_h".}
proc fcQRhiWidget_isMirrorVerticallyEnabled(self: pointer): bool {.importc: "QRhiWidget_isMirrorVerticallyEnabled".}
proc fcQRhiWidget_setMirrorVertically(self: pointer, enabled: bool): void {.importc: "QRhiWidget_setMirrorVertically".}
proc fcQRhiWidget_grabFramebuffer(self: pointer): pointer {.importc: "QRhiWidget_grabFramebuffer".}
proc fcQRhiWidget_frameSubmitted(self: pointer): void {.importc: "QRhiWidget_frameSubmitted".}
proc fcQRhiWidget_connect_frameSubmitted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRhiWidget_connect_frameSubmitted".}
proc fcQRhiWidget_renderFailed(self: pointer): void {.importc: "QRhiWidget_renderFailed".}
proc fcQRhiWidget_connect_renderFailed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRhiWidget_connect_renderFailed".}
proc fcQRhiWidget_sampleCountChanged(self: pointer, samples: cint): void {.importc: "QRhiWidget_sampleCountChanged".}
proc fcQRhiWidget_connect_sampleCountChanged(self: pointer, slot: int, callback: proc (slot: int, samples: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRhiWidget_connect_sampleCountChanged".}
proc fcQRhiWidget_colorBufferFormatChanged(self: pointer, format: cint): void {.importc: "QRhiWidget_colorBufferFormatChanged".}
proc fcQRhiWidget_connect_colorBufferFormatChanged(self: pointer, slot: int, callback: proc (slot: int, format: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRhiWidget_connect_colorBufferFormatChanged".}
proc fcQRhiWidget_fixedColorBufferSizeChanged(self: pointer, pixelSize: pointer): void {.importc: "QRhiWidget_fixedColorBufferSizeChanged".}
proc fcQRhiWidget_connect_fixedColorBufferSizeChanged(self: pointer, slot: int, callback: proc (slot: int, pixelSize: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRhiWidget_connect_fixedColorBufferSizeChanged".}
proc fcQRhiWidget_mirrorVerticallyChanged(self: pointer, enabled: bool): void {.importc: "QRhiWidget_mirrorVerticallyChanged".}
proc fcQRhiWidget_connect_mirrorVerticallyChanged(self: pointer, slot: int, callback: proc (slot: int, enabled: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRhiWidget_connect_mirrorVerticallyChanged".}
proc fcQRhiWidget_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRhiWidget_tr_s_c".}
proc fcQRhiWidget_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRhiWidget_tr_s_c_n".}
proc fcQRhiWidget_vdata(self: pointer): ptr pointer {.importc: "QRhiWidget_vdata".}
proc fvdata_cQRhiWidget(self: pointer): pointer {.importc: "vdata_QRhiWidget".}

type cQRhiWidgetVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  releaseResources*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQRhiWidget_virtualbase_metaObject(self: pointer): pointer {.importc: "QRhiWidget_virtualbase_metaObject".}
proc fcQRhiWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRhiWidget_virtualbase_metacast".}
proc fcQRhiWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRhiWidget_virtualbase_metacall".}
proc fcQRhiWidget_virtualbase_releaseResources(self: pointer): void {.importc: "QRhiWidget_virtualbase_releaseResources".}
proc fcQRhiWidget_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QRhiWidget_virtualbase_resizeEvent".}
proc fcQRhiWidget_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QRhiWidget_virtualbase_paintEvent".}
proc fcQRhiWidget_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QRhiWidget_virtualbase_event".}
proc fcQRhiWidget_virtualbase_devType(self: pointer): cint {.importc: "QRhiWidget_virtualbase_devType".}
proc fcQRhiWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QRhiWidget_virtualbase_setVisible".}
proc fcQRhiWidget_virtualbase_sizeHint(self: pointer): pointer {.importc: "QRhiWidget_virtualbase_sizeHint".}
proc fcQRhiWidget_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QRhiWidget_virtualbase_minimumSizeHint".}
proc fcQRhiWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QRhiWidget_virtualbase_heightForWidth".}
proc fcQRhiWidget_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QRhiWidget_virtualbase_hasHeightForWidth".}
proc fcQRhiWidget_virtualbase_paintEngine(self: pointer): pointer {.importc: "QRhiWidget_virtualbase_paintEngine".}
proc fcQRhiWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_mousePressEvent".}
proc fcQRhiWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_mouseReleaseEvent".}
proc fcQRhiWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQRhiWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_mouseMoveEvent".}
proc fcQRhiWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_wheelEvent".}
proc fcQRhiWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_keyPressEvent".}
proc fcQRhiWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_keyReleaseEvent".}
proc fcQRhiWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_focusInEvent".}
proc fcQRhiWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_focusOutEvent".}
proc fcQRhiWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_enterEvent".}
proc fcQRhiWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_leaveEvent".}
proc fcQRhiWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_moveEvent".}
proc fcQRhiWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_closeEvent".}
proc fcQRhiWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_contextMenuEvent".}
proc fcQRhiWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_tabletEvent".}
proc fcQRhiWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_actionEvent".}
proc fcQRhiWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_dragEnterEvent".}
proc fcQRhiWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_dragMoveEvent".}
proc fcQRhiWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_dragLeaveEvent".}
proc fcQRhiWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_dropEvent".}
proc fcQRhiWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_showEvent".}
proc fcQRhiWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_hideEvent".}
proc fcQRhiWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QRhiWidget_virtualbase_nativeEvent".}
proc fcQRhiWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QRhiWidget_virtualbase_changeEvent".}
proc fcQRhiWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QRhiWidget_virtualbase_metric".}
proc fcQRhiWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QRhiWidget_virtualbase_initPainter".}
proc fcQRhiWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QRhiWidget_virtualbase_redirected".}
proc fcQRhiWidget_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QRhiWidget_virtualbase_sharedPainter".}
proc fcQRhiWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QRhiWidget_virtualbase_inputMethodEvent".}
proc fcQRhiWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QRhiWidget_virtualbase_inputMethodQuery".}
proc fcQRhiWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QRhiWidget_virtualbase_focusNextPrevChild".}
proc fcQRhiWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRhiWidget_virtualbase_eventFilter".}
proc fcQRhiWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_timerEvent".}
proc fcQRhiWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_childEvent".}
proc fcQRhiWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRhiWidget_virtualbase_customEvent".}
proc fcQRhiWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRhiWidget_virtualbase_connectNotify".}
proc fcQRhiWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRhiWidget_virtualbase_disconnectNotify".}
proc fcQRhiWidget_protectedbase_isAutoRenderTargetEnabled(self: pointer): bool {.importc: "QRhiWidget_protectedbase_isAutoRenderTargetEnabled".}
proc fcQRhiWidget_protectedbase_setAutoRenderTarget(self: pointer, enabled: bool): void {.importc: "QRhiWidget_protectedbase_setAutoRenderTarget".}
proc fcQRhiWidget_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QRhiWidget_protectedbase_updateMicroFocus".}
proc fcQRhiWidget_protectedbase_create(self: pointer): void {.importc: "QRhiWidget_protectedbase_create".}
proc fcQRhiWidget_protectedbase_destroy(self: pointer): void {.importc: "QRhiWidget_protectedbase_destroy".}
proc fcQRhiWidget_protectedbase_focusNextChild(self: pointer): bool {.importc: "QRhiWidget_protectedbase_focusNextChild".}
proc fcQRhiWidget_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QRhiWidget_protectedbase_focusPreviousChild".}
proc fcQRhiWidget_protectedbase_sender(self: pointer): pointer {.importc: "QRhiWidget_protectedbase_sender".}
proc fcQRhiWidget_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRhiWidget_protectedbase_senderSignalIndex".}
proc fcQRhiWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRhiWidget_protectedbase_receivers".}
proc fcQRhiWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRhiWidget_protectedbase_isSignalConnected".}
proc fcQRhiWidget_protectedbase_getDecodedMetricF(self: pointer, metricA: cint, metricB: cint): float64 {.importc: "QRhiWidget_protectedbase_getDecodedMetricF".}
proc fcQRhiWidget_new(vtbl: pointer, vdata: csize_t): ptr cQRhiWidget {.importc: "QRhiWidget_new".}
proc fcQRhiWidget_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQRhiWidget {.importc: "QRhiWidget_new_parent".}
proc fcQRhiWidget_new3(vtbl: pointer, vdata: csize_t, parent: pointer, f: cint): ptr cQRhiWidget {.importc: "QRhiWidget_new_parent_f".}
proc fcQRhiWidget_staticMetaObject(): pointer {.importc: "QRhiWidget_staticMetaObject".}

proc metaObject*(self: gen_qrhiwidget_types.QRhiWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRhiWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qrhiwidget_types.QRhiWidget, param1: cstring): pointer =
  fcQRhiWidget_metacast(self.h, param1)

proc metacall*(self: gen_qrhiwidget_types.QRhiWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQRhiWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qrhiwidget_types.QRhiWidget, s: cstring): string =
  let v_ms = fcQRhiWidget_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc api*(self: gen_qrhiwidget_types.QRhiWidget): cint =
  cint(fcQRhiWidget_api(self.h))

proc setApi*(self: gen_qrhiwidget_types.QRhiWidget, api: cint): void =
  fcQRhiWidget_setApi(self.h, cint(api))

proc isDebugLayerEnabled*(self: gen_qrhiwidget_types.QRhiWidget): bool =
  fcQRhiWidget_isDebugLayerEnabled(self.h)

proc setDebugLayerEnabled*(self: gen_qrhiwidget_types.QRhiWidget, enable: bool): void =
  fcQRhiWidget_setDebugLayerEnabled(self.h, enable)

proc sampleCount*(self: gen_qrhiwidget_types.QRhiWidget): cint =
  fcQRhiWidget_sampleCount(self.h)

proc setSampleCount*(self: gen_qrhiwidget_types.QRhiWidget, samples: cint): void =
  fcQRhiWidget_setSampleCount(self.h, samples)

proc colorBufferFormat*(self: gen_qrhiwidget_types.QRhiWidget): cint =
  cint(fcQRhiWidget_colorBufferFormat(self.h))

proc setColorBufferFormat*(self: gen_qrhiwidget_types.QRhiWidget, format: cint): void =
  fcQRhiWidget_setColorBufferFormat(self.h, cint(format))

proc fixedColorBufferSize*(self: gen_qrhiwidget_types.QRhiWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRhiWidget_fixedColorBufferSize(self.h), owned: true)

proc setFixedColorBufferSize*(self: gen_qrhiwidget_types.QRhiWidget, pixelSize: gen_qsize_types.QSize): void =
  fcQRhiWidget_setFixedColorBufferSizePixelSize(self.h, pixelSize.h)

proc setFixedColorBufferSize*(self: gen_qrhiwidget_types.QRhiWidget, w: cint, h: cint): void =
  fcQRhiWidget_setFixedColorBufferSizeWH(self.h, w, h)

proc isMirrorVerticallyEnabled*(self: gen_qrhiwidget_types.QRhiWidget): bool =
  fcQRhiWidget_isMirrorVerticallyEnabled(self.h)

proc setMirrorVertically*(self: gen_qrhiwidget_types.QRhiWidget, enabled: bool): void =
  fcQRhiWidget_setMirrorVertically(self.h, enabled)

proc grabFramebuffer*(self: gen_qrhiwidget_types.QRhiWidget): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQRhiWidget_grabFramebuffer(self.h), owned: true)

proc frameSubmitted*(self: gen_qrhiwidget_types.QRhiWidget): void =
  fcQRhiWidget_frameSubmitted(self.h)

type QRhiWidgetframeSubmittedSlot* = proc()
proc fcQRhiWidget_slot_callback_frameSubmitted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QRhiWidgetframeSubmittedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQRhiWidget_slot_callback_frameSubmitted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRhiWidgetframeSubmittedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFrameSubmitted*(self: gen_qrhiwidget_types.QRhiWidget, slot: QRhiWidgetframeSubmittedSlot) =
  var tmp = new QRhiWidgetframeSubmittedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRhiWidget_connect_frameSubmitted(self.h, cast[int](addr tmp[]), fcQRhiWidget_slot_callback_frameSubmitted, fcQRhiWidget_slot_callback_frameSubmitted_release)

proc renderFailed*(self: gen_qrhiwidget_types.QRhiWidget): void =
  fcQRhiWidget_renderFailed(self.h)

type QRhiWidgetrenderFailedSlot* = proc()
proc fcQRhiWidget_slot_callback_renderFailed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QRhiWidgetrenderFailedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQRhiWidget_slot_callback_renderFailed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRhiWidgetrenderFailedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRenderFailed*(self: gen_qrhiwidget_types.QRhiWidget, slot: QRhiWidgetrenderFailedSlot) =
  var tmp = new QRhiWidgetrenderFailedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRhiWidget_connect_renderFailed(self.h, cast[int](addr tmp[]), fcQRhiWidget_slot_callback_renderFailed, fcQRhiWidget_slot_callback_renderFailed_release)

proc sampleCountChanged*(self: gen_qrhiwidget_types.QRhiWidget, samples: cint): void =
  fcQRhiWidget_sampleCountChanged(self.h, samples)

type QRhiWidgetsampleCountChangedSlot* = proc(samples: cint)
proc fcQRhiWidget_slot_callback_sampleCountChanged(slot: int, samples: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRhiWidgetsampleCountChangedSlot](cast[pointer](slot))
  let slotval1 = samples

  nimfunc[](slotval1)

proc fcQRhiWidget_slot_callback_sampleCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRhiWidgetsampleCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSampleCountChanged*(self: gen_qrhiwidget_types.QRhiWidget, slot: QRhiWidgetsampleCountChangedSlot) =
  var tmp = new QRhiWidgetsampleCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRhiWidget_connect_sampleCountChanged(self.h, cast[int](addr tmp[]), fcQRhiWidget_slot_callback_sampleCountChanged, fcQRhiWidget_slot_callback_sampleCountChanged_release)

proc colorBufferFormatChanged*(self: gen_qrhiwidget_types.QRhiWidget, format: cint): void =
  fcQRhiWidget_colorBufferFormatChanged(self.h, cint(format))

type QRhiWidgetcolorBufferFormatChangedSlot* = proc(format: cint)
proc fcQRhiWidget_slot_callback_colorBufferFormatChanged(slot: int, format: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRhiWidgetcolorBufferFormatChangedSlot](cast[pointer](slot))
  let slotval1 = cint(format)

  nimfunc[](slotval1)

proc fcQRhiWidget_slot_callback_colorBufferFormatChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRhiWidgetcolorBufferFormatChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onColorBufferFormatChanged*(self: gen_qrhiwidget_types.QRhiWidget, slot: QRhiWidgetcolorBufferFormatChangedSlot) =
  var tmp = new QRhiWidgetcolorBufferFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRhiWidget_connect_colorBufferFormatChanged(self.h, cast[int](addr tmp[]), fcQRhiWidget_slot_callback_colorBufferFormatChanged, fcQRhiWidget_slot_callback_colorBufferFormatChanged_release)

proc fixedColorBufferSizeChanged*(self: gen_qrhiwidget_types.QRhiWidget, pixelSize: gen_qsize_types.QSize): void =
  fcQRhiWidget_fixedColorBufferSizeChanged(self.h, pixelSize.h)

type QRhiWidgetfixedColorBufferSizeChangedSlot* = proc(pixelSize: gen_qsize_types.QSize)
proc fcQRhiWidget_slot_callback_fixedColorBufferSizeChanged(slot: int, pixelSize: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QRhiWidgetfixedColorBufferSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: pixelSize, owned: false)

  nimfunc[](slotval1)

proc fcQRhiWidget_slot_callback_fixedColorBufferSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRhiWidgetfixedColorBufferSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFixedColorBufferSizeChanged*(self: gen_qrhiwidget_types.QRhiWidget, slot: QRhiWidgetfixedColorBufferSizeChangedSlot) =
  var tmp = new QRhiWidgetfixedColorBufferSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRhiWidget_connect_fixedColorBufferSizeChanged(self.h, cast[int](addr tmp[]), fcQRhiWidget_slot_callback_fixedColorBufferSizeChanged, fcQRhiWidget_slot_callback_fixedColorBufferSizeChanged_release)

proc mirrorVerticallyChanged*(self: gen_qrhiwidget_types.QRhiWidget, enabled: bool): void =
  fcQRhiWidget_mirrorVerticallyChanged(self.h, enabled)

type QRhiWidgetmirrorVerticallyChangedSlot* = proc(enabled: bool)
proc fcQRhiWidget_slot_callback_mirrorVerticallyChanged(slot: int, enabled: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRhiWidgetmirrorVerticallyChangedSlot](cast[pointer](slot))
  let slotval1 = enabled

  nimfunc[](slotval1)

proc fcQRhiWidget_slot_callback_mirrorVerticallyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRhiWidgetmirrorVerticallyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMirrorVerticallyChanged*(self: gen_qrhiwidget_types.QRhiWidget, slot: QRhiWidgetmirrorVerticallyChangedSlot) =
  var tmp = new QRhiWidgetmirrorVerticallyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRhiWidget_connect_mirrorVerticallyChanged(self.h, cast[int](addr tmp[]), fcQRhiWidget_slot_callback_mirrorVerticallyChanged, fcQRhiWidget_slot_callback_mirrorVerticallyChanged_release)

proc tr*(_: type gen_qrhiwidget_types.QRhiWidget, s: cstring, c: cstring): string =
  let v_ms = fcQRhiWidget_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qrhiwidget_types.QRhiWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRhiWidget_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QRhiWidgetmetaObjectProc* = proc(self: QRhiWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRhiWidgetmetacastProc* = proc(self: QRhiWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QRhiWidgetmetacallProc* = proc(self: QRhiWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRhiWidgetreleaseResourcesProc* = proc(self: QRhiWidget): void {.raises: [], gcsafe.}
type QRhiWidgetresizeEventProc* = proc(self: QRhiWidget, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QRhiWidgetpaintEventProc* = proc(self: QRhiWidget, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QRhiWidgeteventProc* = proc(self: QRhiWidget, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRhiWidgetdevTypeProc* = proc(self: QRhiWidget): cint {.raises: [], gcsafe.}
type QRhiWidgetsetVisibleProc* = proc(self: QRhiWidget, visible: bool): void {.raises: [], gcsafe.}
type QRhiWidgetsizeHintProc* = proc(self: QRhiWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QRhiWidgetminimumSizeHintProc* = proc(self: QRhiWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QRhiWidgetheightForWidthProc* = proc(self: QRhiWidget, param1: cint): cint {.raises: [], gcsafe.}
type QRhiWidgethasHeightForWidthProc* = proc(self: QRhiWidget): bool {.raises: [], gcsafe.}
type QRhiWidgetpaintEngineProc* = proc(self: QRhiWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QRhiWidgetmousePressEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRhiWidgetmouseReleaseEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRhiWidgetmouseDoubleClickEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRhiWidgetmouseMoveEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRhiWidgetwheelEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QRhiWidgetkeyPressEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QRhiWidgetkeyReleaseEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QRhiWidgetfocusInEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QRhiWidgetfocusOutEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QRhiWidgetenterEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QRhiWidgetleaveEventProc* = proc(self: QRhiWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRhiWidgetmoveEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QRhiWidgetcloseEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QRhiWidgetcontextMenuEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QRhiWidgettabletEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QRhiWidgetactionEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QRhiWidgetdragEnterEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QRhiWidgetdragMoveEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QRhiWidgetdragLeaveEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QRhiWidgetdropEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QRhiWidgetshowEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QRhiWidgethideEventProc* = proc(self: QRhiWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QRhiWidgetnativeEventProc* = proc(self: QRhiWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QRhiWidgetchangeEventProc* = proc(self: QRhiWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRhiWidgetmetricProc* = proc(self: QRhiWidget, param1: cint): cint {.raises: [], gcsafe.}
type QRhiWidgetinitPainterProc* = proc(self: QRhiWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QRhiWidgetredirectedProc* = proc(self: QRhiWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QRhiWidgetsharedPainterProc* = proc(self: QRhiWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QRhiWidgetinputMethodEventProc* = proc(self: QRhiWidget, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QRhiWidgetinputMethodQueryProc* = proc(self: QRhiWidget, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QRhiWidgetfocusNextPrevChildProc* = proc(self: QRhiWidget, next: bool): bool {.raises: [], gcsafe.}
type QRhiWidgeteventFilterProc* = proc(self: QRhiWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRhiWidgettimerEventProc* = proc(self: QRhiWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRhiWidgetchildEventProc* = proc(self: QRhiWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRhiWidgetcustomEventProc* = proc(self: QRhiWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRhiWidgetconnectNotifyProc* = proc(self: QRhiWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRhiWidgetdisconnectNotifyProc* = proc(self: QRhiWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QRhiWidgetVTable* {.inheritable, pure.} = object
  vtbl: cQRhiWidgetVTable
  metaObject*: QRhiWidgetmetaObjectProc
  metacast*: QRhiWidgetmetacastProc
  metacall*: QRhiWidgetmetacallProc
  releaseResources*: QRhiWidgetreleaseResourcesProc
  resizeEvent*: QRhiWidgetresizeEventProc
  paintEvent*: QRhiWidgetpaintEventProc
  event*: QRhiWidgeteventProc
  devType*: QRhiWidgetdevTypeProc
  setVisible*: QRhiWidgetsetVisibleProc
  sizeHint*: QRhiWidgetsizeHintProc
  minimumSizeHint*: QRhiWidgetminimumSizeHintProc
  heightForWidth*: QRhiWidgetheightForWidthProc
  hasHeightForWidth*: QRhiWidgethasHeightForWidthProc
  paintEngine*: QRhiWidgetpaintEngineProc
  mousePressEvent*: QRhiWidgetmousePressEventProc
  mouseReleaseEvent*: QRhiWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QRhiWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QRhiWidgetmouseMoveEventProc
  wheelEvent*: QRhiWidgetwheelEventProc
  keyPressEvent*: QRhiWidgetkeyPressEventProc
  keyReleaseEvent*: QRhiWidgetkeyReleaseEventProc
  focusInEvent*: QRhiWidgetfocusInEventProc
  focusOutEvent*: QRhiWidgetfocusOutEventProc
  enterEvent*: QRhiWidgetenterEventProc
  leaveEvent*: QRhiWidgetleaveEventProc
  moveEvent*: QRhiWidgetmoveEventProc
  closeEvent*: QRhiWidgetcloseEventProc
  contextMenuEvent*: QRhiWidgetcontextMenuEventProc
  tabletEvent*: QRhiWidgettabletEventProc
  actionEvent*: QRhiWidgetactionEventProc
  dragEnterEvent*: QRhiWidgetdragEnterEventProc
  dragMoveEvent*: QRhiWidgetdragMoveEventProc
  dragLeaveEvent*: QRhiWidgetdragLeaveEventProc
  dropEvent*: QRhiWidgetdropEventProc
  showEvent*: QRhiWidgetshowEventProc
  hideEvent*: QRhiWidgethideEventProc
  nativeEvent*: QRhiWidgetnativeEventProc
  changeEvent*: QRhiWidgetchangeEventProc
  metric*: QRhiWidgetmetricProc
  initPainter*: QRhiWidgetinitPainterProc
  redirected*: QRhiWidgetredirectedProc
  sharedPainter*: QRhiWidgetsharedPainterProc
  inputMethodEvent*: QRhiWidgetinputMethodEventProc
  inputMethodQuery*: QRhiWidgetinputMethodQueryProc
  focusNextPrevChild*: QRhiWidgetfocusNextPrevChildProc
  eventFilter*: QRhiWidgeteventFilterProc
  timerEvent*: QRhiWidgettimerEventProc
  childEvent*: QRhiWidgetchildEventProc
  customEvent*: QRhiWidgetcustomEventProc
  connectNotify*: QRhiWidgetconnectNotifyProc
  disconnectNotify*: QRhiWidgetdisconnectNotifyProc

proc QRhiWidgetmetaObject*(self: gen_qrhiwidget_types.QRhiWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRhiWidget_virtualbase_metaObject(self.h), owned: false)

proc QRhiWidgetmetacast*(self: gen_qrhiwidget_types.QRhiWidget, param1: cstring): pointer =
  fcQRhiWidget_virtualbase_metacast(self.h, param1)

proc QRhiWidgetmetacall*(self: gen_qrhiwidget_types.QRhiWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQRhiWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRhiWidgetreleaseResources*(self: gen_qrhiwidget_types.QRhiWidget): void =
  fcQRhiWidget_virtualbase_releaseResources(self.h)

proc QRhiWidgetresizeEvent*(self: gen_qrhiwidget_types.QRhiWidget, e: gen_qevent_types.QResizeEvent): void =
  fcQRhiWidget_virtualbase_resizeEvent(self.h, e.h)

proc QRhiWidgetpaintEvent*(self: gen_qrhiwidget_types.QRhiWidget, e: gen_qevent_types.QPaintEvent): void =
  fcQRhiWidget_virtualbase_paintEvent(self.h, e.h)

proc QRhiWidgetevent*(self: gen_qrhiwidget_types.QRhiWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQRhiWidget_virtualbase_event(self.h, e.h)

proc QRhiWidgetdevType*(self: gen_qrhiwidget_types.QRhiWidget): cint =
  fcQRhiWidget_virtualbase_devType(self.h)

proc QRhiWidgetsetVisible*(self: gen_qrhiwidget_types.QRhiWidget, visible: bool): void =
  fcQRhiWidget_virtualbase_setVisible(self.h, visible)

proc QRhiWidgetsizeHint*(self: gen_qrhiwidget_types.QRhiWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRhiWidget_virtualbase_sizeHint(self.h), owned: true)

proc QRhiWidgetminimumSizeHint*(self: gen_qrhiwidget_types.QRhiWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRhiWidget_virtualbase_minimumSizeHint(self.h), owned: true)

proc QRhiWidgetheightForWidth*(self: gen_qrhiwidget_types.QRhiWidget, param1: cint): cint =
  fcQRhiWidget_virtualbase_heightForWidth(self.h, param1)

proc QRhiWidgethasHeightForWidth*(self: gen_qrhiwidget_types.QRhiWidget): bool =
  fcQRhiWidget_virtualbase_hasHeightForWidth(self.h)

proc QRhiWidgetpaintEngine*(self: gen_qrhiwidget_types.QRhiWidget): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQRhiWidget_virtualbase_paintEngine(self.h), owned: false)

proc QRhiWidgetmousePressEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQRhiWidget_virtualbase_mousePressEvent(self.h, event.h)

proc QRhiWidgetmouseReleaseEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQRhiWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QRhiWidgetmouseDoubleClickEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQRhiWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QRhiWidgetmouseMoveEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQRhiWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc QRhiWidgetwheelEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQRhiWidget_virtualbase_wheelEvent(self.h, event.h)

proc QRhiWidgetkeyPressEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQRhiWidget_virtualbase_keyPressEvent(self.h, event.h)

proc QRhiWidgetkeyReleaseEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQRhiWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc QRhiWidgetfocusInEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQRhiWidget_virtualbase_focusInEvent(self.h, event.h)

proc QRhiWidgetfocusOutEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQRhiWidget_virtualbase_focusOutEvent(self.h, event.h)

proc QRhiWidgetenterEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QEnterEvent): void =
  fcQRhiWidget_virtualbase_enterEvent(self.h, event.h)

proc QRhiWidgetleaveEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQRhiWidget_virtualbase_leaveEvent(self.h, event.h)

proc QRhiWidgetmoveEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQRhiWidget_virtualbase_moveEvent(self.h, event.h)

proc QRhiWidgetcloseEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQRhiWidget_virtualbase_closeEvent(self.h, event.h)

proc QRhiWidgetcontextMenuEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQRhiWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc QRhiWidgettabletEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQRhiWidget_virtualbase_tabletEvent(self.h, event.h)

proc QRhiWidgetactionEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QActionEvent): void =
  fcQRhiWidget_virtualbase_actionEvent(self.h, event.h)

proc QRhiWidgetdragEnterEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQRhiWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc QRhiWidgetdragMoveEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQRhiWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc QRhiWidgetdragLeaveEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQRhiWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc QRhiWidgetdropEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QDropEvent): void =
  fcQRhiWidget_virtualbase_dropEvent(self.h, event.h)

proc QRhiWidgetshowEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QShowEvent): void =
  fcQRhiWidget_virtualbase_showEvent(self.h, event.h)

proc QRhiWidgethideEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qevent_types.QHideEvent): void =
  fcQRhiWidget_virtualbase_hideEvent(self.h, event.h)

proc QRhiWidgetnativeEvent*(self: gen_qrhiwidget_types.QRhiWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQRhiWidget_virtualbase_nativeEvent(self.h, struct_seaqt_string(data: if len(eventType) > 0: addr eventType[0] else: nil, len: csize_t(len(eventType))), message, resultVal)

proc QRhiWidgetchangeEvent*(self: gen_qrhiwidget_types.QRhiWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQRhiWidget_virtualbase_changeEvent(self.h, param1.h)

proc QRhiWidgetmetric*(self: gen_qrhiwidget_types.QRhiWidget, param1: cint): cint =
  fcQRhiWidget_virtualbase_metric(self.h, cint(param1))

proc QRhiWidgetinitPainter*(self: gen_qrhiwidget_types.QRhiWidget, painter: gen_qpainter_types.QPainter): void =
  fcQRhiWidget_virtualbase_initPainter(self.h, painter.h)

proc QRhiWidgetredirected*(self: gen_qrhiwidget_types.QRhiWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQRhiWidget_virtualbase_redirected(self.h, offset.h), owned: false)

proc QRhiWidgetsharedPainter*(self: gen_qrhiwidget_types.QRhiWidget): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQRhiWidget_virtualbase_sharedPainter(self.h), owned: false)

proc QRhiWidgetinputMethodEvent*(self: gen_qrhiwidget_types.QRhiWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQRhiWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc QRhiWidgetinputMethodQuery*(self: gen_qrhiwidget_types.QRhiWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRhiWidget_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QRhiWidgetfocusNextPrevChild*(self: gen_qrhiwidget_types.QRhiWidget, next: bool): bool =
  fcQRhiWidget_virtualbase_focusNextPrevChild(self.h, next)

proc QRhiWidgeteventFilter*(self: gen_qrhiwidget_types.QRhiWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRhiWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRhiWidgettimerEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRhiWidget_virtualbase_timerEvent(self.h, event.h)

proc QRhiWidgetchildEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRhiWidget_virtualbase_childEvent(self.h, event.h)

proc QRhiWidgetcustomEvent*(self: gen_qrhiwidget_types.QRhiWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQRhiWidget_virtualbase_customEvent(self.h, event.h)

proc QRhiWidgetconnectNotify*(self: gen_qrhiwidget_types.QRhiWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRhiWidget_virtualbase_connectNotify(self.h, signal.h)

proc QRhiWidgetdisconnectNotify*(self: gen_qrhiwidget_types.QRhiWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRhiWidget_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRhiWidget_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRhiWidget_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRhiWidget_vtable_callback_releaseResources(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  vtbl[].releaseResources(self)

proc fcQRhiWidget_vtable_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRhiWidget_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQRhiWidget_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQRhiWidget_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQRhiWidget_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQRhiWidget_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRhiWidget_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQRhiWidget_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQRhiWidget_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQRhiWidget_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRhiWidget_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRhiWidget_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRhiWidget_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
  let self = QRhiWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRhiWidget* {.inheritable.} = ref object of QRhiWidget
  vtbl*: cQRhiWidgetVTable

method metaObject*(self: VirtualQRhiWidget): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRhiWidgetmetaObject(self[])
method metacast*(self: VirtualQRhiWidget, param1: cstring): pointer {.base.} =
  QRhiWidgetmetacast(self[], param1)
method metacall*(self: VirtualQRhiWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRhiWidgetmetacall(self[], param1, param2, param3)
method releaseResources*(self: VirtualQRhiWidget): void {.base.} =
  QRhiWidgetreleaseResources(self[])
method resizeEvent*(self: VirtualQRhiWidget, e: gen_qevent_types.QResizeEvent): void {.base.} =
  QRhiWidgetresizeEvent(self[], e)
method paintEvent*(self: VirtualQRhiWidget, e: gen_qevent_types.QPaintEvent): void {.base.} =
  QRhiWidgetpaintEvent(self[], e)
method event*(self: VirtualQRhiWidget, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRhiWidgetevent(self[], e)
method devType*(self: VirtualQRhiWidget): cint {.base.} =
  QRhiWidgetdevType(self[])
method setVisible*(self: VirtualQRhiWidget, visible: bool): void {.base.} =
  QRhiWidgetsetVisible(self[], visible)
method sizeHint*(self: VirtualQRhiWidget): gen_qsize_types.QSize {.base.} =
  QRhiWidgetsizeHint(self[])
method minimumSizeHint*(self: VirtualQRhiWidget): gen_qsize_types.QSize {.base.} =
  QRhiWidgetminimumSizeHint(self[])
method heightForWidth*(self: VirtualQRhiWidget, param1: cint): cint {.base.} =
  QRhiWidgetheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQRhiWidget): bool {.base.} =
  QRhiWidgethasHeightForWidth(self[])
method paintEngine*(self: VirtualQRhiWidget): gen_qpaintengine_types.QPaintEngine {.base.} =
  QRhiWidgetpaintEngine(self[])
method mousePressEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRhiWidgetmousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRhiWidgetmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRhiWidgetmouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRhiWidgetmouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QRhiWidgetwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QRhiWidgetkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QRhiWidgetkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QRhiWidgetfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QRhiWidgetfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QRhiWidgetenterEvent(self[], event)
method leaveEvent*(self: VirtualQRhiWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRhiWidgetleaveEvent(self[], event)
method moveEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QRhiWidgetmoveEvent(self[], event)
method closeEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QRhiWidgetcloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QRhiWidgetcontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QRhiWidgettabletEvent(self[], event)
method actionEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QActionEvent): void {.base.} =
  QRhiWidgetactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QRhiWidgetdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QRhiWidgetdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QRhiWidgetdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QDropEvent): void {.base.} =
  QRhiWidgetdropEvent(self[], event)
method showEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QRhiWidgetshowEvent(self[], event)
method hideEvent*(self: VirtualQRhiWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QRhiWidgethideEvent(self[], event)
method nativeEvent*(self: VirtualQRhiWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QRhiWidgetnativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQRhiWidget, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QRhiWidgetchangeEvent(self[], param1)
method metric*(self: VirtualQRhiWidget, param1: cint): cint {.base.} =
  QRhiWidgetmetric(self[], param1)
method initPainter*(self: VirtualQRhiWidget, painter: gen_qpainter_types.QPainter): void {.base.} =
  QRhiWidgetinitPainter(self[], painter)
method redirected*(self: VirtualQRhiWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QRhiWidgetredirected(self[], offset)
method sharedPainter*(self: VirtualQRhiWidget): gen_qpainter_types.QPainter {.base.} =
  QRhiWidgetsharedPainter(self[])
method inputMethodEvent*(self: VirtualQRhiWidget, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QRhiWidgetinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQRhiWidget, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QRhiWidgetinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQRhiWidget, next: bool): bool {.base.} =
  QRhiWidgetfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQRhiWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRhiWidgeteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQRhiWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRhiWidgettimerEvent(self[], event)
method childEvent*(self: VirtualQRhiWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRhiWidgetchildEvent(self[], event)
method customEvent*(self: VirtualQRhiWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRhiWidgetcustomEvent(self[], event)
method connectNotify*(self: VirtualQRhiWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRhiWidgetconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRhiWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRhiWidgetdisconnectNotify(self[], signal)

proc fcQRhiWidget_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRhiWidget_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRhiWidget_method_callback_releaseResources(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  inst.releaseResources()

proc fcQRhiWidget_method_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  inst.resizeEvent(slotval1)

proc fcQRhiWidget_method_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  inst.paintEvent(slotval1)

proc fcQRhiWidget_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRhiWidget_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQRhiWidget_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQRhiWidget_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQRhiWidget_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQRhiWidget_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQRhiWidget_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQRhiWidget_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQRhiWidget_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQRhiWidget_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQRhiWidget_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQRhiWidget_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQRhiWidget_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQRhiWidget_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQRhiWidget_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQRhiWidget_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQRhiWidget_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQRhiWidget_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQRhiWidget_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQRhiWidget_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQRhiWidget_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQRhiWidget_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQRhiWidget_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQRhiWidget_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQRhiWidget_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQRhiWidget_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQRhiWidget_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQRhiWidget_method_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRhiWidget_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQRhiWidget_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQRhiWidget_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQRhiWidget_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQRhiWidget_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRhiWidget_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQRhiWidget_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRhiWidget_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQRhiWidget_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRhiWidget_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRhiWidget_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRhiWidget_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRhiWidget](fcQRhiWidget_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc isAutoRenderTargetEnabled*(self: gen_qrhiwidget_types.QRhiWidget): bool =
  fcQRhiWidget_protectedbase_isAutoRenderTargetEnabled(self.h)

proc setAutoRenderTarget*(self: gen_qrhiwidget_types.QRhiWidget, enabled: bool): void =
  fcQRhiWidget_protectedbase_setAutoRenderTarget(self.h, enabled)

proc updateMicroFocus*(self: gen_qrhiwidget_types.QRhiWidget): void =
  fcQRhiWidget_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qrhiwidget_types.QRhiWidget): void =
  fcQRhiWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qrhiwidget_types.QRhiWidget): void =
  fcQRhiWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qrhiwidget_types.QRhiWidget): bool =
  fcQRhiWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qrhiwidget_types.QRhiWidget): bool =
  fcQRhiWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qrhiwidget_types.QRhiWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRhiWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qrhiwidget_types.QRhiWidget): cint =
  fcQRhiWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qrhiwidget_types.QRhiWidget, signal: cstring): cint =
  fcQRhiWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qrhiwidget_types.QRhiWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRhiWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc getDecodedMetricF*(self: gen_qrhiwidget_types.QRhiWidget, metricA: cint, metricB: cint): float64 =
  fcQRhiWidget_protectedbase_getDecodedMetricF(self.h, cint(metricA), cint(metricB))

proc create*(T: type gen_qrhiwidget_types.QRhiWidget,
    vtbl: ref QRhiWidgetVTable = nil): gen_qrhiwidget_types.QRhiWidget =
  let vtbl = if vtbl == nil: new QRhiWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRhiWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRhiWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRhiWidget_vtable_callback_metacall
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = fcQRhiWidget_vtable_callback_releaseResources
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQRhiWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQRhiWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRhiWidget_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQRhiWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQRhiWidget_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQRhiWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQRhiWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQRhiWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQRhiWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQRhiWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQRhiWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQRhiWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQRhiWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQRhiWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQRhiWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQRhiWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQRhiWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQRhiWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQRhiWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQRhiWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQRhiWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQRhiWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQRhiWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQRhiWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQRhiWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQRhiWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQRhiWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQRhiWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQRhiWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQRhiWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQRhiWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQRhiWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQRhiWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQRhiWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQRhiWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQRhiWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQRhiWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQRhiWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQRhiWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQRhiWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQRhiWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRhiWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRhiWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRhiWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRhiWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRhiWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRhiWidget_vtable_callback_disconnectNotify
  let tmp = gen_qrhiwidget_types.QRhiWidget(h: fcQRhiWidget_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQRhiWidget_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qrhiwidget_types.QRhiWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QRhiWidgetVTable = nil): gen_qrhiwidget_types.QRhiWidget =
  let vtbl = if vtbl == nil: new QRhiWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRhiWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRhiWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRhiWidget_vtable_callback_metacall
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = fcQRhiWidget_vtable_callback_releaseResources
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQRhiWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQRhiWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRhiWidget_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQRhiWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQRhiWidget_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQRhiWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQRhiWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQRhiWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQRhiWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQRhiWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQRhiWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQRhiWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQRhiWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQRhiWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQRhiWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQRhiWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQRhiWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQRhiWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQRhiWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQRhiWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQRhiWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQRhiWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQRhiWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQRhiWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQRhiWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQRhiWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQRhiWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQRhiWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQRhiWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQRhiWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQRhiWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQRhiWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQRhiWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQRhiWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQRhiWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQRhiWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQRhiWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQRhiWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQRhiWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQRhiWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQRhiWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRhiWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRhiWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRhiWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRhiWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRhiWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRhiWidget_vtable_callback_disconnectNotify
  let tmp = gen_qrhiwidget_types.QRhiWidget(h: fcQRhiWidget_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQRhiWidget_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qrhiwidget_types.QRhiWidget,
    parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QRhiWidgetVTable = nil): gen_qrhiwidget_types.QRhiWidget =
  let vtbl = if vtbl == nil: new QRhiWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRhiWidgetVTable](fcQRhiWidget_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRhiWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRhiWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRhiWidget_vtable_callback_metacall
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = fcQRhiWidget_vtable_callback_releaseResources
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQRhiWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQRhiWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRhiWidget_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQRhiWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQRhiWidget_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQRhiWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQRhiWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQRhiWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQRhiWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQRhiWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQRhiWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQRhiWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQRhiWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQRhiWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQRhiWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQRhiWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQRhiWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQRhiWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQRhiWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQRhiWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQRhiWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQRhiWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQRhiWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQRhiWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQRhiWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQRhiWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQRhiWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQRhiWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQRhiWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQRhiWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQRhiWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQRhiWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQRhiWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQRhiWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQRhiWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQRhiWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQRhiWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQRhiWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQRhiWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQRhiWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQRhiWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRhiWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRhiWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRhiWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRhiWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRhiWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRhiWidget_vtable_callback_disconnectNotify
  let tmp = gen_qrhiwidget_types.QRhiWidget(h: fcQRhiWidget_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h, cint(f)), owned: true)
  fcQRhiWidget_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQRhiWidget_mvtbl = cQRhiWidgetVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRhiWidget()[])](self.fcQRhiWidget_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRhiWidget_method_callback_metaObject,
  metacast: fcQRhiWidget_method_callback_metacast,
  metacall: fcQRhiWidget_method_callback_metacall,
  releaseResources: fcQRhiWidget_method_callback_releaseResources,
  resizeEvent: fcQRhiWidget_method_callback_resizeEvent,
  paintEvent: fcQRhiWidget_method_callback_paintEvent,
  event: fcQRhiWidget_method_callback_event,
  devType: fcQRhiWidget_method_callback_devType,
  setVisible: fcQRhiWidget_method_callback_setVisible,
  sizeHint: fcQRhiWidget_method_callback_sizeHint,
  minimumSizeHint: fcQRhiWidget_method_callback_minimumSizeHint,
  heightForWidth: fcQRhiWidget_method_callback_heightForWidth,
  hasHeightForWidth: fcQRhiWidget_method_callback_hasHeightForWidth,
  paintEngine: fcQRhiWidget_method_callback_paintEngine,
  mousePressEvent: fcQRhiWidget_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQRhiWidget_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQRhiWidget_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQRhiWidget_method_callback_mouseMoveEvent,
  wheelEvent: fcQRhiWidget_method_callback_wheelEvent,
  keyPressEvent: fcQRhiWidget_method_callback_keyPressEvent,
  keyReleaseEvent: fcQRhiWidget_method_callback_keyReleaseEvent,
  focusInEvent: fcQRhiWidget_method_callback_focusInEvent,
  focusOutEvent: fcQRhiWidget_method_callback_focusOutEvent,
  enterEvent: fcQRhiWidget_method_callback_enterEvent,
  leaveEvent: fcQRhiWidget_method_callback_leaveEvent,
  moveEvent: fcQRhiWidget_method_callback_moveEvent,
  closeEvent: fcQRhiWidget_method_callback_closeEvent,
  contextMenuEvent: fcQRhiWidget_method_callback_contextMenuEvent,
  tabletEvent: fcQRhiWidget_method_callback_tabletEvent,
  actionEvent: fcQRhiWidget_method_callback_actionEvent,
  dragEnterEvent: fcQRhiWidget_method_callback_dragEnterEvent,
  dragMoveEvent: fcQRhiWidget_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQRhiWidget_method_callback_dragLeaveEvent,
  dropEvent: fcQRhiWidget_method_callback_dropEvent,
  showEvent: fcQRhiWidget_method_callback_showEvent,
  hideEvent: fcQRhiWidget_method_callback_hideEvent,
  nativeEvent: fcQRhiWidget_method_callback_nativeEvent,
  changeEvent: fcQRhiWidget_method_callback_changeEvent,
  metric: fcQRhiWidget_method_callback_metric,
  initPainter: fcQRhiWidget_method_callback_initPainter,
  redirected: fcQRhiWidget_method_callback_redirected,
  sharedPainter: fcQRhiWidget_method_callback_sharedPainter,
  inputMethodEvent: fcQRhiWidget_method_callback_inputMethodEvent,
  inputMethodQuery: fcQRhiWidget_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQRhiWidget_method_callback_focusNextPrevChild,
  eventFilter: fcQRhiWidget_method_callback_eventFilter,
  timerEvent: fcQRhiWidget_method_callback_timerEvent,
  childEvent: fcQRhiWidget_method_callback_childEvent,
  customEvent: fcQRhiWidget_method_callback_customEvent,
  connectNotify: fcQRhiWidget_method_callback_connectNotify,
  disconnectNotify: fcQRhiWidget_method_callback_disconnectNotify,
)
proc create*(T: type gen_qrhiwidget_types.QRhiWidget,
    inst: VirtualQRhiWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRhiWidget_new(addr(cQRhiWidget_mvtbl), csize_t(sizeof(pointer)))
  fcQRhiWidget_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qrhiwidget_types.QRhiWidget,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQRhiWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRhiWidget_new2(addr(cQRhiWidget_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQRhiWidget_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qrhiwidget_types.QRhiWidget,
    parent: gen_qwidget_types.QWidget, f: cint,
    inst: VirtualQRhiWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRhiWidget_new3(addr(cQRhiWidget_mvtbl), csize_t(sizeof(pointer)), parent.h, cint(f))
  fcQRhiWidget_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qrhiwidget_types.QRhiWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRhiWidget_staticMetaObject())
