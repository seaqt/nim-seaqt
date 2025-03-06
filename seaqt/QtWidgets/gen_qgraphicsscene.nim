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
{.compile("gen_qgraphicsscene.cpp", cflags).}


type QGraphicsSceneItemIndexMethodEnum* = distinct cint
template BspTreeIndex*(_: type QGraphicsSceneItemIndexMethodEnum): untyped = 0
template NoIndex*(_: type QGraphicsSceneItemIndexMethodEnum): untyped = -1


type QGraphicsSceneSceneLayerEnum* = distinct cint
template ItemLayer*(_: type QGraphicsSceneSceneLayerEnum): untyped = 1
template BackgroundLayer*(_: type QGraphicsSceneSceneLayerEnum): untyped = 2
template ForegroundLayer*(_: type QGraphicsSceneSceneLayerEnum): untyped = 4
template AllLayers*(_: type QGraphicsSceneSceneLayerEnum): untyped = 65535


import ./gen_qgraphicsscene_types
export gen_qgraphicsscene_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qline_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qbrush_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpainterpath_types,
  ../QtGui/gen_qpalette_types,
  ../QtGui/gen_qpen_types,
  ../QtGui/gen_qpixmap_types,
  ../QtGui/gen_qtransform_types,
  ./gen_qgraphicsitem_types,
  ./gen_qgraphicsproxywidget_types,
  ./gen_qgraphicssceneevent_types,
  ./gen_qgraphicsview_types,
  ./gen_qgraphicswidget_types,
  ./gen_qstyle_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qline_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qvariant_types,
  gen_qbrush_types,
  gen_qevent_types,
  gen_qfont_types,
  gen_qpainter_types,
  gen_qpainterpath_types,
  gen_qpalette_types,
  gen_qpen_types,
  gen_qpixmap_types,
  gen_qtransform_types,
  gen_qgraphicsitem_types,
  gen_qgraphicsproxywidget_types,
  gen_qgraphicssceneevent_types,
  gen_qgraphicsview_types,
  gen_qgraphicswidget_types,
  gen_qstyle_types,
  gen_qwidget_types

type cQGraphicsScene*{.exportc: "QGraphicsScene", incompleteStruct.} = object

