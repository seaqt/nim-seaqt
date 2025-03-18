import ./qtprintsupport_pkg

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


{.compile("gen_qprintpreviewwidget.cpp", QtPrintSupportCFlags).}


type QPrintPreviewWidgetViewModeEnum* = distinct cint
template SinglePageView*(_: type QPrintPreviewWidgetViewModeEnum): untyped = 0
template FacingPagesView*(_: type QPrintPreviewWidgetViewModeEnum): untyped = 1
template AllPagesView*(_: type QPrintPreviewWidgetViewModeEnum): untyped = 2


type QPrintPreviewWidgetZoomModeEnum* = distinct cint
template CustomZoom*(_: type QPrintPreviewWidgetZoomModeEnum): untyped = 0
template FitToWidth*(_: type QPrintPreviewWidgetZoomModeEnum): untyped = 1
template FitInView*(_: type QPrintPreviewWidgetZoomModeEnum): untyped = 2


import ./gen_qprintpreviewwidget_types
export gen_qprintpreviewwidget_types

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
  ../QtWidgets/gen_qwidget,
  ./gen_qprinter_types
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
  gen_qwidget,
  gen_qprinter_types

type cQPrintPreviewWidget*{.exportc: "QPrintPreviewWidget", incompleteStruct.} = object

proc fcQPrintPreviewWidget_metaObject(self: pointer): pointer {.importc: "QPrintPreviewWidget_metaObject".}
proc fcQPrintPreviewWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintPreviewWidget_metacast".}
proc fcQPrintPreviewWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintPreviewWidget_metacall".}
proc fcQPrintPreviewWidget_tr(s: cstring): struct_miqt_string {.importc: "QPrintPreviewWidget_tr".}
proc fcQPrintPreviewWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QPrintPreviewWidget_trUtf8".}
proc fcQPrintPreviewWidget_zoomFactor(self: pointer): float64 {.importc: "QPrintPreviewWidget_zoomFactor".}
proc fcQPrintPreviewWidget_orientation(self: pointer): cint {.importc: "QPrintPreviewWidget_orientation".}
proc fcQPrintPreviewWidget_viewMode(self: pointer): cint {.importc: "QPrintPreviewWidget_viewMode".}
proc fcQPrintPreviewWidget_zoomMode(self: pointer): cint {.importc: "QPrintPreviewWidget_zoomMode".}
proc fcQPrintPreviewWidget_currentPage(self: pointer): cint {.importc: "QPrintPreviewWidget_currentPage".}
proc fcQPrintPreviewWidget_pageCount(self: pointer): cint {.importc: "QPrintPreviewWidget_pageCount".}
proc fcQPrintPreviewWidget_setVisible(self: pointer, visible: bool): void {.importc: "QPrintPreviewWidget_setVisible".}
proc fcQPrintPreviewWidget_print(self: pointer): void {.importc: "QPrintPreviewWidget_print".}
proc fcQPrintPreviewWidget_zoomIn(self: pointer): void {.importc: "QPrintPreviewWidget_zoomIn".}
proc fcQPrintPreviewWidget_zoomOut(self: pointer): void {.importc: "QPrintPreviewWidget_zoomOut".}
proc fcQPrintPreviewWidget_setZoomFactor(self: pointer, zoomFactor: float64): void {.importc: "QPrintPreviewWidget_setZoomFactor".}
proc fcQPrintPreviewWidget_setOrientation(self: pointer, orientation: cint): void {.importc: "QPrintPreviewWidget_setOrientation".}
proc fcQPrintPreviewWidget_setViewMode(self: pointer, viewMode: cint): void {.importc: "QPrintPreviewWidget_setViewMode".}
proc fcQPrintPreviewWidget_setZoomMode(self: pointer, zoomMode: cint): void {.importc: "QPrintPreviewWidget_setZoomMode".}
proc fcQPrintPreviewWidget_setCurrentPage(self: pointer, pageNumber: cint): void {.importc: "QPrintPreviewWidget_setCurrentPage".}
proc fcQPrintPreviewWidget_fitToWidth(self: pointer): void {.importc: "QPrintPreviewWidget_fitToWidth".}
proc fcQPrintPreviewWidget_fitInView(self: pointer): void {.importc: "QPrintPreviewWidget_fitInView".}
proc fcQPrintPreviewWidget_setLandscapeOrientation(self: pointer): void {.importc: "QPrintPreviewWidget_setLandscapeOrientation".}
proc fcQPrintPreviewWidget_setPortraitOrientation(self: pointer): void {.importc: "QPrintPreviewWidget_setPortraitOrientation".}
proc fcQPrintPreviewWidget_setSinglePageViewMode(self: pointer): void {.importc: "QPrintPreviewWidget_setSinglePageViewMode".}
proc fcQPrintPreviewWidget_setFacingPagesViewMode(self: pointer): void {.importc: "QPrintPreviewWidget_setFacingPagesViewMode".}
proc fcQPrintPreviewWidget_setAllPagesViewMode(self: pointer): void {.importc: "QPrintPreviewWidget_setAllPagesViewMode".}
proc fcQPrintPreviewWidget_updatePreview(self: pointer): void {.importc: "QPrintPreviewWidget_updatePreview".}
proc fcQPrintPreviewWidget_paintRequested(self: pointer, printer: pointer): void {.importc: "QPrintPreviewWidget_paintRequested".}
proc fcQPrintPreviewWidget_connect_paintRequested(self: pointer, slot: int, callback: proc (slot: int, printer: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPrintPreviewWidget_connect_paintRequested".}
proc fcQPrintPreviewWidget_previewChanged(self: pointer): void {.importc: "QPrintPreviewWidget_previewChanged".}
proc fcQPrintPreviewWidget_connect_previewChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPrintPreviewWidget_connect_previewChanged".}
proc fcQPrintPreviewWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintPreviewWidget_tr2".}
proc fcQPrintPreviewWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintPreviewWidget_tr3".}
proc fcQPrintPreviewWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintPreviewWidget_trUtf82".}
proc fcQPrintPreviewWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintPreviewWidget_trUtf83".}
proc fcQPrintPreviewWidget_zoomIn1(self: pointer, zoom: float64): void {.importc: "QPrintPreviewWidget_zoomIn1".}
proc fcQPrintPreviewWidget_zoomOut1(self: pointer, zoom: float64): void {.importc: "QPrintPreviewWidget_zoomOut1".}
proc fcQPrintPreviewWidget_vtbl(self: pointer): pointer {.importc: "QPrintPreviewWidget_vtbl".}
proc fcQPrintPreviewWidget_vdata(self: pointer): pointer {.importc: "QPrintPreviewWidget_vdata".}

type cQPrintPreviewWidgetVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
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
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQPrintPreviewWidget_virtualbase_metaObject(self: pointer): pointer {.importc: "QPrintPreviewWidget_virtualbase_metaObject".}
proc fcQPrintPreviewWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintPreviewWidget_virtualbase_metacast".}
proc fcQPrintPreviewWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintPreviewWidget_virtualbase_metacall".}
proc fcQPrintPreviewWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QPrintPreviewWidget_virtualbase_setVisible".}
proc fcQPrintPreviewWidget_virtualbase_devType(self: pointer): cint {.importc: "QPrintPreviewWidget_virtualbase_devType".}
proc fcQPrintPreviewWidget_virtualbase_sizeHint(self: pointer): pointer {.importc: "QPrintPreviewWidget_virtualbase_sizeHint".}
proc fcQPrintPreviewWidget_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QPrintPreviewWidget_virtualbase_minimumSizeHint".}
proc fcQPrintPreviewWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QPrintPreviewWidget_virtualbase_heightForWidth".}
proc fcQPrintPreviewWidget_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QPrintPreviewWidget_virtualbase_hasHeightForWidth".}
proc fcQPrintPreviewWidget_virtualbase_paintEngine(self: pointer): pointer {.importc: "QPrintPreviewWidget_virtualbase_paintEngine".}
proc fcQPrintPreviewWidget_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPrintPreviewWidget_virtualbase_event".}
proc fcQPrintPreviewWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_mousePressEvent".}
proc fcQPrintPreviewWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_mouseReleaseEvent".}
proc fcQPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQPrintPreviewWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_mouseMoveEvent".}
proc fcQPrintPreviewWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_wheelEvent".}
proc fcQPrintPreviewWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_keyPressEvent".}
proc fcQPrintPreviewWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_keyReleaseEvent".}
proc fcQPrintPreviewWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_focusInEvent".}
proc fcQPrintPreviewWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_focusOutEvent".}
proc fcQPrintPreviewWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_enterEvent".}
proc fcQPrintPreviewWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_leaveEvent".}
proc fcQPrintPreviewWidget_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_paintEvent".}
proc fcQPrintPreviewWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_moveEvent".}
proc fcQPrintPreviewWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_resizeEvent".}
proc fcQPrintPreviewWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_closeEvent".}
proc fcQPrintPreviewWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_contextMenuEvent".}
proc fcQPrintPreviewWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_tabletEvent".}
proc fcQPrintPreviewWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_actionEvent".}
proc fcQPrintPreviewWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_dragEnterEvent".}
proc fcQPrintPreviewWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_dragMoveEvent".}
proc fcQPrintPreviewWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_dragLeaveEvent".}
proc fcQPrintPreviewWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_dropEvent".}
proc fcQPrintPreviewWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_showEvent".}
proc fcQPrintPreviewWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_hideEvent".}
proc fcQPrintPreviewWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QPrintPreviewWidget_virtualbase_nativeEvent".}
proc fcQPrintPreviewWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_changeEvent".}
proc fcQPrintPreviewWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QPrintPreviewWidget_virtualbase_metric".}
proc fcQPrintPreviewWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_initPainter".}
proc fcQPrintPreviewWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPrintPreviewWidget_virtualbase_redirected".}
proc fcQPrintPreviewWidget_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QPrintPreviewWidget_virtualbase_sharedPainter".}
proc fcQPrintPreviewWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_inputMethodEvent".}
proc fcQPrintPreviewWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QPrintPreviewWidget_virtualbase_inputMethodQuery".}
proc fcQPrintPreviewWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QPrintPreviewWidget_virtualbase_focusNextPrevChild".}
proc fcQPrintPreviewWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPrintPreviewWidget_virtualbase_eventFilter".}
proc fcQPrintPreviewWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_timerEvent".}
proc fcQPrintPreviewWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_childEvent".}
proc fcQPrintPreviewWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_customEvent".}
proc fcQPrintPreviewWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_connectNotify".}
proc fcQPrintPreviewWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_disconnectNotify".}
proc fcQPrintPreviewWidget_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QPrintPreviewWidget_protectedbase_updateMicroFocus".}
proc fcQPrintPreviewWidget_protectedbase_create(self: pointer): void {.importc: "QPrintPreviewWidget_protectedbase_create".}
proc fcQPrintPreviewWidget_protectedbase_destroy(self: pointer): void {.importc: "QPrintPreviewWidget_protectedbase_destroy".}
proc fcQPrintPreviewWidget_protectedbase_focusNextChild(self: pointer): bool {.importc: "QPrintPreviewWidget_protectedbase_focusNextChild".}
proc fcQPrintPreviewWidget_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QPrintPreviewWidget_protectedbase_focusPreviousChild".}
proc fcQPrintPreviewWidget_protectedbase_sender(self: pointer): pointer {.importc: "QPrintPreviewWidget_protectedbase_sender".}
proc fcQPrintPreviewWidget_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPrintPreviewWidget_protectedbase_senderSignalIndex".}
proc fcQPrintPreviewWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPrintPreviewWidget_protectedbase_receivers".}
proc fcQPrintPreviewWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPrintPreviewWidget_protectedbase_isSignalConnected".}
proc fcQPrintPreviewWidget_new(vtbl, vdata: pointer, parent: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new".}
proc fcQPrintPreviewWidget_new2(vtbl, vdata: pointer, printer: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new2".}
proc fcQPrintPreviewWidget_new3(vtbl, vdata: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new3".}
proc fcQPrintPreviewWidget_new4(vtbl, vdata: pointer, printer: pointer, parent: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new4".}
proc fcQPrintPreviewWidget_new5(vtbl, vdata: pointer, printer: pointer, parent: pointer, flags: cint): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new5".}
proc fcQPrintPreviewWidget_new6(vtbl, vdata: pointer, parent: pointer, flags: cint): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new6".}
proc fcQPrintPreviewWidget_staticMetaObject(): pointer {.importc: "QPrintPreviewWidget_staticMetaObject".}

proc metaObject*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintPreviewWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cstring): pointer =
  fcQPrintPreviewWidget_metacast(self.h, param1)

proc metacall*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQPrintPreviewWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, s: cstring): string =
  let v_ms = fcQPrintPreviewWidget_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, s: cstring): string =
  let v_ms = fcQPrintPreviewWidget_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc zoomFactor*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): float64 =
  fcQPrintPreviewWidget_zoomFactor(self.h)

proc orientation*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): cint =
  cint(fcQPrintPreviewWidget_orientation(self.h))

proc viewMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): cint =
  cint(fcQPrintPreviewWidget_viewMode(self.h))

