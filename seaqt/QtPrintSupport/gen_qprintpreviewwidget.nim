import ./Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config --cflags Qt6PrintSupport")  & " -fPIC"
{.compile("gen_qprintpreviewwidget.cpp", cflags).}


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

proc fcQPrintPreviewWidget_metaObject(self: pointer, ): pointer {.importc: "QPrintPreviewWidget_metaObject".}
proc fcQPrintPreviewWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintPreviewWidget_metacast".}
proc fcQPrintPreviewWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintPreviewWidget_metacall".}
proc fcQPrintPreviewWidget_tr(s: cstring): struct_miqt_string {.importc: "QPrintPreviewWidget_tr".}
proc fcQPrintPreviewWidget_zoomFactor(self: pointer, ): float64 {.importc: "QPrintPreviewWidget_zoomFactor".}
proc fcQPrintPreviewWidget_orientation(self: pointer, ): cint {.importc: "QPrintPreviewWidget_orientation".}
proc fcQPrintPreviewWidget_viewMode(self: pointer, ): cint {.importc: "QPrintPreviewWidget_viewMode".}
proc fcQPrintPreviewWidget_zoomMode(self: pointer, ): cint {.importc: "QPrintPreviewWidget_zoomMode".}
proc fcQPrintPreviewWidget_currentPage(self: pointer, ): cint {.importc: "QPrintPreviewWidget_currentPage".}
proc fcQPrintPreviewWidget_pageCount(self: pointer, ): cint {.importc: "QPrintPreviewWidget_pageCount".}
proc fcQPrintPreviewWidget_setVisible(self: pointer, visible: bool): void {.importc: "QPrintPreviewWidget_setVisible".}
proc fcQPrintPreviewWidget_print(self: pointer, ): void {.importc: "QPrintPreviewWidget_print".}
proc fcQPrintPreviewWidget_zoomIn(self: pointer, ): void {.importc: "QPrintPreviewWidget_zoomIn".}
proc fcQPrintPreviewWidget_zoomOut(self: pointer, ): void {.importc: "QPrintPreviewWidget_zoomOut".}
proc fcQPrintPreviewWidget_setZoomFactor(self: pointer, zoomFactor: float64): void {.importc: "QPrintPreviewWidget_setZoomFactor".}
proc fcQPrintPreviewWidget_setOrientation(self: pointer, orientation: cint): void {.importc: "QPrintPreviewWidget_setOrientation".}
proc fcQPrintPreviewWidget_setViewMode(self: pointer, viewMode: cint): void {.importc: "QPrintPreviewWidget_setViewMode".}
proc fcQPrintPreviewWidget_setZoomMode(self: pointer, zoomMode: cint): void {.importc: "QPrintPreviewWidget_setZoomMode".}
proc fcQPrintPreviewWidget_setCurrentPage(self: pointer, pageNumber: cint): void {.importc: "QPrintPreviewWidget_setCurrentPage".}
proc fcQPrintPreviewWidget_fitToWidth(self: pointer, ): void {.importc: "QPrintPreviewWidget_fitToWidth".}
proc fcQPrintPreviewWidget_fitInView(self: pointer, ): void {.importc: "QPrintPreviewWidget_fitInView".}
proc fcQPrintPreviewWidget_setLandscapeOrientation(self: pointer, ): void {.importc: "QPrintPreviewWidget_setLandscapeOrientation".}
proc fcQPrintPreviewWidget_setPortraitOrientation(self: pointer, ): void {.importc: "QPrintPreviewWidget_setPortraitOrientation".}
proc fcQPrintPreviewWidget_setSinglePageViewMode(self: pointer, ): void {.importc: "QPrintPreviewWidget_setSinglePageViewMode".}
proc fcQPrintPreviewWidget_setFacingPagesViewMode(self: pointer, ): void {.importc: "QPrintPreviewWidget_setFacingPagesViewMode".}
proc fcQPrintPreviewWidget_setAllPagesViewMode(self: pointer, ): void {.importc: "QPrintPreviewWidget_setAllPagesViewMode".}
proc fcQPrintPreviewWidget_updatePreview(self: pointer, ): void {.importc: "QPrintPreviewWidget_updatePreview".}
proc fcQPrintPreviewWidget_paintRequested(self: pointer, printer: pointer): void {.importc: "QPrintPreviewWidget_paintRequested".}
proc fcQPrintPreviewWidget_connect_paintRequested(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_connect_paintRequested".}
proc fcQPrintPreviewWidget_previewChanged(self: pointer, ): void {.importc: "QPrintPreviewWidget_previewChanged".}
proc fcQPrintPreviewWidget_connect_previewChanged(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_connect_previewChanged".}
proc fcQPrintPreviewWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintPreviewWidget_tr2".}
proc fcQPrintPreviewWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintPreviewWidget_tr3".}
proc fcQPrintPreviewWidget_zoomIn1(self: pointer, zoom: float64): void {.importc: "QPrintPreviewWidget_zoomIn1".}
proc fcQPrintPreviewWidget_zoomOut1(self: pointer, zoom: float64): void {.importc: "QPrintPreviewWidget_zoomOut1".}
type cQPrintPreviewWidgetVTable = object
  destructor*: proc(vtbl: ptr cQPrintPreviewWidgetVTable, self: ptr cQPrintPreviewWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
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
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQPrintPreviewWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QPrintPreviewWidget_virtualbase_metaObject".}
proc fcQPrintPreviewWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintPreviewWidget_virtualbase_metacast".}
proc fcQPrintPreviewWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintPreviewWidget_virtualbase_metacall".}
proc fcQPrintPreviewWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QPrintPreviewWidget_virtualbase_setVisible".}
proc fcQPrintPreviewWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QPrintPreviewWidget_virtualbase_devType".}
proc fcQPrintPreviewWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QPrintPreviewWidget_virtualbase_sizeHint".}
proc fcQPrintPreviewWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QPrintPreviewWidget_virtualbase_minimumSizeHint".}
proc fcQPrintPreviewWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QPrintPreviewWidget_virtualbase_heightForWidth".}
proc fcQPrintPreviewWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QPrintPreviewWidget_virtualbase_hasHeightForWidth".}
proc fcQPrintPreviewWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QPrintPreviewWidget_virtualbase_paintEngine".}
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
proc fcQPrintPreviewWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QPrintPreviewWidget_virtualbase_nativeEvent".}
proc fcQPrintPreviewWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_changeEvent".}
proc fcQPrintPreviewWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QPrintPreviewWidget_virtualbase_metric".}
proc fcQPrintPreviewWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_initPainter".}
proc fcQPrintPreviewWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPrintPreviewWidget_virtualbase_redirected".}
proc fcQPrintPreviewWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QPrintPreviewWidget_virtualbase_sharedPainter".}
proc fcQPrintPreviewWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_inputMethodEvent".}
proc fcQPrintPreviewWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QPrintPreviewWidget_virtualbase_inputMethodQuery".}
proc fcQPrintPreviewWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QPrintPreviewWidget_virtualbase_focusNextPrevChild".}
proc fcQPrintPreviewWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPrintPreviewWidget_virtualbase_eventFilter".}
proc fcQPrintPreviewWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_timerEvent".}
proc fcQPrintPreviewWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_childEvent".}
proc fcQPrintPreviewWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_customEvent".}
proc fcQPrintPreviewWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_connectNotify".}
proc fcQPrintPreviewWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPrintPreviewWidget_virtualbase_disconnectNotify".}
proc fcQPrintPreviewWidget_new(vtbl: pointer, parent: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new".}
proc fcQPrintPreviewWidget_new2(vtbl: pointer, printer: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new2".}
proc fcQPrintPreviewWidget_new3(vtbl: pointer, ): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new3".}
proc fcQPrintPreviewWidget_new4(vtbl: pointer, printer: pointer, parent: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new4".}
proc fcQPrintPreviewWidget_new5(vtbl: pointer, printer: pointer, parent: pointer, flags: cint): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new5".}
proc fcQPrintPreviewWidget_new6(vtbl: pointer, parent: pointer, flags: cint): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new6".}
proc fcQPrintPreviewWidget_staticMetaObject(): pointer {.importc: "QPrintPreviewWidget_staticMetaObject".}
proc fcQPrintPreviewWidget_delete(self: pointer) {.importc: "QPrintPreviewWidget_delete".}

proc metaObject*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintPreviewWidget_metaObject(self.h))

proc metacast*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cstring): pointer =
  fcQPrintPreviewWidget_metacast(self.h, param1)

proc metacall*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQPrintPreviewWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, s: cstring): string =
  let v_ms = fcQPrintPreviewWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc zoomFactor*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): float64 =
  fcQPrintPreviewWidget_zoomFactor(self.h)

proc orientation*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): cint =
  cint(fcQPrintPreviewWidget_orientation(self.h))

proc viewMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): cint =
  cint(fcQPrintPreviewWidget_viewMode(self.h))