proc fcQGraphicsScene_metaObject(self: pointer, ): pointer {.importc: "QGraphicsScene_metaObject".}
proc fcQGraphicsScene_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsScene_metacast".}
proc fcQGraphicsScene_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsScene_metacall".}
proc fcQGraphicsScene_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsScene_tr".}
proc fcQGraphicsScene_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsScene_trUtf8".}
proc fcQGraphicsScene_sceneRect(self: pointer, ): pointer {.importc: "QGraphicsScene_sceneRect".}
proc fcQGraphicsScene_width(self: pointer, ): float64 {.importc: "QGraphicsScene_width".}
proc fcQGraphicsScene_height(self: pointer, ): float64 {.importc: "QGraphicsScene_height".}
proc fcQGraphicsScene_setSceneRect(self: pointer, rect: pointer): void {.importc: "QGraphicsScene_setSceneRect".}
proc fcQGraphicsScene_setSceneRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsScene_setSceneRect2".}
proc fcQGraphicsScene_render(self: pointer, painter: pointer): void {.importc: "QGraphicsScene_render".}
proc fcQGraphicsScene_itemIndexMethod(self: pointer, ): cint {.importc: "QGraphicsScene_itemIndexMethod".}
proc fcQGraphicsScene_setItemIndexMethod(self: pointer, methodVal: cint): void {.importc: "QGraphicsScene_setItemIndexMethod".}
proc fcQGraphicsScene_isSortCacheEnabled(self: pointer, ): bool {.importc: "QGraphicsScene_isSortCacheEnabled".}
proc fcQGraphicsScene_setSortCacheEnabled(self: pointer, enabled: bool): void {.importc: "QGraphicsScene_setSortCacheEnabled".}
proc fcQGraphicsScene_bspTreeDepth(self: pointer, ): cint {.importc: "QGraphicsScene_bspTreeDepth".}
proc fcQGraphicsScene_setBspTreeDepth(self: pointer, depth: cint): void {.importc: "QGraphicsScene_setBspTreeDepth".}
proc fcQGraphicsScene_itemsBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsScene_itemsBoundingRect".}
proc fcQGraphicsScene_items(self: pointer, ): struct_miqt_array {.importc: "QGraphicsScene_items".}
proc fcQGraphicsScene_itemsWithPos(self: pointer, pos: pointer): struct_miqt_array {.importc: "QGraphicsScene_itemsWithPos".}
proc fcQGraphicsScene_itemsWithRect(self: pointer, rect: pointer): struct_miqt_array {.importc: "QGraphicsScene_itemsWithRect".}
proc fcQGraphicsScene_itemsWithPath(self: pointer, path: pointer): struct_miqt_array {.importc: "QGraphicsScene_itemsWithPath".}
proc fcQGraphicsScene_collidingItems(self: pointer, item: pointer): struct_miqt_array {.importc: "QGraphicsScene_collidingItems".}
proc fcQGraphicsScene_itemAt(self: pointer, pos: pointer, deviceTransform: pointer): pointer {.importc: "QGraphicsScene_itemAt".}
proc fcQGraphicsScene_items2(self: pointer, x: float64, y: float64, w: float64, h: float64, mode: cint, order: cint): struct_miqt_array {.importc: "QGraphicsScene_items2".}
proc fcQGraphicsScene_itemAt2(self: pointer, x: float64, y: float64, deviceTransform: pointer): pointer {.importc: "QGraphicsScene_itemAt2".}
proc fcQGraphicsScene_selectedItems(self: pointer, ): struct_miqt_array {.importc: "QGraphicsScene_selectedItems".}
proc fcQGraphicsScene_selectionArea(self: pointer, ): pointer {.importc: "QGraphicsScene_selectionArea".}
proc fcQGraphicsScene_setSelectionArea(self: pointer, path: pointer, deviceTransform: pointer): void {.importc: "QGraphicsScene_setSelectionArea".}
proc fcQGraphicsScene_setSelectionAreaWithPath(self: pointer, path: pointer): void {.importc: "QGraphicsScene_setSelectionAreaWithPath".}
proc fcQGraphicsScene_setSelectionArea2(self: pointer, path: pointer, selectionOperation: cint): void {.importc: "QGraphicsScene_setSelectionArea2".}
proc fcQGraphicsScene_createItemGroup(self: pointer, items: struct_miqt_array): pointer {.importc: "QGraphicsScene_createItemGroup".}
proc fcQGraphicsScene_destroyItemGroup(self: pointer, group: pointer): void {.importc: "QGraphicsScene_destroyItemGroup".}
proc fcQGraphicsScene_addItem(self: pointer, item: pointer): void {.importc: "QGraphicsScene_addItem".}
proc fcQGraphicsScene_addEllipse(self: pointer, rect: pointer): pointer {.importc: "QGraphicsScene_addEllipse".}
proc fcQGraphicsScene_addLine(self: pointer, line: pointer): pointer {.importc: "QGraphicsScene_addLine".}
proc fcQGraphicsScene_addPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsScene_addPath".}
proc fcQGraphicsScene_addPixmap(self: pointer, pixmap: pointer): pointer {.importc: "QGraphicsScene_addPixmap".}
proc fcQGraphicsScene_addRect(self: pointer, rect: pointer): pointer {.importc: "QGraphicsScene_addRect".}
proc fcQGraphicsScene_addText(self: pointer, text: struct_miqt_string): pointer {.importc: "QGraphicsScene_addText".}
proc fcQGraphicsScene_addSimpleText(self: pointer, text: struct_miqt_string): pointer {.importc: "QGraphicsScene_addSimpleText".}
proc fcQGraphicsScene_addWidget(self: pointer, widget: pointer): pointer {.importc: "QGraphicsScene_addWidget".}
proc fcQGraphicsScene_addEllipse2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsScene_addEllipse2".}
proc fcQGraphicsScene_addLine2(self: pointer, x1: float64, y1: float64, x2: float64, y2: float64): pointer {.importc: "QGraphicsScene_addLine2".}
proc fcQGraphicsScene_addRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsScene_addRect2".}
proc fcQGraphicsScene_removeItem(self: pointer, item: pointer): void {.importc: "QGraphicsScene_removeItem".}
proc fcQGraphicsScene_focusItem(self: pointer, ): pointer {.importc: "QGraphicsScene_focusItem".}
proc fcQGraphicsScene_setFocusItem(self: pointer, item: pointer): void {.importc: "QGraphicsScene_setFocusItem".}
proc fcQGraphicsScene_hasFocus(self: pointer, ): bool {.importc: "QGraphicsScene_hasFocus".}
proc fcQGraphicsScene_setFocus(self: pointer, ): void {.importc: "QGraphicsScene_setFocus".}
proc fcQGraphicsScene_clearFocus(self: pointer, ): void {.importc: "QGraphicsScene_clearFocus".}
proc fcQGraphicsScene_setStickyFocus(self: pointer, enabled: bool): void {.importc: "QGraphicsScene_setStickyFocus".}
proc fcQGraphicsScene_stickyFocus(self: pointer, ): bool {.importc: "QGraphicsScene_stickyFocus".}
proc fcQGraphicsScene_mouseGrabberItem(self: pointer, ): pointer {.importc: "QGraphicsScene_mouseGrabberItem".}
proc fcQGraphicsScene_backgroundBrush(self: pointer, ): pointer {.importc: "QGraphicsScene_backgroundBrush".}
proc fcQGraphicsScene_setBackgroundBrush(self: pointer, brush: pointer): void {.importc: "QGraphicsScene_setBackgroundBrush".}
proc fcQGraphicsScene_foregroundBrush(self: pointer, ): pointer {.importc: "QGraphicsScene_foregroundBrush".}
proc fcQGraphicsScene_setForegroundBrush(self: pointer, brush: pointer): void {.importc: "QGraphicsScene_setForegroundBrush".}
proc fcQGraphicsScene_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsScene_inputMethodQuery".}
proc fcQGraphicsScene_views(self: pointer, ): struct_miqt_array {.importc: "QGraphicsScene_views".}
proc fcQGraphicsScene_update(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsScene_update".}
proc fcQGraphicsScene_invalidate(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsScene_invalidate".}
proc fcQGraphicsScene_style(self: pointer, ): pointer {.importc: "QGraphicsScene_style".}
proc fcQGraphicsScene_setStyle(self: pointer, style: pointer): void {.importc: "QGraphicsScene_setStyle".}
proc fcQGraphicsScene_font(self: pointer, ): pointer {.importc: "QGraphicsScene_font".}
proc fcQGraphicsScene_setFont(self: pointer, font: pointer): void {.importc: "QGraphicsScene_setFont".}
proc fcQGraphicsScene_palette(self: pointer, ): pointer {.importc: "QGraphicsScene_palette".}
proc fcQGraphicsScene_setPalette(self: pointer, palette: pointer): void {.importc: "QGraphicsScene_setPalette".}
proc fcQGraphicsScene_isActive(self: pointer, ): bool {.importc: "QGraphicsScene_isActive".}
proc fcQGraphicsScene_activePanel(self: pointer, ): pointer {.importc: "QGraphicsScene_activePanel".}
proc fcQGraphicsScene_setActivePanel(self: pointer, item: pointer): void {.importc: "QGraphicsScene_setActivePanel".}
proc fcQGraphicsScene_activeWindow(self: pointer, ): pointer {.importc: "QGraphicsScene_activeWindow".}
proc fcQGraphicsScene_setActiveWindow(self: pointer, widget: pointer): void {.importc: "QGraphicsScene_setActiveWindow".}
proc fcQGraphicsScene_sendEvent(self: pointer, item: pointer, event: pointer): bool {.importc: "QGraphicsScene_sendEvent".}
proc fcQGraphicsScene_minimumRenderSize(self: pointer, ): float64 {.importc: "QGraphicsScene_minimumRenderSize".}
proc fcQGraphicsScene_setMinimumRenderSize(self: pointer, minSize: float64): void {.importc: "QGraphicsScene_setMinimumRenderSize".}
proc fcQGraphicsScene_focusOnTouch(self: pointer, ): bool {.importc: "QGraphicsScene_focusOnTouch".}
proc fcQGraphicsScene_setFocusOnTouch(self: pointer, enabled: bool): void {.importc: "QGraphicsScene_setFocusOnTouch".}
proc fcQGraphicsScene_update2(self: pointer, ): void {.importc: "QGraphicsScene_update2".}
proc fcQGraphicsScene_invalidate2(self: pointer, ): void {.importc: "QGraphicsScene_invalidate2".}
proc fcQGraphicsScene_advance(self: pointer, ): void {.importc: "QGraphicsScene_advance".}
proc fcQGraphicsScene_clearSelection(self: pointer, ): void {.importc: "QGraphicsScene_clearSelection".}
proc fcQGraphicsScene_clear(self: pointer, ): void {.importc: "QGraphicsScene_clear".}
proc fcQGraphicsScene_changed(self: pointer, region: struct_miqt_array): void {.importc: "QGraphicsScene_changed".}
proc fcQGraphicsScene_connect_changed(self: pointer, slot: int, callback: proc (slot: int, region: struct_miqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScene_connect_changed".}
proc fcQGraphicsScene_sceneRectChanged(self: pointer, rect: pointer): void {.importc: "QGraphicsScene_sceneRectChanged".}
proc fcQGraphicsScene_connect_sceneRectChanged(self: pointer, slot: int, callback: proc (slot: int, rect: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScene_connect_sceneRectChanged".}
proc fcQGraphicsScene_selectionChanged(self: pointer, ): void {.importc: "QGraphicsScene_selectionChanged".}
proc fcQGraphicsScene_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScene_connect_selectionChanged".}
proc fcQGraphicsScene_focusItemChanged(self: pointer, newFocus: pointer, oldFocus: pointer, reason: cint): void {.importc: "QGraphicsScene_focusItemChanged".}
proc fcQGraphicsScene_connect_focusItemChanged(self: pointer, slot: int, callback: proc (slot: int, newFocus: pointer, oldFocus: pointer, reason: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScene_connect_focusItemChanged".}
proc fcQGraphicsScene_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScene_tr2".}
proc fcQGraphicsScene_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScene_tr3".}
proc fcQGraphicsScene_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScene_trUtf82".}
proc fcQGraphicsScene_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScene_trUtf83".}
proc fcQGraphicsScene_render2(self: pointer, painter: pointer, target: pointer): void {.importc: "QGraphicsScene_render2".}
proc fcQGraphicsScene_render3(self: pointer, painter: pointer, target: pointer, source: pointer): void {.importc: "QGraphicsScene_render3".}
proc fcQGraphicsScene_render4(self: pointer, painter: pointer, target: pointer, source: pointer, aspectRatioMode: cint): void {.importc: "QGraphicsScene_render4".}
proc fcQGraphicsScene_items1(self: pointer, order: cint): struct_miqt_array {.importc: "QGraphicsScene_items1".}
proc fcQGraphicsScene_items22(self: pointer, pos: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsScene_items22".}
proc fcQGraphicsScene_items3(self: pointer, pos: pointer, mode: cint, order: cint): struct_miqt_array {.importc: "QGraphicsScene_items3".}
proc fcQGraphicsScene_items4(self: pointer, pos: pointer, mode: cint, order: cint, deviceTransform: pointer): struct_miqt_array {.importc: "QGraphicsScene_items4".}
proc fcQGraphicsScene_items23(self: pointer, rect: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsScene_items23".}
proc fcQGraphicsScene_items32(self: pointer, rect: pointer, mode: cint, order: cint): struct_miqt_array {.importc: "QGraphicsScene_items32".}
proc fcQGraphicsScene_items42(self: pointer, rect: pointer, mode: cint, order: cint, deviceTransform: pointer): struct_miqt_array {.importc: "QGraphicsScene_items42".}
proc fcQGraphicsScene_items25(self: pointer, path: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsScene_items25".}
proc fcQGraphicsScene_items34(self: pointer, path: pointer, mode: cint, order: cint): struct_miqt_array {.importc: "QGraphicsScene_items34".}
proc fcQGraphicsScene_items44(self: pointer, path: pointer, mode: cint, order: cint, deviceTransform: pointer): struct_miqt_array {.importc: "QGraphicsScene_items44".}
proc fcQGraphicsScene_collidingItems2(self: pointer, item: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsScene_collidingItems2".}
proc fcQGraphicsScene_items7(self: pointer, x: float64, y: float64, w: float64, h: float64, mode: cint, order: cint, deviceTransform: pointer): struct_miqt_array {.importc: "QGraphicsScene_items7".}
proc fcQGraphicsScene_setSelectionArea22(self: pointer, path: pointer, mode: cint): void {.importc: "QGraphicsScene_setSelectionArea22".}
proc fcQGraphicsScene_setSelectionArea3(self: pointer, path: pointer, mode: cint, deviceTransform: pointer): void {.importc: "QGraphicsScene_setSelectionArea3".}
proc fcQGraphicsScene_setSelectionArea32(self: pointer, path: pointer, selectionOperation: cint, mode: cint): void {.importc: "QGraphicsScene_setSelectionArea32".}
proc fcQGraphicsScene_setSelectionArea4(self: pointer, path: pointer, selectionOperation: cint, mode: cint, deviceTransform: pointer): void {.importc: "QGraphicsScene_setSelectionArea4".}
proc fcQGraphicsScene_addEllipse22(self: pointer, rect: pointer, pen: pointer): pointer {.importc: "QGraphicsScene_addEllipse22".}
proc fcQGraphicsScene_addEllipse3(self: pointer, rect: pointer, pen: pointer, brush: pointer): pointer {.importc: "QGraphicsScene_addEllipse3".}
proc fcQGraphicsScene_addLine22(self: pointer, line: pointer, pen: pointer): pointer {.importc: "QGraphicsScene_addLine22".}
proc fcQGraphicsScene_addPath2(self: pointer, path: pointer, pen: pointer): pointer {.importc: "QGraphicsScene_addPath2".}
proc fcQGraphicsScene_addPath3(self: pointer, path: pointer, pen: pointer, brush: pointer): pointer {.importc: "QGraphicsScene_addPath3".}
proc fcQGraphicsScene_addRect22(self: pointer, rect: pointer, pen: pointer): pointer {.importc: "QGraphicsScene_addRect22".}
proc fcQGraphicsScene_addRect3(self: pointer, rect: pointer, pen: pointer, brush: pointer): pointer {.importc: "QGraphicsScene_addRect3".}
proc fcQGraphicsScene_addText2(self: pointer, text: struct_miqt_string, font: pointer): pointer {.importc: "QGraphicsScene_addText2".}
proc fcQGraphicsScene_addSimpleText2(self: pointer, text: struct_miqt_string, font: pointer): pointer {.importc: "QGraphicsScene_addSimpleText2".}
proc fcQGraphicsScene_addWidget2(self: pointer, widget: pointer, wFlags: cint): pointer {.importc: "QGraphicsScene_addWidget2".}
proc fcQGraphicsScene_addEllipse5(self: pointer, x: float64, y: float64, w: float64, h: float64, pen: pointer): pointer {.importc: "QGraphicsScene_addEllipse5".}
proc fcQGraphicsScene_addEllipse6(self: pointer, x: float64, y: float64, w: float64, h: float64, pen: pointer, brush: pointer): pointer {.importc: "QGraphicsScene_addEllipse6".}
proc fcQGraphicsScene_addLine5(self: pointer, x1: float64, y1: float64, x2: float64, y2: float64, pen: pointer): pointer {.importc: "QGraphicsScene_addLine5".}
proc fcQGraphicsScene_addRect5(self: pointer, x: float64, y: float64, w: float64, h: float64, pen: pointer): pointer {.importc: "QGraphicsScene_addRect5".}
proc fcQGraphicsScene_addRect6(self: pointer, x: float64, y: float64, w: float64, h: float64, pen: pointer, brush: pointer): pointer {.importc: "QGraphicsScene_addRect6".}
proc fcQGraphicsScene_setFocusItem2(self: pointer, item: pointer, focusReason: cint): void {.importc: "QGraphicsScene_setFocusItem2".}
proc fcQGraphicsScene_setFocus1(self: pointer, focusReason: cint): void {.importc: "QGraphicsScene_setFocus1".}
proc fcQGraphicsScene_invalidate5(self: pointer, x: float64, y: float64, w: float64, h: float64, layers: cint): void {.importc: "QGraphicsScene_invalidate5".}
proc fcQGraphicsScene_update1(self: pointer, rect: pointer): void {.importc: "QGraphicsScene_update1".}
proc fcQGraphicsScene_invalidate1(self: pointer, rect: pointer): void {.importc: "QGraphicsScene_invalidate1".}
proc fcQGraphicsScene_invalidate22(self: pointer, rect: pointer, layers: cint): void {.importc: "QGraphicsScene_invalidate22".}
type cQGraphicsSceneVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsSceneVTable, self: ptr cQGraphicsScene) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  helpEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  drawBackground*: proc(vtbl, self: pointer, painter: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  drawForeground*: proc(vtbl, self: pointer, painter: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsScene_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsScene_virtualbase_metaObject".}
proc fcQGraphicsScene_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsScene_virtualbase_metacast".}
proc fcQGraphicsScene_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsScene_virtualbase_metacall".}
proc fcQGraphicsScene_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsScene_virtualbase_inputMethodQuery".}
proc fcQGraphicsScene_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsScene_virtualbase_event".}
proc fcQGraphicsScene_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsScene_virtualbase_eventFilter".}
proc fcQGraphicsScene_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_contextMenuEvent".}
proc fcQGraphicsScene_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_dragEnterEvent".}
proc fcQGraphicsScene_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_dragMoveEvent".}
proc fcQGraphicsScene_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_dragLeaveEvent".}
proc fcQGraphicsScene_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_dropEvent".}
proc fcQGraphicsScene_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_focusInEvent".}
proc fcQGraphicsScene_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_focusOutEvent".}
proc fcQGraphicsScene_virtualbase_helpEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_helpEvent".}
proc fcQGraphicsScene_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_keyPressEvent".}
proc fcQGraphicsScene_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_keyReleaseEvent".}
proc fcQGraphicsScene_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_mousePressEvent".}
proc fcQGraphicsScene_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_mouseMoveEvent".}
proc fcQGraphicsScene_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsScene_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsScene_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_wheelEvent".}
proc fcQGraphicsScene_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_inputMethodEvent".}
proc fcQGraphicsScene_virtualbase_drawBackground(self: pointer, painter: pointer, rect: pointer): void {.importc: "QGraphicsScene_virtualbase_drawBackground".}
proc fcQGraphicsScene_virtualbase_drawForeground(self: pointer, painter: pointer, rect: pointer): void {.importc: "QGraphicsScene_virtualbase_drawForeground".}
proc fcQGraphicsScene_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_timerEvent".}
proc fcQGraphicsScene_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_childEvent".}
proc fcQGraphicsScene_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScene_virtualbase_customEvent".}
proc fcQGraphicsScene_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsScene_virtualbase_connectNotify".}
proc fcQGraphicsScene_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsScene_virtualbase_disconnectNotify".}
proc fcQGraphicsScene_protectedbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QGraphicsScene_protectedbase_focusNextPrevChild".}
proc fcQGraphicsScene_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsScene_protectedbase_sender".}
proc fcQGraphicsScene_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsScene_protectedbase_senderSignalIndex".}
proc fcQGraphicsScene_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsScene_protectedbase_receivers".}
proc fcQGraphicsScene_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsScene_protectedbase_isSignalConnected".}
proc fcQGraphicsScene_new(vtbl: pointer, ): ptr cQGraphicsScene {.importc: "QGraphicsScene_new".}
proc fcQGraphicsScene_new2(vtbl: pointer, sceneRect: pointer): ptr cQGraphicsScene {.importc: "QGraphicsScene_new2".}
proc fcQGraphicsScene_new3(vtbl: pointer, x: float64, y: float64, width: float64, height: float64): ptr cQGraphicsScene {.importc: "QGraphicsScene_new3".}
proc fcQGraphicsScene_new4(vtbl: pointer, parent: pointer): ptr cQGraphicsScene {.importc: "QGraphicsScene_new4".}
proc fcQGraphicsScene_new5(vtbl: pointer, sceneRect: pointer, parent: pointer): ptr cQGraphicsScene {.importc: "QGraphicsScene_new5".}
proc fcQGraphicsScene_new6(vtbl: pointer, x: float64, y: float64, width: float64, height: float64, parent: pointer): ptr cQGraphicsScene {.importc: "QGraphicsScene_new6".}
proc fcQGraphicsScene_staticMetaObject(): pointer {.importc: "QGraphicsScene_staticMetaObject".}

proc metaObject*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsScene_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicsscene_types.QGraphicsScene, param1: cstring): pointer =
  fcQGraphicsScene_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsscene_types.QGraphicsScene, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsScene_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring): string =
  let v_ms = fcQGraphicsScene_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring): string =
  let v_ms = fcQGraphicsScene_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sceneRect*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsScene_sceneRect(self.h), owned: true)

proc width*(self: gen_qgraphicsscene_types.QGraphicsScene, ): float64 =
  fcQGraphicsScene_width(self.h)

proc height*(self: gen_qgraphicsscene_types.QGraphicsScene, ): float64 =
  fcQGraphicsScene_height(self.h)

proc setSceneRect*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsScene_setSceneRect(self.h, rect.h)

proc setSceneRect*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsScene_setSceneRect2(self.h, x, y, w, h)

proc render*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsScene_render(self.h, painter.h)

proc itemIndexMethod*(self: gen_qgraphicsscene_types.QGraphicsScene, ): cint =
  cint(fcQGraphicsScene_itemIndexMethod(self.h))

proc setItemIndexMethod*(self: gen_qgraphicsscene_types.QGraphicsScene, methodVal: cint): void =
  fcQGraphicsScene_setItemIndexMethod(self.h, cint(methodVal))

proc isSortCacheEnabled*(self: gen_qgraphicsscene_types.QGraphicsScene, ): bool =
  fcQGraphicsScene_isSortCacheEnabled(self.h)

proc setSortCacheEnabled*(self: gen_qgraphicsscene_types.QGraphicsScene, enabled: bool): void =
  fcQGraphicsScene_setSortCacheEnabled(self.h, enabled)

proc bspTreeDepth*(self: gen_qgraphicsscene_types.QGraphicsScene, ): cint =
  fcQGraphicsScene_bspTreeDepth(self.h)

proc setBspTreeDepth*(self: gen_qgraphicsscene_types.QGraphicsScene, depth: cint): void =
  fcQGraphicsScene_setBspTreeDepth(self.h, depth)

proc itemsBoundingRect*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsScene_itemsBoundingRect(self.h), owned: true)

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, ): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items(self.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, pos: gen_qpoint_types.QPointF): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_itemsWithPos(self.h, pos.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_itemsWithRect(self.h, rect.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_itemsWithPath(self.h, path.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc collidingItems*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem_types.QGraphicsItem): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_collidingItems(self.h, item.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc itemAt*(self: gen_qgraphicsscene_types.QGraphicsScene, pos: gen_qpoint_types.QPointF, deviceTransform: gen_qtransform_types.QTransform): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsScene_itemAt(self.h, pos.h, deviceTransform.h), owned: false)

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, mode: cint, order: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items2(self.h, x, y, w, h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc itemAt*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, deviceTransform: gen_qtransform_types.QTransform): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsScene_itemAt2(self.h, x, y, deviceTransform.h), owned: false)

proc selectedItems*(self: gen_qgraphicsscene_types.QGraphicsScene, ): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_selectedItems(self.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc selectionArea*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsScene_selectionArea(self.h), owned: true)

proc setSelectionArea*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath, deviceTransform: gen_qtransform_types.QTransform): void =
  fcQGraphicsScene_setSelectionArea(self.h, path.h, deviceTransform.h)

proc setSelectionArea*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath): void =
  fcQGraphicsScene_setSelectionAreaWithPath(self.h, path.h)

proc setSelectionArea*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath, selectionOperation: cint): void =
  fcQGraphicsScene_setSelectionArea2(self.h, path.h, cint(selectionOperation))

proc createItemGroup*(self: gen_qgraphicsscene_types.QGraphicsScene, items: seq[gen_qgraphicsitem_types.QGraphicsItem]): gen_qgraphicsitem_types.QGraphicsItemGroup =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  gen_qgraphicsitem_types.QGraphicsItemGroup(h: fcQGraphicsScene_createItemGroup(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))), owned: false)

proc destroyItemGroup*(self: gen_qgraphicsscene_types.QGraphicsScene, group: gen_qgraphicsitem_types.QGraphicsItemGroup): void =
  fcQGraphicsScene_destroyItemGroup(self.h, group.h)

proc addItem*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsScene_addItem(self.h, item.h)

proc addEllipse*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse(self.h, rect.h), owned: false)

proc addLine*(self: gen_qgraphicsscene_types.QGraphicsScene, line: gen_qline_types.QLineF): gen_qgraphicsitem_types.QGraphicsLineItem =
  gen_qgraphicsitem_types.QGraphicsLineItem(h: fcQGraphicsScene_addLine(self.h, line.h), owned: false)

proc addPath*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath): gen_qgraphicsitem_types.QGraphicsPathItem =
  gen_qgraphicsitem_types.QGraphicsPathItem(h: fcQGraphicsScene_addPath(self.h, path.h), owned: false)

proc addPixmap*(self: gen_qgraphicsscene_types.QGraphicsScene, pixmap: gen_qpixmap_types.QPixmap): gen_qgraphicsitem_types.QGraphicsPixmapItem =
  gen_qgraphicsitem_types.QGraphicsPixmapItem(h: fcQGraphicsScene_addPixmap(self.h, pixmap.h), owned: false)

proc addRect*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsScene_addRect(self.h, rect.h), owned: false)