proc zoomMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): cint =
  cint(fcQPrintPreviewWidget_zoomMode(self.h))

proc currentPage*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): cint =
  fcQPrintPreviewWidget_currentPage(self.h)

proc pageCount*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): cint =
  fcQPrintPreviewWidget_pageCount(self.h)

proc setVisible*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, visible: bool): void =
  fcQPrintPreviewWidget_setVisible(self.h, visible)

proc print*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_print(self.h)

proc zoomIn*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_zoomIn(self.h)

proc zoomOut*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_zoomOut(self.h)

proc setZoomFactor*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, zoomFactor: float64): void =
  fcQPrintPreviewWidget_setZoomFactor(self.h, zoomFactor)

proc setOrientation*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, orientation: cint): void =
  fcQPrintPreviewWidget_setOrientation(self.h, cint(orientation))

proc setViewMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, viewMode: cint): void =
  fcQPrintPreviewWidget_setViewMode(self.h, cint(viewMode))

proc setZoomMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, zoomMode: cint): void =
  fcQPrintPreviewWidget_setZoomMode(self.h, cint(zoomMode))

proc setCurrentPage*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, pageNumber: cint): void =
  fcQPrintPreviewWidget_setCurrentPage(self.h, pageNumber)

proc fitToWidth*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_fitToWidth(self.h)