proc zoomMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): cint =
  cint(fcQPrintPreviewWidget_zoomMode(self.h))

proc currentPage*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): cint =
  fcQPrintPreviewWidget_currentPage(self.h)

proc pageCount*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): cint =
  fcQPrintPreviewWidget_pageCount(self.h)

proc setVisible*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, visible: bool): void =
  fcQPrintPreviewWidget_setVisible(self.h, visible)

proc print*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
  fcQPrintPreviewWidget_print(self.h)

proc zoomIn*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
  fcQPrintPreviewWidget_zoomIn(self.h)

proc zoomOut*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
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

proc fitToWidth*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
  fcQPrintPreviewWidget_fitToWidth(self.h)

proc fitInView*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
  fcQPrintPreviewWidget_fitInView(self.h)

proc setLandscapeOrientation*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
  fcQPrintPreviewWidget_setLandscapeOrientation(self.h)

proc setPortraitOrientation*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
  fcQPrintPreviewWidget_setPortraitOrientation(self.h)

proc setSinglePageViewMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
  fcQPrintPreviewWidget_setSinglePageViewMode(self.h)

proc setFacingPagesViewMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
  fcQPrintPreviewWidget_setFacingPagesViewMode(self.h)

proc setAllPagesViewMode*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
  fcQPrintPreviewWidget_setAllPagesViewMode(self.h)

