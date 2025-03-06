import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
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
template DontSavePainterState*(_: type QGraphicsViewOptimizationFlagEnum): untyped = 1
template DontAdjustForAntialiasing*(_: type QGraphicsViewOptimizationFlagEnum): untyped = 2
template IndirectPainting*(_: type QGraphicsViewOptimizationFlagEnum): untyped = 4


import ./gen_qgraphicsview_types
export gen_qgraphicsview_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qbrush_types,
  ../QtGui/gen_qevent_types,
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
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qbrush_types,
  gen_qevent_types,
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

proc fcQGraphicsView_metaObject(self: pointer, ): pointer {.importc: "QGraphicsView_metaObject".}
proc fcQGraphicsView_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsView_metacast".}
proc fcQGraphicsView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsView_metacall".}
proc fcQGraphicsView_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsView_tr".}
proc fcQGraphicsView_sizeHint(self: pointer, ): pointer {.importc: "QGraphicsView_sizeHint".}
proc fcQGraphicsView_renderHints(self: pointer, ): cint {.importc: "QGraphicsView_renderHints".}
proc fcQGraphicsView_setRenderHint(self: pointer, hint: cint): void {.importc: "QGraphicsView_setRenderHint".}
proc fcQGraphicsView_setRenderHints(self: pointer, hints: cint): void {.importc: "QGraphicsView_setRenderHints".}
proc fcQGraphicsView_alignment(self: pointer, ): cint {.importc: "QGraphicsView_alignment".}
proc fcQGraphicsView_setAlignment(self: pointer, alignment: cint): void {.importc: "QGraphicsView_setAlignment".}
proc fcQGraphicsView_transformationAnchor(self: pointer, ): cint {.importc: "QGraphicsView_transformationAnchor".}
proc fcQGraphicsView_setTransformationAnchor(self: pointer, anchor: cint): void {.importc: "QGraphicsView_setTransformationAnchor".}
proc fcQGraphicsView_resizeAnchor(self: pointer, ): cint {.importc: "QGraphicsView_resizeAnchor".}
proc fcQGraphicsView_setResizeAnchor(self: pointer, anchor: cint): void {.importc: "QGraphicsView_setResizeAnchor".}
proc fcQGraphicsView_viewportUpdateMode(self: pointer, ): cint {.importc: "QGraphicsView_viewportUpdateMode".}
proc fcQGraphicsView_setViewportUpdateMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setViewportUpdateMode".}
proc fcQGraphicsView_optimizationFlags(self: pointer, ): cint {.importc: "QGraphicsView_optimizationFlags".}
proc fcQGraphicsView_setOptimizationFlag(self: pointer, flag: cint): void {.importc: "QGraphicsView_setOptimizationFlag".}
proc fcQGraphicsView_setOptimizationFlags(self: pointer, flags: cint): void {.importc: "QGraphicsView_setOptimizationFlags".}
proc fcQGraphicsView_dragMode(self: pointer, ): cint {.importc: "QGraphicsView_dragMode".}
proc fcQGraphicsView_setDragMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setDragMode".}
proc fcQGraphicsView_rubberBandSelectionMode(self: pointer, ): cint {.importc: "QGraphicsView_rubberBandSelectionMode".}
proc fcQGraphicsView_setRubberBandSelectionMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setRubberBandSelectionMode".}
proc fcQGraphicsView_rubberBandRect(self: pointer, ): pointer {.importc: "QGraphicsView_rubberBandRect".}
proc fcQGraphicsView_cacheMode(self: pointer, ): cint {.importc: "QGraphicsView_cacheMode".}
proc fcQGraphicsView_setCacheMode(self: pointer, mode: cint): void {.importc: "QGraphicsView_setCacheMode".}
proc fcQGraphicsView_resetCachedContent(self: pointer, ): void {.importc: "QGraphicsView_resetCachedContent".}
proc fcQGraphicsView_isInteractive(self: pointer, ): bool {.importc: "QGraphicsView_isInteractive".}
proc fcQGraphicsView_setInteractive(self: pointer, allowed: bool): void {.importc: "QGraphicsView_setInteractive".}
proc fcQGraphicsView_scene(self: pointer, ): pointer {.importc: "QGraphicsView_scene".}
proc fcQGraphicsView_setScene(self: pointer, scene: pointer): void {.importc: "QGraphicsView_setScene".}
proc fcQGraphicsView_sceneRect(self: pointer, ): pointer {.importc: "QGraphicsView_sceneRect".}
proc fcQGraphicsView_setSceneRect(self: pointer, rect: pointer): void {.importc: "QGraphicsView_setSceneRect".}
proc fcQGraphicsView_setSceneRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsView_setSceneRect2".}
proc fcQGraphicsView_transform(self: pointer, ): pointer {.importc: "QGraphicsView_transform".}
proc fcQGraphicsView_viewportTransform(self: pointer, ): pointer {.importc: "QGraphicsView_viewportTransform".}
proc fcQGraphicsView_isTransformed(self: pointer, ): bool {.importc: "QGraphicsView_isTransformed".}
proc fcQGraphicsView_setTransform(self: pointer, matrix: pointer): void {.importc: "QGraphicsView_setTransform".}
proc fcQGraphicsView_resetTransform(self: pointer, ): void {.importc: "QGraphicsView_resetTransform".}
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
proc fcQGraphicsView_items(self: pointer, ): struct_miqt_array {.importc: "QGraphicsView_items".}
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
proc fcQGraphicsView_backgroundBrush(self: pointer, ): pointer {.importc: "QGraphicsView_backgroundBrush".}
proc fcQGraphicsView_setBackgroundBrush(self: pointer, brush: pointer): void {.importc: "QGraphicsView_setBackgroundBrush".}
proc fcQGraphicsView_foregroundBrush(self: pointer, ): pointer {.importc: "QGraphicsView_foregroundBrush".}
proc fcQGraphicsView_setForegroundBrush(self: pointer, brush: pointer): void {.importc: "QGraphicsView_setForegroundBrush".}
proc fcQGraphicsView_updateScene(self: pointer, rects: struct_miqt_array): void {.importc: "QGraphicsView_updateScene".}
proc fcQGraphicsView_invalidateScene(self: pointer, ): void {.importc: "QGraphicsView_invalidateScene".}
proc fcQGraphicsView_updateSceneRect(self: pointer, rect: pointer): void {.importc: "QGraphicsView_updateSceneRect".}
proc fcQGraphicsView_rubberBandChanged(self: pointer, viewportRect: pointer, fromScenePoint: pointer, toScenePoint: pointer): void {.importc: "QGraphicsView_rubberBandChanged".}
proc fcQGraphicsView_connect_rubberBandChanged(self: pointer, slot: int, callback: proc (slot: int, viewportRect: pointer, fromScenePoint: pointer, toScenePoint: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsView_connect_rubberBandChanged".}
proc fcQGraphicsView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsView_tr2".}
proc fcQGraphicsView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsView_tr3".}
proc fcQGraphicsView_setRenderHint2(self: pointer, hint: cint, enabled: bool): void {.importc: "QGraphicsView_setRenderHint2".}
proc fcQGraphicsView_setOptimizationFlag2(self: pointer, flag: cint, enabled: bool): void {.importc: "QGraphicsView_setOptimizationFlag2".}
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
type cQGraphicsViewVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsViewVTable, self: ptr cQGraphicsView) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  drawBackground*: proc(vtbl, self: pointer, painter: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  drawForeground*: proc(vtbl, self: pointer, painter: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsView_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsView_virtualbase_metaObject".}
proc fcQGraphicsView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsView_virtualbase_metacast".}
proc fcQGraphicsView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsView_virtualbase_metacall".}
proc fcQGraphicsView_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QGraphicsView_virtualbase_sizeHint".}
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
proc fcQGraphicsView_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QGraphicsView_virtualbase_minimumSizeHint".}
proc fcQGraphicsView_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QGraphicsView_virtualbase_eventFilter".}
proc fcQGraphicsView_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QGraphicsView_virtualbase_viewportSizeHint".}
proc fcQGraphicsView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsView_virtualbase_changeEvent".}
proc fcQGraphicsView_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QGraphicsView_virtualbase_initStyleOption".}
proc fcQGraphicsView_virtualbase_devType(self: pointer, ): cint {.importc: "QGraphicsView_virtualbase_devType".}
proc fcQGraphicsView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QGraphicsView_virtualbase_setVisible".}
proc fcQGraphicsView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QGraphicsView_virtualbase_heightForWidth".}
proc fcQGraphicsView_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QGraphicsView_virtualbase_hasHeightForWidth".}
proc fcQGraphicsView_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QGraphicsView_virtualbase_paintEngine".}
proc fcQGraphicsView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_enterEvent".}
proc fcQGraphicsView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_leaveEvent".}
proc fcQGraphicsView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_moveEvent".}
proc fcQGraphicsView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_closeEvent".}
proc fcQGraphicsView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_tabletEvent".}
proc fcQGraphicsView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_actionEvent".}
proc fcQGraphicsView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_hideEvent".}
proc fcQGraphicsView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QGraphicsView_virtualbase_nativeEvent".}
proc fcQGraphicsView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QGraphicsView_virtualbase_metric".}
proc fcQGraphicsView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QGraphicsView_virtualbase_initPainter".}
proc fcQGraphicsView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QGraphicsView_virtualbase_redirected".}
proc fcQGraphicsView_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QGraphicsView_virtualbase_sharedPainter".}
proc fcQGraphicsView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_timerEvent".}
proc fcQGraphicsView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_childEvent".}
proc fcQGraphicsView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsView_virtualbase_customEvent".}
proc fcQGraphicsView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsView_virtualbase_connectNotify".}
proc fcQGraphicsView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsView_virtualbase_disconnectNotify".}
proc fcQGraphicsView_new(vtbl: pointer, parent: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new".}
proc fcQGraphicsView_new2(vtbl: pointer, ): ptr cQGraphicsView {.importc: "QGraphicsView_new2".}
proc fcQGraphicsView_new3(vtbl: pointer, scene: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new3".}
proc fcQGraphicsView_new4(vtbl: pointer, scene: pointer, parent: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new4".}
proc fcQGraphicsView_staticMetaObject(): pointer {.importc: "QGraphicsView_staticMetaObject".}
proc fcQGraphicsView_delete(self: pointer) {.importc: "QGraphicsView_delete".}

proc metaObject*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsView_metaObject(self.h))

proc metacast*(self: gen_qgraphicsview_types.QGraphicsView, param1: cstring): pointer =
  fcQGraphicsView_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsview_types.QGraphicsView, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsview_types.QGraphicsView, s: cstring): string =
  let v_ms = fcQGraphicsView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGraphicsView_sizeHint(self.h))

proc renderHints*(self: gen_qgraphicsview_types.QGraphicsView, ): cint =
  cint(fcQGraphicsView_renderHints(self.h))

proc setRenderHint*(self: gen_qgraphicsview_types.QGraphicsView, hint: cint): void =
  fcQGraphicsView_setRenderHint(self.h, cint(hint))

proc setRenderHints*(self: gen_qgraphicsview_types.QGraphicsView, hints: cint): void =
  fcQGraphicsView_setRenderHints(self.h, cint(hints))

proc alignment*(self: gen_qgraphicsview_types.QGraphicsView, ): cint =
  cint(fcQGraphicsView_alignment(self.h))

proc setAlignment*(self: gen_qgraphicsview_types.QGraphicsView, alignment: cint): void =
  fcQGraphicsView_setAlignment(self.h, cint(alignment))

proc transformationAnchor*(self: gen_qgraphicsview_types.QGraphicsView, ): cint =
  cint(fcQGraphicsView_transformationAnchor(self.h))

proc setTransformationAnchor*(self: gen_qgraphicsview_types.QGraphicsView, anchor: cint): void =
  fcQGraphicsView_setTransformationAnchor(self.h, cint(anchor))

proc resizeAnchor*(self: gen_qgraphicsview_types.QGraphicsView, ): cint =
  cint(fcQGraphicsView_resizeAnchor(self.h))

proc setResizeAnchor*(self: gen_qgraphicsview_types.QGraphicsView, anchor: cint): void =
  fcQGraphicsView_setResizeAnchor(self.h, cint(anchor))

proc viewportUpdateMode*(self: gen_qgraphicsview_types.QGraphicsView, ): cint =
  cint(fcQGraphicsView_viewportUpdateMode(self.h))

proc setViewportUpdateMode*(self: gen_qgraphicsview_types.QGraphicsView, mode: cint): void =
  fcQGraphicsView_setViewportUpdateMode(self.h, cint(mode))

proc optimizationFlags*(self: gen_qgraphicsview_types.QGraphicsView, ): cint =
  cint(fcQGraphicsView_optimizationFlags(self.h))

proc setOptimizationFlag*(self: gen_qgraphicsview_types.QGraphicsView, flag: cint): void =
  fcQGraphicsView_setOptimizationFlag(self.h, cint(flag))

proc setOptimizationFlags*(self: gen_qgraphicsview_types.QGraphicsView, flags: cint): void =
  fcQGraphicsView_setOptimizationFlags(self.h, cint(flags))

proc dragMode*(self: gen_qgraphicsview_types.QGraphicsView, ): cint =
  cint(fcQGraphicsView_dragMode(self.h))

proc setDragMode*(self: gen_qgraphicsview_types.QGraphicsView, mode: cint): void =
  fcQGraphicsView_setDragMode(self.h, cint(mode))

proc rubberBandSelectionMode*(self: gen_qgraphicsview_types.QGraphicsView, ): cint =
  cint(fcQGraphicsView_rubberBandSelectionMode(self.h))

proc setRubberBandSelectionMode*(self: gen_qgraphicsview_types.QGraphicsView, mode: cint): void =
  fcQGraphicsView_setRubberBandSelectionMode(self.h, cint(mode))

proc rubberBandRect*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQGraphicsView_rubberBandRect(self.h))

proc cacheMode*(self: gen_qgraphicsview_types.QGraphicsView, ): cint =
  cint(fcQGraphicsView_cacheMode(self.h))

proc setCacheMode*(self: gen_qgraphicsview_types.QGraphicsView, mode: cint): void =
  fcQGraphicsView_setCacheMode(self.h, cint(mode))

proc resetCachedContent*(self: gen_qgraphicsview_types.QGraphicsView, ): void =
  fcQGraphicsView_resetCachedContent(self.h)

proc isInteractive*(self: gen_qgraphicsview_types.QGraphicsView, ): bool =
  fcQGraphicsView_isInteractive(self.h)

proc setInteractive*(self: gen_qgraphicsview_types.QGraphicsView, allowed: bool): void =
  fcQGraphicsView_setInteractive(self.h, allowed)

proc scene*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qgraphicsscene_types.QGraphicsScene =
  gen_qgraphicsscene_types.QGraphicsScene(h: fcQGraphicsView_scene(self.h))

proc setScene*(self: gen_qgraphicsview_types.QGraphicsView, scene: gen_qgraphicsscene_types.QGraphicsScene): void =
  fcQGraphicsView_setScene(self.h, scene.h)

proc sceneRect*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsView_sceneRect(self.h))

proc setSceneRect*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsView_setSceneRect(self.h, rect.h)

proc setSceneRect*(self: gen_qgraphicsview_types.QGraphicsView, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsView_setSceneRect2(self.h, x, y, w, h)

proc transform*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQGraphicsView_transform(self.h))

proc viewportTransform*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQGraphicsView_viewportTransform(self.h))