proc fitInView*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_fitInView(self.h)

proc setLandscapeOrientation*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_setLandscapeOrientation(self.h)

proc setPortraitOrientation*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_setPortraitOrientation(self.h)

proc setSinglePageViewMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_setSinglePageViewMode(self.h)

proc setFacingPagesViewMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_setFacingPagesViewMode(self.h)

proc setAllPagesViewMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_setAllPagesViewMode(self.h)

proc updatePreview*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_updatePreview(self.h)

proc paintRequested*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, printer: gen_qprinter_types.QPrinter): void =
  fcQPrintPreviewWidget_paintRequested(self.h, printer.h)

type QPrintPreviewWidgetpaintRequestedSlot* = proc(printer: gen_qprinter_types.QPrinter)
proc fcQPrintPreviewWidget_slot_callback_paintRequested(slot: int, printer: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPrintPreviewWidgetpaintRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qprinter_types.QPrinter(h: printer, owned: false)

  nimfunc[](slotval1)

proc fcQPrintPreviewWidget_slot_callback_paintRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPrintPreviewWidgetpaintRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPaintRequested*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetpaintRequestedSlot) =
  var tmp = new QPrintPreviewWidgetpaintRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_connect_paintRequested(self.h, cast[int](addr tmp[]), fcQPrintPreviewWidget_slot_callback_paintRequested, fcQPrintPreviewWidget_slot_callback_paintRequested_release)

proc previewChanged*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_previewChanged(self.h)

type QPrintPreviewWidgetpreviewChangedSlot* = proc()
proc fcQPrintPreviewWidget_slot_callback_previewChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QPrintPreviewWidgetpreviewChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQPrintPreviewWidget_slot_callback_previewChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPrintPreviewWidgetpreviewChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPreviewChanged*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetpreviewChangedSlot) =
  var tmp = new QPrintPreviewWidgetpreviewChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_connect_previewChanged(self.h, cast[int](addr tmp[]), fcQPrintPreviewWidget_slot_callback_previewChanged, fcQPrintPreviewWidget_slot_callback_previewChanged_release)

proc tr*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, s: cstring, c: cstring): string =
  let v_ms = fcQPrintPreviewWidget_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPrintPreviewWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, s: cstring, c: cstring): string =
  let v_ms = fcQPrintPreviewWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPrintPreviewWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc zoomIn*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, zoom: float64): void =
  fcQPrintPreviewWidget_zoomIn1(self.h, zoom)

proc zoomOut*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, zoom: float64): void =
  fcQPrintPreviewWidget_zoomOut1(self.h, zoom)