proc addText*(self: gen_qgraphicsscene_types.QGraphicsScene, text: string): gen_qgraphicsitem_types.QGraphicsTextItem =
  gen_qgraphicsitem_types.QGraphicsTextItem(h: fcQGraphicsScene_addText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))), owned: false)

proc addSimpleText*(self: gen_qgraphicsscene_types.QGraphicsScene, text: string): gen_qgraphicsitem_types.QGraphicsSimpleTextItem =
  gen_qgraphicsitem_types.QGraphicsSimpleTextItem(h: fcQGraphicsScene_addSimpleText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))), owned: false)

proc addWidget*(self: gen_qgraphicsscene_types.QGraphicsScene, widget: gen_qwidget_types.QWidget): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsScene_addWidget(self.h, widget.h), owned: false)

proc addEllipse*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse2(self.h, x, y, w, h), owned: false)

proc addLine*(self: gen_qgraphicsscene_types.QGraphicsScene, x1: float64, y1: float64, x2: float64, y2: float64): gen_qgraphicsitem_types.QGraphicsLineItem =
  gen_qgraphicsitem_types.QGraphicsLineItem(h: fcQGraphicsScene_addLine2(self.h, x1, y1, x2, y2), owned: false)

proc addRect*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsScene_addRect2(self.h, x, y, w, h), owned: false)