proc isTransformed*(self: gen_qgraphicsview_types.QGraphicsView, ): bool =
  fcQGraphicsView_isTransformed(self.h)

proc setTransform*(self: gen_qgraphicsview_types.QGraphicsView, matrix: gen_qtransform_types.QTransform): void =
  fcQGraphicsView_setTransform(self.h, matrix.h)

proc resetTransform*(self: gen_qgraphicsview_types.QGraphicsView, ): void =
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

proc items*(self: gen_qgraphicsview_types.QGraphicsView, ): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_items(self.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, pos: gen_qpoint_types.QPoint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_itemsWithPos(self.h, pos.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, x: cint, y: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_items2(self.h, x, y)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRect): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_itemsWithRect(self.h, rect.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, x: cint, y: cint, w: cint, h: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_items3(self.h, x, y, w, h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, path: gen_qpainterpath_types.QPainterPath): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_itemsWithPath(self.h, path.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc itemAt*(self: gen_qgraphicsview_types.QGraphicsView, pos: gen_qpoint_types.QPoint): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsView_itemAt(self.h, pos.h))

proc itemAt*(self: gen_qgraphicsview_types.QGraphicsView, x: cint, y: cint): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsView_itemAt2(self.h, x, y))

proc mapToScene*(self: gen_qgraphicsview_types.QGraphicsView, point: gen_qpoint_types.QPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsView_mapToScene(self.h, point.h))

proc mapToScene*(self: gen_qgraphicsview_types.QGraphicsView, path: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsView_mapToSceneWithPath(self.h, path.h))

proc mapFromScene*(self: gen_qgraphicsview_types.QGraphicsView, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsView_mapFromScene(self.h, point.h))

proc mapFromScene*(self: gen_qgraphicsview_types.QGraphicsView, path: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsView_mapFromSceneWithPath(self.h, path.h))

proc mapToScene*(self: gen_qgraphicsview_types.QGraphicsView, x: cint, y: cint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsView_mapToScene2(self.h, x, y))

proc mapFromScene*(self: gen_qgraphicsview_types.QGraphicsView, x: float64, y: float64): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsView_mapFromScene2(self.h, x, y))