type QPrintPreviewWidgetmetaObjectProc* = proc(self: QPrintPreviewWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPrintPreviewWidgetmetacastProc* = proc(self: QPrintPreviewWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QPrintPreviewWidgetmetacallProc* = proc(self: QPrintPreviewWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPrintPreviewWidgetsetVisibleProc* = proc(self: QPrintPreviewWidget, visible: bool): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetdevTypeProc* = proc(self: QPrintPreviewWidget): cint {.raises: [], gcsafe.}
type QPrintPreviewWidgetsizeHintProc* = proc(self: QPrintPreviewWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPrintPreviewWidgetminimumSizeHintProc* = proc(self: QPrintPreviewWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPrintPreviewWidgetheightForWidthProc* = proc(self: QPrintPreviewWidget, param1: cint): cint {.raises: [], gcsafe.}
type QPrintPreviewWidgethasHeightForWidthProc* = proc(self: QPrintPreviewWidget): bool {.raises: [], gcsafe.}
type QPrintPreviewWidgetpaintEngineProc* = proc(self: QPrintPreviewWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPrintPreviewWidgeteventProc* = proc(self: QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPrintPreviewWidgetmousePressEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetmouseReleaseEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetmouseDoubleClickEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetmouseMoveEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetwheelEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetkeyPressEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetkeyReleaseEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetfocusInEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetfocusOutEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetenterEventProc* = proc(self: QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetleaveEventProc* = proc(self: QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetpaintEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetmoveEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetresizeEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetcloseEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetcontextMenuEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgettabletEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetactionEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetdragEnterEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetdragMoveEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetdragLeaveEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetdropEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetshowEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgethideEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetnativeEventProc* = proc(self: QPrintPreviewWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QPrintPreviewWidgetchangeEventProc* = proc(self: QPrintPreviewWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetmetricProc* = proc(self: QPrintPreviewWidget, param1: cint): cint {.raises: [], gcsafe.}
type QPrintPreviewWidgetinitPainterProc* = proc(self: QPrintPreviewWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetredirectedProc* = proc(self: QPrintPreviewWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPrintPreviewWidgetsharedPainterProc* = proc(self: QPrintPreviewWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPrintPreviewWidgetinputMethodEventProc* = proc(self: QPrintPreviewWidget, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetinputMethodQueryProc* = proc(self: QPrintPreviewWidget, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPrintPreviewWidgetfocusNextPrevChildProc* = proc(self: QPrintPreviewWidget, next: bool): bool {.raises: [], gcsafe.}
type QPrintPreviewWidgeteventFilterProc* = proc(self: QPrintPreviewWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPrintPreviewWidgettimerEventProc* = proc(self: QPrintPreviewWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetchildEventProc* = proc(self: QPrintPreviewWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetcustomEventProc* = proc(self: QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetconnectNotifyProc* = proc(self: QPrintPreviewWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPrintPreviewWidgetdisconnectNotifyProc* = proc(self: QPrintPreviewWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QPrintPreviewWidgetVTable* {.inheritable, pure.} = object
  vtbl: cQPrintPreviewWidgetVTable
  metaObject*: QPrintPreviewWidgetmetaObjectProc
  metacast*: QPrintPreviewWidgetmetacastProc
  metacall*: QPrintPreviewWidgetmetacallProc
  setVisible*: QPrintPreviewWidgetsetVisibleProc
  devType*: QPrintPreviewWidgetdevTypeProc
  sizeHint*: QPrintPreviewWidgetsizeHintProc
  minimumSizeHint*: QPrintPreviewWidgetminimumSizeHintProc
  heightForWidth*: QPrintPreviewWidgetheightForWidthProc
  hasHeightForWidth*: QPrintPreviewWidgethasHeightForWidthProc
  paintEngine*: QPrintPreviewWidgetpaintEngineProc
  event*: QPrintPreviewWidgeteventProc
  mousePressEvent*: QPrintPreviewWidgetmousePressEventProc
  mouseReleaseEvent*: QPrintPreviewWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QPrintPreviewWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QPrintPreviewWidgetmouseMoveEventProc
  wheelEvent*: QPrintPreviewWidgetwheelEventProc
  keyPressEvent*: QPrintPreviewWidgetkeyPressEventProc
  keyReleaseEvent*: QPrintPreviewWidgetkeyReleaseEventProc
  focusInEvent*: QPrintPreviewWidgetfocusInEventProc
  focusOutEvent*: QPrintPreviewWidgetfocusOutEventProc
  enterEvent*: QPrintPreviewWidgetenterEventProc
  leaveEvent*: QPrintPreviewWidgetleaveEventProc
  paintEvent*: QPrintPreviewWidgetpaintEventProc
  moveEvent*: QPrintPreviewWidgetmoveEventProc
  resizeEvent*: QPrintPreviewWidgetresizeEventProc
  closeEvent*: QPrintPreviewWidgetcloseEventProc
  contextMenuEvent*: QPrintPreviewWidgetcontextMenuEventProc
  tabletEvent*: QPrintPreviewWidgettabletEventProc
  actionEvent*: QPrintPreviewWidgetactionEventProc
  dragEnterEvent*: QPrintPreviewWidgetdragEnterEventProc
  dragMoveEvent*: QPrintPreviewWidgetdragMoveEventProc
  dragLeaveEvent*: QPrintPreviewWidgetdragLeaveEventProc
  dropEvent*: QPrintPreviewWidgetdropEventProc
  showEvent*: QPrintPreviewWidgetshowEventProc
  hideEvent*: QPrintPreviewWidgethideEventProc
  nativeEvent*: QPrintPreviewWidgetnativeEventProc
  changeEvent*: QPrintPreviewWidgetchangeEventProc
  metric*: QPrintPreviewWidgetmetricProc
  initPainter*: QPrintPreviewWidgetinitPainterProc
  redirected*: QPrintPreviewWidgetredirectedProc
  sharedPainter*: QPrintPreviewWidgetsharedPainterProc
  inputMethodEvent*: QPrintPreviewWidgetinputMethodEventProc
  inputMethodQuery*: QPrintPreviewWidgetinputMethodQueryProc
  focusNextPrevChild*: QPrintPreviewWidgetfocusNextPrevChildProc
  eventFilter*: QPrintPreviewWidgeteventFilterProc
  timerEvent*: QPrintPreviewWidgettimerEventProc
  childEvent*: QPrintPreviewWidgetchildEventProc
  customEvent*: QPrintPreviewWidgetcustomEventProc
  connectNotify*: QPrintPreviewWidgetconnectNotifyProc
  disconnectNotify*: QPrintPreviewWidgetdisconnectNotifyProc

proc QPrintPreviewWidgetmetaObject*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintPreviewWidget_virtualbase_metaObject(self.h), owned: false)

proc QPrintPreviewWidgetmetacast*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cstring): pointer =
  fcQPrintPreviewWidget_virtualbase_metacast(self.h, param1)

proc QPrintPreviewWidgetmetacall*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQPrintPreviewWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPrintPreviewWidgetsetVisible*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, visible: bool): void =
  fcQPrintPreviewWidget_virtualbase_setVisible(self.h, visible)

proc QPrintPreviewWidgetdevType*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): cint =
  fcQPrintPreviewWidget_virtualbase_devType(self.h)

proc QPrintPreviewWidgetsizeHint*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPrintPreviewWidget_virtualbase_sizeHint(self.h), owned: true)

proc QPrintPreviewWidgetminimumSizeHint*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPrintPreviewWidget_virtualbase_minimumSizeHint(self.h), owned: true)

proc QPrintPreviewWidgetheightForWidth*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint): cint =
  fcQPrintPreviewWidget_virtualbase_heightForWidth(self.h, param1)

proc QPrintPreviewWidgethasHeightForWidth*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): bool =
  fcQPrintPreviewWidget_virtualbase_hasHeightForWidth(self.h)

proc QPrintPreviewWidgetpaintEngine*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPrintPreviewWidget_virtualbase_paintEngine(self.h), owned: false)

proc QPrintPreviewWidgetevent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQPrintPreviewWidget_virtualbase_event(self.h, event.h)

proc QPrintPreviewWidgetmousePressEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewWidget_virtualbase_mousePressEvent(self.h, event.h)

proc QPrintPreviewWidgetmouseReleaseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QPrintPreviewWidgetmouseDoubleClickEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QPrintPreviewWidgetmouseMoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc QPrintPreviewWidgetwheelEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQPrintPreviewWidget_virtualbase_wheelEvent(self.h, event.h)

proc QPrintPreviewWidgetkeyPressEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQPrintPreviewWidget_virtualbase_keyPressEvent(self.h, event.h)

proc QPrintPreviewWidgetkeyReleaseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQPrintPreviewWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc QPrintPreviewWidgetfocusInEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQPrintPreviewWidget_virtualbase_focusInEvent(self.h, event.h)

proc QPrintPreviewWidgetfocusOutEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQPrintPreviewWidget_virtualbase_focusOutEvent(self.h, event.h)

proc QPrintPreviewWidgetenterEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintPreviewWidget_virtualbase_enterEvent(self.h, event.h)

proc QPrintPreviewWidgetleaveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintPreviewWidget_virtualbase_leaveEvent(self.h, event.h)

proc QPrintPreviewWidgetpaintEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQPrintPreviewWidget_virtualbase_paintEvent(self.h, event.h)

proc QPrintPreviewWidgetmoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQPrintPreviewWidget_virtualbase_moveEvent(self.h, event.h)

proc QPrintPreviewWidgetresizeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQPrintPreviewWidget_virtualbase_resizeEvent(self.h, event.h)

proc QPrintPreviewWidgetcloseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQPrintPreviewWidget_virtualbase_closeEvent(self.h, event.h)

proc QPrintPreviewWidgetcontextMenuEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQPrintPreviewWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc QPrintPreviewWidgettabletEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQPrintPreviewWidget_virtualbase_tabletEvent(self.h, event.h)

proc QPrintPreviewWidgetactionEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QActionEvent): void =
  fcQPrintPreviewWidget_virtualbase_actionEvent(self.h, event.h)

proc QPrintPreviewWidgetdragEnterEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQPrintPreviewWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc QPrintPreviewWidgetdragMoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQPrintPreviewWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc QPrintPreviewWidgetdragLeaveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQPrintPreviewWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc QPrintPreviewWidgetdropEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDropEvent): void =
  fcQPrintPreviewWidget_virtualbase_dropEvent(self.h, event.h)

proc QPrintPreviewWidgetshowEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QShowEvent): void =
  fcQPrintPreviewWidget_virtualbase_showEvent(self.h, event.h)

proc QPrintPreviewWidgethideEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QHideEvent): void =
  fcQPrintPreviewWidget_virtualbase_hideEvent(self.h, event.h)

proc QPrintPreviewWidgetnativeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQPrintPreviewWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QPrintPreviewWidgetchangeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQPrintPreviewWidget_virtualbase_changeEvent(self.h, param1.h)

proc QPrintPreviewWidgetmetric*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint): cint =
  fcQPrintPreviewWidget_virtualbase_metric(self.h, cint(param1))

proc QPrintPreviewWidgetinitPainter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, painter: gen_qpainter_types.QPainter): void =
  fcQPrintPreviewWidget_virtualbase_initPainter(self.h, painter.h)

proc QPrintPreviewWidgetredirected*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPrintPreviewWidget_virtualbase_redirected(self.h, offset.h), owned: false)

proc QPrintPreviewWidgetsharedPainter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPrintPreviewWidget_virtualbase_sharedPainter(self.h), owned: false)

proc QPrintPreviewWidgetinputMethodEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQPrintPreviewWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc QPrintPreviewWidgetinputMethodQuery*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPrintPreviewWidget_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QPrintPreviewWidgetfocusNextPrevChild*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, next: bool): bool =
  fcQPrintPreviewWidget_virtualbase_focusNextPrevChild(self.h, next)

proc QPrintPreviewWidgeteventFilter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPrintPreviewWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPrintPreviewWidgettimerEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPrintPreviewWidget_virtualbase_timerEvent(self.h, event.h)

proc QPrintPreviewWidgetchildEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPrintPreviewWidget_virtualbase_childEvent(self.h, event.h)

proc QPrintPreviewWidgetcustomEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintPreviewWidget_virtualbase_customEvent(self.h, event.h)

proc QPrintPreviewWidgetconnectNotify*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPrintPreviewWidget_virtualbase_connectNotify(self.h, signal.h)

proc QPrintPreviewWidgetdisconnectNotify*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPrintPreviewWidget_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPrintPreviewWidget_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPrintPreviewWidget_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPrintPreviewWidget_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQPrintPreviewWidget_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQPrintPreviewWidget_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQPrintPreviewWidget_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPrintPreviewWidget_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPrintPreviewWidget_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQPrintPreviewWidget_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQPrintPreviewWidget_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPrintPreviewWidget_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQPrintPreviewWidget_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPrintPreviewWidget* {.inheritable.} = ref object of QPrintPreviewWidget
  vtbl*: cQPrintPreviewWidgetVTable

method metaObject*(self: VirtualQPrintPreviewWidget): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPrintPreviewWidgetmetaObject(self[])
method metacast*(self: VirtualQPrintPreviewWidget, param1: cstring): pointer {.base.} =
  QPrintPreviewWidgetmetacast(self[], param1)
method metacall*(self: VirtualQPrintPreviewWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPrintPreviewWidgetmetacall(self[], param1, param2, param3)
method setVisible*(self: VirtualQPrintPreviewWidget, visible: bool): void {.base.} =
  QPrintPreviewWidgetsetVisible(self[], visible)
method devType*(self: VirtualQPrintPreviewWidget): cint {.base.} =
  QPrintPreviewWidgetdevType(self[])
method sizeHint*(self: VirtualQPrintPreviewWidget): gen_qsize_types.QSize {.base.} =
  QPrintPreviewWidgetsizeHint(self[])
method minimumSizeHint*(self: VirtualQPrintPreviewWidget): gen_qsize_types.QSize {.base.} =
  QPrintPreviewWidgetminimumSizeHint(self[])
method heightForWidth*(self: VirtualQPrintPreviewWidget, param1: cint): cint {.base.} =
  QPrintPreviewWidgetheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQPrintPreviewWidget): bool {.base.} =
  QPrintPreviewWidgethasHeightForWidth(self[])
method paintEngine*(self: VirtualQPrintPreviewWidget): gen_qpaintengine_types.QPaintEngine {.base.} =
  QPrintPreviewWidgetpaintEngine(self[])
method event*(self: VirtualQPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPrintPreviewWidgetevent(self[], event)
method mousePressEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintPreviewWidgetmousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintPreviewWidgetmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintPreviewWidgetmouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintPreviewWidgetmouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QPrintPreviewWidgetwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QPrintPreviewWidgetkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QPrintPreviewWidgetkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPrintPreviewWidgetfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPrintPreviewWidgetfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPrintPreviewWidgetenterEvent(self[], event)
method leaveEvent*(self: VirtualQPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPrintPreviewWidgetleaveEvent(self[], event)
method paintEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QPrintPreviewWidgetpaintEvent(self[], event)
method moveEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QPrintPreviewWidgetmoveEvent(self[], event)
method resizeEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QPrintPreviewWidgetresizeEvent(self[], event)
method closeEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QPrintPreviewWidgetcloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QPrintPreviewWidgetcontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QPrintPreviewWidgettabletEvent(self[], event)
method actionEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QActionEvent): void {.base.} =
  QPrintPreviewWidgetactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QPrintPreviewWidgetdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QPrintPreviewWidgetdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QPrintPreviewWidgetdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QDropEvent): void {.base.} =
  QPrintPreviewWidgetdropEvent(self[], event)
method showEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QPrintPreviewWidgetshowEvent(self[], event)
method hideEvent*(self: VirtualQPrintPreviewWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QPrintPreviewWidgethideEvent(self[], event)
method nativeEvent*(self: VirtualQPrintPreviewWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QPrintPreviewWidgetnativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQPrintPreviewWidget, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QPrintPreviewWidgetchangeEvent(self[], param1)
method metric*(self: VirtualQPrintPreviewWidget, param1: cint): cint {.base.} =
  QPrintPreviewWidgetmetric(self[], param1)
method initPainter*(self: VirtualQPrintPreviewWidget, painter: gen_qpainter_types.QPainter): void {.base.} =
  QPrintPreviewWidgetinitPainter(self[], painter)
method redirected*(self: VirtualQPrintPreviewWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QPrintPreviewWidgetredirected(self[], offset)
method sharedPainter*(self: VirtualQPrintPreviewWidget): gen_qpainter_types.QPainter {.base.} =
  QPrintPreviewWidgetsharedPainter(self[])
method inputMethodEvent*(self: VirtualQPrintPreviewWidget, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QPrintPreviewWidgetinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQPrintPreviewWidget, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QPrintPreviewWidgetinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQPrintPreviewWidget, next: bool): bool {.base.} =
  QPrintPreviewWidgetfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQPrintPreviewWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPrintPreviewWidgeteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPrintPreviewWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPrintPreviewWidgettimerEvent(self[], event)
method childEvent*(self: VirtualQPrintPreviewWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPrintPreviewWidgetchildEvent(self[], event)
method customEvent*(self: VirtualQPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPrintPreviewWidgetcustomEvent(self[], event)
method connectNotify*(self: VirtualQPrintPreviewWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPrintPreviewWidgetconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPrintPreviewWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPrintPreviewWidgetdisconnectNotify(self[], signal)

proc fcQPrintPreviewWidget_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPrintPreviewWidget_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPrintPreviewWidget_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQPrintPreviewWidget_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQPrintPreviewWidget_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQPrintPreviewWidget_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQPrintPreviewWidget_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPrintPreviewWidget_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPrintPreviewWidget_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQPrintPreviewWidget_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQPrintPreviewWidget_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPrintPreviewWidget_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQPrintPreviewWidget_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPrintPreviewWidget_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQPrintPreviewWidget_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQPrintPreviewWidget_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewWidget](fcQPrintPreviewWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): void =
  fcQPrintPreviewWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): bool =
  fcQPrintPreviewWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): bool =
  fcQPrintPreviewWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPrintPreviewWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget): cint =
  fcQPrintPreviewWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, signal: cstring): cint =
  fcQPrintPreviewWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPrintPreviewWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPrintPreviewWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPrintPreviewWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPrintPreviewWidget_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPrintPreviewWidget_vtable_callback_setVisible
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPrintPreviewWidget_vtable_callback_devType
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPrintPreviewWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPrintPreviewWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPrintPreviewWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPrintPreviewWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPrintPreviewWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPrintPreviewWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPrintPreviewWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPrintPreviewWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPrintPreviewWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPrintPreviewWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPrintPreviewWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPrintPreviewWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPrintPreviewWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPrintPreviewWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPrintPreviewWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPrintPreviewWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPrintPreviewWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPrintPreviewWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPrintPreviewWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPrintPreviewWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPrintPreviewWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPrintPreviewWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPrintPreviewWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPrintPreviewWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPrintPreviewWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPrintPreviewWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPrintPreviewWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPrintPreviewWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPrintPreviewWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPrintPreviewWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPrintPreviewWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPrintPreviewWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPrintPreviewWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPrintPreviewWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPrintPreviewWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPrintPreviewWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPrintPreviewWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPrintPreviewWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPrintPreviewWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPrintPreviewWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPrintPreviewWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPrintPreviewWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPrintPreviewWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPrintPreviewWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPrintPreviewWidget_vtable_callback_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    printer: gen_qprinter_types.QPrinter,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPrintPreviewWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPrintPreviewWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPrintPreviewWidget_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPrintPreviewWidget_vtable_callback_setVisible
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPrintPreviewWidget_vtable_callback_devType
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPrintPreviewWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPrintPreviewWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPrintPreviewWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPrintPreviewWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPrintPreviewWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPrintPreviewWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPrintPreviewWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPrintPreviewWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPrintPreviewWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPrintPreviewWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPrintPreviewWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPrintPreviewWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPrintPreviewWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPrintPreviewWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPrintPreviewWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPrintPreviewWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPrintPreviewWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPrintPreviewWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPrintPreviewWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPrintPreviewWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPrintPreviewWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPrintPreviewWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPrintPreviewWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPrintPreviewWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPrintPreviewWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPrintPreviewWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPrintPreviewWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPrintPreviewWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPrintPreviewWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPrintPreviewWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPrintPreviewWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPrintPreviewWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPrintPreviewWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPrintPreviewWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPrintPreviewWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPrintPreviewWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPrintPreviewWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPrintPreviewWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPrintPreviewWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPrintPreviewWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPrintPreviewWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPrintPreviewWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPrintPreviewWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPrintPreviewWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPrintPreviewWidget_vtable_callback_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new2(addr(vtbl[].vtbl), addr(vtbl[]), printer.h), owned: true)

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPrintPreviewWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPrintPreviewWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPrintPreviewWidget_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPrintPreviewWidget_vtable_callback_setVisible
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPrintPreviewWidget_vtable_callback_devType
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPrintPreviewWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPrintPreviewWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPrintPreviewWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPrintPreviewWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPrintPreviewWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPrintPreviewWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPrintPreviewWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPrintPreviewWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPrintPreviewWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPrintPreviewWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPrintPreviewWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPrintPreviewWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPrintPreviewWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPrintPreviewWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPrintPreviewWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPrintPreviewWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPrintPreviewWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPrintPreviewWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPrintPreviewWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPrintPreviewWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPrintPreviewWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPrintPreviewWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPrintPreviewWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPrintPreviewWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPrintPreviewWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPrintPreviewWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPrintPreviewWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPrintPreviewWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPrintPreviewWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPrintPreviewWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPrintPreviewWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPrintPreviewWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPrintPreviewWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPrintPreviewWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPrintPreviewWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPrintPreviewWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPrintPreviewWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPrintPreviewWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPrintPreviewWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPrintPreviewWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPrintPreviewWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPrintPreviewWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPrintPreviewWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPrintPreviewWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPrintPreviewWidget_vtable_callback_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new3(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPrintPreviewWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPrintPreviewWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPrintPreviewWidget_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPrintPreviewWidget_vtable_callback_setVisible
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPrintPreviewWidget_vtable_callback_devType
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPrintPreviewWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPrintPreviewWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPrintPreviewWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPrintPreviewWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPrintPreviewWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPrintPreviewWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPrintPreviewWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPrintPreviewWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPrintPreviewWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPrintPreviewWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPrintPreviewWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPrintPreviewWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPrintPreviewWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPrintPreviewWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPrintPreviewWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPrintPreviewWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPrintPreviewWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPrintPreviewWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPrintPreviewWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPrintPreviewWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPrintPreviewWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPrintPreviewWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPrintPreviewWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPrintPreviewWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPrintPreviewWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPrintPreviewWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPrintPreviewWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPrintPreviewWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPrintPreviewWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPrintPreviewWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPrintPreviewWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPrintPreviewWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPrintPreviewWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPrintPreviewWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPrintPreviewWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPrintPreviewWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPrintPreviewWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPrintPreviewWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPrintPreviewWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPrintPreviewWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPrintPreviewWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPrintPreviewWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPrintPreviewWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPrintPreviewWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPrintPreviewWidget_vtable_callback_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new4(addr(vtbl[].vtbl), addr(vtbl[]), printer.h, parent.h), owned: true)

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPrintPreviewWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPrintPreviewWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPrintPreviewWidget_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPrintPreviewWidget_vtable_callback_setVisible
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPrintPreviewWidget_vtable_callback_devType
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPrintPreviewWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPrintPreviewWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPrintPreviewWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPrintPreviewWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPrintPreviewWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPrintPreviewWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPrintPreviewWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPrintPreviewWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPrintPreviewWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPrintPreviewWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPrintPreviewWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPrintPreviewWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPrintPreviewWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPrintPreviewWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPrintPreviewWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPrintPreviewWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPrintPreviewWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPrintPreviewWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPrintPreviewWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPrintPreviewWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPrintPreviewWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPrintPreviewWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPrintPreviewWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPrintPreviewWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPrintPreviewWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPrintPreviewWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPrintPreviewWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPrintPreviewWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPrintPreviewWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPrintPreviewWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPrintPreviewWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPrintPreviewWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPrintPreviewWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPrintPreviewWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPrintPreviewWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPrintPreviewWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPrintPreviewWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPrintPreviewWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPrintPreviewWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPrintPreviewWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPrintPreviewWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPrintPreviewWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPrintPreviewWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPrintPreviewWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPrintPreviewWidget_vtable_callback_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new5(addr(vtbl[].vtbl), addr(vtbl[]), printer.h, parent.h, cint(flags)), owned: true)

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](fcQPrintPreviewWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPrintPreviewWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPrintPreviewWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPrintPreviewWidget_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPrintPreviewWidget_vtable_callback_setVisible
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPrintPreviewWidget_vtable_callback_devType
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPrintPreviewWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPrintPreviewWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPrintPreviewWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPrintPreviewWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPrintPreviewWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPrintPreviewWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPrintPreviewWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPrintPreviewWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPrintPreviewWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPrintPreviewWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPrintPreviewWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPrintPreviewWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPrintPreviewWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPrintPreviewWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPrintPreviewWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPrintPreviewWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPrintPreviewWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPrintPreviewWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPrintPreviewWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPrintPreviewWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPrintPreviewWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPrintPreviewWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPrintPreviewWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPrintPreviewWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPrintPreviewWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPrintPreviewWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPrintPreviewWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPrintPreviewWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPrintPreviewWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPrintPreviewWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPrintPreviewWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPrintPreviewWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPrintPreviewWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPrintPreviewWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPrintPreviewWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPrintPreviewWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPrintPreviewWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPrintPreviewWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPrintPreviewWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPrintPreviewWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPrintPreviewWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPrintPreviewWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPrintPreviewWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPrintPreviewWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPrintPreviewWidget_vtable_callback_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new6(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(flags)), owned: true)

const cQPrintPreviewWidget_mvtbl = cQPrintPreviewWidgetVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPrintPreviewWidget()[])](self.fcQPrintPreviewWidget_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQPrintPreviewWidget_method_callback_metaObject,
  metacast: fcQPrintPreviewWidget_method_callback_metacast,
  metacall: fcQPrintPreviewWidget_method_callback_metacall,
  setVisible: fcQPrintPreviewWidget_method_callback_setVisible,
  devType: fcQPrintPreviewWidget_method_callback_devType,
  sizeHint: fcQPrintPreviewWidget_method_callback_sizeHint,
  minimumSizeHint: fcQPrintPreviewWidget_method_callback_minimumSizeHint,
  heightForWidth: fcQPrintPreviewWidget_method_callback_heightForWidth,
  hasHeightForWidth: fcQPrintPreviewWidget_method_callback_hasHeightForWidth,
  paintEngine: fcQPrintPreviewWidget_method_callback_paintEngine,
  event: fcQPrintPreviewWidget_method_callback_event,
  mousePressEvent: fcQPrintPreviewWidget_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQPrintPreviewWidget_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQPrintPreviewWidget_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQPrintPreviewWidget_method_callback_mouseMoveEvent,
  wheelEvent: fcQPrintPreviewWidget_method_callback_wheelEvent,
  keyPressEvent: fcQPrintPreviewWidget_method_callback_keyPressEvent,
  keyReleaseEvent: fcQPrintPreviewWidget_method_callback_keyReleaseEvent,
  focusInEvent: fcQPrintPreviewWidget_method_callback_focusInEvent,
  focusOutEvent: fcQPrintPreviewWidget_method_callback_focusOutEvent,
  enterEvent: fcQPrintPreviewWidget_method_callback_enterEvent,
  leaveEvent: fcQPrintPreviewWidget_method_callback_leaveEvent,
  paintEvent: fcQPrintPreviewWidget_method_callback_paintEvent,
  moveEvent: fcQPrintPreviewWidget_method_callback_moveEvent,
  resizeEvent: fcQPrintPreviewWidget_method_callback_resizeEvent,
  closeEvent: fcQPrintPreviewWidget_method_callback_closeEvent,
  contextMenuEvent: fcQPrintPreviewWidget_method_callback_contextMenuEvent,
  tabletEvent: fcQPrintPreviewWidget_method_callback_tabletEvent,
  actionEvent: fcQPrintPreviewWidget_method_callback_actionEvent,
  dragEnterEvent: fcQPrintPreviewWidget_method_callback_dragEnterEvent,
  dragMoveEvent: fcQPrintPreviewWidget_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQPrintPreviewWidget_method_callback_dragLeaveEvent,
  dropEvent: fcQPrintPreviewWidget_method_callback_dropEvent,
  showEvent: fcQPrintPreviewWidget_method_callback_showEvent,
  hideEvent: fcQPrintPreviewWidget_method_callback_hideEvent,
  nativeEvent: fcQPrintPreviewWidget_method_callback_nativeEvent,
  changeEvent: fcQPrintPreviewWidget_method_callback_changeEvent,
  metric: fcQPrintPreviewWidget_method_callback_metric,
  initPainter: fcQPrintPreviewWidget_method_callback_initPainter,
  redirected: fcQPrintPreviewWidget_method_callback_redirected,
  sharedPainter: fcQPrintPreviewWidget_method_callback_sharedPainter,
  inputMethodEvent: fcQPrintPreviewWidget_method_callback_inputMethodEvent,
  inputMethodQuery: fcQPrintPreviewWidget_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQPrintPreviewWidget_method_callback_focusNextPrevChild,
  eventFilter: fcQPrintPreviewWidget_method_callback_eventFilter,
  timerEvent: fcQPrintPreviewWidget_method_callback_timerEvent,
  childEvent: fcQPrintPreviewWidget_method_callback_childEvent,
  customEvent: fcQPrintPreviewWidget_method_callback_customEvent,
  connectNotify: fcQPrintPreviewWidget_method_callback_connectNotify,
  disconnectNotify: fcQPrintPreviewWidget_method_callback_disconnectNotify,
)
proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQPrintPreviewWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewWidget_new(addr(cQPrintPreviewWidget_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    printer: gen_qprinter_types.QPrinter,
    inst: VirtualQPrintPreviewWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewWidget_new2(addr(cQPrintPreviewWidget_mvtbl), addr(inst[]), printer.h)
  inst[].owned = true

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    inst: VirtualQPrintPreviewWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewWidget_new3(addr(cQPrintPreviewWidget_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    inst: VirtualQPrintPreviewWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewWidget_new4(addr(cQPrintPreviewWidget_mvtbl), addr(inst[]), printer.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQPrintPreviewWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewWidget_new5(addr(cQPrintPreviewWidget_mvtbl), addr(inst[]), printer.h, parent.h, cint(flags))
  inst[].owned = true

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQPrintPreviewWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewWidget_new6(addr(cQPrintPreviewWidget_mvtbl), addr(inst[]), parent.h, cint(flags))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintPreviewWidget_staticMetaObject())