proc removeItem*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsScene_removeItem(self.h, item.h)

proc focusItem*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsScene_focusItem(self.h), owned: false)

proc setFocusItem*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsScene_setFocusItem(self.h, item.h)

proc hasFocus*(self: gen_qgraphicsscene_types.QGraphicsScene, ): bool =
  fcQGraphicsScene_hasFocus(self.h)

proc setFocus*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =
  fcQGraphicsScene_setFocus(self.h)

proc clearFocus*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =
  fcQGraphicsScene_clearFocus(self.h)

proc setStickyFocus*(self: gen_qgraphicsscene_types.QGraphicsScene, enabled: bool): void =
  fcQGraphicsScene_setStickyFocus(self.h, enabled)

proc stickyFocus*(self: gen_qgraphicsscene_types.QGraphicsScene, ): bool =
  fcQGraphicsScene_stickyFocus(self.h)

proc mouseGrabberItem*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsScene_mouseGrabberItem(self.h), owned: false)

proc backgroundBrush*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQGraphicsScene_backgroundBrush(self.h), owned: true)

proc setBackgroundBrush*(self: gen_qgraphicsscene_types.QGraphicsScene, brush: gen_qbrush_types.QBrush): void =
  fcQGraphicsScene_setBackgroundBrush(self.h, brush.h)

proc foregroundBrush*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQGraphicsScene_foregroundBrush(self.h), owned: true)

proc setForegroundBrush*(self: gen_qgraphicsscene_types.QGraphicsScene, brush: gen_qbrush_types.QBrush): void =
  fcQGraphicsScene_setForegroundBrush(self.h, brush.h)

proc inputMethodQuery*(self: gen_qgraphicsscene_types.QGraphicsScene, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsScene_inputMethodQuery(self.h, cint(query)), owned: true)

proc views*(self: gen_qgraphicsscene_types.QGraphicsScene, ): seq[gen_qgraphicsview_types.QGraphicsView] =
  var v_ma = fcQGraphicsScene_views(self.h)
  var vx_ret = newSeq[gen_qgraphicsview_types.QGraphicsView](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsview_types.QGraphicsView(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc update*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsScene_update(self.h, x, y, w, h)

proc invalidate*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsScene_invalidate(self.h, x, y, w, h)

proc style*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQGraphicsScene_style(self.h), owned: false)

proc setStyle*(self: gen_qgraphicsscene_types.QGraphicsScene, style: gen_qstyle_types.QStyle): void =
  fcQGraphicsScene_setStyle(self.h, style.h)

proc font*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQGraphicsScene_font(self.h), owned: true)

proc setFont*(self: gen_qgraphicsscene_types.QGraphicsScene, font: gen_qfont_types.QFont): void =
  fcQGraphicsScene_setFont(self.h, font.h)

proc palette*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQGraphicsScene_palette(self.h), owned: true)

proc setPalette*(self: gen_qgraphicsscene_types.QGraphicsScene, palette: gen_qpalette_types.QPalette): void =
  fcQGraphicsScene_setPalette(self.h, palette.h)

proc isActive*(self: gen_qgraphicsscene_types.QGraphicsScene, ): bool =
  fcQGraphicsScene_isActive(self.h)

proc activePanel*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsScene_activePanel(self.h), owned: false)

proc setActivePanel*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsScene_setActivePanel(self.h, item.h)

proc activeWindow*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qgraphicswidget_types.QGraphicsWidget =
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsScene_activeWindow(self.h), owned: false)

