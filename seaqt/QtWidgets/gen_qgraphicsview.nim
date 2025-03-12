import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qgraphicsview.cpp", cflags).}


type QGraphicsViewViewportAnchorEnum* = distinct cint
template NoAnchor*(_: type QGraphicsViewViewportAnchorEnum): untyped = 0
template AnchorViewCenter*(_: type QGraphicsViewViewportAnchorEnum): untyped = 1
template AnchorUnderMouse*(_: type QGraphicsViewViewportAnchorEnum): untyped = 2


type QGraphicsViewCacheModeFlagEnum* = distinct cint
template CacheNone*(_: type QGraphicsViewCacheModeFlagEnum): untyped = 0
template CacheBackground*(_: type QGraphicsViewCacheModeFlagEnum): untyped = 1


type QGraphicsViewDragModeEnum* = distinct cint
template NoDrag*(_: type QGraphicsViewDragModeEnum): untyped = 0
template ScrollHandDrag*(_: type QGraphicsViewDragModeEnum): untyped = 1
template RubberBandDrag*(_: type QGraphicsViewDragModeEnum): untyped = 2


type QGraphicsViewViewportUpdateModeEnum* = distinct cint
template FullViewportUpdate*(_: type QGraphicsViewViewportUpdateModeEnum): untyped = 0
template MinimalViewportUpdate*(_: type QGraphicsViewViewportUpdateModeEnum): untyped = 1
template SmartViewportUpdate*(_: type QGraphicsViewViewportUpdateModeEnum): untyped = 2
template NoViewportUpdate*(_: type QGraphicsViewViewportUpdateModeEnum): untyped = 3
template BoundingRectViewportUpdate*(_: type QGraphicsViewViewportUpdateModeEnum): untyped = 4


type QGraphicsViewOptimizationFlagEnum* = distinct cint
template DontClipPainter*(_: type QGraphicsViewOptimizationFlagEnum): untyped = 1
template DontSavePainterState*(_: type QGraphicsViewOptimizationFlagEnum): untyped = 2
template DontAdjustForAntialiasing*(_: type QGraphicsViewOptimizationFlagEnum): untyped = 4
template IndirectPainting*(_: type QGraphicsViewOptimizationFlagEnum): untyped = 8


import ./gen_qgraphicsview_types
export gen_qgraphicsview_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qbrush_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qmatrix_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpainterpath_types,
  ../QtGui/gen_qtransform_types,
  ./gen_qabstractscrollarea,
  ./gen_qgraphicsitem_types,
  ./gen_qgraphicsscene_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmargins_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qbrush_types,
  gen_qevent_types,
  gen_qmatrix_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpainterpath_types,
  gen_qtransform_types,
  gen_qabstractscrollarea,
  gen_qgraphicsitem_types,
  gen_qgraphicsscene_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQGraphicsView*{.exportc: "QGraphicsView", incompleteStruct.} = object