proc inputMethodQuery*(self: gen_qgraphicsview_types.QGraphicsView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsView_inputMethodQuery(self.h, cint(query)))

proc backgroundBrush*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQGraphicsView_backgroundBrush(self.h))

proc setBackgroundBrush*(self: gen_qgraphicsview_types.QGraphicsView, brush: gen_qbrush_types.QBrush): void =
  fcQGraphicsView_setBackgroundBrush(self.h, brush.h)

proc foregroundBrush*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQGraphicsView_foregroundBrush(self.h))

proc setForegroundBrush*(self: gen_qgraphicsview_types.QGraphicsView, brush: gen_qbrush_types.QBrush): void =
  fcQGraphicsView_setForegroundBrush(self.h, brush.h)

proc updateScene*(self: gen_qgraphicsview_types.QGraphicsView, rects: seq[gen_qrect_types.QRectF]): void =
  var rects_CArray = newSeq[pointer](len(rects))
  for i in 0..<len(rects):
    rects_CArray[i] = rects[i].h

  fcQGraphicsView_updateScene(self.h, struct_miqt_array(len: csize_t(len(rects)), data: if len(rects) == 0: nil else: addr(rects_CArray[0])))

proc invalidateScene*(self: gen_qgraphicsview_types.QGraphicsView, ): void =
  fcQGraphicsView_invalidateScene(self.h)