proc setActiveWindow*(self: gen_qgraphicsscene_types.QGraphicsScene, widget: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsScene_setActiveWindow(self.h, widget.h)

proc sendEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsScene_sendEvent(self.h, item.h, event.h)

proc minimumRenderSize*(self: gen_qgraphicsscene_types.QGraphicsScene, ): float64 =
  fcQGraphicsScene_minimumRenderSize(self.h)

proc setMinimumRenderSize*(self: gen_qgraphicsscene_types.QGraphicsScene, minSize: float64): void =
  fcQGraphicsScene_setMinimumRenderSize(self.h, minSize)

proc focusOnTouch*(self: gen_qgraphicsscene_types.QGraphicsScene, ): bool =
  fcQGraphicsScene_focusOnTouch(self.h)

proc setFocusOnTouch*(self: gen_qgraphicsscene_types.QGraphicsScene, enabled: bool): void =
  fcQGraphicsScene_setFocusOnTouch(self.h, enabled)

proc update*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =
  fcQGraphicsScene_update2(self.h)

proc invalidate*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =
  fcQGraphicsScene_invalidate2(self.h)

proc advance*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =
  fcQGraphicsScene_advance(self.h)

proc clearSelection*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =
  fcQGraphicsScene_clearSelection(self.h)

proc clear*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =
  fcQGraphicsScene_clear(self.h)

proc changed*(self: gen_qgraphicsscene_types.QGraphicsScene, region: seq[gen_qrect_types.QRectF]): void =
  var region_CArray = newSeq[pointer](len(region))
  for i in 0..<len(region):
    region_CArray[i] = region[i].h

  fcQGraphicsScene_changed(self.h, struct_miqt_array(len: csize_t(len(region)), data: if len(region) == 0: nil else: addr(region_CArray[0])))

type QGraphicsScenechangedSlot* = proc(region: seq[gen_qrect_types.QRectF])
proc miqt_exec_callback_cQGraphicsScene_changed(slot: int, region: struct_miqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScenechangedSlot](cast[pointer](slot))
  var vregion_ma = region
  var vregionx_ret = newSeq[gen_qrect_types.QRectF](int(vregion_ma.len))
  let vregion_outCast = cast[ptr UncheckedArray[pointer]](vregion_ma.data)
  for i in 0 ..< vregion_ma.len:
    vregionx_ret[i] = gen_qrect_types.QRectF(h: vregion_outCast[i], owned: true)
  c_free(vregion_ma.data)
  let slotval1 = vregionx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsScene_changed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScenechangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onchanged*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenechangedSlot) =
  var tmp = new QGraphicsScenechangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_connect_changed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsScene_changed, miqt_exec_callback_cQGraphicsScene_changed_release)

proc sceneRectChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsScene_sceneRectChanged(self.h, rect.h)

type QGraphicsScenesceneRectChangedSlot* = proc(rect: gen_qrect_types.QRectF)
proc miqt_exec_callback_cQGraphicsScene_sceneRectChanged(slot: int, rect: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScenesceneRectChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsScene_sceneRectChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScenesceneRectChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsceneRectChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenesceneRectChangedSlot) =
  var tmp = new QGraphicsScenesceneRectChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_connect_sceneRectChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsScene_sceneRectChanged, miqt_exec_callback_cQGraphicsScene_sceneRectChanged_release)

proc selectionChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, ): void =
  fcQGraphicsScene_selectionChanged(self.h)

type QGraphicsSceneselectionChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsScene_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsSceneselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsScene_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsSceneselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectionChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsSceneselectionChangedSlot) =
  var tmp = new QGraphicsSceneselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_connect_selectionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsScene_selectionChanged, miqt_exec_callback_cQGraphicsScene_selectionChanged_release)

proc focusItemChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, newFocus: gen_qgraphicsitem_types.QGraphicsItem, oldFocus: gen_qgraphicsitem_types.QGraphicsItem, reason: cint): void =
  fcQGraphicsScene_focusItemChanged(self.h, newFocus.h, oldFocus.h, cint(reason))

type QGraphicsScenefocusItemChangedSlot* = proc(newFocus: gen_qgraphicsitem_types.QGraphicsItem, oldFocus: gen_qgraphicsitem_types.QGraphicsItem, reason: cint)
proc miqt_exec_callback_cQGraphicsScene_focusItemChanged(slot: int, newFocus: pointer, oldFocus: pointer, reason: cint) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScenefocusItemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: newFocus, owned: false)

  let slotval2 = gen_qgraphicsitem_types.QGraphicsItem(h: oldFocus, owned: false)

  let slotval3 = cint(reason)

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQGraphicsScene_focusItemChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScenefocusItemChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusItemChanged*(self: gen_qgraphicsscene_types.QGraphicsScene, slot: QGraphicsScenefocusItemChangedSlot) =
  var tmp = new QGraphicsScenefocusItemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScene_connect_focusItemChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsScene_focusItemChanged, miqt_exec_callback_cQGraphicsScene_focusItemChanged_release)

proc tr*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsScene_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsScene_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsScene_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsscene_types.QGraphicsScene, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsScene_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc render*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter_types.QPainter, target: gen_qrect_types.QRectF): void =
  fcQGraphicsScene_render2(self.h, painter.h, target.h)

proc render*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter_types.QPainter, target: gen_qrect_types.QRectF, source: gen_qrect_types.QRectF): void =
  fcQGraphicsScene_render3(self.h, painter.h, target.h, source.h)

proc render*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter_types.QPainter, target: gen_qrect_types.QRectF, source: gen_qrect_types.QRectF, aspectRatioMode: cint): void =
  fcQGraphicsScene_render4(self.h, painter.h, target.h, source.h, cint(aspectRatioMode))

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, order: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items1(self.h, cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, pos: gen_qpoint_types.QPointF, mode: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items22(self.h, pos.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, pos: gen_qpoint_types.QPointF, mode: cint, order: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items3(self.h, pos.h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, pos: gen_qpoint_types.QPointF, mode: cint, order: cint, deviceTransform: gen_qtransform_types.QTransform): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items4(self.h, pos.h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF, mode: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items23(self.h, rect.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF, mode: cint, order: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items32(self.h, rect.h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF, mode: cint, order: cint, deviceTransform: gen_qtransform_types.QTransform): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items42(self.h, rect.h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath, mode: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items25(self.h, path.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath, mode: cint, order: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items34(self.h, path.h, cint(mode), cint(order))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath, mode: cint, order: cint, deviceTransform: gen_qtransform_types.QTransform): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items44(self.h, path.h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc collidingItems*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_collidingItems2(self.h, item.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc items*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, mode: cint, order: cint, deviceTransform: gen_qtransform_types.QTransform): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsScene_items7(self.h, x, y, w, h, cint(mode), cint(order), deviceTransform.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc setSelectionArea2*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath, mode: cint): void =
  fcQGraphicsScene_setSelectionArea22(self.h, path.h, cint(mode))

proc setSelectionArea*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath, mode: cint, deviceTransform: gen_qtransform_types.QTransform): void =
  fcQGraphicsScene_setSelectionArea3(self.h, path.h, cint(mode), deviceTransform.h)

proc setSelectionArea*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath, selectionOperation: cint, mode: cint): void =
  fcQGraphicsScene_setSelectionArea32(self.h, path.h, cint(selectionOperation), cint(mode))

proc setSelectionArea*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath, selectionOperation: cint, mode: cint, deviceTransform: gen_qtransform_types.QTransform): void =
  fcQGraphicsScene_setSelectionArea4(self.h, path.h, cint(selectionOperation), cint(mode), deviceTransform.h)

proc addEllipse*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF, pen: gen_qpen_types.QPen): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse22(self.h, rect.h, pen.h), owned: false)

proc addEllipse*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF, pen: gen_qpen_types.QPen, brush: gen_qbrush_types.QBrush): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse3(self.h, rect.h, pen.h, brush.h), owned: false)

proc addLine*(self: gen_qgraphicsscene_types.QGraphicsScene, line: gen_qline_types.QLineF, pen: gen_qpen_types.QPen): gen_qgraphicsitem_types.QGraphicsLineItem =
  gen_qgraphicsitem_types.QGraphicsLineItem(h: fcQGraphicsScene_addLine22(self.h, line.h, pen.h), owned: false)

proc addPath*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath, pen: gen_qpen_types.QPen): gen_qgraphicsitem_types.QGraphicsPathItem =
  gen_qgraphicsitem_types.QGraphicsPathItem(h: fcQGraphicsScene_addPath2(self.h, path.h, pen.h), owned: false)

