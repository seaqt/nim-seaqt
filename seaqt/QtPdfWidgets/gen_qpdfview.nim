import ./qtpdfwidgets_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


{.compile("gen_qpdfview.cpp", QtPdfWidgetsCFlags).}


type QPdfViewPageModeEnum* = distinct cint
template SinglePage*(_: type QPdfViewPageModeEnum): untyped = 0
template MultiPage*(_: type QPdfViewPageModeEnum): untyped = 1


type QPdfViewZoomModeEnum* = distinct cint
template CustomZoom*(_: type QPdfViewZoomModeEnum): untyped = 0
template FitToWidth*(_: type QPdfViewZoomModeEnum): untyped = 1
template FitInView*(_: type QPdfViewZoomModeEnum): untyped = 2


import ./gen_qpdfview_types
export gen_qpdfview_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmargins_types,
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
  ../QtPdf/gen_qpdfdocument_types,
  ../QtPdf/gen_qpdfpagenavigation_types,
  ../QtWidgets/gen_qabstractscrollarea,
  ../QtWidgets/gen_qstyleoption_types,
  ../QtWidgets/gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmargins_types,
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
  gen_qpdfdocument_types,
  gen_qpdfpagenavigation_types,
  gen_qabstractscrollarea,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQPdfView*{.exportc: "QPdfView", incompleteStruct.} = object