proc fcQGraphicsView_metaObject(self: pointer): pointer {.importc: "QGraphicsView_metaObject".}
proc fcQGraphicsView_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsView_metacast".}
proc fcQGraphicsView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsView_metacall".}
proc fcQGraphicsView_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsView_tr".}
proc fcQGraphicsView_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsView_trUtf8".}
proc fcQGraphicsView_sizeHint(self: pointer): pointer {.importc: "QGraphicsView_sizeHint".}
proc fcQGraphicsView_renderHints(self: pointer): cint {.importc: "QGraphicsView_renderHints".}
proc fcQGraphicsView_setRenderHint(self: pointer, hint: cint): void {.importc: "QGraphicsView_setRenderHint".}
proc fcQGraphicsView_setRenderHints(self: pointer, hints: cint): void {.importc: "QGraphicsView_setRenderHints".}
proc fcQGraphicsView_alignment(self: pointer): cint {.importc: "QGraphicsView_alignment".}
proc fcQGraphicsView_setAlignment(self: pointer, alignment: cint): void {.importc: "QGraphicsView_setAlignment".}
proc fcQGraphicsView_transformationAnchor(self: pointer): cint {.importc: "QGraphicsView_transformationAnchor".}
proc fcQGraphicsView_setTransformationAnchor(self: pointer, anchor: cint): void {.importc: "QGraphicsView_setTransformationAnchor".}
proc fcQGraphicsView_resizeAnchor(self: pointer): cint {.importc: "QGraphicsView_resizeAnchor".}
proc fcQGraphicsView_setResizeAnchor(self: pointer, anchor: cint): void {.importc: "QGraphicsView_setResizeAnchor".}
proc fcQGraphicsView_viewportUpdateMode(self: pointer): cint {.importc: "QGraphicsView_viewportUpdateMode".}
proc fcQGraphicsView_setViewportUpdateMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setViewportUpdateMode".}
proc fcQGraphicsView_optimizationFlags(self: pointer): cint {.importc: "QGraphicsView_optimizationFlags".}
proc fcQGraphicsView_setOptimizationFlag(self: pointer, flag: cint): void {.importc: "QGraphicsView_setOptimizationFlag".}
proc fcQGraphicsView_setOptimizationFlags(self: pointer, flags: cint): void {.importc: "QGraphicsView_setOptimizationFlags".}
proc fcQGraphicsView_dragMode(self: pointer): cint {.importc: "QGraphicsView_dragMode".}
proc fcQGraphicsView_setDragMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setDragMode".}
proc fcQGraphicsView_rubberBandSelectionMode(self: pointer): cint {.importc: "QGraphicsView_rubberBandSelectionMode".}
proc fcQGraphicsView_setRubberBandSelectionMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setRubberBandSelectionMode".}
proc fcQGraphicsView_rubberBandRect(self: pointer): pointer {.importc: "QGraphicsView_rubberBandRect".}
proc fcQGraphicsView_cacheMode(self: pointer): cint {.importc: "QGraphicsView_cacheMode".}
proc fcQGraphicsView_setCacheMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setCacheMode".}
proc fcQGraphicsView_resetCachedContent(self: pointer): void {.importc: "QGraphicsView_resetCachedContent".}
proc fcQGraphicsView_isInteractive(self: pointer): bool {.importc: "QGraphicsView_isInteractive".}
proc fcQGraphicsView_setInteractive(self: pointer, allowed: bool): void {.importc: "QGraphicsView_setInteractive".}
proc fcQGraphicsView_scene(self: pointer): pointer {.importc: "QGraphicsView_scene".}
proc fcQGraphicsView_setScene(self: pointer, scene: pointer): void {.importc: "QGraphicsView_setScene".}
proc fcQGraphicsView_sceneRect(self: pointer): pointer {.importc: "QGraphicsView_sceneRect".}
proc fcQGraphicsView_setSceneRect(self: pointer, rect: pointer): void {.importc: "QGraphicsView_setSceneRect".}
proc fcQGraphicsView_setSceneRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsView_setSceneRect2".}
proc fcQGraphicsView_matrix(self: pointer): pointer {.importc: "QGraphicsView_matrix".}
proc fcQGraphicsView_setMatrix(self: pointer, matrix: pointer): void {.importc: "QGraphicsView_setMatrix".}
proc fcQGraphicsView_resetMatrix(self: pointer): void {.importc: "QGraphicsView_resetMatrix".}
proc fcQGraphicsView_transform(self: pointer): pointer {.importc: "QGraphicsView_transform".}
proc fcQGraphicsView_viewportTransform(self: pointer): pointer {.importc: "QGraphicsView_viewportTransform".}
proc fcQGraphicsView_isTransformed(self: pointer): bool {.importc: "QGraphicsView_isTransformed".}
proc fcQGraphicsView_setTransform(self: pointer, matrix: pointer): void {.importc: "QGraphicsView_setTransform".}
proc fcQGraphicsView_resetTransform(self: pointer): void {.importc: "QGraphicsView_resetTransform".}
proc fcQGraphicsView_rotate(self: pointer, angle: float64): void {.importc: "QGraphicsView_rotate".}
proc fcQGraphicsView_scale(self: pointer, sx: float64, sy: float64): void {.importc: "QGraphicsView_scale".}
proc fcQGraphicsView_shear(self: pointer, sh: float64, sv: float64): void {.importc: "QGraphicsView_shear".}
proc fcQGraphicsView_translate(self: pointer, dx: float64, dy: float64): void {.importc: "QGraphicsView_translate".}
proc fcQGraphicsView_centerOn(self: pointer, pos: pointer): void {.importc: "QGraphicsView_centerOn".}
proc fcQGraphicsView_centerOn2(self: pointer, x: float64, y: float64): void {.importc: "QGraphicsView_centerOn2".}
proc fcQGraphicsView_centerOnWithItem(self: pointer, item: pointer): void {.importc: "QGraphicsView_centerOnWithItem".}
proc fcQGraphicsView_ensureVisible(self: pointer, rect: pointer): void {.importc: "QGraphicsView_ensureVisible".}
proc fcQGraphicsView_ensureVisible2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsView_ensureVisible2".}
proc fcQGraphicsView_ensureVisibleWithItem(self: pointer, item: pointer): void {.importc: "QGraphicsView_ensureVisibleWithItem".}
proc fcQGraphicsView_fitInView(self: pointer, rect: pointer): void {.importc: "QGraphicsView_fitInView".}
proc fcQGraphicsView_fitInView2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsView_fitInView2".}
proc fcQGraphicsView_fitInViewWithItem(self: pointer, item: pointer): void {.importc: "QGraphicsView_fitInViewWithItem".}
proc fcQGraphicsView_render(self: pointer, painter: pointer): void {.importc: "QGraphicsView_render".}
proc fcQGraphicsView_items(self: pointer): struct_miqt_array {.importc: "QGraphicsView_items".}
proc fcQGraphicsView_itemsWithPos(self: pointer, pos: pointer): struct_miqt_array {.importc: "QGraphicsView_itemsWithPos".}
proc fcQGraphicsView_items2(self: pointer, x: cint, y: cint): struct_miqt_array {.importc: "QGraphicsView_items2".}
proc fcQGraphicsView_itemsWithRect(self: pointer, rect: pointer): struct_miqt_array {.importc: "QGraphicsView_itemsWithRect".}
proc fcQGraphicsView_items3(self: pointer, x: cint, y: cint, w: cint, h: cint): struct_miqt_array {.importc: "QGraphicsView_items3".}
proc fcQGraphicsView_itemsWithPath(self: pointer, path: pointer): struct_miqt_array {.importc: "QGraphicsView_itemsWithPath".}
proc fcQGraphicsView_itemAt(self: pointer, pos: pointer): pointer {.importc: "QGraphicsView_itemAt".}
proc fcQGraphicsView_itemAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QGraphicsView_itemAt2".}
proc fcQGraphicsView_mapToScene(self: pointer, point: pointer): pointer {.importc: "QGraphicsView_mapToScene".}
proc fcQGraphicsView_mapToSceneWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsView_mapToSceneWithPath".}
proc fcQGraphicsView_mapFromScene(self: pointer, point: pointer): pointer {.importc: "QGraphicsView_mapFromScene".}
proc fcQGraphicsView_mapFromSceneWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsView_mapFromSceneWithPath".}
proc fcQGraphicsView_mapToScene2(self: pointer, x: cint, y: cint): pointer {.importc: "QGraphicsView_mapToScene2".}
proc fcQGraphicsView_mapFromScene2(self: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsView_mapFromScene2".}
proc fcQGraphicsView_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsView_inputMethodQuery".}
proc fcQGraphicsView_backgroundBrush(self: pointer): pointer {.importc: "QGraphicsView_backgroundBrush".}
proc fcQGraphicsView_setBackgroundBrush(self: pointer, brush: pointer): void {.importc: "QGraphicsView_setBackgroundBrush".}
proc fcQGraphicsView_foregroundBrush(self: pointer): pointer {.importc: "QGraphicsView_foregroundBrush".}
proc fcQGraphicsView_setForegroundBrush(self: pointer, brush: pointer): void {.importc: "QGraphicsView_setForegroundBrush".}
proc fcQGraphicsView_updateScene(self: pointer, rects: struct_miqt_array): void {.importc: "QGraphicsView_updateScene".}
proc fcQGraphicsView_invalidateScene(self: pointer): void {.importc: "QGraphicsView_invalidateScene".}
proc fcQGraphicsView_updateSceneRect(self: pointer, rect: pointer): void {.importc: "QGraphicsView_updateSceneRect".}
proc fcQGraphicsView_rubberBandChanged(self: pointer, viewportRect: pointer, fromScenePoint: pointer, toScenePoint: pointer): void {.importc: "QGraphicsView_rubberBandChanged".}
proc fcQGraphicsView_connect_rubberBandChanged(self: pointer, slot: int, callback: proc (slot: int, viewportRect: pointer, fromScenePoint: pointer, toScenePoint: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsView_connect_rubberBandChanged".}
proc fcQGraphicsView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsView_tr2".}
proc fcQGraphicsView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsView_tr3".}
proc fcQGraphicsView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsView_trUtf82".}
proc fcQGraphicsView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsView_trUtf83".}
proc fcQGraphicsView_setRenderHint2(self: pointer, hint: cint, enabled: bool): void {.importc: "QGraphicsView_setRenderHint2".}
proc fcQGraphicsView_setOptimizationFlag2(self: pointer, flag: cint, enabled: bool): void {.importc: "QGraphicsView_setOptimizationFlag2".}
proc fcQGraphicsView_setMatrix2(self: pointer, matrix: pointer, combine: bool): void {.importc: "QGraphicsView_setMatrix2".}
proc fcQGraphicsView_setTransform2(self: pointer, matrix: pointer, combine: bool): void {.importc: "QGraphicsView_setTransform2".}
proc fcQGraphicsView_ensureVisible22(self: pointer, rect: pointer, xmargin: cint): void {.importc: "QGraphicsView_ensureVisible22".}
proc fcQGraphicsView_ensureVisible3(self: pointer, rect: pointer, xmargin: cint, ymargin: cint): void {.importc: "QGraphicsView_ensureVisible3".}
proc fcQGraphicsView_ensureVisible5(self: pointer, x: float64, y: float64, w: float64, h: float64, xmargin: cint): void {.importc: "QGraphicsView_ensureVisible5".}
proc fcQGraphicsView_ensureVisible6(self: pointer, x: float64, y: float64, w: float64, h: float64, xmargin: cint, ymargin: cint): void {.importc: "QGraphicsView_ensureVisible6".}
proc fcQGraphicsView_ensureVisible23(self: pointer, item: pointer, xmargin: cint): void {.importc: "QGraphicsView_ensureVisible23".}
proc fcQGraphicsView_ensureVisible32(self: pointer, item: pointer, xmargin: cint, ymargin: cint): void {.importc: "QGraphicsView_ensureVisible32".}
proc fcQGraphicsView_fitInView22(self: pointer, rect: pointer, aspectRadioMode: cint): void {.importc: "QGraphicsView_fitInView22".}
proc fcQGraphicsView_fitInView5(self: pointer, x: float64, y: float64, w: float64, h: float64, aspectRadioMode: cint): void {.importc: "QGraphicsView_fitInView5".}
proc fcQGraphicsView_fitInView23(self: pointer, item: pointer, aspectRadioMode: cint): void {.importc: "QGraphicsView_fitInView23".}
proc fcQGraphicsView_render2(self: pointer, painter: pointer, target: pointer): void {.importc: "QGraphicsView_render2".}
proc fcQGraphicsView_render3(self: pointer, painter: pointer, target: pointer, source: pointer): void {.importc: "QGraphicsView_render3".}
proc fcQGraphicsView_render4(self: pointer, painter: pointer, target: pointer, source: pointer, aspectRatioMode: cint): void {.importc: "QGraphicsView_render4".}
proc fcQGraphicsView_items22(self: pointer, rect: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsView_items22".}
proc fcQGraphicsView_items5(self: pointer, x: cint, y: cint, w: cint, h: cint, mode: cint): struct_miqt_array {.importc: "QGraphicsView_items5".}
proc fcQGraphicsView_items24(self: pointer, path: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsView_items24".}
proc fcQGraphicsView_invalidateScene1(self: pointer, rect: pointer): void {.importc: "QGraphicsView_invalidateScene1".}
proc fcQGraphicsView_invalidateScene2(self: pointer, rect: pointer, layers: cint): void {.importc: "QGraphicsView_invalidateScene2".}
proc fcQGraphicsView_vtbl(self: pointer): pointer {.importc: "QGraphicsView_vtbl".}
proc fcQGraphicsView_vdata(self: pointer): pointer {.importc: "QGraphicsView_vdata".}
type cQGraphicsViewVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  drawBackground*: proc(self: pointer, painter: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  drawForeground*: proc(self: pointer, painter: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsView_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsView_virtualbase_metaObject".}
proc fcQGraphicsView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsView_virtualbase_metacast".}
proc fcQGraphicsView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsView_virtualbase_metacall".}
proc fcQGraphicsView_virtualbase_sizeHint(self: pointer): pointer {.importc: "QGraphicsView_virtualbase_sizeHint".}
proc fcQGraphicsView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsView_virtualbase_inputMethodQuery".}
proc fcQGraphicsView_virtualbase_setupViewport(self: pointer, widget: pointer): void {.importc: "QGraphicsView_virtualbase_setupViewport".}
proc fcQGraphicsView_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsView_virtualbase_event".}
proc fcQGraphicsView_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsView_virtualbase_viewportEvent".}
proc fcQGraphicsView_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_contextMenuEvent".}
proc fcQGraphicsView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_dragEnterEvent".}
proc fcQGraphicsView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_dragLeaveEvent".}
proc fcQGraphicsView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_dragMoveEvent".}
proc fcQGraphicsView_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_dropEvent".}
proc fcQGraphicsView_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_focusInEvent".}
proc fcQGraphicsView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QGraphicsView_virtualbase_focusNextPrevChild".}
proc fcQGraphicsView_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_focusOutEvent".}
proc fcQGraphicsView_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_keyPressEvent".}
proc fcQGraphicsView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_keyReleaseEvent".}
proc fcQGraphicsView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsView_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_mousePressEvent".}
proc fcQGraphicsView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_mouseMoveEvent".}
proc fcQGraphicsView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsView_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_wheelEvent".}
proc fcQGraphicsView_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_paintEvent".}
proc fcQGraphicsView_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_resizeEvent".}
proc fcQGraphicsView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QGraphicsView_virtualbase_scrollContentsBy".}
proc fcQGraphicsView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_showEvent".}
proc fcQGraphicsView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_inputMethodEvent".}
proc fcQGraphicsView_virtualbase_drawBackground(self: pointer, painter: pointer, rect: pointer): void {.importc: "QGraphicsView_virtualbase_drawBackground".}
proc fcQGraphicsView_virtualbase_drawForeground(self: pointer, painter: pointer, rect: pointer): void {.importc: "QGraphicsView_virtualbase_drawForeground".}
proc fcQGraphicsView_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QGraphicsView_virtualbase_minimumSizeHint".}
proc fcQGraphicsView_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QGraphicsView_virtualbase_eventFilter".}
proc fcQGraphicsView_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QGraphicsView_virtualbase_viewportSizeHint".}
proc fcQGraphicsView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsView_virtualbase_changeEvent".}
proc fcQGraphicsView_virtualbase_devType(self: pointer): cint {.importc: "QGraphicsView_virtualbase_devType".}
proc fcQGraphicsView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QGraphicsView_virtualbase_setVisible".}
proc fcQGraphicsView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QGraphicsView_virtualbase_heightForWidth".}
proc fcQGraphicsView_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QGraphicsView_virtualbase_hasHeightForWidth".}
proc fcQGraphicsView_virtualbase_paintEngine(self: pointer): pointer {.importc: "QGraphicsView_virtualbase_paintEngine".}
proc fcQGraphicsView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_enterEvent".}
proc fcQGraphicsView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_leaveEvent".}
proc fcQGraphicsView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_moveEvent".}
proc fcQGraphicsView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_closeEvent".}
proc fcQGraphicsView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_tabletEvent".}
proc fcQGraphicsView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_actionEvent".}
proc fcQGraphicsView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_hideEvent".}
proc fcQGraphicsView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QGraphicsView_virtualbase_nativeEvent".}
proc fcQGraphicsView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QGraphicsView_virtualbase_metric".}
proc fcQGraphicsView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QGraphicsView_virtualbase_initPainter".}
proc fcQGraphicsView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QGraphicsView_virtualbase_redirected".}
proc fcQGraphicsView_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QGraphicsView_virtualbase_sharedPainter".}
proc fcQGraphicsView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_timerEvent".}
proc fcQGraphicsView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_childEvent".}
proc fcQGraphicsView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_customEvent".}
proc fcQGraphicsView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsView_virtualbase_connectNotify".}
proc fcQGraphicsView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsView_virtualbase_disconnectNotify".}
proc fcQGraphicsView_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QGraphicsView_protectedbase_setViewportMargins".}
proc fcQGraphicsView_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QGraphicsView_protectedbase_viewportMargins".}
proc fcQGraphicsView_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QGraphicsView_protectedbase_drawFrame".}
proc fcQGraphicsView_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QGraphicsView_protectedbase_initStyleOption".}
proc fcQGraphicsView_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QGraphicsView_protectedbase_updateMicroFocus".}
proc fcQGraphicsView_protectedbase_create(self: pointer): void {.importc: "QGraphicsView_protectedbase_create".}
proc fcQGraphicsView_protectedbase_destroy(self: pointer): void {.importc: "QGraphicsView_protectedbase_destroy".}
proc fcQGraphicsView_protectedbase_focusNextChild(self: pointer): bool {.importc: "QGraphicsView_protectedbase_focusNextChild".}
proc fcQGraphicsView_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QGraphicsView_protectedbase_focusPreviousChild".}
proc fcQGraphicsView_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsView_protectedbase_sender".}
proc fcQGraphicsView_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsView_protectedbase_senderSignalIndex".}
proc fcQGraphicsView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsView_protectedbase_receivers".}
proc fcQGraphicsView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsView_protectedbase_isSignalConnected".}
proc fcQGraphicsView_new(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new".}
proc fcQGraphicsView_new2(vtbl, vdata: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new2".}
proc fcQGraphicsView_new3(vtbl, vdata: pointer, scene: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new3".}
proc fcQGraphicsView_new4(vtbl, vdata: pointer, scene: pointer, parent: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new4".}
proc fcQGraphicsView_staticMetaObject(): pointer {.importc: "QGraphicsView_staticMetaObject".}

proc metaObject*(self: gen_qgraphicsview_types.QGraphicsView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsView_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicsview_types.QGraphicsView, param1: cstring): pointer =
  fcQGraphicsView_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsview_types.QGraphicsView, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsview_types.QGraphicsView, s: cstring): string =
  let v_ms = fcQGraphicsView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsview_types.QGraphicsView, s: cstring): string =
  let v_ms = fcQGraphicsView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qgraphicsview_types.QGraphicsView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGraphicsView_sizeHint(self.h), owned: true)

proc renderHints*(self: gen_qgraphicsview_types.QGraphicsView): cint =
  cint(fcQGraphicsView_renderHints(self.h))

proc setRenderHint*(self: gen_qgraphicsview_types.QGraphicsView, hint: cint): void =
  fcQGraphicsView_setRenderHint(self.h, cint(hint))

proc setRenderHints*(self: gen_qgraphicsview_types.QGraphicsView, hints: cint): void =
  fcQGraphicsView_setRenderHints(self.h, cint(hints))

proc alignment*(self: gen_qgraphicsview_types.QGraphicsView): cint =
  cint(fcQGraphicsView_alignment(self.h))

proc setAlignment*(self: gen_qgraphicsview_types.QGraphicsView, alignment: cint): void =
  fcQGraphicsView_setAlignment(self.h, cint(alignment))

proc transformationAnchor*(self: gen_qgraphicsview_types.QGraphicsView): cint =
  cint(fcQGraphicsView_transformationAnchor(self.h))

proc setTransformationAnchor*(self: gen_qgraphicsview_types.QGraphicsView, anchor: cint): void =
  fcQGraphicsView_setTransformationAnchor(self.h, cint(anchor))

proc resizeAnchor*(self: gen_qgraphicsview_types.QGraphicsView): cint =
  cint(fcQGraphicsView_resizeAnchor(self.h))

proc setResizeAnchor*(self: gen_qgraphicsview_types.QGraphicsView, anchor: cint): void =
  fcQGraphicsView_setResizeAnchor(self.h, cint(anchor))

proc viewportUpdateMode*(self: gen_qgraphicsview_types.QGraphicsView): cint =
  cint(fcQGraphicsView_viewportUpdateMode(self.h))

proc setViewportUpdateMode*(self: gen_qgraphicsview_types.QGraphicsView, mode: cint): void =
  fcQGraphicsView_setViewportUpdateMode(self.h, cint(mode))

proc optimizationFlags*(self: gen_qgraphicsview_types.QGraphicsView): cint =
  cint(fcQGraphicsView_optimizationFlags(self.h))

proc setOptimizationFlag*(self: gen_qgraphicsview_types.QGraphicsView, flag: cint): void =
  fcQGraphicsView_setOptimizationFlag(self.h, cint(flag))

proc setOptimizationFlags*(self: gen_qgraphicsview_types.QGraphicsView, flags: cint): void =
  fcQGraphicsView_setOptimizationFlags(self.h, cint(flags))

proc dragMode*(self: gen_qgraphicsview_types.QGraphicsView): cint =
  cint(fcQGraphicsView_dragMode(self.h))

proc setDragMode*(self: gen_qgraphicsview_types.QGraphicsView, mode: cint): void =
  fcQGraphicsView_setDragMode(self.h, cint(mode))

proc rubberBandSelectionMode*(self: gen_qgraphicsview_types.QGraphicsView): cint =
  cint(fcQGraphicsView_rubberBandSelectionMode(self.h))

proc setRubberBandSelectionMode*(self: gen_qgraphicsview_types.QGraphicsView, mode: cint): void =
  fcQGraphicsView_setRubberBandSelectionMode(self.h, cint(mode))

proc rubberBandRect*(self: gen_qgraphicsview_types.QGraphicsView): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQGraphicsView_rubberBandRect(self.h), owned: true)

proc cacheMode*(self: gen_qgraphicsview_types.QGraphicsView): cint =
  cint(fcQGraphicsView_cacheMode(self.h))

proc setCacheMode*(self: gen_qgraphicsview_types.QGraphicsView, mode: cint): void =
  fcQGraphicsView_setCacheMode(self.h, cint(mode))

proc resetCachedContent*(self: gen_qgraphicsview_types.QGraphicsView): void =
  fcQGraphicsView_resetCachedContent(self.h)

proc isInteractive*(self: gen_qgraphicsview_types.QGraphicsView): bool =
  fcQGraphicsView_isInteractive(self.h)

proc setInteractive*(self: gen_qgraphicsview_types.QGraphicsView, allowed: bool): void =
  fcQGraphicsView_setInteractive(self.h, allowed)

proc scene*(self: gen_qgraphicsview_types.QGraphicsView): gen_qgraphicsscene_types.QGraphicsScene =
  gen_qgraphicsscene_types.QGraphicsScene(h: fcQGraphicsView_scene(self.h), owned: false)

proc setScene*(self: gen_qgraphicsview_types.QGraphicsView, scene: gen_qgraphicsscene_types.QGraphicsScene): void =
  fcQGraphicsView_setScene(self.h, scene.h)

proc sceneRect*(self: gen_qgraphicsview_types.QGraphicsView): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsView_sceneRect(self.h), owned: true)

proc setSceneRect*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsView_setSceneRect(self.h, rect.h)

proc setSceneRect*(self: gen_qgraphicsview_types.QGraphicsView, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsView_setSceneRect2(self.h, x, y, w, h)

proc matrix*(self: gen_qgraphicsview_types.QGraphicsView): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQGraphicsView_matrix(self.h), owned: true)

proc setMatrix*(self: gen_qgraphicsview_types.QGraphicsView, matrix: gen_qmatrix_types.QMatrix): void =
  fcQGraphicsView_setMatrix(self.h, matrix.h)

proc resetMatrix*(self: gen_qgraphicsview_types.QGraphicsView): void =
  fcQGraphicsView_resetMatrix(self.h)

proc transform*(self: gen_qgraphicsview_types.QGraphicsView): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQGraphicsView_transform(self.h), owned: true)

proc viewportTransform*(self: gen_qgraphicsview_types.QGraphicsView): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQGraphicsView_viewportTransform(self.h), owned: true)

proc isTransformed*(self: gen_qgraphicsview_types.QGraphicsView): bool =
  fcQGraphicsView_isTransformed(self.h)

proc setTransform*(self: gen_qgraphicsview_types.QGraphicsView, matrix: gen_qtransform_types.QTransform): void =
  fcQGraphicsView_setTransform(self.h, matrix.h)

proc resetTransform*(self: gen_qgraphicsview_types.QGraphicsView): void =
  fcQGraphicsView_resetTransform(self.h)

proc rotate*(self: gen_qgraphicsview_types.QGraphicsView, angle: float64): void =
  fcQGraphicsView_rotate(self.h, angle)

proc scale*(self: gen_qgraphicsview_types.QGraphicsView, sx: float64, sy: float64): void =
  fcQGraphicsView_scale(self.h, sx, sy)

proc shear*(self: gen_qgraphicsview_types.QGraphicsView, sh: float64, sv: float64): void =
  fcQGraphicsView_shear(self.h, sh, sv)

proc translate*(self: gen_qgraphicsview_types.QGraphicsView, dx: float64, dy: float64): void =
  fcQGraphicsView_translate(self.h, dx, dy)

proc centerOn*(self: gen_qgraphicsview_types.QGraphicsView, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsView_centerOn(self.h, pos.h)

proc centerOn*(self: gen_qgraphicsview_types.QGraphicsView, x: float64, y: float64): void =
  fcQGraphicsView_centerOn2(self.h, x, y)

proc centerOn*(self: gen_qgraphicsview_types.QGraphicsView, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsView_centerOnWithItem(self.h, item.h)

proc ensureVisible*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsView_ensureVisible(self.h, rect.h)

proc ensureVisible*(self: gen_qgraphicsview_types.QGraphicsView, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsView_ensureVisible2(self.h, x, y, w, h)

proc ensureVisible*(self: gen_qgraphicsview_types.QGraphicsView, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsView_ensureVisibleWithItem(self.h, item.h)

proc fitInView*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsView_fitInView(self.h, rect.h)

proc fitInView*(self: gen_qgraphicsview_types.QGraphicsView, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsView_fitInView2(self.h, x, y, w, h)

proc fitInView*(self: gen_qgraphicsview_types.QGraphicsView, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsView_fitInViewWithItem(self.h, item.h)

proc render*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsView_render(self.h, painter.h)

proc items*(self: gen_qgraphicsview_types.QGraphicsView): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_items(self.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, pos: gen_qpoint_types.QPoint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_itemsWithPos(self.h, pos.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, x: cint, y: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_items2(self.h, x, y)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRect): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_itemsWithRect(self.h, rect.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, x: cint, y: cint, w: cint, h: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_items3(self.h, x, y, w, h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, path: gen_qpainterpath_types.QPainterPath): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_itemsWithPath(self.h, path.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc itemAt*(self: gen_qgraphicsview_types.QGraphicsView, pos: gen_qpoint_types.QPoint): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsView_itemAt(self.h, pos.h), owned: false)

proc itemAt*(self: gen_qgraphicsview_types.QGraphicsView, x: cint, y: cint): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsView_itemAt2(self.h, x, y), owned: false)

proc mapToScene*(self: gen_qgraphicsview_types.QGraphicsView, point: gen_qpoint_types.QPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsView_mapToScene(self.h, point.h), owned: true)

proc mapToScene*(self: gen_qgraphicsview_types.QGraphicsView, path: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsView_mapToSceneWithPath(self.h, path.h), owned: true)

proc mapFromScene*(self: gen_qgraphicsview_types.QGraphicsView, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsView_mapFromScene(self.h, point.h), owned: true)

proc mapFromScene*(self: gen_qgraphicsview_types.QGraphicsView, path: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsView_mapFromSceneWithPath(self.h, path.h), owned: true)

proc mapToScene*(self: gen_qgraphicsview_types.QGraphicsView, x: cint, y: cint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsView_mapToScene2(self.h, x, y), owned: true)

proc mapFromScene*(self: gen_qgraphicsview_types.QGraphicsView, x: float64, y: float64): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsView_mapFromScene2(self.h, x, y), owned: true)

proc inputMethodQuery*(self: gen_qgraphicsview_types.QGraphicsView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsView_inputMethodQuery(self.h, cint(query)), owned: true)

proc backgroundBrush*(self: gen_qgraphicsview_types.QGraphicsView): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQGraphicsView_backgroundBrush(self.h), owned: true)

proc setBackgroundBrush*(self: gen_qgraphicsview_types.QGraphicsView, brush: gen_qbrush_types.QBrush): void =
  fcQGraphicsView_setBackgroundBrush(self.h, brush.h)

proc foregroundBrush*(self: gen_qgraphicsview_types.QGraphicsView): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQGraphicsView_foregroundBrush(self.h), owned: true)

proc setForegroundBrush*(self: gen_qgraphicsview_types.QGraphicsView, brush: gen_qbrush_types.QBrush): void =
  fcQGraphicsView_setForegroundBrush(self.h, brush.h)

proc updateScene*(self: gen_qgraphicsview_types.QGraphicsView, rects: seq[gen_qrect_types.QRectF]): void =
  var rects_CArray = newSeq[pointer](len(rects))
  for i in 0..<len(rects):
    rects_CArray[i] = rects[i].h

  fcQGraphicsView_updateScene(self.h, struct_miqt_array(len: csize_t(len(rects)), data: if len(rects) == 0: nil else: addr(rects_CArray[0])))

proc invalidateScene*(self: gen_qgraphicsview_types.QGraphicsView): void =
  fcQGraphicsView_invalidateScene(self.h)

proc updateSceneRect*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsView_updateSceneRect(self.h, rect.h)

proc rubberBandChanged*(self: gen_qgraphicsview_types.QGraphicsView, viewportRect: gen_qrect_types.QRect, fromScenePoint: gen_qpoint_types.QPointF, toScenePoint: gen_qpoint_types.QPointF): void =
  fcQGraphicsView_rubberBandChanged(self.h, viewportRect.h, fromScenePoint.h, toScenePoint.h)

type QGraphicsViewrubberBandChangedSlot* = proc(viewportRect: gen_qrect_types.QRect, fromScenePoint: gen_qpoint_types.QPointF, toScenePoint: gen_qpoint_types.QPointF)
proc cQGraphicsView_slot_callback_rubberBandChanged(slot: int, viewportRect: pointer, fromScenePoint: pointer, toScenePoint: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsViewrubberBandChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: viewportRect, owned: true)

  let slotval2 = gen_qpoint_types.QPointF(h: fromScenePoint, owned: true)

  let slotval3 = gen_qpoint_types.QPointF(h: toScenePoint, owned: true)

  nimfunc[](slotval1, slotval2, slotval3)

proc cQGraphicsView_slot_callback_rubberBandChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsViewrubberBandChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrubberBandChanged*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewrubberBandChangedSlot) =
  var tmp = new QGraphicsViewrubberBandChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_connect_rubberBandChanged(self.h, cast[int](addr tmp[]), cQGraphicsView_slot_callback_rubberBandChanged, cQGraphicsView_slot_callback_rubberBandChanged_release)

proc tr*(_: type gen_qgraphicsview_types.QGraphicsView, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicsview_types.QGraphicsView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsview_types.QGraphicsView, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsview_types.QGraphicsView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setRenderHint*(self: gen_qgraphicsview_types.QGraphicsView, hint: cint, enabled: bool): void =
  fcQGraphicsView_setRenderHint2(self.h, cint(hint), enabled)

proc setOptimizationFlag*(self: gen_qgraphicsview_types.QGraphicsView, flag: cint, enabled: bool): void =
  fcQGraphicsView_setOptimizationFlag2(self.h, cint(flag), enabled)

proc setMatrix*(self: gen_qgraphicsview_types.QGraphicsView, matrix: gen_qmatrix_types.QMatrix, combine: bool): void =
  fcQGraphicsView_setMatrix2(self.h, matrix.h, combine)

proc setTransform*(self: gen_qgraphicsview_types.QGraphicsView, matrix: gen_qtransform_types.QTransform, combine: bool): void =
  fcQGraphicsView_setTransform2(self.h, matrix.h, combine)

proc ensureVisible*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRectF, xmargin: cint): void =
  fcQGraphicsView_ensureVisible22(self.h, rect.h, xmargin)

proc ensureVisible*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRectF, xmargin: cint, ymargin: cint): void =
  fcQGraphicsView_ensureVisible3(self.h, rect.h, xmargin, ymargin)

proc ensureVisible*(self: gen_qgraphicsview_types.QGraphicsView, x: float64, y: float64, w: float64, h: float64, xmargin: cint): void =
  fcQGraphicsView_ensureVisible5(self.h, x, y, w, h, xmargin)

proc ensureVisible*(self: gen_qgraphicsview_types.QGraphicsView, x: float64, y: float64, w: float64, h: float64, xmargin: cint, ymargin: cint): void =
  fcQGraphicsView_ensureVisible6(self.h, x, y, w, h, xmargin, ymargin)

proc ensureVisible*(self: gen_qgraphicsview_types.QGraphicsView, item: gen_qgraphicsitem_types.QGraphicsItem, xmargin: cint): void =
  fcQGraphicsView_ensureVisible23(self.h, item.h, xmargin)

proc ensureVisible*(self: gen_qgraphicsview_types.QGraphicsView, item: gen_qgraphicsitem_types.QGraphicsItem, xmargin: cint, ymargin: cint): void =
  fcQGraphicsView_ensureVisible32(self.h, item.h, xmargin, ymargin)

proc fitInView*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRectF, aspectRadioMode: cint): void =
  fcQGraphicsView_fitInView22(self.h, rect.h, cint(aspectRadioMode))

proc fitInView*(self: gen_qgraphicsview_types.QGraphicsView, x: float64, y: float64, w: float64, h: float64, aspectRadioMode: cint): void =
  fcQGraphicsView_fitInView5(self.h, x, y, w, h, cint(aspectRadioMode))

proc fitInView*(self: gen_qgraphicsview_types.QGraphicsView, item: gen_qgraphicsitem_types.QGraphicsItem, aspectRadioMode: cint): void =
  fcQGraphicsView_fitInView23(self.h, item.h, cint(aspectRadioMode))

proc render*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter, target: gen_qrect_types.QRectF): void =
  fcQGraphicsView_render2(self.h, painter.h, target.h)

proc render*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter, target: gen_qrect_types.QRectF, source: gen_qrect_types.QRect): void =
  fcQGraphicsView_render3(self.h, painter.h, target.h, source.h)

proc render*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter, target: gen_qrect_types.QRectF, source: gen_qrect_types.QRect, aspectRatioMode: cint): void =
  fcQGraphicsView_render4(self.h, painter.h, target.h, source.h, cint(aspectRatioMode))

proc items*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRect, mode: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_items22(self.h, rect.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, x: cint, y: cint, w: cint, h: cint, mode: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_items5(self.h, x, y, w, h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, path: gen_qpainterpath_types.QPainterPath, mode: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_items24(self.h, path.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc invalidateScene*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsView_invalidateScene1(self.h, rect.h)

proc invalidateScene*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRectF, layers: cint): void =
  fcQGraphicsView_invalidateScene2(self.h, rect.h, cint(layers))

type QGraphicsViewmetaObjectProc* = proc(self: QGraphicsView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsViewmetacastProc* = proc(self: QGraphicsView, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsViewmetacallProc* = proc(self: QGraphicsView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsViewsizeHintProc* = proc(self: QGraphicsView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QGraphicsViewinputMethodQueryProc* = proc(self: QGraphicsView, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsViewsetupViewportProc* = proc(self: QGraphicsView, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsVieweventProc* = proc(self: QGraphicsView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsViewviewportEventProc* = proc(self: QGraphicsView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsViewcontextMenuEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsViewdragEnterEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QGraphicsViewdragLeaveEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QGraphicsViewdragMoveEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QGraphicsViewdropEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QGraphicsViewfocusInEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsViewfocusNextPrevChildProc* = proc(self: QGraphicsView, next: bool): bool {.raises: [], gcsafe.}
type QGraphicsViewfocusOutEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsViewkeyPressEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsViewkeyReleaseEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsViewmouseDoubleClickEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsViewmousePressEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsViewmouseMoveEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsViewmouseReleaseEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsViewwheelEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsViewpaintEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QGraphicsViewresizeEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QGraphicsViewscrollContentsByProc* = proc(self: QGraphicsView, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QGraphicsViewshowEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QGraphicsViewinputMethodEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsViewdrawBackgroundProc* = proc(self: QGraphicsView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsViewdrawForegroundProc* = proc(self: QGraphicsView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsViewminimumSizeHintProc* = proc(self: QGraphicsView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QGraphicsVieweventFilterProc* = proc(self: QGraphicsView, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsViewviewportSizeHintProc* = proc(self: QGraphicsView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QGraphicsViewchangeEventProc* = proc(self: QGraphicsView, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsViewdevTypeProc* = proc(self: QGraphicsView): cint {.raises: [], gcsafe.}
type QGraphicsViewsetVisibleProc* = proc(self: QGraphicsView, visible: bool): void {.raises: [], gcsafe.}
type QGraphicsViewheightForWidthProc* = proc(self: QGraphicsView, param1: cint): cint {.raises: [], gcsafe.}
type QGraphicsViewhasHeightForWidthProc* = proc(self: QGraphicsView): bool {.raises: [], gcsafe.}
type QGraphicsViewpaintEngineProc* = proc(self: QGraphicsView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QGraphicsViewenterEventProc* = proc(self: QGraphicsView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsViewleaveEventProc* = proc(self: QGraphicsView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsViewmoveEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QGraphicsViewcloseEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QGraphicsViewtabletEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QGraphicsViewactionEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QGraphicsViewhideEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QGraphicsViewnativeEventProc* = proc(self: QGraphicsView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QGraphicsViewmetricProc* = proc(self: QGraphicsView, param1: cint): cint {.raises: [], gcsafe.}
type QGraphicsViewinitPainterProc* = proc(self: QGraphicsView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QGraphicsViewredirectedProc* = proc(self: QGraphicsView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QGraphicsViewsharedPainterProc* = proc(self: QGraphicsView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QGraphicsViewtimerEventProc* = proc(self: QGraphicsView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsViewchildEventProc* = proc(self: QGraphicsView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsViewcustomEventProc* = proc(self: QGraphicsView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsViewconnectNotifyProc* = proc(self: QGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsViewdisconnectNotifyProc* = proc(self: QGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsViewVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsViewVTable
  metaObject*: QGraphicsViewmetaObjectProc
  metacast*: QGraphicsViewmetacastProc
  metacall*: QGraphicsViewmetacallProc
  sizeHint*: QGraphicsViewsizeHintProc
  inputMethodQuery*: QGraphicsViewinputMethodQueryProc
  setupViewport*: QGraphicsViewsetupViewportProc
  event*: QGraphicsVieweventProc
  viewportEvent*: QGraphicsViewviewportEventProc
  contextMenuEvent*: QGraphicsViewcontextMenuEventProc
  dragEnterEvent*: QGraphicsViewdragEnterEventProc
  dragLeaveEvent*: QGraphicsViewdragLeaveEventProc
  dragMoveEvent*: QGraphicsViewdragMoveEventProc
  dropEvent*: QGraphicsViewdropEventProc
  focusInEvent*: QGraphicsViewfocusInEventProc
  focusNextPrevChild*: QGraphicsViewfocusNextPrevChildProc
  focusOutEvent*: QGraphicsViewfocusOutEventProc
  keyPressEvent*: QGraphicsViewkeyPressEventProc
  keyReleaseEvent*: QGraphicsViewkeyReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsViewmouseDoubleClickEventProc
  mousePressEvent*: QGraphicsViewmousePressEventProc
  mouseMoveEvent*: QGraphicsViewmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsViewmouseReleaseEventProc
  wheelEvent*: QGraphicsViewwheelEventProc
  paintEvent*: QGraphicsViewpaintEventProc
  resizeEvent*: QGraphicsViewresizeEventProc
  scrollContentsBy*: QGraphicsViewscrollContentsByProc
  showEvent*: QGraphicsViewshowEventProc
  inputMethodEvent*: QGraphicsViewinputMethodEventProc
  drawBackground*: QGraphicsViewdrawBackgroundProc
  drawForeground*: QGraphicsViewdrawForegroundProc
  minimumSizeHint*: QGraphicsViewminimumSizeHintProc
  eventFilter*: QGraphicsVieweventFilterProc
  viewportSizeHint*: QGraphicsViewviewportSizeHintProc
  changeEvent*: QGraphicsViewchangeEventProc
  devType*: QGraphicsViewdevTypeProc
  setVisible*: QGraphicsViewsetVisibleProc
  heightForWidth*: QGraphicsViewheightForWidthProc
  hasHeightForWidth*: QGraphicsViewhasHeightForWidthProc
  paintEngine*: QGraphicsViewpaintEngineProc
  enterEvent*: QGraphicsViewenterEventProc
  leaveEvent*: QGraphicsViewleaveEventProc
  moveEvent*: QGraphicsViewmoveEventProc
  closeEvent*: QGraphicsViewcloseEventProc
  tabletEvent*: QGraphicsViewtabletEventProc
  actionEvent*: QGraphicsViewactionEventProc
  hideEvent*: QGraphicsViewhideEventProc
  nativeEvent*: QGraphicsViewnativeEventProc
  metric*: QGraphicsViewmetricProc
  initPainter*: QGraphicsViewinitPainterProc
  redirected*: QGraphicsViewredirectedProc
  sharedPainter*: QGraphicsViewsharedPainterProc
  timerEvent*: QGraphicsViewtimerEventProc
  childEvent*: QGraphicsViewchildEventProc
  customEvent*: QGraphicsViewcustomEventProc
  connectNotify*: QGraphicsViewconnectNotifyProc
  disconnectNotify*: QGraphicsViewdisconnectNotifyProc
proc QGraphicsViewmetaObject*(self: gen_qgraphicsview_types.QGraphicsView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsView_virtualbase_metaObject(self.h), owned: false)

proc cQGraphicsView_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsViewmetacast*(self: gen_qgraphicsview_types.QGraphicsView, param1: cstring): pointer =
  fcQGraphicsView_virtualbase_metacast(self.h, param1)

proc cQGraphicsView_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsViewmetacall*(self: gen_qgraphicsview_types.QGraphicsView, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGraphicsView_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsViewsizeHint*(self: gen_qgraphicsview_types.QGraphicsView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGraphicsView_virtualbase_sizeHint(self.h), owned: true)

proc cQGraphicsView_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsViewinputMethodQuery*(self: gen_qgraphicsview_types.QGraphicsView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsView_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc cQGraphicsView_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsViewsetupViewport*(self: gen_qgraphicsview_types.QGraphicsView, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsView_virtualbase_setupViewport(self.h, widget.h)

proc cQGraphicsView_vtable_callback_setupViewport(self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc QGraphicsViewevent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsView_virtualbase_event(self.h, event.h)

proc cQGraphicsView_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsViewviewportEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsView_virtualbase_viewportEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QGraphicsViewcontextMenuEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QContextMenuEvent): void =
  fcQGraphicsView_virtualbase_contextMenuEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsViewdragEnterEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQGraphicsView_virtualbase_dragEnterEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsViewdragLeaveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQGraphicsView_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsViewdragMoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDragMoveEvent): void =
  fcQGraphicsView_virtualbase_dragMoveEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsViewdropEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDropEvent): void =
  fcQGraphicsView_virtualbase_dropEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsViewfocusInEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsView_virtualbase_focusInEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsViewfocusNextPrevChild*(self: gen_qgraphicsview_types.QGraphicsView, next: bool): bool =
  fcQGraphicsView_virtualbase_focusNextPrevChild(self.h, next)

proc cQGraphicsView_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QGraphicsViewfocusOutEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsView_virtualbase_focusOutEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsViewkeyPressEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsView_virtualbase_keyPressEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsViewkeyReleaseEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsView_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsViewmouseDoubleClickEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fcQGraphicsView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsViewmousePressEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fcQGraphicsView_virtualbase_mousePressEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsViewmouseMoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fcQGraphicsView_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsViewmouseReleaseEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fcQGraphicsView_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsViewwheelEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QWheelEvent): void =
  fcQGraphicsView_virtualbase_wheelEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsViewpaintEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QPaintEvent): void =
  fcQGraphicsView_virtualbase_paintEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QGraphicsViewresizeEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QResizeEvent): void =
  fcQGraphicsView_virtualbase_resizeEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QGraphicsViewscrollContentsBy*(self: gen_qgraphicsview_types.QGraphicsView, dx: cint, dy: cint): void =
  fcQGraphicsView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc cQGraphicsView_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QGraphicsViewshowEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QShowEvent): void =
  fcQGraphicsView_virtualbase_showEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QGraphicsViewinputMethodEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsView_virtualbase_inputMethodEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsViewdrawBackground*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsView_virtualbase_drawBackground(self.h, painter.h, rect.h)

proc cQGraphicsView_vtable_callback_drawBackground(self: pointer, painter: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl[].drawBackground(self, slotval1, slotval2)

proc QGraphicsViewdrawForeground*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsView_virtualbase_drawForeground(self.h, painter.h, rect.h)

proc cQGraphicsView_vtable_callback_drawForeground(self: pointer, painter: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl[].drawForeground(self, slotval1, slotval2)

proc QGraphicsViewminimumSizeHint*(self: gen_qgraphicsview_types.QGraphicsView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGraphicsView_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQGraphicsView_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsVieweventFilter*(self: gen_qgraphicsview_types.QGraphicsView, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsView_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQGraphicsView_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsViewviewportSizeHint*(self: gen_qgraphicsview_types.QGraphicsView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGraphicsView_virtualbase_viewportSizeHint(self.h), owned: true)

proc cQGraphicsView_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsViewchangeEvent*(self: gen_qgraphicsview_types.QGraphicsView, param1: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsView_virtualbase_changeEvent(self.h, param1.h)

proc cQGraphicsView_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QGraphicsViewdevType*(self: gen_qgraphicsview_types.QGraphicsView): cint =
  fcQGraphicsView_virtualbase_devType(self.h)

proc cQGraphicsView_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QGraphicsViewsetVisible*(self: gen_qgraphicsview_types.QGraphicsView, visible: bool): void =
  fcQGraphicsView_virtualbase_setVisible(self.h, visible)

proc cQGraphicsView_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QGraphicsViewheightForWidth*(self: gen_qgraphicsview_types.QGraphicsView, param1: cint): cint =
  fcQGraphicsView_virtualbase_heightForWidth(self.h, param1)

proc cQGraphicsView_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QGraphicsViewhasHeightForWidth*(self: gen_qgraphicsview_types.QGraphicsView): bool =
  fcQGraphicsView_virtualbase_hasHeightForWidth(self.h)

proc cQGraphicsView_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QGraphicsViewpaintEngine*(self: gen_qgraphicsview_types.QGraphicsView): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQGraphicsView_virtualbase_paintEngine(self.h), owned: false)

proc cQGraphicsView_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsViewenterEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsView_virtualbase_enterEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QGraphicsViewleaveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsView_virtualbase_leaveEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QGraphicsViewmoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMoveEvent): void =
  fcQGraphicsView_virtualbase_moveEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QGraphicsViewcloseEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QCloseEvent): void =
  fcQGraphicsView_virtualbase_closeEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QGraphicsViewtabletEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QTabletEvent): void =
  fcQGraphicsView_virtualbase_tabletEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QGraphicsViewactionEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QActionEvent): void =
  fcQGraphicsView_virtualbase_actionEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QGraphicsViewhideEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QHideEvent): void =
  fcQGraphicsView_virtualbase_hideEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QGraphicsViewnativeEvent*(self: gen_qgraphicsview_types.QGraphicsView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQGraphicsView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQGraphicsView_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsViewmetric*(self: gen_qgraphicsview_types.QGraphicsView, param1: cint): cint =
  fcQGraphicsView_virtualbase_metric(self.h, cint(param1))

proc cQGraphicsView_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QGraphicsViewinitPainter*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsView_virtualbase_initPainter(self.h, painter.h)

proc cQGraphicsView_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QGraphicsViewredirected*(self: gen_qgraphicsview_types.QGraphicsView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQGraphicsView_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQGraphicsView_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsViewsharedPainter*(self: gen_qgraphicsview_types.QGraphicsView): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQGraphicsView_virtualbase_sharedPainter(self.h), owned: false)

proc cQGraphicsView_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsViewtimerEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsView_virtualbase_timerEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsViewchildEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsView_virtualbase_childEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsViewcustomEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsView_virtualbase_customEvent(self.h, event.h)

proc cQGraphicsView_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsViewconnectNotify*(self: gen_qgraphicsview_types.QGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsView_virtualbase_connectNotify(self.h, signal.h)

proc cQGraphicsView_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsViewdisconnectNotify*(self: gen_qgraphicsview_types.QGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsView_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGraphicsView_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](fcQGraphicsView_vdata(self))
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGraphicsView* {.inheritable.} = ref object of QGraphicsView
  vtbl*: cQGraphicsViewVTable
method metaObject*(self: VirtualQGraphicsView): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsViewmetaObject(self[])
proc cQGraphicsView_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsView, param1: cstring): pointer {.base.} =
  QGraphicsViewmetacast(self[], param1)
proc cQGraphicsView_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsViewmetacall(self[], param1, param2, param3)
proc cQGraphicsView_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQGraphicsView): gen_qsize_types.QSize {.base.} =
  QGraphicsViewsizeHint(self[])
proc cQGraphicsView_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodQuery*(self: VirtualQGraphicsView, query: cint): gen_qvariant_types.QVariant {.base.} =
  QGraphicsViewinputMethodQuery(self[], query)
proc cQGraphicsView_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setupViewport*(self: VirtualQGraphicsView, widget: gen_qwidget_types.QWidget): void {.base.} =
  QGraphicsViewsetupViewport(self[], widget)
proc cQGraphicsView_method_callback_setupViewport(self: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.setupViewport(slotval1)

method event*(self: VirtualQGraphicsView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsViewevent(self[], event)
proc cQGraphicsView_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method viewportEvent*(self: VirtualQGraphicsView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsViewviewportEvent(self[], event)
proc cQGraphicsView_method_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

method contextMenuEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QGraphicsViewcontextMenuEvent(self[], event)
proc cQGraphicsView_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method dragEnterEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QGraphicsViewdragEnterEvent(self[], event)
proc cQGraphicsView_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragLeaveEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QGraphicsViewdragLeaveEvent(self[], event)
proc cQGraphicsView_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dragMoveEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QGraphicsViewdragMoveEvent(self[], event)
proc cQGraphicsView_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dropEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QDropEvent): void {.base.} =
  QGraphicsViewdropEvent(self[], event)
proc cQGraphicsView_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method focusInEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsViewfocusInEvent(self[], event)
proc cQGraphicsView_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusNextPrevChild*(self: VirtualQGraphicsView, next: bool): bool {.base.} =
  QGraphicsViewfocusNextPrevChild(self[], next)
proc cQGraphicsView_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method focusOutEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsViewfocusOutEvent(self[], event)
proc cQGraphicsView_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method keyPressEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsViewkeyPressEvent(self[], event)
proc cQGraphicsView_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsViewkeyReleaseEvent(self[], event)
proc cQGraphicsView_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QGraphicsViewmouseDoubleClickEvent(self[], event)
proc cQGraphicsView_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mousePressEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QGraphicsViewmousePressEvent(self[], event)
proc cQGraphicsView_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QGraphicsViewmouseMoveEvent(self[], event)
proc cQGraphicsView_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QGraphicsViewmouseReleaseEvent(self[], event)
proc cQGraphicsView_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method wheelEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QGraphicsViewwheelEvent(self[], event)
proc cQGraphicsView_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method paintEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QGraphicsViewpaintEvent(self[], event)
proc cQGraphicsView_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method resizeEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QGraphicsViewresizeEvent(self[], event)
proc cQGraphicsView_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method scrollContentsBy*(self: VirtualQGraphicsView, dx: cint, dy: cint): void {.base.} =
  QGraphicsViewscrollContentsBy(self[], dx, dy)
proc cQGraphicsView_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

method showEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QShowEvent): void {.base.} =
  QGraphicsViewshowEvent(self[], event)
proc cQGraphicsView_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method inputMethodEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QGraphicsViewinputMethodEvent(self[], event)
proc cQGraphicsView_method_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  inst.inputMethodEvent(slotval1)

method drawBackground*(self: VirtualQGraphicsView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void {.base.} =
  QGraphicsViewdrawBackground(self[], painter, rect)
proc cQGraphicsView_method_callback_drawBackground(self: pointer, painter: pointer, rect: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: rect, owned: false)
  inst.drawBackground(slotval1, slotval2)

method drawForeground*(self: VirtualQGraphicsView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void {.base.} =
  QGraphicsViewdrawForeground(self[], painter, rect)
proc cQGraphicsView_method_callback_drawForeground(self: pointer, painter: pointer, rect: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: rect, owned: false)
  inst.drawForeground(slotval1, slotval2)

method minimumSizeHint*(self: VirtualQGraphicsView): gen_qsize_types.QSize {.base.} =
  QGraphicsViewminimumSizeHint(self[])
proc cQGraphicsView_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method eventFilter*(self: VirtualQGraphicsView, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsVieweventFilter(self[], param1, param2)
proc cQGraphicsView_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method viewportSizeHint*(self: VirtualQGraphicsView): gen_qsize_types.QSize {.base.} =
  QGraphicsViewviewportSizeHint(self[])
proc cQGraphicsView_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method changeEvent*(self: VirtualQGraphicsView, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsViewchangeEvent(self[], param1)
proc cQGraphicsView_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method devType*(self: VirtualQGraphicsView): cint {.base.} =
  QGraphicsViewdevType(self[])
proc cQGraphicsView_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQGraphicsView, visible: bool): void {.base.} =
  QGraphicsViewsetVisible(self[], visible)
proc cQGraphicsView_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQGraphicsView, param1: cint): cint {.base.} =
  QGraphicsViewheightForWidth(self[], param1)
proc cQGraphicsView_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQGraphicsView): bool {.base.} =
  QGraphicsViewhasHeightForWidth(self[])
proc cQGraphicsView_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQGraphicsView): gen_qpaintengine_types.QPaintEngine {.base.} =
  QGraphicsViewpaintEngine(self[])
proc cQGraphicsView_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method enterEvent*(self: VirtualQGraphicsView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsViewenterEvent(self[], event)
proc cQGraphicsView_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQGraphicsView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsViewleaveEvent(self[], event)
proc cQGraphicsView_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QGraphicsViewmoveEvent(self[], event)
proc cQGraphicsView_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QGraphicsViewcloseEvent(self[], event)
proc cQGraphicsView_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QGraphicsViewtabletEvent(self[], event)
proc cQGraphicsView_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QActionEvent): void {.base.} =
  QGraphicsViewactionEvent(self[], event)
proc cQGraphicsView_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method hideEvent*(self: VirtualQGraphicsView, event: gen_qevent_types.QHideEvent): void {.base.} =
  QGraphicsViewhideEvent(self[], event)
proc cQGraphicsView_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQGraphicsView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QGraphicsViewnativeEvent(self[], eventType, message, resultVal)
proc cQGraphicsView_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQGraphicsView, param1: cint): cint {.base.} =
  QGraphicsViewmetric(self[], param1)
proc cQGraphicsView_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQGraphicsView, painter: gen_qpainter_types.QPainter): void {.base.} =
  QGraphicsViewinitPainter(self[], painter)
proc cQGraphicsView_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQGraphicsView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QGraphicsViewredirected(self[], offset)
proc cQGraphicsView_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQGraphicsView): gen_qpainter_types.QPainter {.base.} =
  QGraphicsViewsharedPainter(self[])
proc cQGraphicsView_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method timerEvent*(self: VirtualQGraphicsView, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsViewtimerEvent(self[], event)
proc cQGraphicsView_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsViewchildEvent(self[], event)
proc cQGraphicsView_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsViewcustomEvent(self[], event)
proc cQGraphicsView_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsViewconnectNotify(self[], signal)
proc cQGraphicsView_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsViewdisconnectNotify(self[], signal)
proc cQGraphicsView_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsView](fcQGraphicsView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setViewportMargins*(self: gen_qgraphicsview_types.QGraphicsView, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQGraphicsView_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qgraphicsview_types.QGraphicsView): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQGraphicsView_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qgraphicsview_types.QGraphicsView, param1: gen_qpainter_types.QPainter): void =
  fcQGraphicsView_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qgraphicsview_types.QGraphicsView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQGraphicsView_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qgraphicsview_types.QGraphicsView): void =
  fcQGraphicsView_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qgraphicsview_types.QGraphicsView): void =
  fcQGraphicsView_protectedbase_create(self.h)

proc destroy*(self: gen_qgraphicsview_types.QGraphicsView): void =
  fcQGraphicsView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qgraphicsview_types.QGraphicsView): bool =
  fcQGraphicsView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qgraphicsview_types.QGraphicsView): bool =
  fcQGraphicsView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qgraphicsview_types.QGraphicsView): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsView_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicsview_types.QGraphicsView): cint =
  fcQGraphicsView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicsview_types.QGraphicsView, signal: cstring): cint =
  fcQGraphicsView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicsview_types.QGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsView_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QGraphicsViewVTable = nil): gen_qgraphicsview_types.QGraphicsView =
  let vtbl = if vtbl == nil: new QGraphicsViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsViewVTable](fcQGraphicsView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsView_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGraphicsView_vtable_callback_sizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGraphicsView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQGraphicsView_vtable_callback_setupViewport
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsView_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQGraphicsView_vtable_callback_viewportEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGraphicsView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGraphicsView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGraphicsView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGraphicsView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGraphicsView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGraphicsView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGraphicsView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGraphicsView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGraphicsView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGraphicsView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGraphicsView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGraphicsView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGraphicsView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGraphicsView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGraphicsView_vtable_callback_wheelEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQGraphicsView_vtable_callback_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGraphicsView_vtable_callback_resizeEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQGraphicsView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGraphicsView_vtable_callback_showEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGraphicsView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].drawBackground):
    vtbl[].vtbl.drawBackground = cQGraphicsView_vtable_callback_drawBackground
  if not isNil(vtbl[].drawForeground):
    vtbl[].vtbl.drawForeground = cQGraphicsView_vtable_callback_drawForeground
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQGraphicsView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsView_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQGraphicsView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGraphicsView_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQGraphicsView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQGraphicsView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQGraphicsView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQGraphicsView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQGraphicsView_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQGraphicsView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQGraphicsView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGraphicsView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGraphicsView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQGraphicsView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQGraphicsView_vtable_callback_actionEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGraphicsView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQGraphicsView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQGraphicsView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQGraphicsView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQGraphicsView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQGraphicsView_vtable_callback_sharedPainter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsView_vtable_callback_disconnectNotify
  gen_qgraphicsview_types.QGraphicsView(h: fcQGraphicsView_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    vtbl: ref QGraphicsViewVTable = nil): gen_qgraphicsview_types.QGraphicsView =
  let vtbl = if vtbl == nil: new QGraphicsViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsViewVTable](fcQGraphicsView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsView_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGraphicsView_vtable_callback_sizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGraphicsView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQGraphicsView_vtable_callback_setupViewport
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsView_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQGraphicsView_vtable_callback_viewportEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGraphicsView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGraphicsView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGraphicsView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGraphicsView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGraphicsView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGraphicsView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGraphicsView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGraphicsView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGraphicsView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGraphicsView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGraphicsView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGraphicsView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGraphicsView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGraphicsView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGraphicsView_vtable_callback_wheelEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQGraphicsView_vtable_callback_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGraphicsView_vtable_callback_resizeEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQGraphicsView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGraphicsView_vtable_callback_showEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGraphicsView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].drawBackground):
    vtbl[].vtbl.drawBackground = cQGraphicsView_vtable_callback_drawBackground
  if not isNil(vtbl[].drawForeground):
    vtbl[].vtbl.drawForeground = cQGraphicsView_vtable_callback_drawForeground
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQGraphicsView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsView_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQGraphicsView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGraphicsView_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQGraphicsView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQGraphicsView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQGraphicsView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQGraphicsView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQGraphicsView_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQGraphicsView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQGraphicsView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGraphicsView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGraphicsView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQGraphicsView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQGraphicsView_vtable_callback_actionEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGraphicsView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQGraphicsView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQGraphicsView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQGraphicsView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQGraphicsView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQGraphicsView_vtable_callback_sharedPainter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsView_vtable_callback_disconnectNotify
  gen_qgraphicsview_types.QGraphicsView(h: fcQGraphicsView_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    scene: gen_qgraphicsscene_types.QGraphicsScene,
    vtbl: ref QGraphicsViewVTable = nil): gen_qgraphicsview_types.QGraphicsView =
  let vtbl = if vtbl == nil: new QGraphicsViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsViewVTable](fcQGraphicsView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsView_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGraphicsView_vtable_callback_sizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGraphicsView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQGraphicsView_vtable_callback_setupViewport
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsView_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQGraphicsView_vtable_callback_viewportEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGraphicsView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGraphicsView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGraphicsView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGraphicsView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGraphicsView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGraphicsView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGraphicsView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGraphicsView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGraphicsView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGraphicsView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGraphicsView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGraphicsView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGraphicsView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGraphicsView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGraphicsView_vtable_callback_wheelEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQGraphicsView_vtable_callback_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGraphicsView_vtable_callback_resizeEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQGraphicsView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGraphicsView_vtable_callback_showEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGraphicsView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].drawBackground):
    vtbl[].vtbl.drawBackground = cQGraphicsView_vtable_callback_drawBackground
  if not isNil(vtbl[].drawForeground):
    vtbl[].vtbl.drawForeground = cQGraphicsView_vtable_callback_drawForeground
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQGraphicsView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsView_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQGraphicsView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGraphicsView_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQGraphicsView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQGraphicsView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQGraphicsView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQGraphicsView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQGraphicsView_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQGraphicsView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQGraphicsView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGraphicsView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGraphicsView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQGraphicsView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQGraphicsView_vtable_callback_actionEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGraphicsView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQGraphicsView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQGraphicsView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQGraphicsView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQGraphicsView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQGraphicsView_vtable_callback_sharedPainter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsView_vtable_callback_disconnectNotify
  gen_qgraphicsview_types.QGraphicsView(h: fcQGraphicsView_new3(addr(vtbl[].vtbl), addr(vtbl[]), scene.h), owned: true)

proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    scene: gen_qgraphicsscene_types.QGraphicsScene, parent: gen_qwidget_types.QWidget,
    vtbl: ref QGraphicsViewVTable = nil): gen_qgraphicsview_types.QGraphicsView =
  let vtbl = if vtbl == nil: new QGraphicsViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsViewVTable](fcQGraphicsView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsView_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGraphicsView_vtable_callback_sizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGraphicsView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQGraphicsView_vtable_callback_setupViewport
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsView_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQGraphicsView_vtable_callback_viewportEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGraphicsView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGraphicsView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGraphicsView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGraphicsView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGraphicsView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGraphicsView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGraphicsView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGraphicsView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGraphicsView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGraphicsView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGraphicsView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGraphicsView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGraphicsView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGraphicsView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGraphicsView_vtable_callback_wheelEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQGraphicsView_vtable_callback_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGraphicsView_vtable_callback_resizeEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQGraphicsView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGraphicsView_vtable_callback_showEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGraphicsView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].drawBackground):
    vtbl[].vtbl.drawBackground = cQGraphicsView_vtable_callback_drawBackground
  if not isNil(vtbl[].drawForeground):
    vtbl[].vtbl.drawForeground = cQGraphicsView_vtable_callback_drawForeground
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQGraphicsView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsView_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQGraphicsView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGraphicsView_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQGraphicsView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQGraphicsView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQGraphicsView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQGraphicsView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQGraphicsView_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQGraphicsView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQGraphicsView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGraphicsView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGraphicsView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQGraphicsView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQGraphicsView_vtable_callback_actionEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGraphicsView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQGraphicsView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQGraphicsView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQGraphicsView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQGraphicsView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQGraphicsView_vtable_callback_sharedPainter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsView_vtable_callback_disconnectNotify
  gen_qgraphicsview_types.QGraphicsView(h: fcQGraphicsView_new4(addr(vtbl[].vtbl), addr(vtbl[]), scene.h, parent.h), owned: true)

const cQGraphicsView_mvtbl = cQGraphicsViewVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsView()[])](self.fcQGraphicsView_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGraphicsView_method_callback_metaObject,
  metacast: cQGraphicsView_method_callback_metacast,
  metacall: cQGraphicsView_method_callback_metacall,
  sizeHint: cQGraphicsView_method_callback_sizeHint,
  inputMethodQuery: cQGraphicsView_method_callback_inputMethodQuery,
  setupViewport: cQGraphicsView_method_callback_setupViewport,
  event: cQGraphicsView_method_callback_event,
  viewportEvent: cQGraphicsView_method_callback_viewportEvent,
  contextMenuEvent: cQGraphicsView_method_callback_contextMenuEvent,
  dragEnterEvent: cQGraphicsView_method_callback_dragEnterEvent,
  dragLeaveEvent: cQGraphicsView_method_callback_dragLeaveEvent,
  dragMoveEvent: cQGraphicsView_method_callback_dragMoveEvent,
  dropEvent: cQGraphicsView_method_callback_dropEvent,
  focusInEvent: cQGraphicsView_method_callback_focusInEvent,
  focusNextPrevChild: cQGraphicsView_method_callback_focusNextPrevChild,
  focusOutEvent: cQGraphicsView_method_callback_focusOutEvent,
  keyPressEvent: cQGraphicsView_method_callback_keyPressEvent,
  keyReleaseEvent: cQGraphicsView_method_callback_keyReleaseEvent,
  mouseDoubleClickEvent: cQGraphicsView_method_callback_mouseDoubleClickEvent,
  mousePressEvent: cQGraphicsView_method_callback_mousePressEvent,
  mouseMoveEvent: cQGraphicsView_method_callback_mouseMoveEvent,
  mouseReleaseEvent: cQGraphicsView_method_callback_mouseReleaseEvent,
  wheelEvent: cQGraphicsView_method_callback_wheelEvent,
  paintEvent: cQGraphicsView_method_callback_paintEvent,
  resizeEvent: cQGraphicsView_method_callback_resizeEvent,
  scrollContentsBy: cQGraphicsView_method_callback_scrollContentsBy,
  showEvent: cQGraphicsView_method_callback_showEvent,
  inputMethodEvent: cQGraphicsView_method_callback_inputMethodEvent,
  drawBackground: cQGraphicsView_method_callback_drawBackground,
  drawForeground: cQGraphicsView_method_callback_drawForeground,
  minimumSizeHint: cQGraphicsView_method_callback_minimumSizeHint,
  eventFilter: cQGraphicsView_method_callback_eventFilter,
  viewportSizeHint: cQGraphicsView_method_callback_viewportSizeHint,
  changeEvent: cQGraphicsView_method_callback_changeEvent,
  devType: cQGraphicsView_method_callback_devType,
  setVisible: cQGraphicsView_method_callback_setVisible,
  heightForWidth: cQGraphicsView_method_callback_heightForWidth,
  hasHeightForWidth: cQGraphicsView_method_callback_hasHeightForWidth,
  paintEngine: cQGraphicsView_method_callback_paintEngine,
  enterEvent: cQGraphicsView_method_callback_enterEvent,
  leaveEvent: cQGraphicsView_method_callback_leaveEvent,
  moveEvent: cQGraphicsView_method_callback_moveEvent,
  closeEvent: cQGraphicsView_method_callback_closeEvent,
  tabletEvent: cQGraphicsView_method_callback_tabletEvent,
  actionEvent: cQGraphicsView_method_callback_actionEvent,
  hideEvent: cQGraphicsView_method_callback_hideEvent,
  nativeEvent: cQGraphicsView_method_callback_nativeEvent,
  metric: cQGraphicsView_method_callback_metric,
  initPainter: cQGraphicsView_method_callback_initPainter,
  redirected: cQGraphicsView_method_callback_redirected,
  sharedPainter: cQGraphicsView_method_callback_sharedPainter,
  timerEvent: cQGraphicsView_method_callback_timerEvent,
  childEvent: cQGraphicsView_method_callback_childEvent,
  customEvent: cQGraphicsView_method_callback_customEvent,
  connectNotify: cQGraphicsView_method_callback_connectNotify,
  disconnectNotify: cQGraphicsView_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQGraphicsView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsView_new(addr(cQGraphicsView_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    inst: VirtualQGraphicsView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsView_new2(addr(cQGraphicsView_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    scene: gen_qgraphicsscene_types.QGraphicsScene,
    inst: VirtualQGraphicsView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsView_new3(addr(cQGraphicsView_mvtbl), addr(inst[]), scene.h)
  inst[].owned = true

proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    scene: gen_qgraphicsscene_types.QGraphicsScene, parent: gen_qwidget_types.QWidget,
    inst: VirtualQGraphicsView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsView_new4(addr(cQGraphicsView_mvtbl), addr(inst[]), scene.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicsview_types.QGraphicsView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsView_staticMetaObject())