proc addPath*(self: gen_qgraphicsscene_types.QGraphicsScene, path: gen_qpainterpath_types.QPainterPath, pen: gen_qpen_types.QPen, brush: gen_qbrush_types.QBrush): gen_qgraphicsitem_types.QGraphicsPathItem =
  gen_qgraphicsitem_types.QGraphicsPathItem(h: fcQGraphicsScene_addPath3(self.h, path.h, pen.h, brush.h), owned: false)

proc addRect*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF, pen: gen_qpen_types.QPen): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsScene_addRect22(self.h, rect.h, pen.h), owned: false)

proc addRect*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF, pen: gen_qpen_types.QPen, brush: gen_qbrush_types.QBrush): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsScene_addRect3(self.h, rect.h, pen.h, brush.h), owned: false)

proc addText*(self: gen_qgraphicsscene_types.QGraphicsScene, text: string, font: gen_qfont_types.QFont): gen_qgraphicsitem_types.QGraphicsTextItem =
  gen_qgraphicsitem_types.QGraphicsTextItem(h: fcQGraphicsScene_addText2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), font.h), owned: false)

proc addSimpleText*(self: gen_qgraphicsscene_types.QGraphicsScene, text: string, font: gen_qfont_types.QFont): gen_qgraphicsitem_types.QGraphicsSimpleTextItem =
  gen_qgraphicsitem_types.QGraphicsSimpleTextItem(h: fcQGraphicsScene_addSimpleText2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), font.h), owned: false)

proc addWidget*(self: gen_qgraphicsscene_types.QGraphicsScene, widget: gen_qwidget_types.QWidget, wFlags: cint): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsScene_addWidget2(self.h, widget.h, cint(wFlags)), owned: false)

proc addEllipse*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen_types.QPen): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse5(self.h, x, y, w, h, pen.h), owned: false)

proc addEllipse*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen_types.QPen, brush: gen_qbrush_types.QBrush): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsScene_addEllipse6(self.h, x, y, w, h, pen.h, brush.h), owned: false)

proc addLine*(self: gen_qgraphicsscene_types.QGraphicsScene, x1: float64, y1: float64, x2: float64, y2: float64, pen: gen_qpen_types.QPen): gen_qgraphicsitem_types.QGraphicsLineItem =
  gen_qgraphicsitem_types.QGraphicsLineItem(h: fcQGraphicsScene_addLine5(self.h, x1, y1, x2, y2, pen.h), owned: false)

proc addRect*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen_types.QPen): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsScene_addRect5(self.h, x, y, w, h, pen.h), owned: false)

proc addRect*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, pen: gen_qpen_types.QPen, brush: gen_qbrush_types.QBrush): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsScene_addRect6(self.h, x, y, w, h, pen.h, brush.h), owned: false)

proc setFocusItem*(self: gen_qgraphicsscene_types.QGraphicsScene, item: gen_qgraphicsitem_types.QGraphicsItem, focusReason: cint): void =
  fcQGraphicsScene_setFocusItem2(self.h, item.h, cint(focusReason))

proc setFocus*(self: gen_qgraphicsscene_types.QGraphicsScene, focusReason: cint): void =
  fcQGraphicsScene_setFocus1(self.h, cint(focusReason))

proc invalidate*(self: gen_qgraphicsscene_types.QGraphicsScene, x: float64, y: float64, w: float64, h: float64, layers: cint): void =
  fcQGraphicsScene_invalidate5(self.h, x, y, w, h, cint(layers))

proc update*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsScene_update1(self.h, rect.h)

proc invalidate*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsScene_invalidate1(self.h, rect.h)

proc invalidate*(self: gen_qgraphicsscene_types.QGraphicsScene, rect: gen_qrect_types.QRectF, layers: cint): void =
  fcQGraphicsScene_invalidate22(self.h, rect.h, cint(layers))

