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

proc fcQPrintPreviewWidget_new(parent: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new".}
proc fcQPrintPreviewWidget_new2(printer: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new2".}
proc fcQPrintPreviewWidget_new3(): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new3".}
proc fcQPrintPreviewWidget_new4(printer: pointer, parent: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new4".}
proc fcQPrintPreviewWidget_new5(printer: pointer, parent: pointer, flags: cint): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new5".}
proc fcQPrintPreviewWidget_new6(parent: pointer, flags: cint): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new6".}
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
proc fQPrintPreviewWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPrintPreviewWidget_virtualbase_metaObject".}
proc fcQPrintPreviewWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_metaObject".}
proc fQPrintPreviewWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPrintPreviewWidget_virtualbase_metacast".}
proc fcQPrintPreviewWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_metacast".}
proc fQPrintPreviewWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPrintPreviewWidget_virtualbase_metacall".}
proc fcQPrintPreviewWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_metacall".}
proc fQPrintPreviewWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QPrintPreviewWidget_virtualbase_setVisible".}
proc fcQPrintPreviewWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_setVisible".}
proc fQPrintPreviewWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QPrintPreviewWidget_virtualbase_devType".}
proc fcQPrintPreviewWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_devType".}
proc fQPrintPreviewWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QPrintPreviewWidget_virtualbase_sizeHint".}
proc fcQPrintPreviewWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_sizeHint".}
proc fQPrintPreviewWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QPrintPreviewWidget_virtualbase_minimumSizeHint".}
proc fcQPrintPreviewWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_minimumSizeHint".}
proc fQPrintPreviewWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QPrintPreviewWidget_virtualbase_heightForWidth".}
proc fcQPrintPreviewWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_heightForWidth".}
proc fQPrintPreviewWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QPrintPreviewWidget_virtualbase_hasHeightForWidth".}
proc fcQPrintPreviewWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_hasHeightForWidth".}
proc fQPrintPreviewWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPrintPreviewWidget_virtualbase_paintEngine".}
proc fcQPrintPreviewWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_paintEngine".}
proc fQPrintPreviewWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPrintPreviewWidget_virtualbase_event".}
proc fcQPrintPreviewWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_event".}
proc fQPrintPreviewWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_mousePressEvent".}
proc fcQPrintPreviewWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_mousePressEvent".}
proc fQPrintPreviewWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_mouseReleaseEvent".}
proc fcQPrintPreviewWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_mouseReleaseEvent".}
proc fQPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQPrintPreviewWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_mouseDoubleClickEvent".}
proc fQPrintPreviewWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_mouseMoveEvent".}
proc fcQPrintPreviewWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_mouseMoveEvent".}
proc fQPrintPreviewWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_wheelEvent".}
proc fcQPrintPreviewWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_wheelEvent".}
proc fQPrintPreviewWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_keyPressEvent".}
proc fcQPrintPreviewWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_keyPressEvent".}
proc fQPrintPreviewWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_keyReleaseEvent".}
proc fcQPrintPreviewWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_keyReleaseEvent".}
proc fQPrintPreviewWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_focusInEvent".}
proc fcQPrintPreviewWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_focusInEvent".}
proc fQPrintPreviewWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_focusOutEvent".}
proc fcQPrintPreviewWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_focusOutEvent".}
proc fQPrintPreviewWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_enterEvent".}
proc fcQPrintPreviewWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_enterEvent".}
proc fQPrintPreviewWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_leaveEvent".}
proc fcQPrintPreviewWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_leaveEvent".}
proc fQPrintPreviewWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_paintEvent".}
proc fcQPrintPreviewWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_paintEvent".}
proc fQPrintPreviewWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_moveEvent".}
proc fcQPrintPreviewWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_moveEvent".}
proc fQPrintPreviewWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_resizeEvent".}
proc fcQPrintPreviewWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_resizeEvent".}
proc fQPrintPreviewWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_closeEvent".}
proc fcQPrintPreviewWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_closeEvent".}
proc fQPrintPreviewWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_contextMenuEvent".}
proc fcQPrintPreviewWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_contextMenuEvent".}
proc fQPrintPreviewWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_tabletEvent".}
proc fcQPrintPreviewWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_tabletEvent".}
proc fQPrintPreviewWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_actionEvent".}
proc fcQPrintPreviewWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_actionEvent".}
proc fQPrintPreviewWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_dragEnterEvent".}
proc fcQPrintPreviewWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_dragEnterEvent".}
proc fQPrintPreviewWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_dragMoveEvent".}
proc fcQPrintPreviewWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_dragMoveEvent".}
proc fQPrintPreviewWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_dragLeaveEvent".}
proc fcQPrintPreviewWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_dragLeaveEvent".}
proc fQPrintPreviewWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_dropEvent".}
proc fcQPrintPreviewWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_dropEvent".}
proc fQPrintPreviewWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_showEvent".}
proc fcQPrintPreviewWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_showEvent".}
proc fQPrintPreviewWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_hideEvent".}
proc fcQPrintPreviewWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_hideEvent".}
proc fQPrintPreviewWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QPrintPreviewWidget_virtualbase_nativeEvent".}
proc fcQPrintPreviewWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_nativeEvent".}
proc fQPrintPreviewWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_changeEvent".}
proc fcQPrintPreviewWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_changeEvent".}
proc fQPrintPreviewWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPrintPreviewWidget_virtualbase_metric".}
proc fcQPrintPreviewWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_metric".}
proc fQPrintPreviewWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_initPainter".}
proc fcQPrintPreviewWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_initPainter".}
proc fQPrintPreviewWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPrintPreviewWidget_virtualbase_redirected".}
proc fcQPrintPreviewWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_redirected".}
proc fQPrintPreviewWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPrintPreviewWidget_virtualbase_sharedPainter".}
proc fcQPrintPreviewWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_sharedPainter".}
proc fQPrintPreviewWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_inputMethodEvent".}
proc fcQPrintPreviewWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_inputMethodEvent".}
proc fQPrintPreviewWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QPrintPreviewWidget_virtualbase_inputMethodQuery".}
proc fcQPrintPreviewWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_inputMethodQuery".}
proc fQPrintPreviewWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QPrintPreviewWidget_virtualbase_focusNextPrevChild".}
proc fcQPrintPreviewWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_focusNextPrevChild".}
proc fQPrintPreviewWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPrintPreviewWidget_virtualbase_eventFilter".}
proc fcQPrintPreviewWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_eventFilter".}
proc fQPrintPreviewWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_timerEvent".}
proc fcQPrintPreviewWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_timerEvent".}
proc fQPrintPreviewWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_childEvent".}
proc fcQPrintPreviewWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_childEvent".}
proc fQPrintPreviewWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_customEvent".}
proc fcQPrintPreviewWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_customEvent".}
proc fQPrintPreviewWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_connectNotify".}
proc fcQPrintPreviewWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_connectNotify".}
proc fQPrintPreviewWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_disconnectNotify".}
proc fcQPrintPreviewWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_disconnectNotify".}
proc fcQPrintPreviewWidget_staticMetaObject(): pointer {.importc: "QPrintPreviewWidget_staticMetaObject".}
proc fcQPrintPreviewWidget_delete(self: pointer) {.importc: "QPrintPreviewWidget_delete".}


func init*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, h: ptr cQPrintPreviewWidget): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  T(h: h)
proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, parent: gen_qwidget_types.QWidget): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  gen_qprintpreviewwidget_types.QPrintPreviewWidget.init(fcQPrintPreviewWidget_new(parent.h))

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, printer: gen_qprinter_types.QPrinter): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  gen_qprintpreviewwidget_types.QPrintPreviewWidget.init(fcQPrintPreviewWidget_new2(printer.h))

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  gen_qprintpreviewwidget_types.QPrintPreviewWidget.init(fcQPrintPreviewWidget_new3())

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  gen_qprintpreviewwidget_types.QPrintPreviewWidget.init(fcQPrintPreviewWidget_new4(printer.h, parent.h))

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget, flags: cint): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  gen_qprintpreviewwidget_types.QPrintPreviewWidget.init(fcQPrintPreviewWidget_new5(printer.h, parent.h, cint(flags)))