proc updateSceneRect*(self: gen_qgraphicsview_types.QGraphicsView, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsView_updateSceneRect(self.h, rect.h)

proc rubberBandChanged*(self: gen_qgraphicsview_types.QGraphicsView, viewportRect: gen_qrect_types.QRect, fromScenePoint: gen_qpoint_types.QPointF, toScenePoint: gen_qpoint_types.QPointF): void =
  fcQGraphicsView_rubberBandChanged(self.h, viewportRect.h, fromScenePoint.h, toScenePoint.h)

type QGraphicsViewrubberBandChangedSlot* = proc(viewportRect: gen_qrect_types.QRect, fromScenePoint: gen_qpoint_types.QPointF, toScenePoint: gen_qpoint_types.QPointF)
proc miqt_exec_callback_cQGraphicsView_rubberBandChanged(slot: int, viewportRect: pointer, fromScenePoint: pointer, toScenePoint: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsViewrubberBandChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: viewportRect)

  let slotval2 = gen_qpoint_types.QPointF(h: fromScenePoint)

  let slotval3 = gen_qpoint_types.QPointF(h: toScenePoint)

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQGraphicsView_rubberBandChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsViewrubberBandChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrubberBandChanged*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewrubberBandChangedSlot) =
  var tmp = new QGraphicsViewrubberBandChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_connect_rubberBandChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsView_rubberBandChanged, miqt_exec_callback_cQGraphicsView_rubberBandChanged_release)

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