type QGraphicsScenemetaObjectProc* = proc(self: QGraphicsScene): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsScenemetacastProc* = proc(self: QGraphicsScene, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsScenemetacallProc* = proc(self: QGraphicsScene, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsSceneinputMethodQueryProc* = proc(self: QGraphicsScene, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsSceneeventProc* = proc(self: QGraphicsScene, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsSceneeventFilterProc* = proc(self: QGraphicsScene, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsScenecontextMenuEventProc* = proc(self: QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsScenedragEnterEventProc* = proc(self: QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsScenedragMoveEventProc* = proc(self: QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsScenedragLeaveEventProc* = proc(self: QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsScenedropEventProc* = proc(self: QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsScenefocusInEventProc* = proc(self: QGraphicsScene, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsScenefocusOutEventProc* = proc(self: QGraphicsScene, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsScenehelpEventProc* = proc(self: QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent): void {.raises: [], gcsafe.}
type QGraphicsScenekeyPressEventProc* = proc(self: QGraphicsScene, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsScenekeyReleaseEventProc* = proc(self: QGraphicsScene, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsScenemousePressEventProc* = proc(self: QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsScenemouseMoveEventProc* = proc(self: QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsScenemouseReleaseEventProc* = proc(self: QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsScenemouseDoubleClickEventProc* = proc(self: QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsScenewheelEventProc* = proc(self: QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsSceneinputMethodEventProc* = proc(self: QGraphicsScene, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsScenedrawBackgroundProc* = proc(self: QGraphicsScene, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsScenedrawForegroundProc* = proc(self: QGraphicsScene, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsScenetimerEventProc* = proc(self: QGraphicsScene, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsScenechildEventProc* = proc(self: QGraphicsScene, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsScenecustomEventProc* = proc(self: QGraphicsScene, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsSceneconnectNotifyProc* = proc(self: QGraphicsScene, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsScenedisconnectNotifyProc* = proc(self: QGraphicsScene, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsSceneVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsSceneVTable
  metaObject*: QGraphicsScenemetaObjectProc
  metacast*: QGraphicsScenemetacastProc
  metacall*: QGraphicsScenemetacallProc
  inputMethodQuery*: QGraphicsSceneinputMethodQueryProc
  event*: QGraphicsSceneeventProc
  eventFilter*: QGraphicsSceneeventFilterProc
  contextMenuEvent*: QGraphicsScenecontextMenuEventProc
  dragEnterEvent*: QGraphicsScenedragEnterEventProc
  dragMoveEvent*: QGraphicsScenedragMoveEventProc
  dragLeaveEvent*: QGraphicsScenedragLeaveEventProc
  dropEvent*: QGraphicsScenedropEventProc
  focusInEvent*: QGraphicsScenefocusInEventProc
  focusOutEvent*: QGraphicsScenefocusOutEventProc
  helpEvent*: QGraphicsScenehelpEventProc
  keyPressEvent*: QGraphicsScenekeyPressEventProc
  keyReleaseEvent*: QGraphicsScenekeyReleaseEventProc
  mousePressEvent*: QGraphicsScenemousePressEventProc
  mouseMoveEvent*: QGraphicsScenemouseMoveEventProc
  mouseReleaseEvent*: QGraphicsScenemouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsScenemouseDoubleClickEventProc
  wheelEvent*: QGraphicsScenewheelEventProc
  inputMethodEvent*: QGraphicsSceneinputMethodEventProc
  drawBackground*: QGraphicsScenedrawBackgroundProc
  drawForeground*: QGraphicsScenedrawForegroundProc
  timerEvent*: QGraphicsScenetimerEventProc
  childEvent*: QGraphicsScenechildEventProc
  customEvent*: QGraphicsScenecustomEventProc
  connectNotify*: QGraphicsSceneconnectNotifyProc
  disconnectNotify*: QGraphicsScenedisconnectNotifyProc
proc QGraphicsScenemetaObject*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsScene_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsScene_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsScenemetacast*(self: gen_qgraphicsscene_types.QGraphicsScene, param1: cstring): pointer =
  fcQGraphicsScene_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsScene_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsScenemetacall*(self: gen_qgraphicsscene_types.QGraphicsScene, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsScene_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsScene_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsSceneinputMethodQuery*(self: gen_qgraphicsscene_types.QGraphicsScene, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsScene_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc miqt_exec_callback_cQGraphicsScene_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsSceneevent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsScene_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsSceneeventFilter*(self: gen_qgraphicsscene_types.QGraphicsScene, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsScene_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsScenecontextMenuEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsScene_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsScenedragEnterEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsScene_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsScenedragMoveEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsScene_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsScenedragLeaveEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsScene_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsScenedropEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsScene_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsScenefocusInEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsScene_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsScenefocusOutEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsScene_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsScenehelpEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent): void =
  fcQGraphicsScene_virtualbase_helpEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_helpEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent(h: event, owned: false)
  vtbl[].helpEvent(self, slotval1)

proc QGraphicsScenekeyPressEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsScene_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsScenekeyReleaseEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsScene_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsScenemousePressEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsScene_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsScenemouseMoveEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsScene_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsScenemouseReleaseEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsScene_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsScenemouseDoubleClickEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsScene_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsScenewheelEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsScene_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsSceneinputMethodEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsScene_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsScenedrawBackground*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsScene_virtualbase_drawBackground(self.h, painter.h, rect.h)

proc miqt_exec_callback_cQGraphicsScene_drawBackground(vtbl: pointer, self: pointer, painter: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl[].drawBackground(self, slotval1, slotval2)

proc QGraphicsScenedrawForeground*(self: gen_qgraphicsscene_types.QGraphicsScene, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsScene_virtualbase_drawForeground(self.h, painter.h, rect.h)

proc miqt_exec_callback_cQGraphicsScene_drawForeground(vtbl: pointer, self: pointer, painter: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl[].drawForeground(self, slotval1, slotval2)

proc QGraphicsScenetimerEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsScene_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsScenechildEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsScene_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsScenecustomEvent*(self: gen_qgraphicsscene_types.QGraphicsScene, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsScene_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScene_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsSceneconnectNotify*(self: gen_qgraphicsscene_types.QGraphicsScene, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsScene_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsScene_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsScenedisconnectNotify*(self: gen_qgraphicsscene_types.QGraphicsScene, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsScene_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsScene_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneVTable](vtbl)
  let self = QGraphicsScene(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGraphicsScene* {.inheritable.} = ref object of QGraphicsScene
  vtbl*: cQGraphicsSceneVTable
method metaObject*(self: VirtualQGraphicsScene, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsScenemetaObject(self[])
proc miqt_exec_method_cQGraphicsScene_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsScene, param1: cstring): pointer {.base.} =
  QGraphicsScenemetacast(self[], param1)
proc miqt_exec_method_cQGraphicsScene_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsScene, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsScenemetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQGraphicsScene_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method inputMethodQuery*(self: VirtualQGraphicsScene, query: cint): gen_qvariant_types.QVariant {.base.} =
  QGraphicsSceneinputMethodQuery(self[], query)
proc miqt_exec_method_cQGraphicsScene_inputMethodQuery(vtbl: pointer, inst: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = cint(query)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQGraphicsScene, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsSceneevent(self[], event)
proc miqt_exec_method_cQGraphicsScene_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGraphicsScene, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsSceneeventFilter(self[], watched, event)
proc miqt_exec_method_cQGraphicsScene_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method contextMenuEvent*(self: VirtualQGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.base.} =
  QGraphicsScenecontextMenuEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method dragEnterEvent*(self: VirtualQGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsScenedragEnterEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsScenedragMoveEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsScenedragLeaveEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsScenedropEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method focusInEvent*(self: VirtualQGraphicsScene, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsScenefocusInEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQGraphicsScene, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsScenefocusOutEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method helpEvent*(self: VirtualQGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent): void {.base.} =
  QGraphicsScenehelpEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_helpEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent(h: event, owned: false)
  vtbl.helpEvent(slotval1)

method keyPressEvent*(self: VirtualQGraphicsScene, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsScenekeyPressEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQGraphicsScene, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsScenekeyReleaseEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method mousePressEvent*(self: VirtualQGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsScenemousePressEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsScenemouseMoveEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsScenemouseReleaseEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsScenemouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQGraphicsScene, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.base.} =
  QGraphicsScenewheelEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method inputMethodEvent*(self: VirtualQGraphicsScene, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QGraphicsSceneinputMethodEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_inputMethodEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl.inputMethodEvent(slotval1)

method drawBackground*(self: VirtualQGraphicsScene, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void {.base.} =
  QGraphicsScenedrawBackground(self[], painter, rect)
proc miqt_exec_method_cQGraphicsScene_drawBackground(vtbl: pointer, inst: pointer, painter: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl.drawBackground(slotval1, slotval2)

method drawForeground*(self: VirtualQGraphicsScene, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void {.base.} =
  QGraphicsScenedrawForeground(self[], painter, rect)
proc miqt_exec_method_cQGraphicsScene_drawForeground(vtbl: pointer, inst: pointer, painter: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl.drawForeground(slotval1, slotval2)

method timerEvent*(self: VirtualQGraphicsScene, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsScenetimerEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsScene, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsScenechildEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsScene, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsScenecustomEvent(self[], event)
proc miqt_exec_method_cQGraphicsScene_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsScene, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsSceneconnectNotify(self[], signal)
proc miqt_exec_method_cQGraphicsScene_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsScene, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsScenedisconnectNotify(self[], signal)
proc miqt_exec_method_cQGraphicsScene_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsScene](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc focusNextPrevChild*(self: gen_qgraphicsscene_types.QGraphicsScene, next: bool): bool =
  fcQGraphicsScene_protectedbase_focusNextPrevChild(self.h, next)

proc sender*(self: gen_qgraphicsscene_types.QGraphicsScene, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsScene_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicsscene_types.QGraphicsScene, ): cint =
  fcQGraphicsScene_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicsscene_types.QGraphicsScene, signal: cstring): cint =
  fcQGraphicsScene_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicsscene_types.QGraphicsScene, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsScene_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    vtbl: ref QGraphicsSceneVTable = nil): gen_qgraphicsscene_types.QGraphicsScene =
  let vtbl = if vtbl == nil: new QGraphicsSceneVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsScene_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsScene_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsScene_metacall
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsScene_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsScene_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsScene_eventFilter
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsScene_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsScene_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsScene_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsScene_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsScene_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsScene_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsScene_focusOutEvent
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = miqt_exec_callback_cQGraphicsScene_helpEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsScene_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsScene_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsScene_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsScene_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsScene_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsScene_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsScene_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsScene_inputMethodEvent
  if not isNil(vtbl[].drawBackground):
    vtbl[].vtbl.drawBackground = miqt_exec_callback_cQGraphicsScene_drawBackground
  if not isNil(vtbl[].drawForeground):
    vtbl[].vtbl.drawForeground = miqt_exec_callback_cQGraphicsScene_drawForeground
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsScene_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsScene_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsScene_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsScene_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsScene_disconnectNotify
  gen_qgraphicsscene_types.QGraphicsScene(h: fcQGraphicsScene_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    sceneRect: gen_qrect_types.QRectF,
    vtbl: ref QGraphicsSceneVTable = nil): gen_qgraphicsscene_types.QGraphicsScene =
  let vtbl = if vtbl == nil: new QGraphicsSceneVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsScene_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsScene_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsScene_metacall
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsScene_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsScene_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsScene_eventFilter
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsScene_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsScene_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsScene_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsScene_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsScene_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsScene_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsScene_focusOutEvent
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = miqt_exec_callback_cQGraphicsScene_helpEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsScene_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsScene_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsScene_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsScene_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsScene_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsScene_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsScene_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsScene_inputMethodEvent
  if not isNil(vtbl[].drawBackground):
    vtbl[].vtbl.drawBackground = miqt_exec_callback_cQGraphicsScene_drawBackground
  if not isNil(vtbl[].drawForeground):
    vtbl[].vtbl.drawForeground = miqt_exec_callback_cQGraphicsScene_drawForeground
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsScene_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsScene_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsScene_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsScene_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsScene_disconnectNotify
  gen_qgraphicsscene_types.QGraphicsScene(h: fcQGraphicsScene_new2(addr(vtbl[].vtbl), sceneRect.h), owned: true)

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    x: float64, y: float64, width: float64, height: float64,
    vtbl: ref QGraphicsSceneVTable = nil): gen_qgraphicsscene_types.QGraphicsScene =
  let vtbl = if vtbl == nil: new QGraphicsSceneVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsScene_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsScene_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsScene_metacall
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsScene_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsScene_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsScene_eventFilter
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsScene_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsScene_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsScene_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsScene_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsScene_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsScene_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsScene_focusOutEvent
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = miqt_exec_callback_cQGraphicsScene_helpEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsScene_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsScene_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsScene_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsScene_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsScene_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsScene_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsScene_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsScene_inputMethodEvent
  if not isNil(vtbl[].drawBackground):
    vtbl[].vtbl.drawBackground = miqt_exec_callback_cQGraphicsScene_drawBackground
  if not isNil(vtbl[].drawForeground):
    vtbl[].vtbl.drawForeground = miqt_exec_callback_cQGraphicsScene_drawForeground
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsScene_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsScene_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsScene_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsScene_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsScene_disconnectNotify
  gen_qgraphicsscene_types.QGraphicsScene(h: fcQGraphicsScene_new3(addr(vtbl[].vtbl), x, y, width, height), owned: true)

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsSceneVTable = nil): gen_qgraphicsscene_types.QGraphicsScene =
  let vtbl = if vtbl == nil: new QGraphicsSceneVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsScene_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsScene_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsScene_metacall
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsScene_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsScene_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsScene_eventFilter
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsScene_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsScene_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsScene_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsScene_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsScene_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsScene_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsScene_focusOutEvent
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = miqt_exec_callback_cQGraphicsScene_helpEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsScene_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsScene_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsScene_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsScene_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsScene_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsScene_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsScene_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsScene_inputMethodEvent
  if not isNil(vtbl[].drawBackground):
    vtbl[].vtbl.drawBackground = miqt_exec_callback_cQGraphicsScene_drawBackground
  if not isNil(vtbl[].drawForeground):
    vtbl[].vtbl.drawForeground = miqt_exec_callback_cQGraphicsScene_drawForeground
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsScene_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsScene_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsScene_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsScene_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsScene_disconnectNotify
  gen_qgraphicsscene_types.QGraphicsScene(h: fcQGraphicsScene_new4(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    sceneRect: gen_qrect_types.QRectF, parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsSceneVTable = nil): gen_qgraphicsscene_types.QGraphicsScene =
  let vtbl = if vtbl == nil: new QGraphicsSceneVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsScene_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsScene_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsScene_metacall
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsScene_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsScene_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsScene_eventFilter
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsScene_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsScene_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsScene_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsScene_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsScene_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsScene_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsScene_focusOutEvent
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = miqt_exec_callback_cQGraphicsScene_helpEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsScene_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsScene_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsScene_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsScene_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsScene_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsScene_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsScene_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsScene_inputMethodEvent
  if not isNil(vtbl[].drawBackground):
    vtbl[].vtbl.drawBackground = miqt_exec_callback_cQGraphicsScene_drawBackground
  if not isNil(vtbl[].drawForeground):
    vtbl[].vtbl.drawForeground = miqt_exec_callback_cQGraphicsScene_drawForeground
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsScene_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsScene_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsScene_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsScene_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsScene_disconnectNotify
  gen_qgraphicsscene_types.QGraphicsScene(h: fcQGraphicsScene_new5(addr(vtbl[].vtbl), sceneRect.h, parent.h), owned: true)

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    x: float64, y: float64, width: float64, height: float64, parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsSceneVTable = nil): gen_qgraphicsscene_types.QGraphicsScene =
  let vtbl = if vtbl == nil: new QGraphicsSceneVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsScene_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsScene_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsScene_metacall
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsScene_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsScene_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsScene_eventFilter
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsScene_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsScene_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsScene_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsScene_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsScene_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsScene_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsScene_focusOutEvent
  if not isNil(vtbl[].helpEvent):
    vtbl[].vtbl.helpEvent = miqt_exec_callback_cQGraphicsScene_helpEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsScene_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsScene_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsScene_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsScene_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsScene_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsScene_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsScene_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsScene_inputMethodEvent
  if not isNil(vtbl[].drawBackground):
    vtbl[].vtbl.drawBackground = miqt_exec_callback_cQGraphicsScene_drawBackground
  if not isNil(vtbl[].drawForeground):
    vtbl[].vtbl.drawForeground = miqt_exec_callback_cQGraphicsScene_drawForeground
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsScene_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsScene_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsScene_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsScene_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsScene_disconnectNotify
  gen_qgraphicsscene_types.QGraphicsScene(h: fcQGraphicsScene_new6(addr(vtbl[].vtbl), x, y, width, height, parent.h), owned: true)

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    vtbl: VirtualQGraphicsScene) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsScene()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsScene_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsScene_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsScene_metacall
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsScene_inputMethodQuery
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsScene_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsScene_eventFilter
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsScene_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsScene_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsScene_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsScene_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsScene_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsScene_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsScene_focusOutEvent
  vtbl[].vtbl.helpEvent = miqt_exec_method_cQGraphicsScene_helpEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsScene_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsScene_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsScene_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsScene_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsScene_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsScene_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsScene_wheelEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsScene_inputMethodEvent
  vtbl[].vtbl.drawBackground = miqt_exec_method_cQGraphicsScene_drawBackground
  vtbl[].vtbl.drawForeground = miqt_exec_method_cQGraphicsScene_drawForeground
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsScene_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsScene_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsScene_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsScene_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsScene_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsScene_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    sceneRect: gen_qrect_types.QRectF,
    vtbl: VirtualQGraphicsScene) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsScene()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsScene_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsScene_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsScene_metacall
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsScene_inputMethodQuery
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsScene_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsScene_eventFilter
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsScene_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsScene_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsScene_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsScene_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsScene_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsScene_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsScene_focusOutEvent
  vtbl[].vtbl.helpEvent = miqt_exec_method_cQGraphicsScene_helpEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsScene_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsScene_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsScene_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsScene_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsScene_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsScene_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsScene_wheelEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsScene_inputMethodEvent
  vtbl[].vtbl.drawBackground = miqt_exec_method_cQGraphicsScene_drawBackground
  vtbl[].vtbl.drawForeground = miqt_exec_method_cQGraphicsScene_drawForeground
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsScene_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsScene_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsScene_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsScene_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsScene_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsScene_new2(addr(vtbl[].vtbl), sceneRect.h)
  vtbl[].owned = true

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    x: float64, y: float64, width: float64, height: float64,
    vtbl: VirtualQGraphicsScene) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsScene()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsScene_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsScene_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsScene_metacall
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsScene_inputMethodQuery
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsScene_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsScene_eventFilter
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsScene_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsScene_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsScene_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsScene_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsScene_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsScene_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsScene_focusOutEvent
  vtbl[].vtbl.helpEvent = miqt_exec_method_cQGraphicsScene_helpEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsScene_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsScene_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsScene_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsScene_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsScene_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsScene_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsScene_wheelEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsScene_inputMethodEvent
  vtbl[].vtbl.drawBackground = miqt_exec_method_cQGraphicsScene_drawBackground
  vtbl[].vtbl.drawForeground = miqt_exec_method_cQGraphicsScene_drawForeground
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsScene_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsScene_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsScene_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsScene_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsScene_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsScene_new3(addr(vtbl[].vtbl), x, y, width, height)
  vtbl[].owned = true

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQGraphicsScene) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsScene()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsScene_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsScene_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsScene_metacall
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsScene_inputMethodQuery
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsScene_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsScene_eventFilter
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsScene_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsScene_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsScene_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsScene_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsScene_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsScene_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsScene_focusOutEvent
  vtbl[].vtbl.helpEvent = miqt_exec_method_cQGraphicsScene_helpEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsScene_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsScene_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsScene_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsScene_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsScene_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsScene_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsScene_wheelEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsScene_inputMethodEvent
  vtbl[].vtbl.drawBackground = miqt_exec_method_cQGraphicsScene_drawBackground
  vtbl[].vtbl.drawForeground = miqt_exec_method_cQGraphicsScene_drawForeground
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsScene_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsScene_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsScene_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsScene_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsScene_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsScene_new4(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    sceneRect: gen_qrect_types.QRectF, parent: gen_qobject_types.QObject,
    vtbl: VirtualQGraphicsScene) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsScene()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsScene_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsScene_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsScene_metacall
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsScene_inputMethodQuery
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsScene_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsScene_eventFilter
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsScene_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsScene_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsScene_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsScene_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsScene_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsScene_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsScene_focusOutEvent
  vtbl[].vtbl.helpEvent = miqt_exec_method_cQGraphicsScene_helpEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsScene_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsScene_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsScene_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsScene_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsScene_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsScene_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsScene_wheelEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsScene_inputMethodEvent
  vtbl[].vtbl.drawBackground = miqt_exec_method_cQGraphicsScene_drawBackground
  vtbl[].vtbl.drawForeground = miqt_exec_method_cQGraphicsScene_drawForeground
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsScene_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsScene_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsScene_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsScene_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsScene_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsScene_new5(addr(vtbl[].vtbl), sceneRect.h, parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qgraphicsscene_types.QGraphicsScene,
    x: float64, y: float64, width: float64, height: float64, parent: gen_qobject_types.QObject,
    vtbl: VirtualQGraphicsScene) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneVTable, _: ptr cQGraphicsScene) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsScene()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsScene, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsScene_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsScene_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsScene_metacall
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsScene_inputMethodQuery
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsScene_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsScene_eventFilter
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsScene_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsScene_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsScene_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsScene_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsScene_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsScene_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsScene_focusOutEvent
  vtbl[].vtbl.helpEvent = miqt_exec_method_cQGraphicsScene_helpEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsScene_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsScene_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsScene_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsScene_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsScene_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsScene_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsScene_wheelEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsScene_inputMethodEvent
  vtbl[].vtbl.drawBackground = miqt_exec_method_cQGraphicsScene_drawBackground
  vtbl[].vtbl.drawForeground = miqt_exec_method_cQGraphicsScene_drawForeground
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsScene_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsScene_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsScene_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsScene_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsScene_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsScene_new6(addr(vtbl[].vtbl), x, y, width, height, parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qgraphicsscene_types.QGraphicsScene): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsScene_staticMetaObject())
