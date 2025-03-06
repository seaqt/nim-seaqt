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

proc fcQGraphicsView_new(parent: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new".}
proc fcQGraphicsView_new2(): ptr cQGraphicsView {.importc: "QGraphicsView_new2".}
proc fcQGraphicsView_new3(scene: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new3".}
proc fcQGraphicsView_new4(scene: pointer, parent: pointer): ptr cQGraphicsView {.importc: "QGraphicsView_new4".}
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
proc fcQGraphicsView_connect_rubberBandChanged(self: pointer, slot: int) {.importc: "QGraphicsView_connect_rubberBandChanged".}
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
proc fQGraphicsView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsView_virtualbase_metaObject".}
proc fcQGraphicsView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_metaObject".}
proc fQGraphicsView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsView_virtualbase_metacast".}
proc fcQGraphicsView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_metacast".}
proc fQGraphicsView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsView_virtualbase_metacall".}
proc fcQGraphicsView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_metacall".}
proc fQGraphicsView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QGraphicsView_virtualbase_sizeHint".}
proc fcQGraphicsView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_sizeHint".}
proc fQGraphicsView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsView_virtualbase_inputMethodQuery".}
proc fcQGraphicsView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_inputMethodQuery".}
proc fQGraphicsView_virtualbase_setupViewport(self: pointer, widget: pointer): void{.importc: "QGraphicsView_virtualbase_setupViewport".}
proc fcQGraphicsView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_setupViewport".}
proc fQGraphicsView_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsView_virtualbase_event".}
proc fcQGraphicsView_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_event".}
proc fQGraphicsView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsView_virtualbase_viewportEvent".}
proc fcQGraphicsView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_viewportEvent".}
proc fQGraphicsView_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_contextMenuEvent".}
proc fcQGraphicsView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_contextMenuEvent".}
proc fQGraphicsView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_dragEnterEvent".}
proc fcQGraphicsView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_dragEnterEvent".}
proc fQGraphicsView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_dragLeaveEvent".}
proc fcQGraphicsView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_dragLeaveEvent".}
proc fQGraphicsView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_dragMoveEvent".}
proc fcQGraphicsView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_dragMoveEvent".}
proc fQGraphicsView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_dropEvent".}
proc fcQGraphicsView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_dropEvent".}
proc fQGraphicsView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_focusInEvent".}
proc fcQGraphicsView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_focusInEvent".}
proc fQGraphicsView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QGraphicsView_virtualbase_focusNextPrevChild".}
proc fcQGraphicsView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_focusNextPrevChild".}
proc fQGraphicsView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_focusOutEvent".}
proc fcQGraphicsView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_focusOutEvent".}
proc fQGraphicsView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_keyPressEvent".}
proc fcQGraphicsView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_keyPressEvent".}
proc fQGraphicsView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_keyReleaseEvent".}
proc fcQGraphicsView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_keyReleaseEvent".}
proc fQGraphicsView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_mousePressEvent".}
proc fcQGraphicsView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_mousePressEvent".}
proc fQGraphicsView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_mouseMoveEvent".}
proc fcQGraphicsView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_mouseMoveEvent".}
proc fQGraphicsView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_mouseReleaseEvent".}
proc fQGraphicsView_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_wheelEvent".}
proc fcQGraphicsView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_wheelEvent".}
proc fQGraphicsView_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_paintEvent".}
proc fcQGraphicsView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_paintEvent".}
proc fQGraphicsView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_resizeEvent".}
proc fcQGraphicsView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_resizeEvent".}
proc fQGraphicsView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QGraphicsView_virtualbase_scrollContentsBy".}
proc fcQGraphicsView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_scrollContentsBy".}
proc fQGraphicsView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_showEvent".}
proc fcQGraphicsView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_showEvent".}
proc fQGraphicsView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_inputMethodEvent".}
proc fcQGraphicsView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_inputMethodEvent".}
proc fQGraphicsView_virtualbase_drawBackground(self: pointer, painter: pointer, rect: pointer): void{.importc: "QGraphicsView_virtualbase_drawBackground".}
proc fcQGraphicsView_override_virtual_drawBackground(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_drawBackground".}
proc fQGraphicsView_virtualbase_drawForeground(self: pointer, painter: pointer, rect: pointer): void{.importc: "QGraphicsView_virtualbase_drawForeground".}
proc fcQGraphicsView_override_virtual_drawForeground(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_drawForeground".}
proc fQGraphicsView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QGraphicsView_virtualbase_minimumSizeHint".}
proc fcQGraphicsView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_minimumSizeHint".}
proc fQGraphicsView_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QGraphicsView_virtualbase_eventFilter".}
proc fcQGraphicsView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_eventFilter".}
proc fQGraphicsView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QGraphicsView_virtualbase_viewportSizeHint".}
proc fcQGraphicsView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_viewportSizeHint".}
proc fQGraphicsView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsView_virtualbase_changeEvent".}
proc fcQGraphicsView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_changeEvent".}
proc fQGraphicsView_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QGraphicsView_virtualbase_initStyleOption".}
proc fcQGraphicsView_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_initStyleOption".}
proc fQGraphicsView_virtualbase_devType(self: pointer, ): cint{.importc: "QGraphicsView_virtualbase_devType".}
proc fcQGraphicsView_override_virtual_devType(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_devType".}
proc fQGraphicsView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QGraphicsView_virtualbase_setVisible".}
proc fcQGraphicsView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_setVisible".}
proc fQGraphicsView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QGraphicsView_virtualbase_heightForWidth".}
proc fcQGraphicsView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_heightForWidth".}
proc fQGraphicsView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QGraphicsView_virtualbase_hasHeightForWidth".}
proc fcQGraphicsView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_hasHeightForWidth".}
proc fQGraphicsView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QGraphicsView_virtualbase_paintEngine".}
proc fcQGraphicsView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_paintEngine".}
proc fQGraphicsView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_enterEvent".}
proc fcQGraphicsView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_enterEvent".}
proc fQGraphicsView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_leaveEvent".}
proc fcQGraphicsView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_leaveEvent".}
proc fQGraphicsView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_moveEvent".}
proc fcQGraphicsView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_moveEvent".}
proc fQGraphicsView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_closeEvent".}
proc fcQGraphicsView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_closeEvent".}
proc fQGraphicsView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_tabletEvent".}
proc fcQGraphicsView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_tabletEvent".}
proc fQGraphicsView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_actionEvent".}
proc fcQGraphicsView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_actionEvent".}
proc fQGraphicsView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_hideEvent".}
proc fcQGraphicsView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_hideEvent".}
proc fQGraphicsView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QGraphicsView_virtualbase_nativeEvent".}
proc fcQGraphicsView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_nativeEvent".}
proc fQGraphicsView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QGraphicsView_virtualbase_metric".}
proc fcQGraphicsView_override_virtual_metric(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_metric".}
proc fQGraphicsView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QGraphicsView_virtualbase_initPainter".}
proc fcQGraphicsView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_initPainter".}
proc fQGraphicsView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QGraphicsView_virtualbase_redirected".}
proc fcQGraphicsView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_redirected".}
proc fQGraphicsView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QGraphicsView_virtualbase_sharedPainter".}
proc fcQGraphicsView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_sharedPainter".}
proc fQGraphicsView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_timerEvent".}
proc fcQGraphicsView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_timerEvent".}
proc fQGraphicsView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_childEvent".}
proc fcQGraphicsView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_childEvent".}
proc fQGraphicsView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsView_virtualbase_customEvent".}
proc fcQGraphicsView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_customEvent".}
proc fQGraphicsView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsView_virtualbase_connectNotify".}
proc fcQGraphicsView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_connectNotify".}
proc fQGraphicsView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsView_virtualbase_disconnectNotify".}
proc fcQGraphicsView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsView_override_virtual_disconnectNotify".}
proc fcQGraphicsView_staticMetaObject(): pointer {.importc: "QGraphicsView_staticMetaObject".}
proc fcQGraphicsView_delete(self: pointer) {.importc: "QGraphicsView_delete".}


func init*(T: type gen_qgraphicsview_types.QGraphicsView, h: ptr cQGraphicsView): gen_qgraphicsview_types.QGraphicsView =
  T(h: h)
proc create*(T: type gen_qgraphicsview_types.QGraphicsView, parent: gen_qwidget_types.QWidget): gen_qgraphicsview_types.QGraphicsView =
  gen_qgraphicsview_types.QGraphicsView.init(fcQGraphicsView_new(parent.h))

proc create*(T: type gen_qgraphicsview_types.QGraphicsView, ): gen_qgraphicsview_types.QGraphicsView =
  gen_qgraphicsview_types.QGraphicsView.init(fcQGraphicsView_new2())

proc create*(T: type gen_qgraphicsview_types.QGraphicsView, scene: gen_qgraphicsscene_types.QGraphicsScene): gen_qgraphicsview_types.QGraphicsView =
  gen_qgraphicsview_types.QGraphicsView.init(fcQGraphicsView_new3(scene.h))

proc create*(T: type gen_qgraphicsview_types.QGraphicsView, scene: gen_qgraphicsscene_types.QGraphicsScene, parent: gen_qwidget_types.QWidget): gen_qgraphicsview_types.QGraphicsView =
  gen_qgraphicsview_types.QGraphicsView.init(fcQGraphicsView_new4(scene.h, parent.h))

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
proc miqt_exec_callback_QGraphicsView_rubberBandChanged(slot: int, viewportRect: pointer, fromScenePoint: pointer, toScenePoint: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsViewrubberBandChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: viewportRect)

  let slotval2 = gen_qpoint_types.QPointF(h: fromScenePoint)

  let slotval3 = gen_qpoint_types.QPointF(h: toScenePoint)

  nimfunc[](slotval1, slotval2, slotval3)

proc onrubberBandChanged*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewrubberBandChangedSlot) =
  var tmp = new QGraphicsViewrubberBandChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_connect_rubberBandChanged(self.h, cast[int](addr tmp[]))

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

proc QGraphicsViewmetaObject*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQGraphicsView_virtualbase_metaObject(self.h))

type QGraphicsViewmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewmetaObjectProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_metaObject(self: ptr cQGraphicsView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsView_metaObject ".} =
  var nimfunc = cast[ptr QGraphicsViewmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsViewmetacast*(self: gen_qgraphicsview_types.QGraphicsView, param1: cstring): pointer =
  fQGraphicsView_virtualbase_metacast(self.h, param1)

type QGraphicsViewmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewmetacastProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_metacast(self: ptr cQGraphicsView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsView_metacast ".} =
  var nimfunc = cast[ptr QGraphicsViewmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsViewmetacall*(self: gen_qgraphicsview_types.QGraphicsView, param1: cint, param2: cint, param3: pointer): cint =
  fQGraphicsView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsViewmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewmetacallProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_metacall(self: ptr cQGraphicsView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsView_metacall ".} =
  var nimfunc = cast[ptr QGraphicsViewmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QGraphicsViewsizeHint*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQGraphicsView_virtualbase_sizeHint(self.h))

type QGraphicsViewsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewsizeHintProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_sizeHint(self: ptr cQGraphicsView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsView_sizeHint ".} =
  var nimfunc = cast[ptr QGraphicsViewsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsViewinputMethodQuery*(self: gen_qgraphicsview_types.QGraphicsView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsViewinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_inputMethodQuery(self: ptr cQGraphicsView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsView_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsViewinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsViewsetupViewport*(self: gen_qgraphicsview_types.QGraphicsView, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsView_virtualbase_setupViewport(self.h, widget.h)

type QGraphicsViewsetupViewportProc* = proc(widget: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewsetupViewportProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_setupViewport(self: ptr cQGraphicsView, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_setupViewport ".} =
  var nimfunc = cast[ptr QGraphicsViewsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1)
proc QGraphicsViewevent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsView_virtualbase_event(self.h, event.h)

type QGraphicsVieweventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsVieweventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_event(self: ptr cQGraphicsView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsView_event ".} =
  var nimfunc = cast[ptr QGraphicsVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsViewviewportEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsView_virtualbase_viewportEvent(self.h, event.h)

type QGraphicsViewviewportEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewviewportEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_viewportEvent(self: ptr cQGraphicsView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsView_viewportEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsViewcontextMenuEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QContextMenuEvent): void =
  fQGraphicsView_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsViewcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_contextMenuEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewdragEnterEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDragEnterEvent): void =
  fQGraphicsView_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsViewdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_dragEnterEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewdragLeaveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDragLeaveEvent): void =
  fQGraphicsView_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsViewdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_dragLeaveEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewdragMoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDragMoveEvent): void =
  fQGraphicsView_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsViewdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_dragMoveEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewdropEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QDropEvent): void =
  fQGraphicsView_virtualbase_dropEvent(self.h, event.h)

type QGraphicsViewdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_dropEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewfocusInEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsView_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsViewfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_focusInEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewfocusNextPrevChild*(self: gen_qgraphicsview_types.QGraphicsView, next: bool): bool =
  fQGraphicsView_virtualbase_focusNextPrevChild(self.h, next)

type QGraphicsViewfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_focusNextPrevChild(self: ptr cQGraphicsView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QGraphicsView_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QGraphicsViewfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsViewfocusOutEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsView_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsViewfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_focusOutEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewkeyPressEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsView_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsViewkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_keyPressEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewkeyReleaseEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsView_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsViewkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_keyReleaseEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewmouseDoubleClickEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fQGraphicsView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsViewmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_mouseDoubleClickEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewmousePressEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fQGraphicsView_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsViewmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_mousePressEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewmouseMoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fQGraphicsView_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsViewmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_mouseMoveEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewmouseReleaseEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMouseEvent): void =
  fQGraphicsView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsViewmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_mouseReleaseEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewwheelEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QWheelEvent): void =
  fQGraphicsView_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsViewwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_wheelEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewpaintEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QPaintEvent): void =
  fQGraphicsView_virtualbase_paintEvent(self.h, event.h)

type QGraphicsViewpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewpaintEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_paintEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_paintEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewresizeEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QResizeEvent): void =
  fQGraphicsView_virtualbase_resizeEvent(self.h, event.h)

type QGraphicsViewresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_resizeEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_resizeEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewscrollContentsBy*(self: gen_qgraphicsview_types.QGraphicsView, dx: cint, dy: cint): void =
  fQGraphicsView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QGraphicsViewscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_scrollContentsBy(self: ptr cQGraphicsView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QGraphicsView_scrollContentsBy ".} =
  var nimfunc = cast[ptr QGraphicsViewscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QGraphicsViewshowEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QShowEvent): void =
  fQGraphicsView_virtualbase_showEvent(self.h, event.h)

type QGraphicsViewshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewshowEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_showEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_showEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewinputMethodEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsView_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsViewinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_inputMethodEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewdrawBackground*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void =
  fQGraphicsView_virtualbase_drawBackground(self.h, painter.h, rect.h)

type QGraphicsViewdrawBackgroundProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void
proc ondrawBackground*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewdrawBackgroundProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewdrawBackgroundProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_drawBackground(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_drawBackground(self: ptr cQGraphicsView, slot: int, painter: pointer, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_drawBackground ".} =
  var nimfunc = cast[ptr QGraphicsViewdrawBackgroundProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qrect_types.QRectF(h: rect)


  nimfunc[](slotval1, slotval2)
proc QGraphicsViewdrawForeground*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void =
  fQGraphicsView_virtualbase_drawForeground(self.h, painter.h, rect.h)

type QGraphicsViewdrawForegroundProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void
proc ondrawForeground*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewdrawForegroundProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewdrawForegroundProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_drawForeground(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_drawForeground(self: ptr cQGraphicsView, slot: int, painter: pointer, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_drawForeground ".} =
  var nimfunc = cast[ptr QGraphicsViewdrawForegroundProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qrect_types.QRectF(h: rect)


  nimfunc[](slotval1, slotval2)
proc QGraphicsViewminimumSizeHint*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQGraphicsView_virtualbase_minimumSizeHint(self.h))

type QGraphicsViewminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_minimumSizeHint(self: ptr cQGraphicsView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsView_minimumSizeHint ".} =
  var nimfunc = cast[ptr QGraphicsViewminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsVieweventFilter*(self: gen_qgraphicsview_types.QGraphicsView, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsView_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QGraphicsVieweventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_eventFilter(self: ptr cQGraphicsView, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsView_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsViewviewportSizeHint*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQGraphicsView_virtualbase_viewportSizeHint(self.h))

type QGraphicsViewviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_viewportSizeHint(self: ptr cQGraphicsView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsView_viewportSizeHint ".} =
  var nimfunc = cast[ptr QGraphicsViewviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsViewchangeEvent*(self: gen_qgraphicsview_types.QGraphicsView, param1: gen_qcoreevent_types.QEvent): void =
  fQGraphicsView_virtualbase_changeEvent(self.h, param1.h)

type QGraphicsViewchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewchangeEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_changeEvent(self: ptr cQGraphicsView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_changeEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsViewinitStyleOption*(self: gen_qgraphicsview_types.QGraphicsView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQGraphicsView_virtualbase_initStyleOption(self.h, option.h)

type QGraphicsViewinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_initStyleOption(self: ptr cQGraphicsView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_initStyleOption ".} =
  var nimfunc = cast[ptr QGraphicsViewinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QGraphicsViewdevType*(self: gen_qgraphicsview_types.QGraphicsView, ): cint =
  fQGraphicsView_virtualbase_devType(self.h)

type QGraphicsViewdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewdevTypeProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_devType(self: ptr cQGraphicsView, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsView_devType ".} =
  var nimfunc = cast[ptr QGraphicsViewdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsViewsetVisible*(self: gen_qgraphicsview_types.QGraphicsView, visible: bool): void =
  fQGraphicsView_virtualbase_setVisible(self.h, visible)

type QGraphicsViewsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewsetVisibleProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_setVisible(self: ptr cQGraphicsView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QGraphicsView_setVisible ".} =
  var nimfunc = cast[ptr QGraphicsViewsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QGraphicsViewheightForWidth*(self: gen_qgraphicsview_types.QGraphicsView, param1: cint): cint =
  fQGraphicsView_virtualbase_heightForWidth(self.h, param1)

type QGraphicsViewheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewheightForWidthProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_heightForWidth(self: ptr cQGraphicsView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGraphicsView_heightForWidth ".} =
  var nimfunc = cast[ptr QGraphicsViewheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsViewhasHeightForWidth*(self: gen_qgraphicsview_types.QGraphicsView, ): bool =
  fQGraphicsView_virtualbase_hasHeightForWidth(self.h)

type QGraphicsViewhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_hasHeightForWidth(self: ptr cQGraphicsView, slot: int): bool {.exportc: "miqt_exec_callback_QGraphicsView_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QGraphicsViewhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsViewpaintEngine*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQGraphicsView_virtualbase_paintEngine(self.h))

type QGraphicsViewpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewpaintEngineProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_paintEngine(self: ptr cQGraphicsView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsView_paintEngine ".} =
  var nimfunc = cast[ptr QGraphicsViewpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsViewenterEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QEnterEvent): void =
  fQGraphicsView_virtualbase_enterEvent(self.h, event.h)

type QGraphicsViewenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewenterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_enterEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_enterEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewleaveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsView_virtualbase_leaveEvent(self.h, event.h)

type QGraphicsViewleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewleaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_leaveEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_leaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewmoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QMoveEvent): void =
  fQGraphicsView_virtualbase_moveEvent(self.h, event.h)

type QGraphicsViewmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_moveEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_moveEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewcloseEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QCloseEvent): void =
  fQGraphicsView_virtualbase_closeEvent(self.h, event.h)

type QGraphicsViewcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_closeEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_closeEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewtabletEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QTabletEvent): void =
  fQGraphicsView_virtualbase_tabletEvent(self.h, event.h)

type QGraphicsViewtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewtabletEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_tabletEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_tabletEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewactionEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QActionEvent): void =
  fQGraphicsView_virtualbase_actionEvent(self.h, event.h)

type QGraphicsViewactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewactionEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_actionEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_actionEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewhideEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qevent_types.QHideEvent): void =
  fQGraphicsView_virtualbase_hideEvent(self.h, event.h)

type QGraphicsViewhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewhideEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_hideEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_hideEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewnativeEvent*(self: gen_qgraphicsview_types.QGraphicsView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQGraphicsView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QGraphicsViewnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewnativeEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_nativeEvent(self: ptr cQGraphicsView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QGraphicsView_nativeEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QGraphicsViewmetric*(self: gen_qgraphicsview_types.QGraphicsView, param1: cint): cint =
  fQGraphicsView_virtualbase_metric(self.h, cint(param1))

type QGraphicsViewmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewmetricProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_metric(self: ptr cQGraphicsView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGraphicsView_metric ".} =
  var nimfunc = cast[ptr QGraphicsViewmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsViewinitPainter*(self: gen_qgraphicsview_types.QGraphicsView, painter: gen_qpainter_types.QPainter): void =
  fQGraphicsView_virtualbase_initPainter(self.h, painter.h)

type QGraphicsViewinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewinitPainterProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_initPainter(self: ptr cQGraphicsView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_initPainter ".} =
  var nimfunc = cast[ptr QGraphicsViewinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QGraphicsViewredirected*(self: gen_qgraphicsview_types.QGraphicsView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQGraphicsView_virtualbase_redirected(self.h, offset.h))

type QGraphicsViewredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewredirectedProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_redirected(self: ptr cQGraphicsView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsView_redirected ".} =
  var nimfunc = cast[ptr QGraphicsViewredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsViewsharedPainter*(self: gen_qgraphicsview_types.QGraphicsView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQGraphicsView_virtualbase_sharedPainter(self.h))

type QGraphicsViewsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewsharedPainterProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_sharedPainter(self: ptr cQGraphicsView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsView_sharedPainter ".} =
  var nimfunc = cast[ptr QGraphicsViewsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsViewtimerEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsView_virtualbase_timerEvent(self.h, event.h)

type QGraphicsViewtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_timerEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewchildEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsView_virtualbase_childEvent(self.h, event.h)

type QGraphicsViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_childEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewcustomEvent*(self: gen_qgraphicsview_types.QGraphicsView, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsView_virtualbase_customEvent(self.h, event.h)

type QGraphicsViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_customEvent(self: ptr cQGraphicsView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsViewconnectNotify*(self: gen_qgraphicsview_types.QGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsView_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_connectNotify(self: ptr cQGraphicsView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsViewdisconnectNotify*(self: gen_qgraphicsview_types.QGraphicsView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsView_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicsview_types.QGraphicsView, slot: QGraphicsViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsView_disconnectNotify(self: ptr cQGraphicsView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsView_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgraphicsview_types.QGraphicsView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsView_staticMetaObject())
proc delete*(self: gen_qgraphicsview_types.QGraphicsView) =
  fcQGraphicsView_delete(self.h)