proc fcQPdfView_metaObject(self: pointer): pointer {.importc: "QPdfView_metaObject".}
proc fcQPdfView_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfView_metacast".}
proc fcQPdfView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfView_metacall".}
proc fcQPdfView_tr(s: cstring): struct_seaqt_string {.importc: "QPdfView_tr".}
proc fcQPdfView_trUtf8(s: cstring): struct_seaqt_string {.importc: "QPdfView_trUtf8".}
proc fcQPdfView_setDocument(self: pointer, document: pointer): void {.importc: "QPdfView_setDocument".}
proc fcQPdfView_document(self: pointer): pointer {.importc: "QPdfView_document".}
proc fcQPdfView_pageNavigation(self: pointer): pointer {.importc: "QPdfView_pageNavigation".}
proc fcQPdfView_pageMode(self: pointer): cint {.importc: "QPdfView_pageMode".}
proc fcQPdfView_zoomMode(self: pointer): cint {.importc: "QPdfView_zoomMode".}
proc fcQPdfView_zoomFactor(self: pointer): float64 {.importc: "QPdfView_zoomFactor".}
proc fcQPdfView_pageSpacing(self: pointer): cint {.importc: "QPdfView_pageSpacing".}
proc fcQPdfView_setPageSpacing(self: pointer, spacing: cint): void {.importc: "QPdfView_setPageSpacing".}
proc fcQPdfView_documentMargins(self: pointer): pointer {.importc: "QPdfView_documentMargins".}
proc fcQPdfView_setDocumentMargins(self: pointer, margins: pointer): void {.importc: "QPdfView_setDocumentMargins".}
proc fcQPdfView_setPageMode(self: pointer, mode: cint): void {.importc: "QPdfView_setPageMode".}
proc fcQPdfView_setZoomMode(self: pointer, mode: cint): void {.importc: "QPdfView_setZoomMode".}
proc fcQPdfView_setZoomFactor(self: pointer, factor: float64): void {.importc: "QPdfView_setZoomFactor".}
proc fcQPdfView_documentChanged(self: pointer, document: pointer): void {.importc: "QPdfView_documentChanged".}
proc fcQPdfView_connect_documentChanged(self: pointer, slot: int, callback: proc (slot: int, document: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfView_connect_documentChanged".}
proc fcQPdfView_pageModeChanged(self: pointer, pageMode: cint): void {.importc: "QPdfView_pageModeChanged".}
proc fcQPdfView_connect_pageModeChanged(self: pointer, slot: int, callback: proc (slot: int, pageMode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfView_connect_pageModeChanged".}
proc fcQPdfView_zoomModeChanged(self: pointer, zoomMode: cint): void {.importc: "QPdfView_zoomModeChanged".}
proc fcQPdfView_connect_zoomModeChanged(self: pointer, slot: int, callback: proc (slot: int, zoomMode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfView_connect_zoomModeChanged".}
proc fcQPdfView_zoomFactorChanged(self: pointer, zoomFactor: float64): void {.importc: "QPdfView_zoomFactorChanged".}
proc fcQPdfView_connect_zoomFactorChanged(self: pointer, slot: int, callback: proc (slot: int, zoomFactor: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfView_connect_zoomFactorChanged".}
proc fcQPdfView_pageSpacingChanged(self: pointer, pageSpacing: cint): void {.importc: "QPdfView_pageSpacingChanged".}
proc fcQPdfView_connect_pageSpacingChanged(self: pointer, slot: int, callback: proc (slot: int, pageSpacing: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfView_connect_pageSpacingChanged".}
proc fcQPdfView_documentMarginsChanged(self: pointer, documentMargins: pointer): void {.importc: "QPdfView_documentMarginsChanged".}
proc fcQPdfView_connect_documentMarginsChanged(self: pointer, slot: int, callback: proc (slot: int, documentMargins: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfView_connect_documentMarginsChanged".}
proc fcQPdfView_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfView_tr2".}
proc fcQPdfView_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfView_tr3".}
proc fcQPdfView_trUtf82(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfView_trUtf82".}
proc fcQPdfView_trUtf83(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfView_trUtf83".}
proc fcQPdfView_vdata(self: pointer): ptr pointer {.importc: "QPdfView_vdata".}
proc fvdata_cQPdfView(self: pointer): pointer {.importc: "vdata_QPdfView".}

type cQPdfViewVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQPdfView_virtualbase_metaObject(self: pointer): pointer {.importc: "QPdfView_virtualbase_metaObject".}
proc fcQPdfView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfView_virtualbase_metacast".}
proc fcQPdfView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfView_virtualbase_metacall".}
proc fcQPdfView_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_paintEvent".}
proc fcQPdfView_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_resizeEvent".}
proc fcQPdfView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QPdfView_virtualbase_scrollContentsBy".}
proc fcQPdfView_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QPdfView_virtualbase_minimumSizeHint".}
proc fcQPdfView_virtualbase_sizeHint(self: pointer): pointer {.importc: "QPdfView_virtualbase_sizeHint".}
proc fcQPdfView_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QPdfView_virtualbase_setupViewport".}
proc fcQPdfView_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QPdfView_virtualbase_eventFilter".}
proc fcQPdfView_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QPdfView_virtualbase_event".}
proc fcQPdfView_virtualbase_viewportEvent(self: pointer, param1: pointer): bool {.importc: "QPdfView_virtualbase_viewportEvent".}
proc fcQPdfView_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_mousePressEvent".}
proc fcQPdfView_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_mouseReleaseEvent".}
proc fcQPdfView_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_mouseDoubleClickEvent".}
proc fcQPdfView_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_mouseMoveEvent".}
proc fcQPdfView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_wheelEvent".}
proc fcQPdfView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_contextMenuEvent".}
proc fcQPdfView_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_dragEnterEvent".}
proc fcQPdfView_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_dragMoveEvent".}
proc fcQPdfView_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_dragLeaveEvent".}
proc fcQPdfView_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_dropEvent".}
proc fcQPdfView_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_keyPressEvent".}
proc fcQPdfView_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QPdfView_virtualbase_viewportSizeHint".}
proc fcQPdfView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_changeEvent".}
proc fcQPdfView_virtualbase_devType(self: pointer): cint {.importc: "QPdfView_virtualbase_devType".}
proc fcQPdfView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QPdfView_virtualbase_setVisible".}
proc fcQPdfView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QPdfView_virtualbase_heightForWidth".}
proc fcQPdfView_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QPdfView_virtualbase_hasHeightForWidth".}
proc fcQPdfView_virtualbase_paintEngine(self: pointer): pointer {.importc: "QPdfView_virtualbase_paintEngine".}
proc fcQPdfView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_keyReleaseEvent".}
proc fcQPdfView_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_focusInEvent".}
proc fcQPdfView_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_focusOutEvent".}
proc fcQPdfView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_enterEvent".}
proc fcQPdfView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_leaveEvent".}
proc fcQPdfView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_moveEvent".}
proc fcQPdfView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_closeEvent".}
proc fcQPdfView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_tabletEvent".}
proc fcQPdfView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_actionEvent".}
proc fcQPdfView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_showEvent".}
proc fcQPdfView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_hideEvent".}
proc fcQPdfView_virtualbase_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QPdfView_virtualbase_nativeEvent".}
proc fcQPdfView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QPdfView_virtualbase_metric".}
proc fcQPdfView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPdfView_virtualbase_initPainter".}
proc fcQPdfView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPdfView_virtualbase_redirected".}
proc fcQPdfView_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QPdfView_virtualbase_sharedPainter".}
proc fcQPdfView_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QPdfView_virtualbase_inputMethodEvent".}
proc fcQPdfView_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QPdfView_virtualbase_inputMethodQuery".}
proc fcQPdfView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QPdfView_virtualbase_focusNextPrevChild".}
proc fcQPdfView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_timerEvent".}
proc fcQPdfView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_childEvent".}
proc fcQPdfView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPdfView_virtualbase_customEvent".}
proc fcQPdfView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPdfView_virtualbase_connectNotify".}
proc fcQPdfView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPdfView_virtualbase_disconnectNotify".}
proc fcQPdfView_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QPdfView_protectedbase_setViewportMargins".}
proc fcQPdfView_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QPdfView_protectedbase_viewportMargins".}
proc fcQPdfView_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QPdfView_protectedbase_drawFrame".}
proc fcQPdfView_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QPdfView_protectedbase_initStyleOption".}
proc fcQPdfView_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QPdfView_protectedbase_updateMicroFocus".}
proc fcQPdfView_protectedbase_create(self: pointer): void {.importc: "QPdfView_protectedbase_create".}
proc fcQPdfView_protectedbase_destroy(self: pointer): void {.importc: "QPdfView_protectedbase_destroy".}
proc fcQPdfView_protectedbase_focusNextChild(self: pointer): bool {.importc: "QPdfView_protectedbase_focusNextChild".}
proc fcQPdfView_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QPdfView_protectedbase_focusPreviousChild".}
proc fcQPdfView_protectedbase_sender(self: pointer): pointer {.importc: "QPdfView_protectedbase_sender".}
proc fcQPdfView_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPdfView_protectedbase_senderSignalIndex".}
proc fcQPdfView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPdfView_protectedbase_receivers".}
proc fcQPdfView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPdfView_protectedbase_isSignalConnected".}
proc fcQPdfView_new(vtbl: pointer, vdata: csize_t): ptr cQPdfView {.importc: "QPdfView_new".}
proc fcQPdfView_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQPdfView {.importc: "QPdfView_new2".}
proc fcQPdfView_staticMetaObject(): pointer {.importc: "QPdfView_staticMetaObject".}
proc fcQPdfView_delete(self: pointer) {.importc: "QPdfView_delete".}

proc metaObject*(self: gen_qpdfview_types.QPdfView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfView_metaObject(self.h))

proc metacast*(self: gen_qpdfview_types.QPdfView, param1: cstring): pointer =
  fcQPdfView_metacast(self.h, param1)

proc metacall*(self: gen_qpdfview_types.QPdfView, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdfview_types.QPdfView, s: cstring): string =
  let v_ms = fcQPdfView_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpdfview_types.QPdfView, s: cstring): string =
  let v_ms = fcQPdfView_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDocument*(self: gen_qpdfview_types.QPdfView, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfView_setDocument(self.h, document.h)

proc document*(self: gen_qpdfview_types.QPdfView): gen_qpdfdocument_types.QPdfDocument =
  gen_qpdfdocument_types.QPdfDocument(h: fcQPdfView_document(self.h))

proc pageNavigation*(self: gen_qpdfview_types.QPdfView): gen_qpdfpagenavigation_types.QPdfPageNavigation =
  gen_qpdfpagenavigation_types.QPdfPageNavigation(h: fcQPdfView_pageNavigation(self.h))

proc pageMode*(self: gen_qpdfview_types.QPdfView): cint =
  cint(fcQPdfView_pageMode(self.h))

proc zoomMode*(self: gen_qpdfview_types.QPdfView): cint =
  cint(fcQPdfView_zoomMode(self.h))

proc zoomFactor*(self: gen_qpdfview_types.QPdfView): float64 =
  fcQPdfView_zoomFactor(self.h)

proc pageSpacing*(self: gen_qpdfview_types.QPdfView): cint =
  fcQPdfView_pageSpacing(self.h)

proc setPageSpacing*(self: gen_qpdfview_types.QPdfView, spacing: cint): void =
  fcQPdfView_setPageSpacing(self.h, spacing)

proc documentMargins*(self: gen_qpdfview_types.QPdfView): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQPdfView_documentMargins(self.h))

proc setDocumentMargins*(self: gen_qpdfview_types.QPdfView, margins: gen_qmargins_types.QMargins): void =
  fcQPdfView_setDocumentMargins(self.h, margins.h)

proc setPageMode*(self: gen_qpdfview_types.QPdfView, mode: cint): void =
  fcQPdfView_setPageMode(self.h, cint(mode))

proc setZoomMode*(self: gen_qpdfview_types.QPdfView, mode: cint): void =
  fcQPdfView_setZoomMode(self.h, cint(mode))

proc setZoomFactor*(self: gen_qpdfview_types.QPdfView, factor: float64): void =
  fcQPdfView_setZoomFactor(self.h, factor)

proc documentChanged*(self: gen_qpdfview_types.QPdfView, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfView_documentChanged(self.h, document.h)

type QPdfViewdocumentChangedSlot* = proc(document: gen_qpdfdocument_types.QPdfDocument)
proc fcQPdfView_slot_callback_documentChanged(slot: int, document: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPdfViewdocumentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpdfdocument_types.QPdfDocument(h: document)

  nimfunc[](slotval1)

proc fcQPdfView_slot_callback_documentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfViewdocumentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDocumentChanged*(self: gen_qpdfview_types.QPdfView, slot: QPdfViewdocumentChangedSlot) =
  var tmp = new QPdfViewdocumentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfView_connect_documentChanged(self.h, cast[int](addr tmp[]), fcQPdfView_slot_callback_documentChanged, fcQPdfView_slot_callback_documentChanged_release)

proc pageModeChanged*(self: gen_qpdfview_types.QPdfView, pageMode: cint): void =
  fcQPdfView_pageModeChanged(self.h, cint(pageMode))

type QPdfViewpageModeChangedSlot* = proc(pageMode: cint)
proc fcQPdfView_slot_callback_pageModeChanged(slot: int, pageMode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPdfViewpageModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(pageMode)

  nimfunc[](slotval1)

proc fcQPdfView_slot_callback_pageModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfViewpageModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPageModeChanged*(self: gen_qpdfview_types.QPdfView, slot: QPdfViewpageModeChangedSlot) =
  var tmp = new QPdfViewpageModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfView_connect_pageModeChanged(self.h, cast[int](addr tmp[]), fcQPdfView_slot_callback_pageModeChanged, fcQPdfView_slot_callback_pageModeChanged_release)

proc zoomModeChanged*(self: gen_qpdfview_types.QPdfView, zoomMode: cint): void =
  fcQPdfView_zoomModeChanged(self.h, cint(zoomMode))

type QPdfViewzoomModeChangedSlot* = proc(zoomMode: cint)
proc fcQPdfView_slot_callback_zoomModeChanged(slot: int, zoomMode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPdfViewzoomModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(zoomMode)

  nimfunc[](slotval1)

proc fcQPdfView_slot_callback_zoomModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfViewzoomModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onZoomModeChanged*(self: gen_qpdfview_types.QPdfView, slot: QPdfViewzoomModeChangedSlot) =
  var tmp = new QPdfViewzoomModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfView_connect_zoomModeChanged(self.h, cast[int](addr tmp[]), fcQPdfView_slot_callback_zoomModeChanged, fcQPdfView_slot_callback_zoomModeChanged_release)

proc zoomFactorChanged*(self: gen_qpdfview_types.QPdfView, zoomFactor: float64): void =
  fcQPdfView_zoomFactorChanged(self.h, zoomFactor)

type QPdfViewzoomFactorChangedSlot* = proc(zoomFactor: float64)
proc fcQPdfView_slot_callback_zoomFactorChanged(slot: int, zoomFactor: float64) {.cdecl.} =
  let nimfunc = cast[ptr QPdfViewzoomFactorChangedSlot](cast[pointer](slot))
  let slotval1 = zoomFactor

  nimfunc[](slotval1)

proc fcQPdfView_slot_callback_zoomFactorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfViewzoomFactorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onZoomFactorChanged*(self: gen_qpdfview_types.QPdfView, slot: QPdfViewzoomFactorChangedSlot) =
  var tmp = new QPdfViewzoomFactorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfView_connect_zoomFactorChanged(self.h, cast[int](addr tmp[]), fcQPdfView_slot_callback_zoomFactorChanged, fcQPdfView_slot_callback_zoomFactorChanged_release)

proc pageSpacingChanged*(self: gen_qpdfview_types.QPdfView, pageSpacing: cint): void =
  fcQPdfView_pageSpacingChanged(self.h, pageSpacing)

type QPdfViewpageSpacingChangedSlot* = proc(pageSpacing: cint)
proc fcQPdfView_slot_callback_pageSpacingChanged(slot: int, pageSpacing: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPdfViewpageSpacingChangedSlot](cast[pointer](slot))
  let slotval1 = pageSpacing

  nimfunc[](slotval1)

proc fcQPdfView_slot_callback_pageSpacingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfViewpageSpacingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPageSpacingChanged*(self: gen_qpdfview_types.QPdfView, slot: QPdfViewpageSpacingChangedSlot) =
  var tmp = new QPdfViewpageSpacingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfView_connect_pageSpacingChanged(self.h, cast[int](addr tmp[]), fcQPdfView_slot_callback_pageSpacingChanged, fcQPdfView_slot_callback_pageSpacingChanged_release)

proc documentMarginsChanged*(self: gen_qpdfview_types.QPdfView, documentMargins: gen_qmargins_types.QMargins): void =
  fcQPdfView_documentMarginsChanged(self.h, documentMargins.h)

type QPdfViewdocumentMarginsChangedSlot* = proc(documentMargins: gen_qmargins_types.QMargins)
proc fcQPdfView_slot_callback_documentMarginsChanged(slot: int, documentMargins: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPdfViewdocumentMarginsChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qmargins_types.QMargins(h: documentMargins)

  nimfunc[](slotval1)

proc fcQPdfView_slot_callback_documentMarginsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfViewdocumentMarginsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDocumentMarginsChanged*(self: gen_qpdfview_types.QPdfView, slot: QPdfViewdocumentMarginsChangedSlot) =
  var tmp = new QPdfViewdocumentMarginsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfView_connect_documentMarginsChanged(self.h, cast[int](addr tmp[]), fcQPdfView_slot_callback_documentMarginsChanged, fcQPdfView_slot_callback_documentMarginsChanged_release)

proc tr*(_: type gen_qpdfview_types.QPdfView, s: cstring, c: cstring): string =
  let v_ms = fcQPdfView_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpdfview_types.QPdfView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfView_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpdfview_types.QPdfView, s: cstring, c: cstring): string =
  let v_ms = fcQPdfView_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpdfview_types.QPdfView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPdfViewmetaObjectProc* = proc(self: QPdfView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPdfViewmetacastProc* = proc(self: QPdfView, param1: cstring): pointer {.raises: [], gcsafe.}
type QPdfViewmetacallProc* = proc(self: QPdfView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPdfViewpaintEventProc* = proc(self: QPdfView, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QPdfViewresizeEventProc* = proc(self: QPdfView, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QPdfViewscrollContentsByProc* = proc(self: QPdfView, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QPdfViewminimumSizeHintProc* = proc(self: QPdfView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPdfViewsizeHintProc* = proc(self: QPdfView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPdfViewsetupViewportProc* = proc(self: QPdfView, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QPdfVieweventFilterProc* = proc(self: QPdfView, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfVieweventProc* = proc(self: QPdfView, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfViewviewportEventProc* = proc(self: QPdfView, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfViewmousePressEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPdfViewmouseReleaseEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPdfViewmouseDoubleClickEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPdfViewmouseMoveEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPdfViewwheelEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QPdfViewcontextMenuEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QPdfViewdragEnterEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QPdfViewdragMoveEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QPdfViewdragLeaveEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QPdfViewdropEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QPdfViewkeyPressEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPdfViewviewportSizeHintProc* = proc(self: QPdfView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPdfViewchangeEventProc* = proc(self: QPdfView, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfViewdevTypeProc* = proc(self: QPdfView): cint {.raises: [], gcsafe.}
type QPdfViewsetVisibleProc* = proc(self: QPdfView, visible: bool): void {.raises: [], gcsafe.}
type QPdfViewheightForWidthProc* = proc(self: QPdfView, param1: cint): cint {.raises: [], gcsafe.}
type QPdfViewhasHeightForWidthProc* = proc(self: QPdfView): bool {.raises: [], gcsafe.}
type QPdfViewpaintEngineProc* = proc(self: QPdfView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPdfViewkeyReleaseEventProc* = proc(self: QPdfView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPdfViewfocusInEventProc* = proc(self: QPdfView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPdfViewfocusOutEventProc* = proc(self: QPdfView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPdfViewenterEventProc* = proc(self: QPdfView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfViewleaveEventProc* = proc(self: QPdfView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfViewmoveEventProc* = proc(self: QPdfView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QPdfViewcloseEventProc* = proc(self: QPdfView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QPdfViewtabletEventProc* = proc(self: QPdfView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QPdfViewactionEventProc* = proc(self: QPdfView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QPdfViewshowEventProc* = proc(self: QPdfView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QPdfViewhideEventProc* = proc(self: QPdfView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QPdfViewnativeEventProc* = proc(self: QPdfView, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QPdfViewmetricProc* = proc(self: QPdfView, param1: cint): cint {.raises: [], gcsafe.}
type QPdfViewinitPainterProc* = proc(self: QPdfView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPdfViewredirectedProc* = proc(self: QPdfView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPdfViewsharedPainterProc* = proc(self: QPdfView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPdfViewinputMethodEventProc* = proc(self: QPdfView, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QPdfViewinputMethodQueryProc* = proc(self: QPdfView, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPdfViewfocusNextPrevChildProc* = proc(self: QPdfView, next: bool): bool {.raises: [], gcsafe.}
type QPdfViewtimerEventProc* = proc(self: QPdfView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPdfViewchildEventProc* = proc(self: QPdfView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPdfViewcustomEventProc* = proc(self: QPdfView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfViewconnectNotifyProc* = proc(self: QPdfView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfViewdisconnectNotifyProc* = proc(self: QPdfView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfViewVTable* = object
  vtbl: cQPdfViewVTable
  metaObject*: QPdfViewmetaObjectProc
  metacast*: QPdfViewmetacastProc
  metacall*: QPdfViewmetacallProc
  paintEvent*: QPdfViewpaintEventProc
  resizeEvent*: QPdfViewresizeEventProc
  scrollContentsBy*: QPdfViewscrollContentsByProc
  minimumSizeHint*: QPdfViewminimumSizeHintProc
  sizeHint*: QPdfViewsizeHintProc
  setupViewport*: QPdfViewsetupViewportProc
  eventFilter*: QPdfVieweventFilterProc
  event*: QPdfVieweventProc
  viewportEvent*: QPdfViewviewportEventProc
  mousePressEvent*: QPdfViewmousePressEventProc
  mouseReleaseEvent*: QPdfViewmouseReleaseEventProc
  mouseDoubleClickEvent*: QPdfViewmouseDoubleClickEventProc
  mouseMoveEvent*: QPdfViewmouseMoveEventProc
  wheelEvent*: QPdfViewwheelEventProc
  contextMenuEvent*: QPdfViewcontextMenuEventProc
  dragEnterEvent*: QPdfViewdragEnterEventProc
  dragMoveEvent*: QPdfViewdragMoveEventProc
  dragLeaveEvent*: QPdfViewdragLeaveEventProc
  dropEvent*: QPdfViewdropEventProc
  keyPressEvent*: QPdfViewkeyPressEventProc
  viewportSizeHint*: QPdfViewviewportSizeHintProc
  changeEvent*: QPdfViewchangeEventProc
  devType*: QPdfViewdevTypeProc
  setVisible*: QPdfViewsetVisibleProc
  heightForWidth*: QPdfViewheightForWidthProc
  hasHeightForWidth*: QPdfViewhasHeightForWidthProc
  paintEngine*: QPdfViewpaintEngineProc
  keyReleaseEvent*: QPdfViewkeyReleaseEventProc
  focusInEvent*: QPdfViewfocusInEventProc
  focusOutEvent*: QPdfViewfocusOutEventProc
  enterEvent*: QPdfViewenterEventProc
  leaveEvent*: QPdfViewleaveEventProc
  moveEvent*: QPdfViewmoveEventProc
  closeEvent*: QPdfViewcloseEventProc
  tabletEvent*: QPdfViewtabletEventProc
  actionEvent*: QPdfViewactionEventProc
  showEvent*: QPdfViewshowEventProc
  hideEvent*: QPdfViewhideEventProc
  nativeEvent*: QPdfViewnativeEventProc
  metric*: QPdfViewmetricProc
  initPainter*: QPdfViewinitPainterProc
  redirected*: QPdfViewredirectedProc
  sharedPainter*: QPdfViewsharedPainterProc
  inputMethodEvent*: QPdfViewinputMethodEventProc
  inputMethodQuery*: QPdfViewinputMethodQueryProc
  focusNextPrevChild*: QPdfViewfocusNextPrevChildProc
  timerEvent*: QPdfViewtimerEventProc
  childEvent*: QPdfViewchildEventProc
  customEvent*: QPdfViewcustomEventProc
  connectNotify*: QPdfViewconnectNotifyProc
  disconnectNotify*: QPdfViewdisconnectNotifyProc

proc QPdfViewmetaObject*(self: gen_qpdfview_types.QPdfView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfView_virtualbase_metaObject(self.h))

proc QPdfViewmetacast*(self: gen_qpdfview_types.QPdfView, param1: cstring): pointer =
  fcQPdfView_virtualbase_metacast(self.h, param1)

proc QPdfViewmetacall*(self: gen_qpdfview_types.QPdfView, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPdfViewpaintEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qevent_types.QPaintEvent): void =
  fcQPdfView_virtualbase_paintEvent(self.h, event.h)

proc QPdfViewresizeEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qevent_types.QResizeEvent): void =
  fcQPdfView_virtualbase_resizeEvent(self.h, event.h)

proc QPdfViewscrollContentsBy*(self: gen_qpdfview_types.QPdfView, dx: cint, dy: cint): void =
  fcQPdfView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc QPdfViewminimumSizeHint*(self: gen_qpdfview_types.QPdfView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPdfView_virtualbase_minimumSizeHint(self.h))

proc QPdfViewsizeHint*(self: gen_qpdfview_types.QPdfView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPdfView_virtualbase_sizeHint(self.h))

proc QPdfViewsetupViewport*(self: gen_qpdfview_types.QPdfView, viewport: gen_qwidget_types.QWidget): void =
  fcQPdfView_virtualbase_setupViewport(self.h, viewport.h)

proc QPdfVieweventFilter*(self: gen_qpdfview_types.QPdfView, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQPdfView_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc QPdfViewevent*(self: gen_qpdfview_types.QPdfView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQPdfView_virtualbase_event(self.h, param1.h)

proc QPdfViewviewportEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQPdfView_virtualbase_viewportEvent(self.h, param1.h)

proc QPdfViewmousePressEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QMouseEvent): void =
  fcQPdfView_virtualbase_mousePressEvent(self.h, param1.h)

proc QPdfViewmouseReleaseEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QMouseEvent): void =
  fcQPdfView_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc QPdfViewmouseDoubleClickEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QMouseEvent): void =
  fcQPdfView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc QPdfViewmouseMoveEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QMouseEvent): void =
  fcQPdfView_virtualbase_mouseMoveEvent(self.h, param1.h)

proc QPdfViewwheelEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QWheelEvent): void =
  fcQPdfView_virtualbase_wheelEvent(self.h, param1.h)

proc QPdfViewcontextMenuEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQPdfView_virtualbase_contextMenuEvent(self.h, param1.h)

proc QPdfViewdragEnterEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQPdfView_virtualbase_dragEnterEvent(self.h, param1.h)

proc QPdfViewdragMoveEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQPdfView_virtualbase_dragMoveEvent(self.h, param1.h)

proc QPdfViewdragLeaveEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQPdfView_virtualbase_dragLeaveEvent(self.h, param1.h)

proc QPdfViewdropEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QDropEvent): void =
  fcQPdfView_virtualbase_dropEvent(self.h, param1.h)

proc QPdfViewkeyPressEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QKeyEvent): void =
  fcQPdfView_virtualbase_keyPressEvent(self.h, param1.h)

proc QPdfViewviewportSizeHint*(self: gen_qpdfview_types.QPdfView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPdfView_virtualbase_viewportSizeHint(self.h))

proc QPdfViewchangeEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qcoreevent_types.QEvent): void =
  fcQPdfView_virtualbase_changeEvent(self.h, param1.h)

proc QPdfViewdevType*(self: gen_qpdfview_types.QPdfView): cint =
  fcQPdfView_virtualbase_devType(self.h)

proc QPdfViewsetVisible*(self: gen_qpdfview_types.QPdfView, visible: bool): void =
  fcQPdfView_virtualbase_setVisible(self.h, visible)

proc QPdfViewheightForWidth*(self: gen_qpdfview_types.QPdfView, param1: cint): cint =
  fcQPdfView_virtualbase_heightForWidth(self.h, param1)

proc QPdfViewhasHeightForWidth*(self: gen_qpdfview_types.QPdfView): bool =
  fcQPdfView_virtualbase_hasHeightForWidth(self.h)

proc QPdfViewpaintEngine*(self: gen_qpdfview_types.QPdfView): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPdfView_virtualbase_paintEngine(self.h))

proc QPdfViewkeyReleaseEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qevent_types.QKeyEvent): void =
  fcQPdfView_virtualbase_keyReleaseEvent(self.h, event.h)

proc QPdfViewfocusInEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qevent_types.QFocusEvent): void =
  fcQPdfView_virtualbase_focusInEvent(self.h, event.h)

proc QPdfViewfocusOutEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qevent_types.QFocusEvent): void =
  fcQPdfView_virtualbase_focusOutEvent(self.h, event.h)

proc QPdfViewenterEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfView_virtualbase_enterEvent(self.h, event.h)

proc QPdfViewleaveEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfView_virtualbase_leaveEvent(self.h, event.h)

proc QPdfViewmoveEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qevent_types.QMoveEvent): void =
  fcQPdfView_virtualbase_moveEvent(self.h, event.h)

proc QPdfViewcloseEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qevent_types.QCloseEvent): void =
  fcQPdfView_virtualbase_closeEvent(self.h, event.h)

proc QPdfViewtabletEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qevent_types.QTabletEvent): void =
  fcQPdfView_virtualbase_tabletEvent(self.h, event.h)

proc QPdfViewactionEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qevent_types.QActionEvent): void =
  fcQPdfView_virtualbase_actionEvent(self.h, event.h)

proc QPdfViewshowEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qevent_types.QShowEvent): void =
  fcQPdfView_virtualbase_showEvent(self.h, event.h)

proc QPdfViewhideEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qevent_types.QHideEvent): void =
  fcQPdfView_virtualbase_hideEvent(self.h, event.h)

proc QPdfViewnativeEvent*(self: gen_qpdfview_types.QPdfView, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQPdfView_virtualbase_nativeEvent(self.h, struct_seaqt_string(data: if len(eventType) > 0: addr eventType[0] else: nil, len: csize_t(len(eventType))), message, resultVal)

proc QPdfViewmetric*(self: gen_qpdfview_types.QPdfView, param1: cint): cint =
  fcQPdfView_virtualbase_metric(self.h, cint(param1))

proc QPdfViewinitPainter*(self: gen_qpdfview_types.QPdfView, painter: gen_qpainter_types.QPainter): void =
  fcQPdfView_virtualbase_initPainter(self.h, painter.h)

proc QPdfViewredirected*(self: gen_qpdfview_types.QPdfView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPdfView_virtualbase_redirected(self.h, offset.h))

proc QPdfViewsharedPainter*(self: gen_qpdfview_types.QPdfView): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPdfView_virtualbase_sharedPainter(self.h))

proc QPdfViewinputMethodEvent*(self: gen_qpdfview_types.QPdfView, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQPdfView_virtualbase_inputMethodEvent(self.h, param1.h)

proc QPdfViewinputMethodQuery*(self: gen_qpdfview_types.QPdfView, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfView_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc QPdfViewfocusNextPrevChild*(self: gen_qpdfview_types.QPdfView, next: bool): bool =
  fcQPdfView_virtualbase_focusNextPrevChild(self.h, next)

proc QPdfViewtimerEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPdfView_virtualbase_timerEvent(self.h, event.h)

proc QPdfViewchildEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPdfView_virtualbase_childEvent(self.h, event.h)

proc QPdfViewcustomEvent*(self: gen_qpdfview_types.QPdfView, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfView_virtualbase_customEvent(self.h, event.h)

proc QPdfViewconnectNotify*(self: gen_qpdfview_types.QPdfView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfView_virtualbase_connectNotify(self.h, signal.h)

proc QPdfViewdisconnectNotify*(self: gen_qpdfview_types.QPdfView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfView_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPdfView_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQPdfView_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPdfView_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfView_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc fcQPdfView_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc fcQPdfView_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc fcQPdfView_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc fcQPdfView_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc fcQPdfView_vtable_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc fcQPdfView_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPdfView_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPdfView_vtable_callback_viewportEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc fcQPdfView_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQPdfView_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQPdfView_vtable_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQPdfView_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQPdfView_vtable_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc fcQPdfView_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQPdfView_vtable_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQPdfView_vtable_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQPdfView_vtable_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQPdfView_vtable_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)
  vtbl[].dropEvent(self, slotval1)

proc fcQPdfView_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQPdfView_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc fcQPdfView_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc fcQPdfView_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQPdfView_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQPdfView_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQPdfView_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQPdfView_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc fcQPdfView_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQPdfView_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc fcQPdfView_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQPdfView_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc fcQPdfView_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc fcQPdfView_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc fcQPdfView_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc fcQPdfView_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc fcQPdfView_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc fcQPdfView_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc fcQPdfView_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc fcQPdfView_vtable_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfView_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQPdfView_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc fcQPdfView_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc fcQPdfView_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc fcQPdfView_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQPdfView_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc fcQPdfView_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQPdfView_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQPdfView_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQPdfView_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQPdfView_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQPdfView_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfViewVTable](fcQPdfView_vdata(self)[])
  let self = QPdfView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPdfView* {.inheritable.} = ref object of QPdfView
  vtbl*: cQPdfViewVTable

method metaObject*(self: VirtualQPdfView): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPdfViewmetaObject(self[])
method metacast*(self: VirtualQPdfView, param1: cstring): pointer {.base.} =
  QPdfViewmetacast(self[], param1)
method metacall*(self: VirtualQPdfView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPdfViewmetacall(self[], param1, param2, param3)
method paintEvent*(self: VirtualQPdfView, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QPdfViewpaintEvent(self[], event)
method resizeEvent*(self: VirtualQPdfView, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QPdfViewresizeEvent(self[], event)
method scrollContentsBy*(self: VirtualQPdfView, dx: cint, dy: cint): void {.base.} =
  QPdfViewscrollContentsBy(self[], dx, dy)
method minimumSizeHint*(self: VirtualQPdfView): gen_qsize_types.QSize {.base.} =
  QPdfViewminimumSizeHint(self[])
method sizeHint*(self: VirtualQPdfView): gen_qsize_types.QSize {.base.} =
  QPdfViewsizeHint(self[])
method setupViewport*(self: VirtualQPdfView, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QPdfViewsetupViewport(self[], viewport)
method eventFilter*(self: VirtualQPdfView, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfVieweventFilter(self[], param1, param2)
method event*(self: VirtualQPdfView, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfViewevent(self[], param1)
method viewportEvent*(self: VirtualQPdfView, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfViewviewportEvent(self[], param1)
method mousePressEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QPdfViewmousePressEvent(self[], param1)
method mouseReleaseEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QPdfViewmouseReleaseEvent(self[], param1)
method mouseDoubleClickEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QPdfViewmouseDoubleClickEvent(self[], param1)
method mouseMoveEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QPdfViewmouseMoveEvent(self[], param1)
method wheelEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QPdfViewwheelEvent(self[], param1)
method contextMenuEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QPdfViewcontextMenuEvent(self[], param1)
method dragEnterEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QPdfViewdragEnterEvent(self[], param1)
method dragMoveEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QPdfViewdragMoveEvent(self[], param1)
method dragLeaveEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QPdfViewdragLeaveEvent(self[], param1)
method dropEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QDropEvent): void {.base.} =
  QPdfViewdropEvent(self[], param1)
method keyPressEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QPdfViewkeyPressEvent(self[], param1)
method viewportSizeHint*(self: VirtualQPdfView): gen_qsize_types.QSize {.base.} =
  QPdfViewviewportSizeHint(self[])
method changeEvent*(self: VirtualQPdfView, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfViewchangeEvent(self[], param1)
method devType*(self: VirtualQPdfView): cint {.base.} =
  QPdfViewdevType(self[])
method setVisible*(self: VirtualQPdfView, visible: bool): void {.base.} =
  QPdfViewsetVisible(self[], visible)
method heightForWidth*(self: VirtualQPdfView, param1: cint): cint {.base.} =
  QPdfViewheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQPdfView): bool {.base.} =
  QPdfViewhasHeightForWidth(self[])
method paintEngine*(self: VirtualQPdfView): gen_qpaintengine_types.QPaintEngine {.base.} =
  QPdfViewpaintEngine(self[])
method keyReleaseEvent*(self: VirtualQPdfView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QPdfViewkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQPdfView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPdfViewfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQPdfView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPdfViewfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQPdfView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfViewenterEvent(self[], event)
method leaveEvent*(self: VirtualQPdfView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfViewleaveEvent(self[], event)
method moveEvent*(self: VirtualQPdfView, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QPdfViewmoveEvent(self[], event)
method closeEvent*(self: VirtualQPdfView, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QPdfViewcloseEvent(self[], event)
method tabletEvent*(self: VirtualQPdfView, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QPdfViewtabletEvent(self[], event)
method actionEvent*(self: VirtualQPdfView, event: gen_qevent_types.QActionEvent): void {.base.} =
  QPdfViewactionEvent(self[], event)
method showEvent*(self: VirtualQPdfView, event: gen_qevent_types.QShowEvent): void {.base.} =
  QPdfViewshowEvent(self[], event)
method hideEvent*(self: VirtualQPdfView, event: gen_qevent_types.QHideEvent): void {.base.} =
  QPdfViewhideEvent(self[], event)
method nativeEvent*(self: VirtualQPdfView, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QPdfViewnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQPdfView, param1: cint): cint {.base.} =
  QPdfViewmetric(self[], param1)
method initPainter*(self: VirtualQPdfView, painter: gen_qpainter_types.QPainter): void {.base.} =
  QPdfViewinitPainter(self[], painter)
method redirected*(self: VirtualQPdfView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QPdfViewredirected(self[], offset)
method sharedPainter*(self: VirtualQPdfView): gen_qpainter_types.QPainter {.base.} =
  QPdfViewsharedPainter(self[])
method inputMethodEvent*(self: VirtualQPdfView, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QPdfViewinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQPdfView, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QPdfViewinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQPdfView, next: bool): bool {.base.} =
  QPdfViewfocusNextPrevChild(self[], next)
method timerEvent*(self: VirtualQPdfView, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPdfViewtimerEvent(self[], event)
method childEvent*(self: VirtualQPdfView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPdfViewchildEvent(self[], event)
method customEvent*(self: VirtualQPdfView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfViewcustomEvent(self[], event)
method connectNotify*(self: VirtualQPdfView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfViewconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPdfView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfViewdisconnectNotify(self[], signal)

proc fcQPdfView_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQPdfView_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPdfView_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfView_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  inst.paintEvent(slotval1)

proc fcQPdfView_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  inst.resizeEvent(slotval1)

proc fcQPdfView_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

proc fcQPdfView_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.h

proc fcQPdfView_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  var virtualReturn = inst.sizeHint()
  virtualReturn.h

proc fcQPdfView_method_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  inst.setupViewport(slotval1)

proc fcQPdfView_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPdfView_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPdfView_method_callback_viewportEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

proc fcQPdfView_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  inst.mousePressEvent(slotval1)

proc fcQPdfView_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  inst.mouseReleaseEvent(slotval1)

proc fcQPdfView_method_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQPdfView_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  inst.mouseMoveEvent(slotval1)

proc fcQPdfView_method_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  inst.wheelEvent(slotval1)

proc fcQPdfView_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  inst.contextMenuEvent(slotval1)

proc fcQPdfView_method_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)
  inst.dragEnterEvent(slotval1)

proc fcQPdfView_method_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)
  inst.dragMoveEvent(slotval1)

proc fcQPdfView_method_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)
  inst.dragLeaveEvent(slotval1)

proc fcQPdfView_method_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)
  inst.dropEvent(slotval1)

proc fcQPdfView_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  inst.keyPressEvent(slotval1)

proc fcQPdfView_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.h

proc fcQPdfView_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  inst.changeEvent(slotval1)

proc fcQPdfView_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQPdfView_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQPdfView_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQPdfView_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQPdfView_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  var virtualReturn = inst.paintEngine()
  virtualReturn.h

proc fcQPdfView_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  inst.keyReleaseEvent(slotval1)

proc fcQPdfView_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  inst.focusInEvent(slotval1)

proc fcQPdfView_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  inst.focusOutEvent(slotval1)

proc fcQPdfView_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.enterEvent(slotval1)

proc fcQPdfView_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.leaveEvent(slotval1)

proc fcQPdfView_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  inst.moveEvent(slotval1)

proc fcQPdfView_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  inst.closeEvent(slotval1)

proc fcQPdfView_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  inst.tabletEvent(slotval1)

proc fcQPdfView_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  inst.actionEvent(slotval1)

proc fcQPdfView_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  inst.showEvent(slotval1)

proc fcQPdfView_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  inst.hideEvent(slotval1)

proc fcQPdfView_method_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfView_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQPdfView_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  inst.initPainter(slotval1)

proc fcQPdfView_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.h

proc fcQPdfView_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  var virtualReturn = inst.sharedPainter()
  virtualReturn.h

proc fcQPdfView_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  inst.inputMethodEvent(slotval1)

proc fcQPdfView_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.h

proc fcQPdfView_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQPdfView_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQPdfView_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQPdfView_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQPdfView_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQPdfView_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfView](fcQPdfView_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc setViewportMargins*(self: gen_qpdfview_types.QPdfView, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQPdfView_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qpdfview_types.QPdfView): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQPdfView_protectedbase_viewportMargins(self.h))

proc drawFrame*(self: gen_qpdfview_types.QPdfView, param1: gen_qpainter_types.QPainter): void =
  fcQPdfView_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qpdfview_types.QPdfView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQPdfView_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qpdfview_types.QPdfView): void =
  fcQPdfView_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qpdfview_types.QPdfView): void =
  fcQPdfView_protectedbase_create(self.h)

proc destroy*(self: gen_qpdfview_types.QPdfView): void =
  fcQPdfView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qpdfview_types.QPdfView): bool =
  fcQPdfView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qpdfview_types.QPdfView): bool =
  fcQPdfView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qpdfview_types.QPdfView): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPdfView_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qpdfview_types.QPdfView): cint =
  fcQPdfView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpdfview_types.QPdfView, signal: cstring): cint =
  fcQPdfView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpdfview_types.QPdfView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPdfView_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpdfview_types.QPdfView,
    vtbl: ref QPdfViewVTable = nil): gen_qpdfview_types.QPdfView =
  let vtbl = if vtbl == nil: new QPdfViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfViewVTable](fcQPdfView_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfView_vtable_callback_metacall
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPdfView_vtable_callback_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPdfView_vtable_callback_resizeEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = fcQPdfView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPdfView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPdfView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = fcQPdfView_vtable_callback_setupViewport
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfView_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfView_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = fcQPdfView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPdfView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPdfView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPdfView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPdfView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPdfView_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPdfView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPdfView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPdfView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPdfView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPdfView_vtable_callback_dropEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPdfView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = fcQPdfView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPdfView_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPdfView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPdfView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPdfView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPdfView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPdfView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPdfView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPdfView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPdfView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPdfView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPdfView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPdfView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPdfView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPdfView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPdfView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPdfView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPdfView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPdfView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPdfView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPdfView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPdfView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPdfView_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPdfView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPdfView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPdfView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfView_vtable_callback_disconnectNotify
  let tmp = gen_qpdfview_types.QPdfView(h: fcQPdfView_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQPdfView_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qpdfview_types.QPdfView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QPdfViewVTable = nil): gen_qpdfview_types.QPdfView =
  let vtbl = if vtbl == nil: new QPdfViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfViewVTable](fcQPdfView_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfView_vtable_callback_metacall
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQPdfView_vtable_callback_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQPdfView_vtable_callback_resizeEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = fcQPdfView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQPdfView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQPdfView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = fcQPdfView_vtable_callback_setupViewport
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfView_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfView_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = fcQPdfView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQPdfView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQPdfView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQPdfView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQPdfView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQPdfView_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQPdfView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQPdfView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQPdfView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQPdfView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQPdfView_vtable_callback_dropEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQPdfView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = fcQPdfView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQPdfView_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPdfView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQPdfView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQPdfView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQPdfView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPdfView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQPdfView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQPdfView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQPdfView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQPdfView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQPdfView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQPdfView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQPdfView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQPdfView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQPdfView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQPdfView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQPdfView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQPdfView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPdfView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPdfView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPdfView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPdfView_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQPdfView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQPdfView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQPdfView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfView_vtable_callback_disconnectNotify
  let tmp = gen_qpdfview_types.QPdfView(h: fcQPdfView_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQPdfView_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQPdfView_mvtbl = cQPdfViewVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPdfView()[])](self.fcQPdfView_vdata()[])
    inst[].h = nil,

  metaObject: fcQPdfView_method_callback_metaObject,
  metacast: fcQPdfView_method_callback_metacast,
  metacall: fcQPdfView_method_callback_metacall,
  paintEvent: fcQPdfView_method_callback_paintEvent,
  resizeEvent: fcQPdfView_method_callback_resizeEvent,
  scrollContentsBy: fcQPdfView_method_callback_scrollContentsBy,
  minimumSizeHint: fcQPdfView_method_callback_minimumSizeHint,
  sizeHint: fcQPdfView_method_callback_sizeHint,
  setupViewport: fcQPdfView_method_callback_setupViewport,
  eventFilter: fcQPdfView_method_callback_eventFilter,
  event: fcQPdfView_method_callback_event,
  viewportEvent: fcQPdfView_method_callback_viewportEvent,
  mousePressEvent: fcQPdfView_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQPdfView_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQPdfView_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQPdfView_method_callback_mouseMoveEvent,
  wheelEvent: fcQPdfView_method_callback_wheelEvent,
  contextMenuEvent: fcQPdfView_method_callback_contextMenuEvent,
  dragEnterEvent: fcQPdfView_method_callback_dragEnterEvent,
  dragMoveEvent: fcQPdfView_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQPdfView_method_callback_dragLeaveEvent,
  dropEvent: fcQPdfView_method_callback_dropEvent,
  keyPressEvent: fcQPdfView_method_callback_keyPressEvent,
  viewportSizeHint: fcQPdfView_method_callback_viewportSizeHint,
  changeEvent: fcQPdfView_method_callback_changeEvent,
  devType: fcQPdfView_method_callback_devType,
  setVisible: fcQPdfView_method_callback_setVisible,
  heightForWidth: fcQPdfView_method_callback_heightForWidth,
  hasHeightForWidth: fcQPdfView_method_callback_hasHeightForWidth,
  paintEngine: fcQPdfView_method_callback_paintEngine,
  keyReleaseEvent: fcQPdfView_method_callback_keyReleaseEvent,
  focusInEvent: fcQPdfView_method_callback_focusInEvent,
  focusOutEvent: fcQPdfView_method_callback_focusOutEvent,
  enterEvent: fcQPdfView_method_callback_enterEvent,
  leaveEvent: fcQPdfView_method_callback_leaveEvent,
  moveEvent: fcQPdfView_method_callback_moveEvent,
  closeEvent: fcQPdfView_method_callback_closeEvent,
  tabletEvent: fcQPdfView_method_callback_tabletEvent,
  actionEvent: fcQPdfView_method_callback_actionEvent,
  showEvent: fcQPdfView_method_callback_showEvent,
  hideEvent: fcQPdfView_method_callback_hideEvent,
  nativeEvent: fcQPdfView_method_callback_nativeEvent,
  metric: fcQPdfView_method_callback_metric,
  initPainter: fcQPdfView_method_callback_initPainter,
  redirected: fcQPdfView_method_callback_redirected,
  sharedPainter: fcQPdfView_method_callback_sharedPainter,
  inputMethodEvent: fcQPdfView_method_callback_inputMethodEvent,
  inputMethodQuery: fcQPdfView_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQPdfView_method_callback_focusNextPrevChild,
  timerEvent: fcQPdfView_method_callback_timerEvent,
  childEvent: fcQPdfView_method_callback_childEvent,
  customEvent: fcQPdfView_method_callback_customEvent,
  connectNotify: fcQPdfView_method_callback_connectNotify,
  disconnectNotify: fcQPdfView_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpdfview_types.QPdfView,
    inst: VirtualQPdfView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfView_new(addr(cQPdfView_mvtbl), csize_t(sizeof(pointer)))
  fcQPdfView_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qpdfview_types.QPdfView,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQPdfView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfView_new2(addr(cQPdfView_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQPdfView_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpdfview_types.QPdfView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfView_staticMetaObject())
proc delete*(self: gen_qpdfview_types.QPdfView) =
  fcQPdfView_delete(self.h)