proc updatePreview*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
  fcQPrintPreviewWidget_updatePreview(self.h)

proc paintRequested*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, printer: gen_qprinter_types.QPrinter): void =
  fcQPrintPreviewWidget_paintRequested(self.h, printer.h)

type QPrintPreviewWidgetpaintRequestedSlot* = proc(printer: gen_qprinter_types.QPrinter)
proc miqt_exec_callback_cQPrintPreviewWidget_paintRequested(slot: int, printer: pointer) {.exportc: "miqt_exec_callback_QPrintPreviewWidget_paintRequested".} =
  let nimfunc = cast[ptr QPrintPreviewWidgetpaintRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qprinter_types.QPrinter(h: printer)

  nimfunc[](slotval1)

proc onpaintRequested*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetpaintRequestedSlot) =
  var tmp = new QPrintPreviewWidgetpaintRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_connect_paintRequested(self.h, cast[int](addr tmp[]))

proc previewChanged*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): void =
  fcQPrintPreviewWidget_previewChanged(self.h)

type QPrintPreviewWidgetpreviewChangedSlot* = proc()
proc miqt_exec_callback_cQPrintPreviewWidget_previewChanged(slot: int) {.exportc: "miqt_exec_callback_QPrintPreviewWidget_previewChanged".} =
  let nimfunc = cast[ptr QPrintPreviewWidgetpreviewChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onpreviewChanged*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetpreviewChangedSlot) =
  var tmp = new QPrintPreviewWidgetpreviewChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_connect_previewChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, s: cstring, c: cstring): string =
  let v_ms = fcQPrintPreviewWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPrintPreviewWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QPrintPreviewWidgetenterEventProc* = proc(self: QPrintPreviewWidget, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QPrintPreviewWidgetnativeEventProc* = proc(self: QPrintPreviewWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QPrintPreviewWidgetVTable* = object
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
proc QPrintPreviewWidgetmetaObject*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintPreviewWidget_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQPrintPreviewWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QPrintPreviewWidgetmetacast*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cstring): pointer =
  fcQPrintPreviewWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQPrintPreviewWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPrintPreviewWidgetmetacall*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQPrintPreviewWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQPrintPreviewWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPrintPreviewWidgetsetVisible*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, visible: bool): void =
  fcQPrintPreviewWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQPrintPreviewWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QPrintPreviewWidgetdevType*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): cint =
  fcQPrintPreviewWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQPrintPreviewWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPrintPreviewWidgetsizeHint*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPrintPreviewWidget_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQPrintPreviewWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QPrintPreviewWidgetminimumSizeHint*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPrintPreviewWidget_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQPrintPreviewWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QPrintPreviewWidgetheightForWidth*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint): cint =
  fcQPrintPreviewWidget_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQPrintPreviewWidget_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QPrintPreviewWidgethasHeightForWidth*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): bool =
  fcQPrintPreviewWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQPrintPreviewWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QPrintPreviewWidgetpaintEngine*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPrintPreviewWidget_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQPrintPreviewWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QPrintPreviewWidgetevent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQPrintPreviewWidget_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPrintPreviewWidgetmousePressEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QPrintPreviewWidgetmouseReleaseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QPrintPreviewWidgetmouseDoubleClickEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QPrintPreviewWidgetmouseMoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QPrintPreviewWidgetwheelEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQPrintPreviewWidget_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QPrintPreviewWidgetkeyPressEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQPrintPreviewWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QPrintPreviewWidgetkeyReleaseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQPrintPreviewWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QPrintPreviewWidgetfocusInEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQPrintPreviewWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QPrintPreviewWidgetfocusOutEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQPrintPreviewWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QPrintPreviewWidgetenterEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QEnterEvent): void =
  fcQPrintPreviewWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QPrintPreviewWidgetleaveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintPreviewWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QPrintPreviewWidgetpaintEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQPrintPreviewWidget_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QPrintPreviewWidgetmoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQPrintPreviewWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QPrintPreviewWidgetresizeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQPrintPreviewWidget_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QPrintPreviewWidgetcloseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQPrintPreviewWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QPrintPreviewWidgetcontextMenuEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQPrintPreviewWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QPrintPreviewWidgettabletEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQPrintPreviewWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QPrintPreviewWidgetactionEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QActionEvent): void =
  fcQPrintPreviewWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QPrintPreviewWidgetdragEnterEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQPrintPreviewWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QPrintPreviewWidgetdragMoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQPrintPreviewWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QPrintPreviewWidgetdragLeaveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQPrintPreviewWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QPrintPreviewWidgetdropEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDropEvent): void =
  fcQPrintPreviewWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QPrintPreviewWidgetshowEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QShowEvent): void =
  fcQPrintPreviewWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QPrintPreviewWidgethideEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QHideEvent): void =
  fcQPrintPreviewWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QPrintPreviewWidgetnativeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQPrintPreviewWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQPrintPreviewWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPrintPreviewWidgetchangeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQPrintPreviewWidget_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQPrintPreviewWidget_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QPrintPreviewWidgetmetric*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint): cint =
  fcQPrintPreviewWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQPrintPreviewWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPrintPreviewWidgetinitPainter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, painter: gen_qpainter_types.QPainter): void =
  fcQPrintPreviewWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQPrintPreviewWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QPrintPreviewWidgetredirected*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPrintPreviewWidget_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQPrintPreviewWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QPrintPreviewWidgetsharedPainter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPrintPreviewWidget_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQPrintPreviewWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QPrintPreviewWidgetinputMethodEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQPrintPreviewWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQPrintPreviewWidget_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QPrintPreviewWidgetinputMethodQuery*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPrintPreviewWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQPrintPreviewWidget_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QPrintPreviewWidgetfocusNextPrevChild*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, next: bool): bool =
  fcQPrintPreviewWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQPrintPreviewWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QPrintPreviewWidgeteventFilter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPrintPreviewWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPrintPreviewWidgettimerEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPrintPreviewWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QPrintPreviewWidgetchildEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPrintPreviewWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QPrintPreviewWidgetcustomEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintPreviewWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintPreviewWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QPrintPreviewWidgetconnectNotify*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPrintPreviewWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPrintPreviewWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QPrintPreviewWidgetdisconnectNotify*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPrintPreviewWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPrintPreviewWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewWidgetVTable](vtbl)
  let self = QPrintPreviewWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrintPreviewWidgetVTable, _: ptr cQPrintPreviewWidget) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPrintPreviewWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPrintPreviewWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPrintPreviewWidget_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPrintPreviewWidget_setVisible
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrintPreviewWidget_devType
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPrintPreviewWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPrintPreviewWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPrintPreviewWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPrintPreviewWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrintPreviewWidget_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPrintPreviewWidget_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPrintPreviewWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPrintPreviewWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPrintPreviewWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPrintPreviewWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPrintPreviewWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPrintPreviewWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPrintPreviewWidget_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPrintPreviewWidget_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPrintPreviewWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPrintPreviewWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPrintPreviewWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPrintPreviewWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPrintPreviewWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPrintPreviewWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPrintPreviewWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPrintPreviewWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPrintPreviewWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPrintPreviewWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPrintPreviewWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPrintPreviewWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrintPreviewWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrintPreviewWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrintPreviewWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrintPreviewWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPrintPreviewWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPrintPreviewWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPrintPreviewWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPrintPreviewWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPrintPreviewWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPrintPreviewWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPrintPreviewWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPrintPreviewWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPrintPreviewWidget_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    printer: gen_qprinter_types.QPrinter,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrintPreviewWidgetVTable, _: ptr cQPrintPreviewWidget) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPrintPreviewWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPrintPreviewWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPrintPreviewWidget_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPrintPreviewWidget_setVisible
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrintPreviewWidget_devType
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPrintPreviewWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPrintPreviewWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPrintPreviewWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPrintPreviewWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrintPreviewWidget_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPrintPreviewWidget_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPrintPreviewWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPrintPreviewWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPrintPreviewWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPrintPreviewWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPrintPreviewWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPrintPreviewWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPrintPreviewWidget_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPrintPreviewWidget_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPrintPreviewWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPrintPreviewWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPrintPreviewWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPrintPreviewWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPrintPreviewWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPrintPreviewWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPrintPreviewWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPrintPreviewWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPrintPreviewWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPrintPreviewWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPrintPreviewWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPrintPreviewWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrintPreviewWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrintPreviewWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrintPreviewWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrintPreviewWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPrintPreviewWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPrintPreviewWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPrintPreviewWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPrintPreviewWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPrintPreviewWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPrintPreviewWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPrintPreviewWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPrintPreviewWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPrintPreviewWidget_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new2(addr(vtbl[]), printer.h))

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrintPreviewWidgetVTable, _: ptr cQPrintPreviewWidget) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPrintPreviewWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPrintPreviewWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPrintPreviewWidget_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPrintPreviewWidget_setVisible
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrintPreviewWidget_devType
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPrintPreviewWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPrintPreviewWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPrintPreviewWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPrintPreviewWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrintPreviewWidget_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPrintPreviewWidget_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPrintPreviewWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPrintPreviewWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPrintPreviewWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPrintPreviewWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPrintPreviewWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPrintPreviewWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPrintPreviewWidget_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPrintPreviewWidget_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPrintPreviewWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPrintPreviewWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPrintPreviewWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPrintPreviewWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPrintPreviewWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPrintPreviewWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPrintPreviewWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPrintPreviewWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPrintPreviewWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPrintPreviewWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPrintPreviewWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPrintPreviewWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrintPreviewWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrintPreviewWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrintPreviewWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrintPreviewWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPrintPreviewWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPrintPreviewWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPrintPreviewWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPrintPreviewWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPrintPreviewWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPrintPreviewWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPrintPreviewWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPrintPreviewWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPrintPreviewWidget_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new3(addr(vtbl[]), ))

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrintPreviewWidgetVTable, _: ptr cQPrintPreviewWidget) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPrintPreviewWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPrintPreviewWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPrintPreviewWidget_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPrintPreviewWidget_setVisible
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrintPreviewWidget_devType
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPrintPreviewWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPrintPreviewWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPrintPreviewWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPrintPreviewWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrintPreviewWidget_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPrintPreviewWidget_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPrintPreviewWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPrintPreviewWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPrintPreviewWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPrintPreviewWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPrintPreviewWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPrintPreviewWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPrintPreviewWidget_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPrintPreviewWidget_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPrintPreviewWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPrintPreviewWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPrintPreviewWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPrintPreviewWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPrintPreviewWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPrintPreviewWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPrintPreviewWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPrintPreviewWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPrintPreviewWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPrintPreviewWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPrintPreviewWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPrintPreviewWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrintPreviewWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrintPreviewWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrintPreviewWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrintPreviewWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPrintPreviewWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPrintPreviewWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPrintPreviewWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPrintPreviewWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPrintPreviewWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPrintPreviewWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPrintPreviewWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPrintPreviewWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPrintPreviewWidget_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new4(addr(vtbl[]), printer.h, parent.h))

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrintPreviewWidgetVTable, _: ptr cQPrintPreviewWidget) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPrintPreviewWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPrintPreviewWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPrintPreviewWidget_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPrintPreviewWidget_setVisible
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrintPreviewWidget_devType
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPrintPreviewWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPrintPreviewWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPrintPreviewWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPrintPreviewWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrintPreviewWidget_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPrintPreviewWidget_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPrintPreviewWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPrintPreviewWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPrintPreviewWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPrintPreviewWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPrintPreviewWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPrintPreviewWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPrintPreviewWidget_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPrintPreviewWidget_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPrintPreviewWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPrintPreviewWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPrintPreviewWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPrintPreviewWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPrintPreviewWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPrintPreviewWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPrintPreviewWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPrintPreviewWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPrintPreviewWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPrintPreviewWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPrintPreviewWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPrintPreviewWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrintPreviewWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrintPreviewWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrintPreviewWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrintPreviewWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPrintPreviewWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPrintPreviewWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPrintPreviewWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPrintPreviewWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPrintPreviewWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPrintPreviewWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPrintPreviewWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPrintPreviewWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPrintPreviewWidget_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new5(addr(vtbl[]), printer.h, parent.h, cint(flags)))

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QPrintPreviewWidgetVTable = nil): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  let vtbl = if vtbl == nil: new QPrintPreviewWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrintPreviewWidgetVTable, _: ptr cQPrintPreviewWidget) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPrintPreviewWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPrintPreviewWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPrintPreviewWidget_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPrintPreviewWidget_setVisible
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrintPreviewWidget_devType
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPrintPreviewWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPrintPreviewWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPrintPreviewWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPrintPreviewWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrintPreviewWidget_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPrintPreviewWidget_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPrintPreviewWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPrintPreviewWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPrintPreviewWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPrintPreviewWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPrintPreviewWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPrintPreviewWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPrintPreviewWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPrintPreviewWidget_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPrintPreviewWidget_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPrintPreviewWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPrintPreviewWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPrintPreviewWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPrintPreviewWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPrintPreviewWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPrintPreviewWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPrintPreviewWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPrintPreviewWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPrintPreviewWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPrintPreviewWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPrintPreviewWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPrintPreviewWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPrintPreviewWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrintPreviewWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrintPreviewWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrintPreviewWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrintPreviewWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPrintPreviewWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPrintPreviewWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPrintPreviewWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPrintPreviewWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPrintPreviewWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPrintPreviewWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPrintPreviewWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPrintPreviewWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPrintPreviewWidget_disconnectNotify
  gen_qprintpreviewwidget_types.QPrintPreviewWidget(h: fcQPrintPreviewWidget_new6(addr(vtbl[]), parent.h, cint(flags)))

proc staticMetaObject*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintPreviewWidget_staticMetaObject())
proc delete*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget) =
  fcQPrintPreviewWidget_delete(self.h)