proc create*(T: type gen_qprintpreviewwidget_types.QPrintPreviewWidget, parent: gen_qwidget_types.QWidget, flags: cint): gen_qprintpreviewwidget_types.QPrintPreviewWidget =
  gen_qprintpreviewwidget_types.QPrintPreviewWidget.init(fcQPrintPreviewWidget_new6(parent.h, cint(flags)))

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
proc miqt_exec_callback_QPrintPreviewWidget_paintRequested(slot: int, printer: pointer) {.exportc.} =
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
proc miqt_exec_callback_QPrintPreviewWidget_previewChanged(slot: int) {.exportc.} =
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

proc QPrintPreviewWidgetmetaObject*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQPrintPreviewWidget_virtualbase_metaObject(self.h))

type QPrintPreviewWidgetmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetmetaObjectProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_metaObject(self: ptr cQPrintPreviewWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_metaObject ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintPreviewWidgetmetacast*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cstring): pointer =
  fQPrintPreviewWidget_virtualbase_metacast(self.h, param1)

type QPrintPreviewWidgetmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetmetacastProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_metacast(self: ptr cQPrintPreviewWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_metacast ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintPreviewWidgetmetacall*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint, param2: cint, param3: pointer): cint =
  fQPrintPreviewWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPrintPreviewWidgetmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetmetacallProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_metacall(self: ptr cQPrintPreviewWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPrintPreviewWidget_metacall ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPrintPreviewWidgetsetVisible*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, visible: bool): void =
  fQPrintPreviewWidget_virtualbase_setVisible(self.h, visible)

type QPrintPreviewWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_setVisible(self: ptr cQPrintPreviewWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_setVisible ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QPrintPreviewWidgetdevType*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): cint =
  fQPrintPreviewWidget_virtualbase_devType(self.h)

type QPrintPreviewWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_devType(self: ptr cQPrintPreviewWidget, slot: int): cint {.exportc: "miqt_exec_callback_QPrintPreviewWidget_devType ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPrintPreviewWidgetsizeHint*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQPrintPreviewWidget_virtualbase_sizeHint(self.h))

type QPrintPreviewWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_sizeHint(self: ptr cQPrintPreviewWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_sizeHint ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintPreviewWidgetminimumSizeHint*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQPrintPreviewWidget_virtualbase_minimumSizeHint(self.h))

type QPrintPreviewWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_minimumSizeHint(self: ptr cQPrintPreviewWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintPreviewWidgetheightForWidth*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint): cint =
  fQPrintPreviewWidget_virtualbase_heightForWidth(self.h, param1)

type QPrintPreviewWidgetheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_heightForWidth(self: ptr cQPrintPreviewWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintPreviewWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintPreviewWidgethasHeightForWidth*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): bool =
  fQPrintPreviewWidget_virtualbase_hasHeightForWidth(self.h)

type QPrintPreviewWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_hasHeightForWidth(self: ptr cQPrintPreviewWidget, slot: int): bool {.exportc: "miqt_exec_callback_QPrintPreviewWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPrintPreviewWidgetpaintEngine*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQPrintPreviewWidget_virtualbase_paintEngine(self.h))

type QPrintPreviewWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_paintEngine(self: ptr cQPrintPreviewWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_paintEngine ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintPreviewWidgetevent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQPrintPreviewWidget_virtualbase_event(self.h, event.h)

type QPrintPreviewWidgeteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgeteventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_event(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPrintPreviewWidget_event ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintPreviewWidgetmousePressEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fQPrintPreviewWidget_virtualbase_mousePressEvent(self.h, event.h)

type QPrintPreviewWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_mousePressEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetmouseReleaseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fQPrintPreviewWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QPrintPreviewWidgetmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_mouseReleaseEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetmouseDoubleClickEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fQPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QPrintPreviewWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_mouseDoubleClickEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetmouseMoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMouseEvent): void =
  fQPrintPreviewWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QPrintPreviewWidgetmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_mouseMoveEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetwheelEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QWheelEvent): void =
  fQPrintPreviewWidget_virtualbase_wheelEvent(self.h, event.h)

type QPrintPreviewWidgetwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_wheelEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetkeyPressEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QKeyEvent): void =
  fQPrintPreviewWidget_virtualbase_keyPressEvent(self.h, event.h)

type QPrintPreviewWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_keyPressEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetkeyReleaseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QKeyEvent): void =
  fQPrintPreviewWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QPrintPreviewWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_keyReleaseEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetfocusInEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QFocusEvent): void =
  fQPrintPreviewWidget_virtualbase_focusInEvent(self.h, event.h)

type QPrintPreviewWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_focusInEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetfocusOutEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QFocusEvent): void =
  fQPrintPreviewWidget_virtualbase_focusOutEvent(self.h, event.h)

type QPrintPreviewWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_focusOutEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetenterEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QEnterEvent): void =
  fQPrintPreviewWidget_virtualbase_enterEvent(self.h, event.h)

type QPrintPreviewWidgetenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_enterEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_enterEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetleaveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void =
  fQPrintPreviewWidget_virtualbase_leaveEvent(self.h, event.h)

type QPrintPreviewWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_leaveEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetpaintEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QPaintEvent): void =
  fQPrintPreviewWidget_virtualbase_paintEvent(self.h, event.h)

type QPrintPreviewWidgetpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_paintEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_paintEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetmoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QMoveEvent): void =
  fQPrintPreviewWidget_virtualbase_moveEvent(self.h, event.h)

type QPrintPreviewWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_moveEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_moveEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetresizeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QResizeEvent): void =
  fQPrintPreviewWidget_virtualbase_resizeEvent(self.h, event.h)

type QPrintPreviewWidgetresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_resizeEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetcloseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QCloseEvent): void =
  fQPrintPreviewWidget_virtualbase_closeEvent(self.h, event.h)

type QPrintPreviewWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_closeEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_closeEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetcontextMenuEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fQPrintPreviewWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QPrintPreviewWidgetcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_contextMenuEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgettabletEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QTabletEvent): void =
  fQPrintPreviewWidget_virtualbase_tabletEvent(self.h, event.h)

type QPrintPreviewWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_tabletEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetactionEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QActionEvent): void =
  fQPrintPreviewWidget_virtualbase_actionEvent(self.h, event.h)

type QPrintPreviewWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_actionEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_actionEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetdragEnterEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQPrintPreviewWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QPrintPreviewWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_dragEnterEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetdragMoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fQPrintPreviewWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QPrintPreviewWidgetdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_dragMoveEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetdragLeaveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fQPrintPreviewWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QPrintPreviewWidgetdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_dragLeaveEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetdropEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QDropEvent): void =
  fQPrintPreviewWidget_virtualbase_dropEvent(self.h, event.h)

type QPrintPreviewWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_dropEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_dropEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetshowEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QShowEvent): void =
  fQPrintPreviewWidget_virtualbase_showEvent(self.h, event.h)

type QPrintPreviewWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_showEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_showEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgethideEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qevent_types.QHideEvent): void =
  fQPrintPreviewWidget_virtualbase_hideEvent(self.h, event.h)

type QPrintPreviewWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_hideEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_hideEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetnativeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQPrintPreviewWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPrintPreviewWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_nativeEvent(self: ptr cQPrintPreviewWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QPrintPreviewWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPrintPreviewWidgetchangeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: gen_qcoreevent_types.QEvent): void =
  fQPrintPreviewWidget_virtualbase_changeEvent(self.h, param1.h)

type QPrintPreviewWidgetchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_changeEvent(self: ptr cQPrintPreviewWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_changeEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetmetric*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint): cint =
  fQPrintPreviewWidget_virtualbase_metric(self.h, cint(param1))

type QPrintPreviewWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_metric(self: ptr cQPrintPreviewWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintPreviewWidget_metric ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintPreviewWidgetinitPainter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, painter: gen_qpainter_types.QPainter): void =
  fQPrintPreviewWidget_virtualbase_initPainter(self.h, painter.h)

type QPrintPreviewWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_initPainter(self: ptr cQPrintPreviewWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_initPainter ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetredirected*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQPrintPreviewWidget_virtualbase_redirected(self.h, offset.h))

type QPrintPreviewWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_redirected(self: ptr cQPrintPreviewWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_redirected ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPrintPreviewWidgetsharedPainter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQPrintPreviewWidget_virtualbase_sharedPainter(self.h))

type QPrintPreviewWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_sharedPainter(self: ptr cQPrintPreviewWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintPreviewWidgetinputMethodEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fQPrintPreviewWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QPrintPreviewWidgetinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_inputMethodEvent(self: ptr cQPrintPreviewWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetinputMethodQuery*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQPrintPreviewWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QPrintPreviewWidgetinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_inputMethodQuery(self: ptr cQPrintPreviewWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPrintPreviewWidgetfocusNextPrevChild*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, next: bool): bool =
  fQPrintPreviewWidget_virtualbase_focusNextPrevChild(self.h, next)

type QPrintPreviewWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_focusNextPrevChild(self: ptr cQPrintPreviewWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPrintPreviewWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintPreviewWidgeteventFilter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQPrintPreviewWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPrintPreviewWidgeteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_eventFilter(self: ptr cQPrintPreviewWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPrintPreviewWidget_eventFilter ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPrintPreviewWidgettimerEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPrintPreviewWidget_virtualbase_timerEvent(self.h, event.h)

type QPrintPreviewWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_timerEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_timerEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetchildEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQPrintPreviewWidget_virtualbase_childEvent(self.h, event.h)

type QPrintPreviewWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_childEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_childEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetcustomEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, event: gen_qcoreevent_types.QEvent): void =
  fQPrintPreviewWidget_virtualbase_customEvent(self.h, event.h)

type QPrintPreviewWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_customEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_customEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetconnectNotify*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPrintPreviewWidget_virtualbase_connectNotify(self.h, signal.h)

type QPrintPreviewWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_connectNotify(self: ptr cQPrintPreviewWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_connectNotify ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPrintPreviewWidgetdisconnectNotify*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPrintPreviewWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QPrintPreviewWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget, slot: QPrintPreviewWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_disconnectNotify(self: ptr cQPrintPreviewWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QPrintPreviewWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qprintpreviewwidget_types.QPrintPreviewWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintPreviewWidget_staticMetaObject())
proc delete*(self: gen_qprintpreviewwidget_types.QPrintPreviewWidget) =
  fcQPrintPreviewWidget_delete(self.h)