proc setRenderHint*(self: gen_qgraphicsview_types.QGraphicsView, hint: cint, enabled: bool): void =
  fcQGraphicsView_setRenderHint2(self.h, cint(hint), enabled)

proc setOptimizationFlag*(self: gen_qgraphicsview_types.QGraphicsView, flag: cint, enabled: bool): void =
  fcQGraphicsView_setOptimizationFlag2(self.h, cint(flag), enabled)

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
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, x: cint, y: cint, w: cint, h: cint, mode: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_items5(self.h, x, y, w, h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc items*(self: gen_qgraphicsview_types.QGraphicsView, path: gen_qpainterpath_types.QPainterPath, mode: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsView_items24(self.h, path.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
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
type QGraphicsViewinitStyleOptionProc* = proc(self: QGraphicsView, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QGraphicsViewdevTypeProc* = proc(self: QGraphicsView): cint {.raises: [], gcsafe.}
type QGraphicsViewsetVisibleProc* = proc(self: QGraphicsView, visible: bool): void {.raises: [], gcsafe.}
type QGraphicsViewheightForWidthProc* = proc(self: QGraphicsView, param1: cint): cint {.raises: [], gcsafe.}
type QGraphicsViewhasHeightForWidthProc* = proc(self: QGraphicsView): bool {.raises: [], gcsafe.}
type QGraphicsViewpaintEngineProc* = proc(self: QGraphicsView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QGraphicsViewenterEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QGraphicsViewleaveEventProc* = proc(self: QGraphicsView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsViewmoveEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QGraphicsViewcloseEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QGraphicsViewtabletEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QGraphicsViewactionEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QGraphicsViewhideEventProc* = proc(self: QGraphicsView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QGraphicsViewnativeEventProc* = proc(self: QGraphicsView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QGraphicsViewmetricProc* = proc(self: QGraphicsView, param1: cint): cint {.raises: [], gcsafe.}
type QGraphicsViewinitPainterProc* = proc(self: QGraphicsView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QGraphicsViewredirectedProc* = proc(self: QGraphicsView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QGraphicsViewsharedPainterProc* = proc(self: QGraphicsView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QGraphicsViewtimerEventProc* = proc(self: QGraphicsView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsViewchildEventProc* = proc(self: QGraphicsView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsViewcustomEventProc* = proc(self: QGraphicsView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsViewconnectNotifyProc* = proc(self: QGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsViewdisconnectNotifyProc* = proc(self: QGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsViewVTable* = object
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
  initStyleOption*: QGraphicsViewinitStyleOptionProc
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
proc QGraphicsViewmetaObject*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsView_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsViewmetacast*(self: gen_qgraphicsview_types.QGraphicsView, param1: cstring): pointer =
  fcQGraphicsView_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsView_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsViewmetacall*(self: gen_qgraphicsview_types.QGraphicsView, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsView_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsViewsizeHint*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGraphicsView_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQGraphicsView_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QGraphicsViewinputMethodQuery*(self: gen_qgraphicsview_types.QGraphicsView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsView_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsView_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsViewsetupViewport*(self: gen_qgraphicsview_types.QGraphicsView, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsView_virtualbase_setupViewport(self.h, widget.h)

proc miqt_exec_callback_cQGraphicsView_setupViewport(vtbl: pointer, self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].setupViewport(self, slotval1)

proc QGraphicsViewevent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsView_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsViewviewportEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsView_virtualbase_viewportEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_viewportEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QGraphicsViewcontextMenuEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QContextMenuEvent): void =
  fcQGraphicsView_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsViewdragEnterEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQGraphicsView_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsViewdragLeaveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQGraphicsView_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsViewdragMoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDragMoveEvent): void =
  fcQGraphicsView_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsViewdropEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDropEvent): void =
  fcQGraphicsView_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsViewfocusInEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsView_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsViewfocusNextPrevChild*(self: gen_qgraphicsview_types.QGraphicsView, next: bool): bool =
  fcQGraphicsView_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQGraphicsView_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QGraphicsViewfocusOutEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsView_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsViewkeyPressEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsView_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsViewkeyReleaseEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsView_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsViewmouseDoubleClickEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fcQGraphicsView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsViewmousePressEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fcQGraphicsView_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsViewmouseMoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fcQGraphicsView_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsViewmouseReleaseEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fcQGraphicsView_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsViewwheelEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QWheelEvent): void =
  fcQGraphicsView_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsViewpaintEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QPaintEvent): void =
  fcQGraphicsView_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QGraphicsViewresizeEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QResizeEvent): void =
  fcQGraphicsView_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QGraphicsViewscrollContentsBy*(self: gen_qgraphicsview_types.QGraphicsView, dx: cint, dy: cint): void =
  fcQGraphicsView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQGraphicsView_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QGraphicsViewshowEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QShowEvent): void =
  fcQGraphicsView_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QGraphicsViewinputMethodEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsView_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsViewdrawBackground*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsView_virtualbase_drawBackground(self.h, painter.h, rect.h)

proc miqt_exec_callback_cQGraphicsView_drawBackground(vtbl: pointer, self: pointer, painter: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRectF(h: rect)
  vtbl[].drawBackground(self, slotval1, slotval2)

proc QGraphicsViewdrawForeground*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsView_virtualbase_drawForeground(self.h, painter.h, rect.h)

proc miqt_exec_callback_cQGraphicsView_drawForeground(vtbl: pointer, self: pointer, painter: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRectF(h: rect)
  vtbl[].drawForeground(self, slotval1, slotval2)

proc QGraphicsViewminimumSizeHint*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGraphicsView_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQGraphicsView_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QGraphicsVieweventFilter*(self: gen_qgraphicsview_types.QGraphicsView, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsView_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQGraphicsView_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsViewviewportSizeHint*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGraphicsView_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQGraphicsView_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QGraphicsViewchangeEvent*(self: gen_qgraphicsview_types.QGraphicsView, param1: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsView_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsView_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QGraphicsViewinitStyleOption*(self: gen_qgraphicsview_types.QGraphicsView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQGraphicsView_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQGraphicsView_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QGraphicsViewdevType*(self: gen_qgraphicsview_types.QGraphicsView, ): cint =
  fcQGraphicsView_virtualbase_devType(self.h)

proc miqt_exec_callback_cQGraphicsView_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QGraphicsViewsetVisible*(self: gen_qgraphicsview_types.QGraphicsView, visible: bool): void =
  fcQGraphicsView_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQGraphicsView_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QGraphicsViewheightForWidth*(self: gen_qgraphicsview_types.QGraphicsView, param1: cint): cint =
  fcQGraphicsView_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQGraphicsView_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QGraphicsViewhasHeightForWidth*(self: gen_qgraphicsview_types.QGraphicsView, ): bool =
  fcQGraphicsView_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQGraphicsView_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QGraphicsViewpaintEngine*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQGraphicsView_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQGraphicsView_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QGraphicsViewenterEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QEnterEvent): void =
  fcQGraphicsView_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QGraphicsViewleaveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsView_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QGraphicsViewmoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMoveEvent): void =
  fcQGraphicsView_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QGraphicsViewcloseEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QCloseEvent): void =
  fcQGraphicsView_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QGraphicsViewtabletEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QTabletEvent): void =
  fcQGraphicsView_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QGraphicsViewactionEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QActionEvent): void =
  fcQGraphicsView_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QGraphicsViewhideEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QHideEvent): void =
  fcQGraphicsView_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QGraphicsViewnativeEvent*(self: gen_qgraphicsview_types.QGraphicsView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQGraphicsView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQGraphicsView_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
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

proc miqt_exec_callback_cQGraphicsView_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QGraphicsViewinitPainter*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsView_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQGraphicsView_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QGraphicsViewredirected*(self: gen_qgraphicsview_types.QGraphicsView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQGraphicsView_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQGraphicsView_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QGraphicsViewsharedPainter*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQGraphicsView_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQGraphicsView_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QGraphicsViewtimerEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsView_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsViewchildEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsViewcustomEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsViewconnectNotify*(self: gen_qgraphicsview_types.QGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsViewdisconnectNotify*(self: gen_qgraphicsview_types.QGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsViewVTable](vtbl)
  let self = QGraphicsView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QGraphicsViewVTable = nil): gen_qgraphicsview_types.QGraphicsView =
  let vtbl = if vtbl == nil: new QGraphicsViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsViewVTable, _: ptr cQGraphicsView) {.cdecl.} =
    let vtbl = cast[ref QGraphicsViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsView_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsView_sizeHint
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsView_inputMethodQuery
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQGraphicsView_setupViewport
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsView_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQGraphicsView_viewportEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsView_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsView_focusInEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsView_focusNextPrevChild
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsView_keyReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsView_mouseDoubleClickEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsView_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsView_mouseReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsView_wheelEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQGraphicsView_paintEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsView_resizeEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQGraphicsView_scrollContentsBy
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsView_showEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsView_inputMethodEvent
  if not isNil(vtbl.drawBackground):
    vtbl[].vtbl.drawBackground = miqt_exec_callback_cQGraphicsView_drawBackground
  if not isNil(vtbl.drawForeground):
    vtbl[].vtbl.drawForeground = miqt_exec_callback_cQGraphicsView_drawForeground
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQGraphicsView_minimumSizeHint
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsView_eventFilter
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQGraphicsView_viewportSizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsView_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsView_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQGraphicsView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQGraphicsView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQGraphicsView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQGraphicsView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQGraphicsView_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQGraphicsView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQGraphicsView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQGraphicsView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQGraphicsView_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQGraphicsView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQGraphicsView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQGraphicsView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQGraphicsView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQGraphicsView_sharedPainter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsView_disconnectNotify
  gen_qgraphicsview_types.QGraphicsView(h: fcQGraphicsView_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    vtbl: ref QGraphicsViewVTable = nil): gen_qgraphicsview_types.QGraphicsView =
  let vtbl = if vtbl == nil: new QGraphicsViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsViewVTable, _: ptr cQGraphicsView) {.cdecl.} =
    let vtbl = cast[ref QGraphicsViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsView_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsView_sizeHint
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsView_inputMethodQuery
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQGraphicsView_setupViewport
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsView_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQGraphicsView_viewportEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsView_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsView_focusInEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsView_focusNextPrevChild
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsView_keyReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsView_mouseDoubleClickEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsView_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsView_mouseReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsView_wheelEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQGraphicsView_paintEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsView_resizeEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQGraphicsView_scrollContentsBy
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsView_showEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsView_inputMethodEvent
  if not isNil(vtbl.drawBackground):
    vtbl[].vtbl.drawBackground = miqt_exec_callback_cQGraphicsView_drawBackground
  if not isNil(vtbl.drawForeground):
    vtbl[].vtbl.drawForeground = miqt_exec_callback_cQGraphicsView_drawForeground
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQGraphicsView_minimumSizeHint
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsView_eventFilter
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQGraphicsView_viewportSizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsView_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsView_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQGraphicsView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQGraphicsView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQGraphicsView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQGraphicsView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQGraphicsView_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQGraphicsView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQGraphicsView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQGraphicsView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQGraphicsView_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQGraphicsView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQGraphicsView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQGraphicsView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQGraphicsView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQGraphicsView_sharedPainter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsView_disconnectNotify
  gen_qgraphicsview_types.QGraphicsView(h: fcQGraphicsView_new2(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    scene: gen_qgraphicsscene_types.QGraphicsScene,
    vtbl: ref QGraphicsViewVTable = nil): gen_qgraphicsview_types.QGraphicsView =
  let vtbl = if vtbl == nil: new QGraphicsViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsViewVTable, _: ptr cQGraphicsView) {.cdecl.} =
    let vtbl = cast[ref QGraphicsViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsView_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsView_sizeHint
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsView_inputMethodQuery
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQGraphicsView_setupViewport
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsView_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQGraphicsView_viewportEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsView_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsView_focusInEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsView_focusNextPrevChild
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsView_keyReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsView_mouseDoubleClickEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsView_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsView_mouseReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsView_wheelEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQGraphicsView_paintEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsView_resizeEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQGraphicsView_scrollContentsBy
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsView_showEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsView_inputMethodEvent
  if not isNil(vtbl.drawBackground):
    vtbl[].vtbl.drawBackground = miqt_exec_callback_cQGraphicsView_drawBackground
  if not isNil(vtbl.drawForeground):
    vtbl[].vtbl.drawForeground = miqt_exec_callback_cQGraphicsView_drawForeground
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQGraphicsView_minimumSizeHint
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsView_eventFilter
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQGraphicsView_viewportSizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsView_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsView_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQGraphicsView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQGraphicsView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQGraphicsView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQGraphicsView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQGraphicsView_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQGraphicsView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQGraphicsView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQGraphicsView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQGraphicsView_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQGraphicsView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQGraphicsView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQGraphicsView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQGraphicsView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQGraphicsView_sharedPainter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsView_disconnectNotify
  gen_qgraphicsview_types.QGraphicsView(h: fcQGraphicsView_new3(addr(vtbl[]), scene.h))

proc create*(T: type gen_qgraphicsview_types.QGraphicsView,
    scene: gen_qgraphicsscene_types.QGraphicsScene, parent: gen_qwidget_types.QWidget,
    vtbl: ref QGraphicsViewVTable = nil): gen_qgraphicsview_types.QGraphicsView =
  let vtbl = if vtbl == nil: new QGraphicsViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsViewVTable, _: ptr cQGraphicsView) {.cdecl.} =
    let vtbl = cast[ref QGraphicsViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsView_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsView_sizeHint
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsView_inputMethodQuery
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQGraphicsView_setupViewport
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsView_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQGraphicsView_viewportEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsView_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsView_focusInEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsView_focusNextPrevChild
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsView_keyReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsView_mouseDoubleClickEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsView_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsView_mouseReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsView_wheelEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQGraphicsView_paintEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsView_resizeEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQGraphicsView_scrollContentsBy
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsView_showEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsView_inputMethodEvent
  if not isNil(vtbl.drawBackground):
    vtbl[].vtbl.drawBackground = miqt_exec_callback_cQGraphicsView_drawBackground
  if not isNil(vtbl.drawForeground):
    vtbl[].vtbl.drawForeground = miqt_exec_callback_cQGraphicsView_drawForeground
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQGraphicsView_minimumSizeHint
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsView_eventFilter
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQGraphicsView_viewportSizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsView_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsView_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQGraphicsView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQGraphicsView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQGraphicsView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQGraphicsView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQGraphicsView_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQGraphicsView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQGraphicsView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQGraphicsView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQGraphicsView_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQGraphicsView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQGraphicsView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQGraphicsView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQGraphicsView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQGraphicsView_sharedPainter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsView_disconnectNotify
  gen_qgraphicsview_types.QGraphicsView(h: fcQGraphicsView_new4(addr(vtbl[]), scene.h, parent.h))

proc staticMetaObject*(_: type gen_qgraphicsview_types.QGraphicsView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsView_staticMetaObject())
proc delete*(self: gen_qgraphicsview_types.QGraphicsView) =
  fcQGraphicsView_delete(self.h)
