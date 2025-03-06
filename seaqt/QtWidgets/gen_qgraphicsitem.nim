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
{.compile("gen_qgraphicsitem.cpp", cflags).}


type QGraphicsItemGraphicsItemFlagEnum* = distinct cint
template ItemIsMovable*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 1
template ItemIsSelectable*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 2
template ItemIsFocusable*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 4
template ItemClipsToShape*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 8
template ItemClipsChildrenToShape*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 16
template ItemIgnoresTransformations*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 32
template ItemIgnoresParentOpacity*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 64
template ItemDoesntPropagateOpacityToChildren*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 128
template ItemStacksBehindParent*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 256
template ItemUsesExtendedStyleOption*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 512
template ItemHasNoContents*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 1024
template ItemSendsGeometryChanges*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 2048
template ItemAcceptsInputMethod*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 4096
template ItemNegativeZStacksBehindParent*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 8192
template ItemIsPanel*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 16384
template ItemIsFocusScope*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 32768
template ItemSendsScenePositionChanges*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 65536
template ItemStopsClickFocusPropagation*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 131072
template ItemStopsFocusHandling*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 262144
template ItemContainsChildrenInShape*(_: type QGraphicsItemGraphicsItemFlagEnum): untyped = 524288


type QGraphicsItemGraphicsItemChangeEnum* = distinct cint
template ItemPositionChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 0
template ItemVisibleChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 2
template ItemEnabledChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 3
template ItemSelectedChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 4
template ItemParentChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 5
template ItemChildAddedChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 6
template ItemChildRemovedChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 7
template ItemTransformChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 8
template ItemPositionHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 9
template ItemTransformHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 10
template ItemSceneChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 11
template ItemVisibleHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 12
template ItemEnabledHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 13
template ItemSelectedHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 14
template ItemParentHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 15
template ItemSceneHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 16
template ItemCursorChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 17
template ItemCursorHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 18
template ItemToolTipChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 19
template ItemToolTipHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 20
template ItemFlagsChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 21
template ItemFlagsHaveChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 22
template ItemZValueChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 23
template ItemZValueHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 24
template ItemOpacityChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 25
template ItemOpacityHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 26
template ItemScenePositionHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 27
template ItemRotationChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 28
template ItemRotationHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 29
template ItemScaleChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 30
template ItemScaleHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 31
template ItemTransformOriginPointChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 32
template ItemTransformOriginPointHasChanged*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 33


type QGraphicsItemCacheModeEnum* = distinct cint
template NoCache*(_: type QGraphicsItemCacheModeEnum): untyped = 0
template ItemCoordinateCache*(_: type QGraphicsItemCacheModeEnum): untyped = 1
template DeviceCoordinateCache*(_: type QGraphicsItemCacheModeEnum): untyped = 2


type QGraphicsItemPanelModalityEnum* = distinct cint
template NonModal*(_: type QGraphicsItemPanelModalityEnum): untyped = 0
template PanelModal*(_: type QGraphicsItemPanelModalityEnum): untyped = 1
template SceneModal*(_: type QGraphicsItemPanelModalityEnum): untyped = 2


type QGraphicsItemEnumEnum* = distinct cint
template Type*(_: type QGraphicsItemEnumEnum): untyped = 1
template UserType*(_: type QGraphicsItemEnumEnum): untyped = 65536


type QGraphicsItemExtensionEnum* = distinct cint
template UserExtension*(_: type QGraphicsItemExtensionEnum): untyped = 2147483648


type QGraphicsPathItemEnumEnum* = distinct cint
template Type*(_: type QGraphicsPathItemEnumEnum): untyped = 2


type QGraphicsRectItemEnumEnum* = distinct cint
template Type*(_: type QGraphicsRectItemEnumEnum): untyped = 3


type QGraphicsEllipseItemEnumEnum* = distinct cint
template Type*(_: type QGraphicsEllipseItemEnumEnum): untyped = 4


type QGraphicsPolygonItemEnumEnum* = distinct cint
template Type*(_: type QGraphicsPolygonItemEnumEnum): untyped = 5


type QGraphicsLineItemEnumEnum* = distinct cint
template Type*(_: type QGraphicsLineItemEnumEnum): untyped = 6


type QGraphicsPixmapItemShapeModeEnum* = distinct cint
template MaskShape*(_: type QGraphicsPixmapItemShapeModeEnum): untyped = 0
template BoundingRectShape*(_: type QGraphicsPixmapItemShapeModeEnum): untyped = 1
template HeuristicMaskShape*(_: type QGraphicsPixmapItemShapeModeEnum): untyped = 2


type QGraphicsPixmapItemEnumEnum* = distinct cint
template Type*(_: type QGraphicsPixmapItemEnumEnum): untyped = 7


type QGraphicsTextItemEnumEnum* = distinct cint
template Type*(_: type QGraphicsTextItemEnumEnum): untyped = 8


type QGraphicsSimpleTextItemEnumEnum* = distinct cint
template Type*(_: type QGraphicsSimpleTextItemEnumEnum): untyped = 9


type QGraphicsItemGroupEnumEnum* = distinct cint
template Type*(_: type QGraphicsItemGroupEnumEnum): untyped = 10


import ./gen_qgraphicsitem_types
export gen_qgraphicsitem_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qline_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qbrush_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qcursor_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpainterpath_types,
  ../QtGui/gen_qpen_types,
  ../QtGui/gen_qpixmap_types,
  ../QtGui/gen_qregion_types,
  ../QtGui/gen_qtextcursor_types,
  ../QtGui/gen_qtextdocument_types,
  ../QtGui/gen_qtransform_types,
  ./gen_qgraphicseffect_types,
  ./gen_qgraphicsscene_types,
  ./gen_qgraphicssceneevent_types,
  ./gen_qgraphicstransform_types,
  ./gen_qgraphicswidget_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qline_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qbrush_types,
  gen_qcolor_types,
  gen_qcursor_types,
  gen_qevent_types,
  gen_qfont_types,
  gen_qpainter_types,
  gen_qpainterpath_types,
  gen_qpen_types,
  gen_qpixmap_types,
  gen_qregion_types,
  gen_qtextcursor_types,
  gen_qtextdocument_types,
  gen_qtransform_types,
  gen_qgraphicseffect_types,
  gen_qgraphicsscene_types,
  gen_qgraphicssceneevent_types,
  gen_qgraphicstransform_types,
  gen_qgraphicswidget_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQGraphicsItem*{.exportc: "QGraphicsItem", incompleteStruct.} = object
type cQGraphicsObject*{.exportc: "QGraphicsObject", incompleteStruct.} = object
type cQAbstractGraphicsShapeItem*{.exportc: "QAbstractGraphicsShapeItem", incompleteStruct.} = object
type cQGraphicsPathItem*{.exportc: "QGraphicsPathItem", incompleteStruct.} = object
type cQGraphicsRectItem*{.exportc: "QGraphicsRectItem", incompleteStruct.} = object
type cQGraphicsEllipseItem*{.exportc: "QGraphicsEllipseItem", incompleteStruct.} = object
type cQGraphicsPolygonItem*{.exportc: "QGraphicsPolygonItem", incompleteStruct.} = object
type cQGraphicsLineItem*{.exportc: "QGraphicsLineItem", incompleteStruct.} = object
type cQGraphicsPixmapItem*{.exportc: "QGraphicsPixmapItem", incompleteStruct.} = object
type cQGraphicsTextItem*{.exportc: "QGraphicsTextItem", incompleteStruct.} = object
type cQGraphicsSimpleTextItem*{.exportc: "QGraphicsSimpleTextItem", incompleteStruct.} = object
type cQGraphicsItemGroup*{.exportc: "QGraphicsItemGroup", incompleteStruct.} = object

proc fcQGraphicsItem_new(): ptr cQGraphicsItem {.importc: "QGraphicsItem_new".}
proc fcQGraphicsItem_new2(parent: pointer): ptr cQGraphicsItem {.importc: "QGraphicsItem_new2".}
proc fcQGraphicsItem_scene(self: pointer, ): pointer {.importc: "QGraphicsItem_scene".}
proc fcQGraphicsItem_parentItem(self: pointer, ): pointer {.importc: "QGraphicsItem_parentItem".}
proc fcQGraphicsItem_topLevelItem(self: pointer, ): pointer {.importc: "QGraphicsItem_topLevelItem".}
proc fcQGraphicsItem_parentObject(self: pointer, ): pointer {.importc: "QGraphicsItem_parentObject".}
proc fcQGraphicsItem_parentWidget(self: pointer, ): pointer {.importc: "QGraphicsItem_parentWidget".}
proc fcQGraphicsItem_topLevelWidget(self: pointer, ): pointer {.importc: "QGraphicsItem_topLevelWidget".}
proc fcQGraphicsItem_window(self: pointer, ): pointer {.importc: "QGraphicsItem_window".}
proc fcQGraphicsItem_panel(self: pointer, ): pointer {.importc: "QGraphicsItem_panel".}
proc fcQGraphicsItem_setParentItem(self: pointer, parent: pointer): void {.importc: "QGraphicsItem_setParentItem".}
proc fcQGraphicsItem_childItems(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItem_childItems".}
proc fcQGraphicsItem_isWidget(self: pointer, ): bool {.importc: "QGraphicsItem_isWidget".}
proc fcQGraphicsItem_isWindow(self: pointer, ): bool {.importc: "QGraphicsItem_isWindow".}
proc fcQGraphicsItem_isPanel(self: pointer, ): bool {.importc: "QGraphicsItem_isPanel".}
proc fcQGraphicsItem_toGraphicsObject(self: pointer, ): pointer {.importc: "QGraphicsItem_toGraphicsObject".}
proc fcQGraphicsItem_toGraphicsObject2(self: pointer, ): pointer {.importc: "QGraphicsItem_toGraphicsObject2".}
proc fcQGraphicsItem_group(self: pointer, ): pointer {.importc: "QGraphicsItem_group".}
proc fcQGraphicsItem_setGroup(self: pointer, group: pointer): void {.importc: "QGraphicsItem_setGroup".}
proc fcQGraphicsItem_flags(self: pointer, ): cint {.importc: "QGraphicsItem_flags".}
proc fcQGraphicsItem_setFlag(self: pointer, flag: cint): void {.importc: "QGraphicsItem_setFlag".}
proc fcQGraphicsItem_setFlags(self: pointer, flags: cint): void {.importc: "QGraphicsItem_setFlags".}
proc fcQGraphicsItem_cacheMode(self: pointer, ): cint {.importc: "QGraphicsItem_cacheMode".}
proc fcQGraphicsItem_setCacheMode(self: pointer, mode: cint): void {.importc: "QGraphicsItem_setCacheMode".}
proc fcQGraphicsItem_panelModality(self: pointer, ): cint {.importc: "QGraphicsItem_panelModality".}
proc fcQGraphicsItem_setPanelModality(self: pointer, panelModality: cint): void {.importc: "QGraphicsItem_setPanelModality".}
proc fcQGraphicsItem_isBlockedByModalPanel(self: pointer, ): bool {.importc: "QGraphicsItem_isBlockedByModalPanel".}
proc fcQGraphicsItem_toolTip(self: pointer, ): struct_miqt_string {.importc: "QGraphicsItem_toolTip".}
proc fcQGraphicsItem_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QGraphicsItem_setToolTip".}
proc fcQGraphicsItem_cursor(self: pointer, ): pointer {.importc: "QGraphicsItem_cursor".}
proc fcQGraphicsItem_setCursor(self: pointer, cursor: pointer): void {.importc: "QGraphicsItem_setCursor".}
proc fcQGraphicsItem_hasCursor(self: pointer, ): bool {.importc: "QGraphicsItem_hasCursor".}
proc fcQGraphicsItem_unsetCursor(self: pointer, ): void {.importc: "QGraphicsItem_unsetCursor".}
proc fcQGraphicsItem_isVisible(self: pointer, ): bool {.importc: "QGraphicsItem_isVisible".}
proc fcQGraphicsItem_isVisibleTo(self: pointer, parent: pointer): bool {.importc: "QGraphicsItem_isVisibleTo".}
proc fcQGraphicsItem_setVisible(self: pointer, visible: bool): void {.importc: "QGraphicsItem_setVisible".}
proc fcQGraphicsItem_hide(self: pointer, ): void {.importc: "QGraphicsItem_hide".}
proc fcQGraphicsItem_show(self: pointer, ): void {.importc: "QGraphicsItem_show".}
proc fcQGraphicsItem_isEnabled(self: pointer, ): bool {.importc: "QGraphicsItem_isEnabled".}
proc fcQGraphicsItem_setEnabled(self: pointer, enabled: bool): void {.importc: "QGraphicsItem_setEnabled".}
proc fcQGraphicsItem_isSelected(self: pointer, ): bool {.importc: "QGraphicsItem_isSelected".}
proc fcQGraphicsItem_setSelected(self: pointer, selected: bool): void {.importc: "QGraphicsItem_setSelected".}
proc fcQGraphicsItem_acceptDrops(self: pointer, ): bool {.importc: "QGraphicsItem_acceptDrops".}
proc fcQGraphicsItem_setAcceptDrops(self: pointer, on: bool): void {.importc: "QGraphicsItem_setAcceptDrops".}
proc fcQGraphicsItem_opacity(self: pointer, ): float64 {.importc: "QGraphicsItem_opacity".}
proc fcQGraphicsItem_effectiveOpacity(self: pointer, ): float64 {.importc: "QGraphicsItem_effectiveOpacity".}
proc fcQGraphicsItem_setOpacity(self: pointer, opacity: float64): void {.importc: "QGraphicsItem_setOpacity".}
proc fcQGraphicsItem_graphicsEffect(self: pointer, ): pointer {.importc: "QGraphicsItem_graphicsEffect".}
proc fcQGraphicsItem_setGraphicsEffect(self: pointer, effect: pointer): void {.importc: "QGraphicsItem_setGraphicsEffect".}
proc fcQGraphicsItem_acceptedMouseButtons(self: pointer, ): cint {.importc: "QGraphicsItem_acceptedMouseButtons".}
proc fcQGraphicsItem_setAcceptedMouseButtons(self: pointer, buttons: cint): void {.importc: "QGraphicsItem_setAcceptedMouseButtons".}
proc fcQGraphicsItem_acceptHoverEvents(self: pointer, ): bool {.importc: "QGraphicsItem_acceptHoverEvents".}
proc fcQGraphicsItem_setAcceptHoverEvents(self: pointer, enabled: bool): void {.importc: "QGraphicsItem_setAcceptHoverEvents".}
proc fcQGraphicsItem_acceptTouchEvents(self: pointer, ): bool {.importc: "QGraphicsItem_acceptTouchEvents".}
proc fcQGraphicsItem_setAcceptTouchEvents(self: pointer, enabled: bool): void {.importc: "QGraphicsItem_setAcceptTouchEvents".}
proc fcQGraphicsItem_filtersChildEvents(self: pointer, ): bool {.importc: "QGraphicsItem_filtersChildEvents".}
proc fcQGraphicsItem_setFiltersChildEvents(self: pointer, enabled: bool): void {.importc: "QGraphicsItem_setFiltersChildEvents".}
proc fcQGraphicsItem_handlesChildEvents(self: pointer, ): bool {.importc: "QGraphicsItem_handlesChildEvents".}
proc fcQGraphicsItem_setHandlesChildEvents(self: pointer, enabled: bool): void {.importc: "QGraphicsItem_setHandlesChildEvents".}
proc fcQGraphicsItem_isActive(self: pointer, ): bool {.importc: "QGraphicsItem_isActive".}
proc fcQGraphicsItem_setActive(self: pointer, active: bool): void {.importc: "QGraphicsItem_setActive".}
proc fcQGraphicsItem_hasFocus(self: pointer, ): bool {.importc: "QGraphicsItem_hasFocus".}
proc fcQGraphicsItem_setFocus(self: pointer, ): void {.importc: "QGraphicsItem_setFocus".}
proc fcQGraphicsItem_clearFocus(self: pointer, ): void {.importc: "QGraphicsItem_clearFocus".}
proc fcQGraphicsItem_focusProxy(self: pointer, ): pointer {.importc: "QGraphicsItem_focusProxy".}
proc fcQGraphicsItem_setFocusProxy(self: pointer, item: pointer): void {.importc: "QGraphicsItem_setFocusProxy".}
proc fcQGraphicsItem_focusItem(self: pointer, ): pointer {.importc: "QGraphicsItem_focusItem".}
proc fcQGraphicsItem_focusScopeItem(self: pointer, ): pointer {.importc: "QGraphicsItem_focusScopeItem".}
proc fcQGraphicsItem_grabMouse(self: pointer, ): void {.importc: "QGraphicsItem_grabMouse".}
proc fcQGraphicsItem_ungrabMouse(self: pointer, ): void {.importc: "QGraphicsItem_ungrabMouse".}
proc fcQGraphicsItem_grabKeyboard(self: pointer, ): void {.importc: "QGraphicsItem_grabKeyboard".}
proc fcQGraphicsItem_ungrabKeyboard(self: pointer, ): void {.importc: "QGraphicsItem_ungrabKeyboard".}
proc fcQGraphicsItem_pos(self: pointer, ): pointer {.importc: "QGraphicsItem_pos".}
proc fcQGraphicsItem_x(self: pointer, ): float64 {.importc: "QGraphicsItem_x".}
proc fcQGraphicsItem_setX(self: pointer, x: float64): void {.importc: "QGraphicsItem_setX".}
proc fcQGraphicsItem_y(self: pointer, ): float64 {.importc: "QGraphicsItem_y".}
proc fcQGraphicsItem_setY(self: pointer, y: float64): void {.importc: "QGraphicsItem_setY".}
proc fcQGraphicsItem_scenePos(self: pointer, ): pointer {.importc: "QGraphicsItem_scenePos".}
proc fcQGraphicsItem_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsItem_setPos".}
proc fcQGraphicsItem_setPos2(self: pointer, x: float64, y: float64): void {.importc: "QGraphicsItem_setPos2".}
proc fcQGraphicsItem_moveBy(self: pointer, dx: float64, dy: float64): void {.importc: "QGraphicsItem_moveBy".}
proc fcQGraphicsItem_ensureVisible(self: pointer, ): void {.importc: "QGraphicsItem_ensureVisible".}
proc fcQGraphicsItem_ensureVisible2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsItem_ensureVisible2".}
proc fcQGraphicsItem_transform(self: pointer, ): pointer {.importc: "QGraphicsItem_transform".}
proc fcQGraphicsItem_sceneTransform(self: pointer, ): pointer {.importc: "QGraphicsItem_sceneTransform".}
proc fcQGraphicsItem_deviceTransform(self: pointer, viewportTransform: pointer): pointer {.importc: "QGraphicsItem_deviceTransform".}
proc fcQGraphicsItem_itemTransform(self: pointer, other: pointer): pointer {.importc: "QGraphicsItem_itemTransform".}
proc fcQGraphicsItem_setTransform(self: pointer, matrix: pointer): void {.importc: "QGraphicsItem_setTransform".}
proc fcQGraphicsItem_resetTransform(self: pointer, ): void {.importc: "QGraphicsItem_resetTransform".}
proc fcQGraphicsItem_setRotation(self: pointer, angle: float64): void {.importc: "QGraphicsItem_setRotation".}
proc fcQGraphicsItem_rotation(self: pointer, ): float64 {.importc: "QGraphicsItem_rotation".}
proc fcQGraphicsItem_setScale(self: pointer, scale: float64): void {.importc: "QGraphicsItem_setScale".}
proc fcQGraphicsItem_scale(self: pointer, ): float64 {.importc: "QGraphicsItem_scale".}
proc fcQGraphicsItem_transformations(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItem_transformations".}
proc fcQGraphicsItem_setTransformations(self: pointer, transformations: struct_miqt_array): void {.importc: "QGraphicsItem_setTransformations".}
proc fcQGraphicsItem_transformOriginPoint(self: pointer, ): pointer {.importc: "QGraphicsItem_transformOriginPoint".}
proc fcQGraphicsItem_setTransformOriginPoint(self: pointer, origin: pointer): void {.importc: "QGraphicsItem_setTransformOriginPoint".}
proc fcQGraphicsItem_setTransformOriginPoint2(self: pointer, ax: float64, ay: float64): void {.importc: "QGraphicsItem_setTransformOriginPoint2".}
proc fcQGraphicsItem_advance(self: pointer, phase: cint): void {.importc: "QGraphicsItem_advance".}
proc fcQGraphicsItem_zValue(self: pointer, ): float64 {.importc: "QGraphicsItem_zValue".}
proc fcQGraphicsItem_setZValue(self: pointer, z: float64): void {.importc: "QGraphicsItem_setZValue".}
proc fcQGraphicsItem_stackBefore(self: pointer, sibling: pointer): void {.importc: "QGraphicsItem_stackBefore".}
proc fcQGraphicsItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsItem_boundingRect".}
proc fcQGraphicsItem_childrenBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsItem_childrenBoundingRect".}
proc fcQGraphicsItem_sceneBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsItem_sceneBoundingRect".}
proc fcQGraphicsItem_shape(self: pointer, ): pointer {.importc: "QGraphicsItem_shape".}
proc fcQGraphicsItem_isClipped(self: pointer, ): bool {.importc: "QGraphicsItem_isClipped".}
proc fcQGraphicsItem_clipPath(self: pointer, ): pointer {.importc: "QGraphicsItem_clipPath".}
proc fcQGraphicsItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsItem_contains".}
proc fcQGraphicsItem_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsItem_collidesWithItem".}
proc fcQGraphicsItem_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsItem_collidesWithPath".}
proc fcQGraphicsItem_collidingItems(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItem_collidingItems".}
proc fcQGraphicsItem_isObscured(self: pointer, ): bool {.importc: "QGraphicsItem_isObscured".}
proc fcQGraphicsItem_isObscured2(self: pointer, x: float64, y: float64, w: float64, h: float64): bool {.importc: "QGraphicsItem_isObscured2".}
proc fcQGraphicsItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsItem_isObscuredBy".}
proc fcQGraphicsItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsItem_opaqueArea".}
proc fcQGraphicsItem_boundingRegion(self: pointer, itemToDeviceTransform: pointer): pointer {.importc: "QGraphicsItem_boundingRegion".}
proc fcQGraphicsItem_boundingRegionGranularity(self: pointer, ): float64 {.importc: "QGraphicsItem_boundingRegionGranularity".}
proc fcQGraphicsItem_setBoundingRegionGranularity(self: pointer, granularity: float64): void {.importc: "QGraphicsItem_setBoundingRegionGranularity".}
proc fcQGraphicsItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsItem_paint".}
proc fcQGraphicsItem_update(self: pointer, ): void {.importc: "QGraphicsItem_update".}
proc fcQGraphicsItem_update2(self: pointer, x: float64, y: float64, width: float64, height: float64): void {.importc: "QGraphicsItem_update2".}
proc fcQGraphicsItem_scroll(self: pointer, dx: float64, dy: float64): void {.importc: "QGraphicsItem_scroll".}
proc fcQGraphicsItem_mapToItem(self: pointer, item: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapToItem".}
proc fcQGraphicsItem_mapToParent(self: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapToParent".}
proc fcQGraphicsItem_mapToScene(self: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapToScene".}
proc fcQGraphicsItem_mapRectToItem(self: pointer, item: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectToItem".}
proc fcQGraphicsItem_mapRectToParent(self: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectToParent".}
proc fcQGraphicsItem_mapRectToScene(self: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectToScene".}
proc fcQGraphicsItem_mapToItem4(self: pointer, item: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapToItem4".}
proc fcQGraphicsItem_mapToParentWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapToParentWithPath".}
proc fcQGraphicsItem_mapToSceneWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapToSceneWithPath".}
proc fcQGraphicsItem_mapFromItem(self: pointer, item: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapFromItem".}
proc fcQGraphicsItem_mapFromParent(self: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapFromParent".}
proc fcQGraphicsItem_mapFromScene(self: pointer, point: pointer): pointer {.importc: "QGraphicsItem_mapFromScene".}
proc fcQGraphicsItem_mapRectFromItem(self: pointer, item: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectFromItem".}
proc fcQGraphicsItem_mapRectFromParent(self: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectFromParent".}
proc fcQGraphicsItem_mapRectFromScene(self: pointer, rect: pointer): pointer {.importc: "QGraphicsItem_mapRectFromScene".}
proc fcQGraphicsItem_mapFromItem4(self: pointer, item: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapFromItem4".}
proc fcQGraphicsItem_mapFromParentWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapFromParentWithPath".}
proc fcQGraphicsItem_mapFromSceneWithPath(self: pointer, path: pointer): pointer {.importc: "QGraphicsItem_mapFromSceneWithPath".}
proc fcQGraphicsItem_mapToItem5(self: pointer, item: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapToItem5".}
proc fcQGraphicsItem_mapToParent2(self: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapToParent2".}
proc fcQGraphicsItem_mapToScene2(self: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapToScene2".}
proc fcQGraphicsItem_mapRectToItem2(self: pointer, item: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectToItem2".}
proc fcQGraphicsItem_mapRectToParent2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectToParent2".}
proc fcQGraphicsItem_mapRectToScene2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectToScene2".}
proc fcQGraphicsItem_mapFromItem5(self: pointer, item: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapFromItem5".}
proc fcQGraphicsItem_mapFromParent2(self: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapFromParent2".}
proc fcQGraphicsItem_mapFromScene2(self: pointer, x: float64, y: float64): pointer {.importc: "QGraphicsItem_mapFromScene2".}
proc fcQGraphicsItem_mapRectFromItem2(self: pointer, item: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectFromItem2".}
proc fcQGraphicsItem_mapRectFromParent2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectFromParent2".}
proc fcQGraphicsItem_mapRectFromScene2(self: pointer, x: float64, y: float64, w: float64, h: float64): pointer {.importc: "QGraphicsItem_mapRectFromScene2".}
proc fcQGraphicsItem_isAncestorOf(self: pointer, child: pointer): bool {.importc: "QGraphicsItem_isAncestorOf".}
proc fcQGraphicsItem_commonAncestorItem(self: pointer, other: pointer): pointer {.importc: "QGraphicsItem_commonAncestorItem".}
proc fcQGraphicsItem_isUnderMouse(self: pointer, ): bool {.importc: "QGraphicsItem_isUnderMouse".}
proc fcQGraphicsItem_data(self: pointer, key: cint): pointer {.importc: "QGraphicsItem_data".}
proc fcQGraphicsItem_setData(self: pointer, key: cint, value: pointer): void {.importc: "QGraphicsItem_setData".}
proc fcQGraphicsItem_inputMethodHints(self: pointer, ): cint {.importc: "QGraphicsItem_inputMethodHints".}
proc fcQGraphicsItem_setInputMethodHints(self: pointer, hints: cint): void {.importc: "QGraphicsItem_setInputMethodHints".}
proc fcQGraphicsItem_typeX(self: pointer, ): cint {.importc: "QGraphicsItem_type".}
proc fcQGraphicsItem_installSceneEventFilter(self: pointer, filterItem: pointer): void {.importc: "QGraphicsItem_installSceneEventFilter".}
proc fcQGraphicsItem_removeSceneEventFilter(self: pointer, filterItem: pointer): void {.importc: "QGraphicsItem_removeSceneEventFilter".}
proc fcQGraphicsItem_setFlag2(self: pointer, flag: cint, enabled: bool): void {.importc: "QGraphicsItem_setFlag2".}
proc fcQGraphicsItem_setCacheMode2(self: pointer, mode: cint, cacheSize: pointer): void {.importc: "QGraphicsItem_setCacheMode2".}
proc fcQGraphicsItem_setFocus1(self: pointer, focusReason: cint): void {.importc: "QGraphicsItem_setFocus1".}
proc fcQGraphicsItem_ensureVisible1(self: pointer, rect: pointer): void {.importc: "QGraphicsItem_ensureVisible1".}
proc fcQGraphicsItem_ensureVisible22(self: pointer, rect: pointer, xmargin: cint): void {.importc: "QGraphicsItem_ensureVisible22".}
proc fcQGraphicsItem_ensureVisible3(self: pointer, rect: pointer, xmargin: cint, ymargin: cint): void {.importc: "QGraphicsItem_ensureVisible3".}
proc fcQGraphicsItem_ensureVisible5(self: pointer, x: float64, y: float64, w: float64, h: float64, xmargin: cint): void {.importc: "QGraphicsItem_ensureVisible5".}
proc fcQGraphicsItem_ensureVisible6(self: pointer, x: float64, y: float64, w: float64, h: float64, xmargin: cint, ymargin: cint): void {.importc: "QGraphicsItem_ensureVisible6".}
proc fcQGraphicsItem_itemTransform2(self: pointer, other: pointer, ok: ptr bool): pointer {.importc: "QGraphicsItem_itemTransform2".}
proc fcQGraphicsItem_setTransform2(self: pointer, matrix: pointer, combine: bool): void {.importc: "QGraphicsItem_setTransform2".}
proc fcQGraphicsItem_collidingItems1(self: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsItem_collidingItems1".}
proc fcQGraphicsItem_isObscured1(self: pointer, rect: pointer): bool {.importc: "QGraphicsItem_isObscured1".}
proc fcQGraphicsItem_update1(self: pointer, rect: pointer): void {.importc: "QGraphicsItem_update1".}
proc fcQGraphicsItem_scroll3(self: pointer, dx: float64, dy: float64, rect: pointer): void {.importc: "QGraphicsItem_scroll3".}
proc fQGraphicsItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsItem_virtualbase_advance".}
proc fcQGraphicsItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_advance".}
proc fcQGraphicsItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_boundingRect".}
proc fQGraphicsItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsItem_virtualbase_shape".}
proc fcQGraphicsItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_shape".}
proc fQGraphicsItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsItem_virtualbase_contains".}
proc fcQGraphicsItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_contains".}
proc fQGraphicsItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsItem_virtualbase_collidesWithItem".}
proc fcQGraphicsItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_collidesWithItem".}
proc fQGraphicsItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsItem_virtualbase_collidesWithPath".}
proc fcQGraphicsItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_collidesWithPath".}
proc fQGraphicsItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsItem_virtualbase_isObscuredBy".}
proc fcQGraphicsItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_isObscuredBy".}
proc fQGraphicsItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsItem_virtualbase_opaqueArea".}
proc fcQGraphicsItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_opaqueArea".}
proc fcQGraphicsItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_paint".}
proc fQGraphicsItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsItem_virtualbase_type".}
proc fcQGraphicsItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_type".}
proc fQGraphicsItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_sceneEventFilter".}
proc fQGraphicsItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsItem_virtualbase_sceneEvent".}
proc fcQGraphicsItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_sceneEvent".}
proc fQGraphicsItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_contextMenuEvent".}
proc fQGraphicsItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_dragEnterEvent".}
proc fQGraphicsItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_dragMoveEvent".}
proc fQGraphicsItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_dropEvent".}
proc fcQGraphicsItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_dropEvent".}
proc fQGraphicsItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_focusInEvent".}
proc fcQGraphicsItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_focusInEvent".}
proc fQGraphicsItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_focusOutEvent".}
proc fcQGraphicsItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_focusOutEvent".}
proc fQGraphicsItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_keyPressEvent".}
proc fcQGraphicsItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_keyPressEvent".}
proc fQGraphicsItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_mousePressEvent".}
proc fcQGraphicsItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_mousePressEvent".}
proc fQGraphicsItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_wheelEvent".}
proc fcQGraphicsItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_wheelEvent".}
proc fQGraphicsItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_inputMethodEvent".}
proc fQGraphicsItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_inputMethodQuery".}
proc fQGraphicsItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsItem_virtualbase_itemChange".}
proc fcQGraphicsItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_itemChange".}
proc fQGraphicsItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsItem_virtualbase_supportsExtension".}
proc fcQGraphicsItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_supportsExtension".}
proc fQGraphicsItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsItem_virtualbase_setExtension".}
proc fcQGraphicsItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_setExtension".}
proc fQGraphicsItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsItem_virtualbase_extension".}
proc fcQGraphicsItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsItem_override_virtual_extension".}
proc fcQGraphicsItem_delete(self: pointer) {.importc: "QGraphicsItem_delete".}
proc fcQGraphicsObject_new(): ptr cQGraphicsObject {.importc: "QGraphicsObject_new".}
proc fcQGraphicsObject_new2(parent: pointer): ptr cQGraphicsObject {.importc: "QGraphicsObject_new2".}
proc fcQGraphicsObject_metaObject(self: pointer, ): pointer {.importc: "QGraphicsObject_metaObject".}
proc fcQGraphicsObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsObject_metacast".}
proc fcQGraphicsObject_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsObject_tr".}
proc fcQGraphicsObject_grabGesture(self: pointer, typeVal: cint): void {.importc: "QGraphicsObject_grabGesture".}
proc fcQGraphicsObject_ungrabGesture(self: pointer, typeVal: cint): void {.importc: "QGraphicsObject_ungrabGesture".}
proc fcQGraphicsObject_parentChanged(self: pointer, ): void {.importc: "QGraphicsObject_parentChanged".}
proc fcQGraphicsObject_connect_parentChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_parentChanged".}
proc fcQGraphicsObject_opacityChanged(self: pointer, ): void {.importc: "QGraphicsObject_opacityChanged".}
proc fcQGraphicsObject_connect_opacityChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_opacityChanged".}
proc fcQGraphicsObject_visibleChanged(self: pointer, ): void {.importc: "QGraphicsObject_visibleChanged".}
proc fcQGraphicsObject_connect_visibleChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_visibleChanged".}
proc fcQGraphicsObject_enabledChanged(self: pointer, ): void {.importc: "QGraphicsObject_enabledChanged".}
proc fcQGraphicsObject_connect_enabledChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_enabledChanged".}
proc fcQGraphicsObject_xChanged(self: pointer, ): void {.importc: "QGraphicsObject_xChanged".}
proc fcQGraphicsObject_connect_xChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_xChanged".}
proc fcQGraphicsObject_yChanged(self: pointer, ): void {.importc: "QGraphicsObject_yChanged".}
proc fcQGraphicsObject_connect_yChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_yChanged".}
proc fcQGraphicsObject_zChanged(self: pointer, ): void {.importc: "QGraphicsObject_zChanged".}
proc fcQGraphicsObject_connect_zChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_zChanged".}
proc fcQGraphicsObject_rotationChanged(self: pointer, ): void {.importc: "QGraphicsObject_rotationChanged".}
proc fcQGraphicsObject_connect_rotationChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_rotationChanged".}
proc fcQGraphicsObject_scaleChanged(self: pointer, ): void {.importc: "QGraphicsObject_scaleChanged".}
proc fcQGraphicsObject_connect_scaleChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_scaleChanged".}
proc fcQGraphicsObject_childrenChanged(self: pointer, ): void {.importc: "QGraphicsObject_childrenChanged".}
proc fcQGraphicsObject_connect_childrenChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_childrenChanged".}
proc fcQGraphicsObject_widthChanged(self: pointer, ): void {.importc: "QGraphicsObject_widthChanged".}
proc fcQGraphicsObject_connect_widthChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_widthChanged".}
proc fcQGraphicsObject_heightChanged(self: pointer, ): void {.importc: "QGraphicsObject_heightChanged".}
proc fcQGraphicsObject_connect_heightChanged(self: pointer, slot: int) {.importc: "QGraphicsObject_connect_heightChanged".}
proc fcQGraphicsObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsObject_tr2".}
proc fcQGraphicsObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsObject_tr3".}
proc fcQGraphicsObject_grabGesture2(self: pointer, typeVal: cint, flags: cint): void {.importc: "QGraphicsObject_grabGesture2".}
proc fQGraphicsObject_virtualbase_event(self: pointer, ev: pointer): bool{.importc: "QGraphicsObject_virtualbase_event".}
proc fcQGraphicsObject_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_event".}
proc fQGraphicsObject_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsObject_virtualbase_eventFilter".}
proc fcQGraphicsObject_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_eventFilter".}
proc fQGraphicsObject_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_timerEvent".}
proc fcQGraphicsObject_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_timerEvent".}
proc fQGraphicsObject_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_childEvent".}
proc fcQGraphicsObject_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_childEvent".}
proc fQGraphicsObject_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_customEvent".}
proc fcQGraphicsObject_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_customEvent".}
proc fQGraphicsObject_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsObject_virtualbase_connectNotify".}
proc fcQGraphicsObject_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_connectNotify".}
proc fQGraphicsObject_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsObject_virtualbase_disconnectNotify".}
proc fcQGraphicsObject_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_disconnectNotify".}
proc fQGraphicsObject_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsObject_virtualbase_advance".}
proc fcQGraphicsObject_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_advance".}
proc fcQGraphicsObject_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_boundingRect".}
proc fQGraphicsObject_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsObject_virtualbase_shape".}
proc fcQGraphicsObject_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_shape".}
proc fQGraphicsObject_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsObject_virtualbase_contains".}
proc fcQGraphicsObject_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_contains".}
proc fQGraphicsObject_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsObject_virtualbase_collidesWithItem".}
proc fcQGraphicsObject_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_collidesWithItem".}
proc fQGraphicsObject_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsObject_virtualbase_collidesWithPath".}
proc fcQGraphicsObject_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_collidesWithPath".}
proc fQGraphicsObject_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsObject_virtualbase_isObscuredBy".}
proc fcQGraphicsObject_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_isObscuredBy".}
proc fQGraphicsObject_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsObject_virtualbase_opaqueArea".}
proc fcQGraphicsObject_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_opaqueArea".}
proc fcQGraphicsObject_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_paint".}
proc fQGraphicsObject_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsObject_virtualbase_type".}
proc fcQGraphicsObject_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_type".}
proc fQGraphicsObject_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsObject_virtualbase_sceneEventFilter".}
proc fcQGraphicsObject_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_sceneEventFilter".}
proc fQGraphicsObject_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsObject_virtualbase_sceneEvent".}
proc fcQGraphicsObject_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_sceneEvent".}
proc fQGraphicsObject_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_contextMenuEvent".}
proc fcQGraphicsObject_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_contextMenuEvent".}
proc fQGraphicsObject_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_dragEnterEvent".}
proc fcQGraphicsObject_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_dragEnterEvent".}
proc fQGraphicsObject_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_dragLeaveEvent".}
proc fcQGraphicsObject_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_dragLeaveEvent".}
proc fQGraphicsObject_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_dragMoveEvent".}
proc fcQGraphicsObject_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_dragMoveEvent".}
proc fQGraphicsObject_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_dropEvent".}
proc fcQGraphicsObject_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_dropEvent".}
proc fQGraphicsObject_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_focusInEvent".}
proc fcQGraphicsObject_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_focusInEvent".}
proc fQGraphicsObject_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_focusOutEvent".}
proc fcQGraphicsObject_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_focusOutEvent".}
proc fQGraphicsObject_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_hoverEnterEvent".}
proc fcQGraphicsObject_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_hoverEnterEvent".}
proc fQGraphicsObject_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_hoverMoveEvent".}
proc fcQGraphicsObject_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_hoverMoveEvent".}
proc fQGraphicsObject_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsObject_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_hoverLeaveEvent".}
proc fQGraphicsObject_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_keyPressEvent".}
proc fcQGraphicsObject_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_keyPressEvent".}
proc fQGraphicsObject_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_keyReleaseEvent".}
proc fcQGraphicsObject_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_keyReleaseEvent".}
proc fQGraphicsObject_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_mousePressEvent".}
proc fcQGraphicsObject_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_mousePressEvent".}
proc fQGraphicsObject_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_mouseMoveEvent".}
proc fcQGraphicsObject_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_mouseMoveEvent".}
proc fQGraphicsObject_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsObject_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_mouseReleaseEvent".}
proc fQGraphicsObject_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsObject_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsObject_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_wheelEvent".}
proc fcQGraphicsObject_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_wheelEvent".}
proc fQGraphicsObject_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsObject_virtualbase_inputMethodEvent".}
proc fcQGraphicsObject_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_inputMethodEvent".}
proc fQGraphicsObject_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsObject_virtualbase_inputMethodQuery".}
proc fcQGraphicsObject_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_inputMethodQuery".}
proc fQGraphicsObject_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsObject_virtualbase_itemChange".}
proc fcQGraphicsObject_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_itemChange".}
proc fQGraphicsObject_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsObject_virtualbase_supportsExtension".}
proc fcQGraphicsObject_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_supportsExtension".}
proc fQGraphicsObject_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsObject_virtualbase_setExtension".}
proc fcQGraphicsObject_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_setExtension".}
proc fQGraphicsObject_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsObject_virtualbase_extension".}
proc fcQGraphicsObject_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsObject_override_virtual_extension".}
proc fcQGraphicsObject_delete(self: pointer) {.importc: "QGraphicsObject_delete".}
proc fcQAbstractGraphicsShapeItem_new(): ptr cQAbstractGraphicsShapeItem {.importc: "QAbstractGraphicsShapeItem_new".}
proc fcQAbstractGraphicsShapeItem_new2(parent: pointer): ptr cQAbstractGraphicsShapeItem {.importc: "QAbstractGraphicsShapeItem_new2".}
proc fcQAbstractGraphicsShapeItem_pen(self: pointer, ): pointer {.importc: "QAbstractGraphicsShapeItem_pen".}
proc fcQAbstractGraphicsShapeItem_setPen(self: pointer, pen: pointer): void {.importc: "QAbstractGraphicsShapeItem_setPen".}
proc fcQAbstractGraphicsShapeItem_brush(self: pointer, ): pointer {.importc: "QAbstractGraphicsShapeItem_brush".}
proc fcQAbstractGraphicsShapeItem_setBrush(self: pointer, brush: pointer): void {.importc: "QAbstractGraphicsShapeItem_setBrush".}
proc fcQAbstractGraphicsShapeItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QAbstractGraphicsShapeItem_isObscuredBy".}
proc fcQAbstractGraphicsShapeItem_opaqueArea(self: pointer, ): pointer {.importc: "QAbstractGraphicsShapeItem_opaqueArea".}
proc fQAbstractGraphicsShapeItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_isObscuredBy".}
proc fcQAbstractGraphicsShapeItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_isObscuredBy".}
proc fQAbstractGraphicsShapeItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QAbstractGraphicsShapeItem_virtualbase_opaqueArea".}
proc fcQAbstractGraphicsShapeItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_opaqueArea".}
proc fQAbstractGraphicsShapeItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_advance".}
proc fcQAbstractGraphicsShapeItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_advance".}
proc fcQAbstractGraphicsShapeItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_boundingRect".}
proc fQAbstractGraphicsShapeItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QAbstractGraphicsShapeItem_virtualbase_shape".}
proc fcQAbstractGraphicsShapeItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_shape".}
proc fQAbstractGraphicsShapeItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_contains".}
proc fcQAbstractGraphicsShapeItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_contains".}
proc fQAbstractGraphicsShapeItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_collidesWithItem".}
proc fcQAbstractGraphicsShapeItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_collidesWithItem".}
proc fQAbstractGraphicsShapeItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_collidesWithPath".}
proc fcQAbstractGraphicsShapeItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_collidesWithPath".}
proc fcQAbstractGraphicsShapeItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_paint".}
proc fQAbstractGraphicsShapeItem_virtualbase_type(self: pointer, ): cint{.importc: "QAbstractGraphicsShapeItem_virtualbase_type".}
proc fcQAbstractGraphicsShapeItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_type".}
proc fQAbstractGraphicsShapeItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_sceneEventFilter".}
proc fcQAbstractGraphicsShapeItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_sceneEventFilter".}
proc fQAbstractGraphicsShapeItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_sceneEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_sceneEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_contextMenuEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_contextMenuEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_dragEnterEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_dragEnterEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_dragLeaveEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_dragMoveEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_dragMoveEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_dropEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_dropEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_focusInEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_focusInEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_focusOutEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_focusOutEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_hoverEnterEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_hoverMoveEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_hoverLeaveEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_keyPressEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_keyPressEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_keyReleaseEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_mousePressEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_mousePressEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_mouseMoveEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_mouseReleaseEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_wheelEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_wheelEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_inputMethodEvent".}
proc fcQAbstractGraphicsShapeItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_inputMethodEvent".}
proc fQAbstractGraphicsShapeItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QAbstractGraphicsShapeItem_virtualbase_inputMethodQuery".}
proc fcQAbstractGraphicsShapeItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_inputMethodQuery".}
proc fQAbstractGraphicsShapeItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QAbstractGraphicsShapeItem_virtualbase_itemChange".}
proc fcQAbstractGraphicsShapeItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_itemChange".}
proc fQAbstractGraphicsShapeItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QAbstractGraphicsShapeItem_virtualbase_supportsExtension".}
proc fcQAbstractGraphicsShapeItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_supportsExtension".}
proc fQAbstractGraphicsShapeItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QAbstractGraphicsShapeItem_virtualbase_setExtension".}
proc fcQAbstractGraphicsShapeItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_setExtension".}
proc fQAbstractGraphicsShapeItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QAbstractGraphicsShapeItem_virtualbase_extension".}
proc fcQAbstractGraphicsShapeItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QAbstractGraphicsShapeItem_override_virtual_extension".}
proc fcQAbstractGraphicsShapeItem_delete(self: pointer) {.importc: "QAbstractGraphicsShapeItem_delete".}
proc fcQGraphicsPathItem_new(): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new".}
proc fcQGraphicsPathItem_new2(path: pointer): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new2".}
proc fcQGraphicsPathItem_new3(parent: pointer): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new3".}
proc fcQGraphicsPathItem_new4(path: pointer, parent: pointer): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new4".}
proc fcQGraphicsPathItem_path(self: pointer, ): pointer {.importc: "QGraphicsPathItem_path".}
proc fcQGraphicsPathItem_setPath(self: pointer, path: pointer): void {.importc: "QGraphicsPathItem_setPath".}
proc fcQGraphicsPathItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsPathItem_boundingRect".}
proc fcQGraphicsPathItem_shape(self: pointer, ): pointer {.importc: "QGraphicsPathItem_shape".}
proc fcQGraphicsPathItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsPathItem_contains".}
proc fcQGraphicsPathItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsPathItem_paint".}
proc fcQGraphicsPathItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsPathItem_isObscuredBy".}
proc fcQGraphicsPathItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsPathItem_opaqueArea".}
proc fcQGraphicsPathItem_typeX(self: pointer, ): cint {.importc: "QGraphicsPathItem_type".}
proc fQGraphicsPathItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsPathItem_virtualbase_boundingRect".}
proc fcQGraphicsPathItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_boundingRect".}
proc fQGraphicsPathItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsPathItem_virtualbase_shape".}
proc fcQGraphicsPathItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_shape".}
proc fQGraphicsPathItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsPathItem_virtualbase_contains".}
proc fcQGraphicsPathItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_contains".}
proc fQGraphicsPathItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsPathItem_virtualbase_paint".}
proc fcQGraphicsPathItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_paint".}
proc fQGraphicsPathItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsPathItem_virtualbase_isObscuredBy".}
proc fcQGraphicsPathItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_isObscuredBy".}
proc fQGraphicsPathItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsPathItem_virtualbase_opaqueArea".}
proc fcQGraphicsPathItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_opaqueArea".}
proc fQGraphicsPathItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsPathItem_virtualbase_type".}
proc fcQGraphicsPathItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_type".}
proc fQGraphicsPathItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsPathItem_virtualbase_supportsExtension".}
proc fcQGraphicsPathItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_supportsExtension".}
proc fQGraphicsPathItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsPathItem_virtualbase_setExtension".}
proc fcQGraphicsPathItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_setExtension".}
proc fQGraphicsPathItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsPathItem_virtualbase_extension".}
proc fcQGraphicsPathItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_extension".}
proc fQGraphicsPathItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsPathItem_virtualbase_advance".}
proc fcQGraphicsPathItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_advance".}
proc fQGraphicsPathItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsPathItem_virtualbase_collidesWithItem".}
proc fcQGraphicsPathItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_collidesWithItem".}
proc fQGraphicsPathItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsPathItem_virtualbase_collidesWithPath".}
proc fcQGraphicsPathItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_collidesWithPath".}
proc fQGraphicsPathItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsPathItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsPathItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_sceneEventFilter".}
proc fQGraphicsPathItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsPathItem_virtualbase_sceneEvent".}
proc fcQGraphicsPathItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_sceneEvent".}
proc fQGraphicsPathItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsPathItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_contextMenuEvent".}
proc fQGraphicsPathItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsPathItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_dragEnterEvent".}
proc fQGraphicsPathItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsPathItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsPathItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsPathItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_dragMoveEvent".}
proc fQGraphicsPathItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_dropEvent".}
proc fcQGraphicsPathItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_dropEvent".}
proc fQGraphicsPathItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_focusInEvent".}
proc fcQGraphicsPathItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_focusInEvent".}
proc fQGraphicsPathItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_focusOutEvent".}
proc fcQGraphicsPathItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_focusOutEvent".}
proc fQGraphicsPathItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsPathItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsPathItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsPathItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsPathItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsPathItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsPathItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_keyPressEvent".}
proc fcQGraphicsPathItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_keyPressEvent".}
proc fQGraphicsPathItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsPathItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsPathItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_mousePressEvent".}
proc fcQGraphicsPathItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_mousePressEvent".}
proc fQGraphicsPathItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsPathItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsPathItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsPathItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsPathItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsPathItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsPathItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_wheelEvent".}
proc fcQGraphicsPathItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_wheelEvent".}
proc fQGraphicsPathItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPathItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsPathItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_inputMethodEvent".}
proc fQGraphicsPathItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsPathItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsPathItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_inputMethodQuery".}
proc fQGraphicsPathItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsPathItem_virtualbase_itemChange".}
proc fcQGraphicsPathItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsPathItem_override_virtual_itemChange".}
proc fcQGraphicsPathItem_delete(self: pointer) {.importc: "QGraphicsPathItem_delete".}
proc fcQGraphicsRectItem_new(): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new".}
proc fcQGraphicsRectItem_new2(rect: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new2".}
proc fcQGraphicsRectItem_new3(x: float64, y: float64, w: float64, h: float64): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new3".}
proc fcQGraphicsRectItem_new4(parent: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new4".}
proc fcQGraphicsRectItem_new5(rect: pointer, parent: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new5".}
proc fcQGraphicsRectItem_new6(x: float64, y: float64, w: float64, h: float64, parent: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new6".}
proc fcQGraphicsRectItem_rect(self: pointer, ): pointer {.importc: "QGraphicsRectItem_rect".}
proc fcQGraphicsRectItem_setRect(self: pointer, rect: pointer): void {.importc: "QGraphicsRectItem_setRect".}
proc fcQGraphicsRectItem_setRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsRectItem_setRect2".}
proc fcQGraphicsRectItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsRectItem_boundingRect".}
proc fcQGraphicsRectItem_shape(self: pointer, ): pointer {.importc: "QGraphicsRectItem_shape".}
proc fcQGraphicsRectItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsRectItem_contains".}
proc fcQGraphicsRectItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsRectItem_paint".}
proc fcQGraphicsRectItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsRectItem_isObscuredBy".}
proc fcQGraphicsRectItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsRectItem_opaqueArea".}
proc fcQGraphicsRectItem_typeX(self: pointer, ): cint {.importc: "QGraphicsRectItem_type".}
proc fQGraphicsRectItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsRectItem_virtualbase_boundingRect".}
proc fcQGraphicsRectItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_boundingRect".}
proc fQGraphicsRectItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsRectItem_virtualbase_shape".}
proc fcQGraphicsRectItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_shape".}
proc fQGraphicsRectItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsRectItem_virtualbase_contains".}
proc fcQGraphicsRectItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_contains".}
proc fQGraphicsRectItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsRectItem_virtualbase_paint".}
proc fcQGraphicsRectItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_paint".}
proc fQGraphicsRectItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsRectItem_virtualbase_isObscuredBy".}
proc fcQGraphicsRectItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_isObscuredBy".}
proc fQGraphicsRectItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsRectItem_virtualbase_opaqueArea".}
proc fcQGraphicsRectItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_opaqueArea".}
proc fQGraphicsRectItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsRectItem_virtualbase_type".}
proc fcQGraphicsRectItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_type".}
proc fQGraphicsRectItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsRectItem_virtualbase_supportsExtension".}
proc fcQGraphicsRectItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_supportsExtension".}
proc fQGraphicsRectItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsRectItem_virtualbase_setExtension".}
proc fcQGraphicsRectItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_setExtension".}
proc fQGraphicsRectItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsRectItem_virtualbase_extension".}
proc fcQGraphicsRectItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_extension".}
proc fQGraphicsRectItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsRectItem_virtualbase_advance".}
proc fcQGraphicsRectItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_advance".}
proc fQGraphicsRectItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsRectItem_virtualbase_collidesWithItem".}
proc fcQGraphicsRectItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_collidesWithItem".}
proc fQGraphicsRectItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsRectItem_virtualbase_collidesWithPath".}
proc fcQGraphicsRectItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_collidesWithPath".}
proc fQGraphicsRectItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsRectItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsRectItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_sceneEventFilter".}
proc fQGraphicsRectItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsRectItem_virtualbase_sceneEvent".}
proc fcQGraphicsRectItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_sceneEvent".}
proc fQGraphicsRectItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsRectItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_contextMenuEvent".}
proc fQGraphicsRectItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsRectItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_dragEnterEvent".}
proc fQGraphicsRectItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsRectItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsRectItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsRectItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_dragMoveEvent".}
proc fQGraphicsRectItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_dropEvent".}
proc fcQGraphicsRectItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_dropEvent".}
proc fQGraphicsRectItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_focusInEvent".}
proc fcQGraphicsRectItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_focusInEvent".}
proc fQGraphicsRectItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_focusOutEvent".}
proc fcQGraphicsRectItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_focusOutEvent".}
proc fQGraphicsRectItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsRectItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsRectItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsRectItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsRectItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsRectItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsRectItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_keyPressEvent".}
proc fcQGraphicsRectItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_keyPressEvent".}
proc fQGraphicsRectItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsRectItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsRectItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_mousePressEvent".}
proc fcQGraphicsRectItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_mousePressEvent".}
proc fQGraphicsRectItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsRectItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsRectItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsRectItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsRectItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsRectItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsRectItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_wheelEvent".}
proc fcQGraphicsRectItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_wheelEvent".}
proc fQGraphicsRectItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRectItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsRectItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_inputMethodEvent".}
proc fQGraphicsRectItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsRectItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsRectItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_inputMethodQuery".}
proc fQGraphicsRectItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsRectItem_virtualbase_itemChange".}
proc fcQGraphicsRectItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsRectItem_override_virtual_itemChange".}
proc fcQGraphicsRectItem_delete(self: pointer) {.importc: "QGraphicsRectItem_delete".}
proc fcQGraphicsEllipseItem_new(): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new".}
proc fcQGraphicsEllipseItem_new2(rect: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new2".}
proc fcQGraphicsEllipseItem_new3(x: float64, y: float64, w: float64, h: float64): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new3".}
proc fcQGraphicsEllipseItem_new4(parent: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new4".}
proc fcQGraphicsEllipseItem_new5(rect: pointer, parent: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new5".}
proc fcQGraphicsEllipseItem_new6(x: float64, y: float64, w: float64, h: float64, parent: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new6".}
proc fcQGraphicsEllipseItem_rect(self: pointer, ): pointer {.importc: "QGraphicsEllipseItem_rect".}
proc fcQGraphicsEllipseItem_setRect(self: pointer, rect: pointer): void {.importc: "QGraphicsEllipseItem_setRect".}
proc fcQGraphicsEllipseItem_setRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsEllipseItem_setRect2".}
proc fcQGraphicsEllipseItem_startAngle(self: pointer, ): cint {.importc: "QGraphicsEllipseItem_startAngle".}
proc fcQGraphicsEllipseItem_setStartAngle(self: pointer, angle: cint): void {.importc: "QGraphicsEllipseItem_setStartAngle".}
proc fcQGraphicsEllipseItem_spanAngle(self: pointer, ): cint {.importc: "QGraphicsEllipseItem_spanAngle".}
proc fcQGraphicsEllipseItem_setSpanAngle(self: pointer, angle: cint): void {.importc: "QGraphicsEllipseItem_setSpanAngle".}
proc fcQGraphicsEllipseItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsEllipseItem_boundingRect".}
proc fcQGraphicsEllipseItem_shape(self: pointer, ): pointer {.importc: "QGraphicsEllipseItem_shape".}
proc fcQGraphicsEllipseItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsEllipseItem_contains".}
proc fcQGraphicsEllipseItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsEllipseItem_paint".}
proc fcQGraphicsEllipseItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsEllipseItem_isObscuredBy".}
proc fcQGraphicsEllipseItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsEllipseItem_opaqueArea".}
proc fcQGraphicsEllipseItem_typeX(self: pointer, ): cint {.importc: "QGraphicsEllipseItem_type".}
proc fQGraphicsEllipseItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsEllipseItem_virtualbase_boundingRect".}
proc fcQGraphicsEllipseItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_boundingRect".}
proc fQGraphicsEllipseItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsEllipseItem_virtualbase_shape".}
proc fcQGraphicsEllipseItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_shape".}
proc fQGraphicsEllipseItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsEllipseItem_virtualbase_contains".}
proc fcQGraphicsEllipseItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_contains".}
proc fQGraphicsEllipseItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_paint".}
proc fcQGraphicsEllipseItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_paint".}
proc fQGraphicsEllipseItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsEllipseItem_virtualbase_isObscuredBy".}
proc fcQGraphicsEllipseItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_isObscuredBy".}
proc fQGraphicsEllipseItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsEllipseItem_virtualbase_opaqueArea".}
proc fcQGraphicsEllipseItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_opaqueArea".}
proc fQGraphicsEllipseItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsEllipseItem_virtualbase_type".}
proc fcQGraphicsEllipseItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_type".}
proc fQGraphicsEllipseItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsEllipseItem_virtualbase_supportsExtension".}
proc fcQGraphicsEllipseItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_supportsExtension".}
proc fQGraphicsEllipseItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_setExtension".}
proc fcQGraphicsEllipseItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_setExtension".}
proc fQGraphicsEllipseItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsEllipseItem_virtualbase_extension".}
proc fcQGraphicsEllipseItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_extension".}
proc fQGraphicsEllipseItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsEllipseItem_virtualbase_advance".}
proc fcQGraphicsEllipseItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_advance".}
proc fQGraphicsEllipseItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsEllipseItem_virtualbase_collidesWithItem".}
proc fcQGraphicsEllipseItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_collidesWithItem".}
proc fQGraphicsEllipseItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsEllipseItem_virtualbase_collidesWithPath".}
proc fcQGraphicsEllipseItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_collidesWithPath".}
proc fQGraphicsEllipseItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsEllipseItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsEllipseItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_sceneEventFilter".}
proc fQGraphicsEllipseItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsEllipseItem_virtualbase_sceneEvent".}
proc fcQGraphicsEllipseItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_sceneEvent".}
proc fQGraphicsEllipseItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsEllipseItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_contextMenuEvent".}
proc fQGraphicsEllipseItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsEllipseItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_dragEnterEvent".}
proc fQGraphicsEllipseItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsEllipseItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsEllipseItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsEllipseItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_dragMoveEvent".}
proc fQGraphicsEllipseItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_dropEvent".}
proc fcQGraphicsEllipseItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_dropEvent".}
proc fQGraphicsEllipseItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_focusInEvent".}
proc fcQGraphicsEllipseItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_focusInEvent".}
proc fQGraphicsEllipseItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_focusOutEvent".}
proc fcQGraphicsEllipseItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_focusOutEvent".}
proc fQGraphicsEllipseItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsEllipseItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsEllipseItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsEllipseItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsEllipseItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsEllipseItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsEllipseItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_keyPressEvent".}
proc fcQGraphicsEllipseItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_keyPressEvent".}
proc fQGraphicsEllipseItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsEllipseItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsEllipseItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_mousePressEvent".}
proc fcQGraphicsEllipseItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_mousePressEvent".}
proc fQGraphicsEllipseItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsEllipseItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsEllipseItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsEllipseItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsEllipseItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsEllipseItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_wheelEvent".}
proc fcQGraphicsEllipseItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_wheelEvent".}
proc fQGraphicsEllipseItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEllipseItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsEllipseItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_inputMethodEvent".}
proc fQGraphicsEllipseItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsEllipseItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsEllipseItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_inputMethodQuery".}
proc fQGraphicsEllipseItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsEllipseItem_virtualbase_itemChange".}
proc fcQGraphicsEllipseItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsEllipseItem_override_virtual_itemChange".}
proc fcQGraphicsEllipseItem_delete(self: pointer) {.importc: "QGraphicsEllipseItem_delete".}
proc fcQGraphicsPolygonItem_new(): ptr cQGraphicsPolygonItem {.importc: "QGraphicsPolygonItem_new".}
proc fcQGraphicsPolygonItem_new2(parent: pointer): ptr cQGraphicsPolygonItem {.importc: "QGraphicsPolygonItem_new2".}
proc fcQGraphicsPolygonItem_fillRule(self: pointer, ): cint {.importc: "QGraphicsPolygonItem_fillRule".}
proc fcQGraphicsPolygonItem_setFillRule(self: pointer, rule: cint): void {.importc: "QGraphicsPolygonItem_setFillRule".}
proc fcQGraphicsPolygonItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_boundingRect".}
proc fcQGraphicsPolygonItem_shape(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_shape".}
proc fcQGraphicsPolygonItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsPolygonItem_contains".}
proc fcQGraphicsPolygonItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsPolygonItem_paint".}
proc fcQGraphicsPolygonItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsPolygonItem_isObscuredBy".}
proc fcQGraphicsPolygonItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_opaqueArea".}
proc fcQGraphicsPolygonItem_typeX(self: pointer, ): cint {.importc: "QGraphicsPolygonItem_type".}
proc fQGraphicsPolygonItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsPolygonItem_virtualbase_boundingRect".}
proc fcQGraphicsPolygonItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_boundingRect".}
proc fQGraphicsPolygonItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsPolygonItem_virtualbase_shape".}
proc fcQGraphicsPolygonItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_shape".}
proc fQGraphicsPolygonItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsPolygonItem_virtualbase_contains".}
proc fcQGraphicsPolygonItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_contains".}
proc fQGraphicsPolygonItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_paint".}
proc fcQGraphicsPolygonItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_paint".}
proc fQGraphicsPolygonItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsPolygonItem_virtualbase_isObscuredBy".}
proc fcQGraphicsPolygonItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_isObscuredBy".}
proc fQGraphicsPolygonItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsPolygonItem_virtualbase_opaqueArea".}
proc fcQGraphicsPolygonItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_opaqueArea".}
proc fQGraphicsPolygonItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsPolygonItem_virtualbase_type".}
proc fcQGraphicsPolygonItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_type".}
proc fQGraphicsPolygonItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsPolygonItem_virtualbase_supportsExtension".}
proc fcQGraphicsPolygonItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_supportsExtension".}
proc fQGraphicsPolygonItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_setExtension".}
proc fcQGraphicsPolygonItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_setExtension".}
proc fQGraphicsPolygonItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsPolygonItem_virtualbase_extension".}
proc fcQGraphicsPolygonItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_extension".}
proc fQGraphicsPolygonItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsPolygonItem_virtualbase_advance".}
proc fcQGraphicsPolygonItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_advance".}
proc fQGraphicsPolygonItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsPolygonItem_virtualbase_collidesWithItem".}
proc fcQGraphicsPolygonItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_collidesWithItem".}
proc fQGraphicsPolygonItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsPolygonItem_virtualbase_collidesWithPath".}
proc fcQGraphicsPolygonItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_collidesWithPath".}
proc fQGraphicsPolygonItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsPolygonItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsPolygonItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_sceneEventFilter".}
proc fQGraphicsPolygonItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsPolygonItem_virtualbase_sceneEvent".}
proc fcQGraphicsPolygonItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_sceneEvent".}
proc fQGraphicsPolygonItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsPolygonItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_contextMenuEvent".}
proc fQGraphicsPolygonItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsPolygonItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_dragEnterEvent".}
proc fQGraphicsPolygonItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsPolygonItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsPolygonItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsPolygonItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_dragMoveEvent".}
proc fQGraphicsPolygonItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_dropEvent".}
proc fcQGraphicsPolygonItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_dropEvent".}
proc fQGraphicsPolygonItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_focusInEvent".}
proc fcQGraphicsPolygonItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_focusInEvent".}
proc fQGraphicsPolygonItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_focusOutEvent".}
proc fcQGraphicsPolygonItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_focusOutEvent".}
proc fQGraphicsPolygonItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsPolygonItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsPolygonItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsPolygonItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsPolygonItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsPolygonItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsPolygonItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_keyPressEvent".}
proc fcQGraphicsPolygonItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_keyPressEvent".}
proc fQGraphicsPolygonItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsPolygonItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsPolygonItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_mousePressEvent".}
proc fcQGraphicsPolygonItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_mousePressEvent".}
proc fQGraphicsPolygonItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsPolygonItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsPolygonItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsPolygonItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsPolygonItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsPolygonItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_wheelEvent".}
proc fcQGraphicsPolygonItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_wheelEvent".}
proc fQGraphicsPolygonItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPolygonItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsPolygonItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_inputMethodEvent".}
proc fQGraphicsPolygonItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsPolygonItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsPolygonItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_inputMethodQuery".}
proc fQGraphicsPolygonItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsPolygonItem_virtualbase_itemChange".}
proc fcQGraphicsPolygonItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsPolygonItem_override_virtual_itemChange".}
proc fcQGraphicsPolygonItem_delete(self: pointer) {.importc: "QGraphicsPolygonItem_delete".}
proc fcQGraphicsLineItem_new(): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new".}
proc fcQGraphicsLineItem_new2(line: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new2".}
proc fcQGraphicsLineItem_new3(x1: float64, y1: float64, x2: float64, y2: float64): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new3".}
proc fcQGraphicsLineItem_new4(parent: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new4".}
proc fcQGraphicsLineItem_new5(line: pointer, parent: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new5".}
proc fcQGraphicsLineItem_new6(x1: float64, y1: float64, x2: float64, y2: float64, parent: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new6".}
proc fcQGraphicsLineItem_pen(self: pointer, ): pointer {.importc: "QGraphicsLineItem_pen".}
proc fcQGraphicsLineItem_setPen(self: pointer, pen: pointer): void {.importc: "QGraphicsLineItem_setPen".}
proc fcQGraphicsLineItem_line(self: pointer, ): pointer {.importc: "QGraphicsLineItem_line".}
proc fcQGraphicsLineItem_setLine(self: pointer, line: pointer): void {.importc: "QGraphicsLineItem_setLine".}
proc fcQGraphicsLineItem_setLine2(self: pointer, x1: float64, y1: float64, x2: float64, y2: float64): void {.importc: "QGraphicsLineItem_setLine2".}
proc fcQGraphicsLineItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsLineItem_boundingRect".}
proc fcQGraphicsLineItem_shape(self: pointer, ): pointer {.importc: "QGraphicsLineItem_shape".}
proc fcQGraphicsLineItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsLineItem_contains".}
proc fcQGraphicsLineItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsLineItem_paint".}
proc fcQGraphicsLineItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsLineItem_isObscuredBy".}
proc fcQGraphicsLineItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsLineItem_opaqueArea".}
proc fcQGraphicsLineItem_typeX(self: pointer, ): cint {.importc: "QGraphicsLineItem_type".}
proc fQGraphicsLineItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsLineItem_virtualbase_boundingRect".}
proc fcQGraphicsLineItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_boundingRect".}
proc fQGraphicsLineItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsLineItem_virtualbase_shape".}
proc fcQGraphicsLineItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_shape".}
proc fQGraphicsLineItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsLineItem_virtualbase_contains".}
proc fcQGraphicsLineItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_contains".}
proc fQGraphicsLineItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsLineItem_virtualbase_paint".}
proc fcQGraphicsLineItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_paint".}
proc fQGraphicsLineItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsLineItem_virtualbase_isObscuredBy".}
proc fcQGraphicsLineItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_isObscuredBy".}
proc fQGraphicsLineItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsLineItem_virtualbase_opaqueArea".}
proc fcQGraphicsLineItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_opaqueArea".}
proc fQGraphicsLineItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsLineItem_virtualbase_type".}
proc fcQGraphicsLineItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_type".}
proc fQGraphicsLineItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsLineItem_virtualbase_supportsExtension".}
proc fcQGraphicsLineItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_supportsExtension".}
proc fQGraphicsLineItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsLineItem_virtualbase_setExtension".}
proc fcQGraphicsLineItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_setExtension".}
proc fQGraphicsLineItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsLineItem_virtualbase_extension".}
proc fcQGraphicsLineItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_extension".}
proc fQGraphicsLineItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsLineItem_virtualbase_advance".}
proc fcQGraphicsLineItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_advance".}
proc fQGraphicsLineItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsLineItem_virtualbase_collidesWithItem".}
proc fcQGraphicsLineItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_collidesWithItem".}
proc fQGraphicsLineItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsLineItem_virtualbase_collidesWithPath".}
proc fcQGraphicsLineItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_collidesWithPath".}
proc fQGraphicsLineItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsLineItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsLineItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_sceneEventFilter".}
proc fQGraphicsLineItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsLineItem_virtualbase_sceneEvent".}
proc fcQGraphicsLineItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_sceneEvent".}
proc fQGraphicsLineItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsLineItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_contextMenuEvent".}
proc fQGraphicsLineItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsLineItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_dragEnterEvent".}
proc fQGraphicsLineItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsLineItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsLineItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsLineItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_dragMoveEvent".}
proc fQGraphicsLineItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_dropEvent".}
proc fcQGraphicsLineItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_dropEvent".}
proc fQGraphicsLineItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_focusInEvent".}
proc fcQGraphicsLineItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_focusInEvent".}
proc fQGraphicsLineItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_focusOutEvent".}
proc fcQGraphicsLineItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_focusOutEvent".}
proc fQGraphicsLineItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsLineItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsLineItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsLineItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsLineItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsLineItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsLineItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_keyPressEvent".}
proc fcQGraphicsLineItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_keyPressEvent".}
proc fQGraphicsLineItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsLineItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsLineItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_mousePressEvent".}
proc fcQGraphicsLineItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_mousePressEvent".}
proc fQGraphicsLineItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsLineItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsLineItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsLineItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsLineItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsLineItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsLineItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_wheelEvent".}
proc fcQGraphicsLineItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_wheelEvent".}
proc fQGraphicsLineItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsLineItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsLineItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_inputMethodEvent".}
proc fQGraphicsLineItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsLineItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsLineItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_inputMethodQuery".}
proc fQGraphicsLineItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsLineItem_virtualbase_itemChange".}
proc fcQGraphicsLineItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsLineItem_override_virtual_itemChange".}
proc fcQGraphicsLineItem_delete(self: pointer) {.importc: "QGraphicsLineItem_delete".}
proc fcQGraphicsPixmapItem_new(): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new".}
proc fcQGraphicsPixmapItem_new2(pixmap: pointer): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new2".}
proc fcQGraphicsPixmapItem_new3(parent: pointer): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new3".}
proc fcQGraphicsPixmapItem_new4(pixmap: pointer, parent: pointer): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new4".}
proc fcQGraphicsPixmapItem_pixmap(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_pixmap".}
proc fcQGraphicsPixmapItem_setPixmap(self: pointer, pixmap: pointer): void {.importc: "QGraphicsPixmapItem_setPixmap".}
proc fcQGraphicsPixmapItem_transformationMode(self: pointer, ): cint {.importc: "QGraphicsPixmapItem_transformationMode".}
proc fcQGraphicsPixmapItem_setTransformationMode(self: pointer, mode: cint): void {.importc: "QGraphicsPixmapItem_setTransformationMode".}
proc fcQGraphicsPixmapItem_offset(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_offset".}
proc fcQGraphicsPixmapItem_setOffset(self: pointer, offset: pointer): void {.importc: "QGraphicsPixmapItem_setOffset".}
proc fcQGraphicsPixmapItem_setOffset2(self: pointer, x: float64, y: float64): void {.importc: "QGraphicsPixmapItem_setOffset2".}
proc fcQGraphicsPixmapItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_boundingRect".}
proc fcQGraphicsPixmapItem_shape(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_shape".}
proc fcQGraphicsPixmapItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsPixmapItem_contains".}
proc fcQGraphicsPixmapItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsPixmapItem_paint".}
proc fcQGraphicsPixmapItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsPixmapItem_isObscuredBy".}
proc fcQGraphicsPixmapItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_opaqueArea".}
proc fcQGraphicsPixmapItem_typeX(self: pointer, ): cint {.importc: "QGraphicsPixmapItem_type".}
proc fcQGraphicsPixmapItem_shapeMode(self: pointer, ): cint {.importc: "QGraphicsPixmapItem_shapeMode".}
proc fcQGraphicsPixmapItem_setShapeMode(self: pointer, mode: cint): void {.importc: "QGraphicsPixmapItem_setShapeMode".}
proc fQGraphicsPixmapItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsPixmapItem_virtualbase_boundingRect".}
proc fcQGraphicsPixmapItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_boundingRect".}
proc fQGraphicsPixmapItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsPixmapItem_virtualbase_shape".}
proc fcQGraphicsPixmapItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_shape".}
proc fQGraphicsPixmapItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsPixmapItem_virtualbase_contains".}
proc fcQGraphicsPixmapItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_contains".}
proc fQGraphicsPixmapItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_paint".}
proc fcQGraphicsPixmapItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_paint".}
proc fQGraphicsPixmapItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsPixmapItem_virtualbase_isObscuredBy".}
proc fcQGraphicsPixmapItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_isObscuredBy".}
proc fQGraphicsPixmapItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsPixmapItem_virtualbase_opaqueArea".}
proc fcQGraphicsPixmapItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_opaqueArea".}
proc fQGraphicsPixmapItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsPixmapItem_virtualbase_type".}
proc fcQGraphicsPixmapItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_type".}
proc fQGraphicsPixmapItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsPixmapItem_virtualbase_supportsExtension".}
proc fcQGraphicsPixmapItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_supportsExtension".}
proc fQGraphicsPixmapItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_setExtension".}
proc fcQGraphicsPixmapItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_setExtension".}
proc fQGraphicsPixmapItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsPixmapItem_virtualbase_extension".}
proc fcQGraphicsPixmapItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_extension".}
proc fQGraphicsPixmapItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsPixmapItem_virtualbase_advance".}
proc fcQGraphicsPixmapItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_advance".}
proc fQGraphicsPixmapItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsPixmapItem_virtualbase_collidesWithItem".}
proc fcQGraphicsPixmapItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_collidesWithItem".}
proc fQGraphicsPixmapItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsPixmapItem_virtualbase_collidesWithPath".}
proc fcQGraphicsPixmapItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_collidesWithPath".}
proc fQGraphicsPixmapItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsPixmapItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsPixmapItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_sceneEventFilter".}
proc fQGraphicsPixmapItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsPixmapItem_virtualbase_sceneEvent".}
proc fcQGraphicsPixmapItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_sceneEvent".}
proc fQGraphicsPixmapItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsPixmapItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_contextMenuEvent".}
proc fQGraphicsPixmapItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsPixmapItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_dragEnterEvent".}
proc fQGraphicsPixmapItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsPixmapItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsPixmapItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsPixmapItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_dragMoveEvent".}
proc fQGraphicsPixmapItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_dropEvent".}
proc fcQGraphicsPixmapItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_dropEvent".}
proc fQGraphicsPixmapItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_focusInEvent".}
proc fcQGraphicsPixmapItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_focusInEvent".}
proc fQGraphicsPixmapItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_focusOutEvent".}
proc fcQGraphicsPixmapItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_focusOutEvent".}
proc fQGraphicsPixmapItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsPixmapItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsPixmapItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsPixmapItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsPixmapItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsPixmapItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsPixmapItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_keyPressEvent".}
proc fcQGraphicsPixmapItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_keyPressEvent".}
proc fQGraphicsPixmapItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsPixmapItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsPixmapItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_mousePressEvent".}
proc fcQGraphicsPixmapItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_mousePressEvent".}
proc fQGraphicsPixmapItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsPixmapItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsPixmapItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsPixmapItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsPixmapItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsPixmapItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_wheelEvent".}
proc fcQGraphicsPixmapItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_wheelEvent".}
proc fQGraphicsPixmapItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsPixmapItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsPixmapItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_inputMethodEvent".}
proc fQGraphicsPixmapItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsPixmapItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsPixmapItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_inputMethodQuery".}
proc fQGraphicsPixmapItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsPixmapItem_virtualbase_itemChange".}
proc fcQGraphicsPixmapItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsPixmapItem_override_virtual_itemChange".}
proc fcQGraphicsPixmapItem_delete(self: pointer) {.importc: "QGraphicsPixmapItem_delete".}
proc fcQGraphicsTextItem_new(): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new".}
proc fcQGraphicsTextItem_new2(text: struct_miqt_string): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new2".}
proc fcQGraphicsTextItem_new3(parent: pointer): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new3".}
proc fcQGraphicsTextItem_new4(text: struct_miqt_string, parent: pointer): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new4".}
proc fcQGraphicsTextItem_metaObject(self: pointer, ): pointer {.importc: "QGraphicsTextItem_metaObject".}
proc fcQGraphicsTextItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsTextItem_metacast".}
proc fcQGraphicsTextItem_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsTextItem_tr".}
proc fcQGraphicsTextItem_toHtml(self: pointer, ): struct_miqt_string {.importc: "QGraphicsTextItem_toHtml".}
proc fcQGraphicsTextItem_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QGraphicsTextItem_setHtml".}
proc fcQGraphicsTextItem_toPlainText(self: pointer, ): struct_miqt_string {.importc: "QGraphicsTextItem_toPlainText".}
proc fcQGraphicsTextItem_setPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QGraphicsTextItem_setPlainText".}
proc fcQGraphicsTextItem_font(self: pointer, ): pointer {.importc: "QGraphicsTextItem_font".}
proc fcQGraphicsTextItem_setFont(self: pointer, font: pointer): void {.importc: "QGraphicsTextItem_setFont".}
proc fcQGraphicsTextItem_setDefaultTextColor(self: pointer, c: pointer): void {.importc: "QGraphicsTextItem_setDefaultTextColor".}
proc fcQGraphicsTextItem_defaultTextColor(self: pointer, ): pointer {.importc: "QGraphicsTextItem_defaultTextColor".}
proc fcQGraphicsTextItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsTextItem_boundingRect".}
proc fcQGraphicsTextItem_shape(self: pointer, ): pointer {.importc: "QGraphicsTextItem_shape".}
proc fcQGraphicsTextItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsTextItem_contains".}
proc fcQGraphicsTextItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsTextItem_paint".}
proc fcQGraphicsTextItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsTextItem_isObscuredBy".}
proc fcQGraphicsTextItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsTextItem_opaqueArea".}
proc fcQGraphicsTextItem_typeX(self: pointer, ): cint {.importc: "QGraphicsTextItem_type".}
proc fcQGraphicsTextItem_setTextWidth(self: pointer, width: float64): void {.importc: "QGraphicsTextItem_setTextWidth".}
proc fcQGraphicsTextItem_textWidth(self: pointer, ): float64 {.importc: "QGraphicsTextItem_textWidth".}
proc fcQGraphicsTextItem_adjustSize(self: pointer, ): void {.importc: "QGraphicsTextItem_adjustSize".}
proc fcQGraphicsTextItem_setDocument(self: pointer, document: pointer): void {.importc: "QGraphicsTextItem_setDocument".}
proc fcQGraphicsTextItem_document(self: pointer, ): pointer {.importc: "QGraphicsTextItem_document".}
proc fcQGraphicsTextItem_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QGraphicsTextItem_setTextInteractionFlags".}
proc fcQGraphicsTextItem_textInteractionFlags(self: pointer, ): cint {.importc: "QGraphicsTextItem_textInteractionFlags".}
proc fcQGraphicsTextItem_setTabChangesFocus(self: pointer, b: bool): void {.importc: "QGraphicsTextItem_setTabChangesFocus".}
proc fcQGraphicsTextItem_tabChangesFocus(self: pointer, ): bool {.importc: "QGraphicsTextItem_tabChangesFocus".}
proc fcQGraphicsTextItem_setOpenExternalLinks(self: pointer, open: bool): void {.importc: "QGraphicsTextItem_setOpenExternalLinks".}
proc fcQGraphicsTextItem_openExternalLinks(self: pointer, ): bool {.importc: "QGraphicsTextItem_openExternalLinks".}
proc fcQGraphicsTextItem_setTextCursor(self: pointer, cursor: pointer): void {.importc: "QGraphicsTextItem_setTextCursor".}
proc fcQGraphicsTextItem_textCursor(self: pointer, ): pointer {.importc: "QGraphicsTextItem_textCursor".}
proc fcQGraphicsTextItem_linkActivated(self: pointer, param1: struct_miqt_string): void {.importc: "QGraphicsTextItem_linkActivated".}
proc fcQGraphicsTextItem_connect_linkActivated(self: pointer, slot: int) {.importc: "QGraphicsTextItem_connect_linkActivated".}
proc fcQGraphicsTextItem_linkHovered(self: pointer, param1: struct_miqt_string): void {.importc: "QGraphicsTextItem_linkHovered".}
proc fcQGraphicsTextItem_connect_linkHovered(self: pointer, slot: int) {.importc: "QGraphicsTextItem_connect_linkHovered".}
proc fcQGraphicsTextItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsTextItem_tr2".}
proc fcQGraphicsTextItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsTextItem_tr3".}
proc fQGraphicsTextItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsTextItem_virtualbase_boundingRect".}
proc fcQGraphicsTextItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_boundingRect".}
proc fQGraphicsTextItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsTextItem_virtualbase_shape".}
proc fcQGraphicsTextItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_shape".}
proc fQGraphicsTextItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_contains".}
proc fcQGraphicsTextItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_contains".}
proc fQGraphicsTextItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsTextItem_virtualbase_paint".}
proc fcQGraphicsTextItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_paint".}
proc fQGraphicsTextItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_isObscuredBy".}
proc fcQGraphicsTextItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_isObscuredBy".}
proc fQGraphicsTextItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsTextItem_virtualbase_opaqueArea".}
proc fcQGraphicsTextItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_opaqueArea".}
proc fQGraphicsTextItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsTextItem_virtualbase_type".}
proc fcQGraphicsTextItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_type".}
proc fQGraphicsTextItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_sceneEvent".}
proc fcQGraphicsTextItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_sceneEvent".}
proc fQGraphicsTextItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_mousePressEvent".}
proc fcQGraphicsTextItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_mousePressEvent".}
proc fQGraphicsTextItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsTextItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsTextItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsTextItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsTextItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsTextItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsTextItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsTextItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_contextMenuEvent".}
proc fQGraphicsTextItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_keyPressEvent".}
proc fcQGraphicsTextItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_keyPressEvent".}
proc fQGraphicsTextItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsTextItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsTextItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_focusInEvent".}
proc fcQGraphicsTextItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_focusInEvent".}
proc fQGraphicsTextItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_focusOutEvent".}
proc fcQGraphicsTextItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_focusOutEvent".}
proc fQGraphicsTextItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsTextItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_dragEnterEvent".}
proc fQGraphicsTextItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsTextItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsTextItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsTextItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_dragMoveEvent".}
proc fQGraphicsTextItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_dropEvent".}
proc fcQGraphicsTextItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_dropEvent".}
proc fQGraphicsTextItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsTextItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_inputMethodEvent".}
proc fQGraphicsTextItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsTextItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsTextItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsTextItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsTextItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsTextItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsTextItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsTextItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsTextItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_inputMethodQuery".}
proc fQGraphicsTextItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsTextItem_virtualbase_supportsExtension".}
proc fcQGraphicsTextItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_supportsExtension".}
proc fQGraphicsTextItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsTextItem_virtualbase_setExtension".}
proc fcQGraphicsTextItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_setExtension".}
proc fQGraphicsTextItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsTextItem_virtualbase_extension".}
proc fcQGraphicsTextItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_extension".}
proc fQGraphicsTextItem_virtualbase_event(self: pointer, ev: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_event".}
proc fcQGraphicsTextItem_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_event".}
proc fQGraphicsTextItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_eventFilter".}
proc fcQGraphicsTextItem_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_eventFilter".}
proc fQGraphicsTextItem_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_timerEvent".}
proc fcQGraphicsTextItem_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_timerEvent".}
proc fQGraphicsTextItem_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_childEvent".}
proc fcQGraphicsTextItem_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_childEvent".}
proc fQGraphicsTextItem_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_customEvent".}
proc fcQGraphicsTextItem_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_customEvent".}
proc fQGraphicsTextItem_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsTextItem_virtualbase_connectNotify".}
proc fcQGraphicsTextItem_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_connectNotify".}
proc fQGraphicsTextItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsTextItem_virtualbase_disconnectNotify".}
proc fcQGraphicsTextItem_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_disconnectNotify".}
proc fQGraphicsTextItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsTextItem_virtualbase_advance".}
proc fcQGraphicsTextItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_advance".}
proc fQGraphicsTextItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsTextItem_virtualbase_collidesWithItem".}
proc fcQGraphicsTextItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_collidesWithItem".}
proc fQGraphicsTextItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsTextItem_virtualbase_collidesWithPath".}
proc fcQGraphicsTextItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_collidesWithPath".}
proc fQGraphicsTextItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsTextItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsTextItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_sceneEventFilter".}
proc fQGraphicsTextItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTextItem_virtualbase_wheelEvent".}
proc fcQGraphicsTextItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_wheelEvent".}
proc fQGraphicsTextItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsTextItem_virtualbase_itemChange".}
proc fcQGraphicsTextItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsTextItem_override_virtual_itemChange".}
proc fcQGraphicsTextItem_delete(self: pointer) {.importc: "QGraphicsTextItem_delete".}
proc fcQGraphicsSimpleTextItem_new(): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new".}
proc fcQGraphicsSimpleTextItem_new2(text: struct_miqt_string): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new2".}
proc fcQGraphicsSimpleTextItem_new3(parent: pointer): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new3".}
proc fcQGraphicsSimpleTextItem_new4(text: struct_miqt_string, parent: pointer): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new4".}
proc fcQGraphicsSimpleTextItem_setText(self: pointer, text: struct_miqt_string): void {.importc: "QGraphicsSimpleTextItem_setText".}
proc fcQGraphicsSimpleTextItem_text(self: pointer, ): struct_miqt_string {.importc: "QGraphicsSimpleTextItem_text".}
proc fcQGraphicsSimpleTextItem_setFont(self: pointer, font: pointer): void {.importc: "QGraphicsSimpleTextItem_setFont".}
proc fcQGraphicsSimpleTextItem_font(self: pointer, ): pointer {.importc: "QGraphicsSimpleTextItem_font".}
proc fcQGraphicsSimpleTextItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsSimpleTextItem_boundingRect".}
proc fcQGraphicsSimpleTextItem_shape(self: pointer, ): pointer {.importc: "QGraphicsSimpleTextItem_shape".}
proc fcQGraphicsSimpleTextItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsSimpleTextItem_contains".}
proc fcQGraphicsSimpleTextItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsSimpleTextItem_paint".}
proc fcQGraphicsSimpleTextItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsSimpleTextItem_isObscuredBy".}
proc fcQGraphicsSimpleTextItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsSimpleTextItem_opaqueArea".}
proc fcQGraphicsSimpleTextItem_typeX(self: pointer, ): cint {.importc: "QGraphicsSimpleTextItem_type".}
proc fQGraphicsSimpleTextItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_boundingRect".}
proc fcQGraphicsSimpleTextItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_boundingRect".}
proc fQGraphicsSimpleTextItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_shape".}
proc fcQGraphicsSimpleTextItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_shape".}
proc fQGraphicsSimpleTextItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_contains".}
proc fcQGraphicsSimpleTextItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_contains".}
proc fQGraphicsSimpleTextItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_paint".}
proc fcQGraphicsSimpleTextItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_paint".}
proc fQGraphicsSimpleTextItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_isObscuredBy".}
proc fcQGraphicsSimpleTextItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_isObscuredBy".}
proc fQGraphicsSimpleTextItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_opaqueArea".}
proc fcQGraphicsSimpleTextItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_opaqueArea".}
proc fQGraphicsSimpleTextItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsSimpleTextItem_virtualbase_type".}
proc fcQGraphicsSimpleTextItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_type".}
proc fQGraphicsSimpleTextItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_supportsExtension".}
proc fcQGraphicsSimpleTextItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_supportsExtension".}
proc fQGraphicsSimpleTextItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_setExtension".}
proc fcQGraphicsSimpleTextItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_setExtension".}
proc fQGraphicsSimpleTextItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_extension".}
proc fcQGraphicsSimpleTextItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_extension".}
proc fQGraphicsSimpleTextItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsSimpleTextItem_virtualbase_advance".}
proc fcQGraphicsSimpleTextItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_advance".}
proc fQGraphicsSimpleTextItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_collidesWithItem".}
proc fcQGraphicsSimpleTextItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_collidesWithItem".}
proc fQGraphicsSimpleTextItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_collidesWithPath".}
proc fcQGraphicsSimpleTextItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_collidesWithPath".}
proc fQGraphicsSimpleTextItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsSimpleTextItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_sceneEventFilter".}
proc fQGraphicsSimpleTextItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsSimpleTextItem_virtualbase_sceneEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_sceneEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_contextMenuEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_dragEnterEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_dragMoveEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_dropEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_dropEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_focusInEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_focusInEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_focusOutEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_focusOutEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_keyPressEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_keyPressEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_mousePressEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_mousePressEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_wheelEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_wheelEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSimpleTextItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsSimpleTextItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_inputMethodEvent".}
proc fQGraphicsSimpleTextItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsSimpleTextItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_inputMethodQuery".}
proc fQGraphicsSimpleTextItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsSimpleTextItem_virtualbase_itemChange".}
proc fcQGraphicsSimpleTextItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsSimpleTextItem_override_virtual_itemChange".}
proc fcQGraphicsSimpleTextItem_delete(self: pointer) {.importc: "QGraphicsSimpleTextItem_delete".}
proc fcQGraphicsItemGroup_new(): ptr cQGraphicsItemGroup {.importc: "QGraphicsItemGroup_new".}
proc fcQGraphicsItemGroup_new2(parent: pointer): ptr cQGraphicsItemGroup {.importc: "QGraphicsItemGroup_new2".}
proc fcQGraphicsItemGroup_addToGroup(self: pointer, item: pointer): void {.importc: "QGraphicsItemGroup_addToGroup".}
proc fcQGraphicsItemGroup_removeFromGroup(self: pointer, item: pointer): void {.importc: "QGraphicsItemGroup_removeFromGroup".}
proc fcQGraphicsItemGroup_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsItemGroup_boundingRect".}
proc fcQGraphicsItemGroup_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsItemGroup_paint".}
proc fcQGraphicsItemGroup_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsItemGroup_isObscuredBy".}
proc fcQGraphicsItemGroup_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsItemGroup_opaqueArea".}
proc fcQGraphicsItemGroup_typeX(self: pointer, ): cint {.importc: "QGraphicsItemGroup_type".}
proc fQGraphicsItemGroup_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsItemGroup_virtualbase_boundingRect".}
proc fcQGraphicsItemGroup_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_boundingRect".}
proc fQGraphicsItemGroup_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_paint".}
proc fcQGraphicsItemGroup_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_paint".}
proc fQGraphicsItemGroup_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsItemGroup_virtualbase_isObscuredBy".}
proc fcQGraphicsItemGroup_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_isObscuredBy".}
proc fQGraphicsItemGroup_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsItemGroup_virtualbase_opaqueArea".}
proc fcQGraphicsItemGroup_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_opaqueArea".}
proc fQGraphicsItemGroup_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsItemGroup_virtualbase_type".}
proc fcQGraphicsItemGroup_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_type".}
proc fQGraphicsItemGroup_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsItemGroup_virtualbase_advance".}
proc fcQGraphicsItemGroup_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_advance".}
proc fQGraphicsItemGroup_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsItemGroup_virtualbase_shape".}
proc fcQGraphicsItemGroup_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_shape".}
proc fQGraphicsItemGroup_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsItemGroup_virtualbase_contains".}
proc fcQGraphicsItemGroup_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_contains".}
proc fQGraphicsItemGroup_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsItemGroup_virtualbase_collidesWithItem".}
proc fcQGraphicsItemGroup_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_collidesWithItem".}
proc fQGraphicsItemGroup_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsItemGroup_virtualbase_collidesWithPath".}
proc fcQGraphicsItemGroup_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_collidesWithPath".}
proc fQGraphicsItemGroup_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsItemGroup_virtualbase_sceneEventFilter".}
proc fcQGraphicsItemGroup_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_sceneEventFilter".}
proc fQGraphicsItemGroup_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsItemGroup_virtualbase_sceneEvent".}
proc fcQGraphicsItemGroup_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_sceneEvent".}
proc fQGraphicsItemGroup_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_contextMenuEvent".}
proc fcQGraphicsItemGroup_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_contextMenuEvent".}
proc fQGraphicsItemGroup_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_dragEnterEvent".}
proc fcQGraphicsItemGroup_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_dragEnterEvent".}
proc fQGraphicsItemGroup_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_dragLeaveEvent".}
proc fcQGraphicsItemGroup_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_dragLeaveEvent".}
proc fQGraphicsItemGroup_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_dragMoveEvent".}
proc fcQGraphicsItemGroup_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_dragMoveEvent".}
proc fQGraphicsItemGroup_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_dropEvent".}
proc fcQGraphicsItemGroup_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_dropEvent".}
proc fQGraphicsItemGroup_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_focusInEvent".}
proc fcQGraphicsItemGroup_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_focusInEvent".}
proc fQGraphicsItemGroup_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_focusOutEvent".}
proc fcQGraphicsItemGroup_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_focusOutEvent".}
proc fQGraphicsItemGroup_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_hoverEnterEvent".}
proc fcQGraphicsItemGroup_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_hoverEnterEvent".}
proc fQGraphicsItemGroup_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_hoverMoveEvent".}
proc fcQGraphicsItemGroup_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_hoverMoveEvent".}
proc fQGraphicsItemGroup_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsItemGroup_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_hoverLeaveEvent".}
proc fQGraphicsItemGroup_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_keyPressEvent".}
proc fcQGraphicsItemGroup_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_keyPressEvent".}
proc fQGraphicsItemGroup_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_keyReleaseEvent".}
proc fcQGraphicsItemGroup_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_keyReleaseEvent".}
proc fQGraphicsItemGroup_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_mousePressEvent".}
proc fcQGraphicsItemGroup_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_mousePressEvent".}
proc fQGraphicsItemGroup_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_mouseMoveEvent".}
proc fcQGraphicsItemGroup_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_mouseMoveEvent".}
proc fQGraphicsItemGroup_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsItemGroup_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_mouseReleaseEvent".}
proc fQGraphicsItemGroup_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsItemGroup_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsItemGroup_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_wheelEvent".}
proc fcQGraphicsItemGroup_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_wheelEvent".}
proc fQGraphicsItemGroup_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_inputMethodEvent".}
proc fcQGraphicsItemGroup_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_inputMethodEvent".}
proc fQGraphicsItemGroup_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsItemGroup_virtualbase_inputMethodQuery".}
proc fcQGraphicsItemGroup_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_inputMethodQuery".}
proc fQGraphicsItemGroup_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsItemGroup_virtualbase_itemChange".}
proc fcQGraphicsItemGroup_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_itemChange".}
proc fQGraphicsItemGroup_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsItemGroup_virtualbase_supportsExtension".}
proc fcQGraphicsItemGroup_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_supportsExtension".}
proc fQGraphicsItemGroup_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsItemGroup_virtualbase_setExtension".}
proc fcQGraphicsItemGroup_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_setExtension".}
proc fQGraphicsItemGroup_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsItemGroup_virtualbase_extension".}
proc fcQGraphicsItemGroup_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsItemGroup_override_virtual_extension".}
proc fcQGraphicsItemGroup_delete(self: pointer) {.importc: "QGraphicsItemGroup_delete".}


func init*(T: type gen_qgraphicsitem_types.QGraphicsItem, h: ptr cQGraphicsItem): gen_qgraphicsitem_types.QGraphicsItem =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem.init(fcQGraphicsItem_new())

proc create*(T: type gen_qgraphicsitem_types.QGraphicsItem, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem.init(fcQGraphicsItem_new2(parent.h))

proc scene*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsscene_types.QGraphicsScene =
  gen_qgraphicsscene_types.QGraphicsScene(h: fcQGraphicsItem_scene(self.h))

proc parentItem*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsItem_parentItem(self.h))

proc topLevelItem*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsItem_topLevelItem(self.h))

proc parentObject*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsitem_types.QGraphicsObject =
  gen_qgraphicsitem_types.QGraphicsObject(h: fcQGraphicsItem_parentObject(self.h))

proc parentWidget*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicswidget_types.QGraphicsWidget =
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsItem_parentWidget(self.h))

proc topLevelWidget*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicswidget_types.QGraphicsWidget =
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsItem_topLevelWidget(self.h))

proc window*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicswidget_types.QGraphicsWidget =
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsItem_window(self.h))

proc panel*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsItem_panel(self.h))

proc setParentItem*(self: gen_qgraphicsitem_types.QGraphicsItem, parent: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsItem_setParentItem(self.h, parent.h)

proc childItems*(self: gen_qgraphicsitem_types.QGraphicsItem, ): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsItem_childItems(self.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc isWidget*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_isWidget(self.h)

proc isWindow*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_isWindow(self.h)

proc isPanel*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_isPanel(self.h)

proc toGraphicsObject*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsitem_types.QGraphicsObject =
  gen_qgraphicsitem_types.QGraphicsObject(h: fcQGraphicsItem_toGraphicsObject(self.h))

proc toGraphicsObject2*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsitem_types.QGraphicsObject =
  gen_qgraphicsitem_types.QGraphicsObject(h: fcQGraphicsItem_toGraphicsObject2(self.h))

proc group*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsitem_types.QGraphicsItemGroup =
  gen_qgraphicsitem_types.QGraphicsItemGroup(h: fcQGraphicsItem_group(self.h))

proc setGroup*(self: gen_qgraphicsitem_types.QGraphicsItem, group: gen_qgraphicsitem_types.QGraphicsItemGroup): void =
  fcQGraphicsItem_setGroup(self.h, group.h)

proc flags*(self: gen_qgraphicsitem_types.QGraphicsItem, ): cint =
  cint(fcQGraphicsItem_flags(self.h))

proc setFlag*(self: gen_qgraphicsitem_types.QGraphicsItem, flag: cint): void =
  fcQGraphicsItem_setFlag(self.h, cint(flag))

proc setFlags*(self: gen_qgraphicsitem_types.QGraphicsItem, flags: cint): void =
  fcQGraphicsItem_setFlags(self.h, cint(flags))

proc cacheMode*(self: gen_qgraphicsitem_types.QGraphicsItem, ): cint =
  cint(fcQGraphicsItem_cacheMode(self.h))

proc setCacheMode*(self: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): void =
  fcQGraphicsItem_setCacheMode(self.h, cint(mode))

proc panelModality*(self: gen_qgraphicsitem_types.QGraphicsItem, ): cint =
  cint(fcQGraphicsItem_panelModality(self.h))

proc setPanelModality*(self: gen_qgraphicsitem_types.QGraphicsItem, panelModality: cint): void =
  fcQGraphicsItem_setPanelModality(self.h, cint(panelModality))

proc isBlockedByModalPanel*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_isBlockedByModalPanel(self.h)

proc toolTip*(self: gen_qgraphicsitem_types.QGraphicsItem, ): string =
  let v_ms = fcQGraphicsItem_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qgraphicsitem_types.QGraphicsItem, toolTip: string): void =
  fcQGraphicsItem_setToolTip(self.h, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc cursor*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQGraphicsItem_cursor(self.h))

proc setCursor*(self: gen_qgraphicsitem_types.QGraphicsItem, cursor: gen_qcursor_types.QCursor): void =
  fcQGraphicsItem_setCursor(self.h, cursor.h)

proc hasCursor*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_hasCursor(self.h)

proc unsetCursor*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_unsetCursor(self.h)

proc isVisible*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_isVisible(self.h)

proc isVisibleTo*(self: gen_qgraphicsitem_types.QGraphicsItem, parent: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsItem_isVisibleTo(self.h, parent.h)

proc setVisible*(self: gen_qgraphicsitem_types.QGraphicsItem, visible: bool): void =
  fcQGraphicsItem_setVisible(self.h, visible)

proc hide*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_hide(self.h)

proc show*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_show(self.h)

proc isEnabled*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_isEnabled(self.h)

proc setEnabled*(self: gen_qgraphicsitem_types.QGraphicsItem, enabled: bool): void =
  fcQGraphicsItem_setEnabled(self.h, enabled)

proc isSelected*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_isSelected(self.h)

proc setSelected*(self: gen_qgraphicsitem_types.QGraphicsItem, selected: bool): void =
  fcQGraphicsItem_setSelected(self.h, selected)

proc acceptDrops*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_acceptDrops(self.h)

proc setAcceptDrops*(self: gen_qgraphicsitem_types.QGraphicsItem, on: bool): void =
  fcQGraphicsItem_setAcceptDrops(self.h, on)

proc opacity*(self: gen_qgraphicsitem_types.QGraphicsItem, ): float64 =
  fcQGraphicsItem_opacity(self.h)

proc effectiveOpacity*(self: gen_qgraphicsitem_types.QGraphicsItem, ): float64 =
  fcQGraphicsItem_effectiveOpacity(self.h)

proc setOpacity*(self: gen_qgraphicsitem_types.QGraphicsItem, opacity: float64): void =
  fcQGraphicsItem_setOpacity(self.h, opacity)

proc graphicsEffect*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicseffect_types.QGraphicsEffect =
  gen_qgraphicseffect_types.QGraphicsEffect(h: fcQGraphicsItem_graphicsEffect(self.h))

proc setGraphicsEffect*(self: gen_qgraphicsitem_types.QGraphicsItem, effect: gen_qgraphicseffect_types.QGraphicsEffect): void =
  fcQGraphicsItem_setGraphicsEffect(self.h, effect.h)

proc acceptedMouseButtons*(self: gen_qgraphicsitem_types.QGraphicsItem, ): cint =
  cint(fcQGraphicsItem_acceptedMouseButtons(self.h))

proc setAcceptedMouseButtons*(self: gen_qgraphicsitem_types.QGraphicsItem, buttons: cint): void =
  fcQGraphicsItem_setAcceptedMouseButtons(self.h, cint(buttons))

proc acceptHoverEvents*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_acceptHoverEvents(self.h)

proc setAcceptHoverEvents*(self: gen_qgraphicsitem_types.QGraphicsItem, enabled: bool): void =
  fcQGraphicsItem_setAcceptHoverEvents(self.h, enabled)

proc acceptTouchEvents*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_acceptTouchEvents(self.h)

proc setAcceptTouchEvents*(self: gen_qgraphicsitem_types.QGraphicsItem, enabled: bool): void =
  fcQGraphicsItem_setAcceptTouchEvents(self.h, enabled)

proc filtersChildEvents*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_filtersChildEvents(self.h)

proc setFiltersChildEvents*(self: gen_qgraphicsitem_types.QGraphicsItem, enabled: bool): void =
  fcQGraphicsItem_setFiltersChildEvents(self.h, enabled)

proc handlesChildEvents*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_handlesChildEvents(self.h)

proc setHandlesChildEvents*(self: gen_qgraphicsitem_types.QGraphicsItem, enabled: bool): void =
  fcQGraphicsItem_setHandlesChildEvents(self.h, enabled)

proc isActive*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_isActive(self.h)

proc setActive*(self: gen_qgraphicsitem_types.QGraphicsItem, active: bool): void =
  fcQGraphicsItem_setActive(self.h, active)

proc hasFocus*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_hasFocus(self.h)

proc setFocus*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_setFocus(self.h)

proc clearFocus*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_clearFocus(self.h)

proc focusProxy*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsItem_focusProxy(self.h))

proc setFocusProxy*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsItem_setFocusProxy(self.h, item.h)

proc focusItem*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsItem_focusItem(self.h))

proc focusScopeItem*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsItem_focusScopeItem(self.h))

proc grabMouse*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_grabMouse(self.h)

proc ungrabMouse*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_ungrabMouse(self.h)

proc grabKeyboard*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_grabKeyboard(self.h)

proc ungrabKeyboard*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_ungrabKeyboard(self.h)

proc pos*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_pos(self.h))

proc x*(self: gen_qgraphicsitem_types.QGraphicsItem, ): float64 =
  fcQGraphicsItem_x(self.h)

proc setX*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64): void =
  fcQGraphicsItem_setX(self.h, x)

proc y*(self: gen_qgraphicsitem_types.QGraphicsItem, ): float64 =
  fcQGraphicsItem_y(self.h)

proc setY*(self: gen_qgraphicsitem_types.QGraphicsItem, y: float64): void =
  fcQGraphicsItem_setY(self.h, y)

proc scenePos*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_scenePos(self.h))

proc setPos*(self: gen_qgraphicsitem_types.QGraphicsItem, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsItem_setPos(self.h, pos.h)

proc setPos*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64): void =
  fcQGraphicsItem_setPos2(self.h, x, y)

proc moveBy*(self: gen_qgraphicsitem_types.QGraphicsItem, dx: float64, dy: float64): void =
  fcQGraphicsItem_moveBy(self.h, dx, dy)

proc ensureVisible*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_ensureVisible(self.h)

proc ensureVisible*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsItem_ensureVisible2(self.h, x, y, w, h)

proc transform*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQGraphicsItem_transform(self.h))

proc sceneTransform*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQGraphicsItem_sceneTransform(self.h))

proc deviceTransform*(self: gen_qgraphicsitem_types.QGraphicsItem, viewportTransform: gen_qtransform_types.QTransform): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQGraphicsItem_deviceTransform(self.h, viewportTransform.h))

proc itemTransform*(self: gen_qgraphicsitem_types.QGraphicsItem, other: gen_qgraphicsitem_types.QGraphicsItem): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQGraphicsItem_itemTransform(self.h, other.h))

proc setTransform*(self: gen_qgraphicsitem_types.QGraphicsItem, matrix: gen_qtransform_types.QTransform): void =
  fcQGraphicsItem_setTransform(self.h, matrix.h)

proc resetTransform*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_resetTransform(self.h)

proc setRotation*(self: gen_qgraphicsitem_types.QGraphicsItem, angle: float64): void =
  fcQGraphicsItem_setRotation(self.h, angle)

proc rotation*(self: gen_qgraphicsitem_types.QGraphicsItem, ): float64 =
  fcQGraphicsItem_rotation(self.h)

proc setScale*(self: gen_qgraphicsitem_types.QGraphicsItem, scale: float64): void =
  fcQGraphicsItem_setScale(self.h, scale)

proc scale*(self: gen_qgraphicsitem_types.QGraphicsItem, ): float64 =
  fcQGraphicsItem_scale(self.h)

proc transformations*(self: gen_qgraphicsitem_types.QGraphicsItem, ): seq[gen_qgraphicstransform_types.QGraphicsTransform] =
  var v_ma = fcQGraphicsItem_transformations(self.h)
  var vx_ret = newSeq[gen_qgraphicstransform_types.QGraphicsTransform](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicstransform_types.QGraphicsTransform(h: v_outCast[i])
  vx_ret

proc setTransformations*(self: gen_qgraphicsitem_types.QGraphicsItem, transformations: seq[gen_qgraphicstransform_types.QGraphicsTransform]): void =
  var transformations_CArray = newSeq[pointer](len(transformations))
  for i in 0..<len(transformations):
    transformations_CArray[i] = transformations[i].h

  fcQGraphicsItem_setTransformations(self.h, struct_miqt_array(len: csize_t(len(transformations)), data: if len(transformations) == 0: nil else: addr(transformations_CArray[0])))

proc transformOriginPoint*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_transformOriginPoint(self.h))

proc setTransformOriginPoint*(self: gen_qgraphicsitem_types.QGraphicsItem, origin: gen_qpoint_types.QPointF): void =
  fcQGraphicsItem_setTransformOriginPoint(self.h, origin.h)

proc setTransformOriginPoint*(self: gen_qgraphicsitem_types.QGraphicsItem, ax: float64, ay: float64): void =
  fcQGraphicsItem_setTransformOriginPoint2(self.h, ax, ay)

proc advance*(self: gen_qgraphicsitem_types.QGraphicsItem, phase: cint): void =
  fcQGraphicsItem_advance(self.h, phase)

proc zValue*(self: gen_qgraphicsitem_types.QGraphicsItem, ): float64 =
  fcQGraphicsItem_zValue(self.h)

proc setZValue*(self: gen_qgraphicsitem_types.QGraphicsItem, z: float64): void =
  fcQGraphicsItem_setZValue(self.h, z)

proc stackBefore*(self: gen_qgraphicsitem_types.QGraphicsItem, sibling: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsItem_stackBefore(self.h, sibling.h)

proc boundingRect*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_boundingRect(self.h))

proc childrenBoundingRect*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_childrenBoundingRect(self.h))

proc sceneBoundingRect*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_sceneBoundingRect(self.h))

proc shape*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItem_shape(self.h))

proc isClipped*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_isClipped(self.h)

proc clipPath*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItem_clipPath(self.h))

proc contains*(self: gen_qgraphicsitem_types.QGraphicsItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsItem_contains(self.h, point.h)

proc collidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsItem_collidesWithItem(self.h, other.h, cint(mode))

proc collidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsItem_collidesWithPath(self.h, path.h, cint(mode))

proc collidingItems*(self: gen_qgraphicsitem_types.QGraphicsItem, ): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsItem_collidingItems(self.h)
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc isObscured*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_isObscured(self.h)

proc isObscured*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64, w: float64, h: float64): bool =
  fcQGraphicsItem_isObscured2(self.h, x, y, w, h)

proc isObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItem_opaqueArea(self.h))

proc boundingRegion*(self: gen_qgraphicsitem_types.QGraphicsItem, itemToDeviceTransform: gen_qtransform_types.QTransform): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQGraphicsItem_boundingRegion(self.h, itemToDeviceTransform.h))

proc boundingRegionGranularity*(self: gen_qgraphicsitem_types.QGraphicsItem, ): float64 =
  fcQGraphicsItem_boundingRegionGranularity(self.h)

proc setBoundingRegionGranularity*(self: gen_qgraphicsitem_types.QGraphicsItem, granularity: float64): void =
  fcQGraphicsItem_setBoundingRegionGranularity(self.h, granularity)

proc paint*(self: gen_qgraphicsitem_types.QGraphicsItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsItem_paint(self.h, painter.h, option.h, widget.h)

proc update*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_update(self.h)

proc update*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64, width: float64, height: float64): void =
  fcQGraphicsItem_update2(self.h, x, y, width, height)

proc scroll*(self: gen_qgraphicsitem_types.QGraphicsItem, dx: float64, dy: float64): void =
  fcQGraphicsItem_scroll(self.h, dx, dy)

proc mapToItem*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapToItem(self.h, item.h, point.h))

proc mapToParent*(self: gen_qgraphicsitem_types.QGraphicsItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapToParent(self.h, point.h))

proc mapToScene*(self: gen_qgraphicsitem_types.QGraphicsItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapToScene(self.h, point.h))

proc mapRectToItem*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectToItem(self.h, item.h, rect.h))

proc mapRectToParent*(self: gen_qgraphicsitem_types.QGraphicsItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectToParent(self.h, rect.h))

proc mapRectToScene*(self: gen_qgraphicsitem_types.QGraphicsItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectToScene(self.h, rect.h))

proc mapToItem*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem, path: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItem_mapToItem4(self.h, item.h, path.h))

proc mapToParent*(self: gen_qgraphicsitem_types.QGraphicsItem, path: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItem_mapToParentWithPath(self.h, path.h))

proc mapToScene*(self: gen_qgraphicsitem_types.QGraphicsItem, path: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItem_mapToSceneWithPath(self.h, path.h))

proc mapFromItem*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapFromItem(self.h, item.h, point.h))

proc mapFromParent*(self: gen_qgraphicsitem_types.QGraphicsItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapFromParent(self.h, point.h))

proc mapFromScene*(self: gen_qgraphicsitem_types.QGraphicsItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapFromScene(self.h, point.h))

proc mapRectFromItem*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectFromItem(self.h, item.h, rect.h))

proc mapRectFromParent*(self: gen_qgraphicsitem_types.QGraphicsItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectFromParent(self.h, rect.h))

proc mapRectFromScene*(self: gen_qgraphicsitem_types.QGraphicsItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectFromScene(self.h, rect.h))

proc mapFromItem*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem, path: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItem_mapFromItem4(self.h, item.h, path.h))

proc mapFromParent*(self: gen_qgraphicsitem_types.QGraphicsItem, path: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItem_mapFromParentWithPath(self.h, path.h))

proc mapFromScene*(self: gen_qgraphicsitem_types.QGraphicsItem, path: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItem_mapFromSceneWithPath(self.h, path.h))

proc mapToItem*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapToItem5(self.h, item.h, x, y))

proc mapToParent*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapToParent2(self.h, x, y))

proc mapToScene*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapToScene2(self.h, x, y))

proc mapRectToItem*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectToItem2(self.h, item.h, x, y, w, h))

proc mapRectToParent*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectToParent2(self.h, x, y, w, h))

proc mapRectToScene*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectToScene2(self.h, x, y, w, h))

proc mapFromItem*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapFromItem5(self.h, item.h, x, y))

proc mapFromParent*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapFromParent2(self.h, x, y))

proc mapFromScene*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItem_mapFromScene2(self.h, x, y))

proc mapRectFromItem*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectFromItem2(self.h, item.h, x, y, w, h))

proc mapRectFromParent*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectFromParent2(self.h, x, y, w, h))

proc mapRectFromScene*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64, w: float64, h: float64): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItem_mapRectFromScene2(self.h, x, y, w, h))

proc isAncestorOf*(self: gen_qgraphicsitem_types.QGraphicsItem, child: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsItem_isAncestorOf(self.h, child.h)

proc commonAncestorItem*(self: gen_qgraphicsitem_types.QGraphicsItem, other: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsItem_commonAncestorItem(self.h, other.h))

proc isUnderMouse*(self: gen_qgraphicsitem_types.QGraphicsItem, ): bool =
  fcQGraphicsItem_isUnderMouse(self.h)

proc data*(self: gen_qgraphicsitem_types.QGraphicsItem, key: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsItem_data(self.h, key))

proc setData*(self: gen_qgraphicsitem_types.QGraphicsItem, key: cint, value: gen_qvariant_types.QVariant): void =
  fcQGraphicsItem_setData(self.h, key, value.h)

proc inputMethodHints*(self: gen_qgraphicsitem_types.QGraphicsItem, ): cint =
  cint(fcQGraphicsItem_inputMethodHints(self.h))

proc setInputMethodHints*(self: gen_qgraphicsitem_types.QGraphicsItem, hints: cint): void =
  fcQGraphicsItem_setInputMethodHints(self.h, cint(hints))

proc typeX*(self: gen_qgraphicsitem_types.QGraphicsItem, ): cint =
  fcQGraphicsItem_typeX(self.h)

proc installSceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsItem, filterItem: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsItem_installSceneEventFilter(self.h, filterItem.h)

proc removeSceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsItem, filterItem: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsItem_removeSceneEventFilter(self.h, filterItem.h)

proc setFlag*(self: gen_qgraphicsitem_types.QGraphicsItem, flag: cint, enabled: bool): void =
  fcQGraphicsItem_setFlag2(self.h, cint(flag), enabled)

proc setCacheMode*(self: gen_qgraphicsitem_types.QGraphicsItem, mode: cint, cacheSize: gen_qsize_types.QSize): void =
  fcQGraphicsItem_setCacheMode2(self.h, cint(mode), cacheSize.h)

proc setFocus*(self: gen_qgraphicsitem_types.QGraphicsItem, focusReason: cint): void =
  fcQGraphicsItem_setFocus1(self.h, cint(focusReason))

proc ensureVisible*(self: gen_qgraphicsitem_types.QGraphicsItem, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsItem_ensureVisible1(self.h, rect.h)

proc ensureVisible*(self: gen_qgraphicsitem_types.QGraphicsItem, rect: gen_qrect_types.QRectF, xmargin: cint): void =
  fcQGraphicsItem_ensureVisible22(self.h, rect.h, xmargin)

proc ensureVisible*(self: gen_qgraphicsitem_types.QGraphicsItem, rect: gen_qrect_types.QRectF, xmargin: cint, ymargin: cint): void =
  fcQGraphicsItem_ensureVisible3(self.h, rect.h, xmargin, ymargin)

proc ensureVisible*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64, w: float64, h: float64, xmargin: cint): void =
  fcQGraphicsItem_ensureVisible5(self.h, x, y, w, h, xmargin)

proc ensureVisible*(self: gen_qgraphicsitem_types.QGraphicsItem, x: float64, y: float64, w: float64, h: float64, xmargin: cint, ymargin: cint): void =
  fcQGraphicsItem_ensureVisible6(self.h, x, y, w, h, xmargin, ymargin)

proc itemTransform*(self: gen_qgraphicsitem_types.QGraphicsItem, other: gen_qgraphicsitem_types.QGraphicsItem, ok: ptr bool): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQGraphicsItem_itemTransform2(self.h, other.h, ok))

proc setTransform*(self: gen_qgraphicsitem_types.QGraphicsItem, matrix: gen_qtransform_types.QTransform, combine: bool): void =
  fcQGraphicsItem_setTransform2(self.h, matrix.h, combine)

proc collidingItems*(self: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): seq[gen_qgraphicsitem_types.QGraphicsItem] =
  var v_ma = fcQGraphicsItem_collidingItems1(self.h, cint(mode))
  var vx_ret = newSeq[gen_qgraphicsitem_types.QGraphicsItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicsitem_types.QGraphicsItem(h: v_outCast[i])
  vx_ret

proc isObscured*(self: gen_qgraphicsitem_types.QGraphicsItem, rect: gen_qrect_types.QRectF): bool =
  fcQGraphicsItem_isObscured1(self.h, rect.h)

proc update*(self: gen_qgraphicsitem_types.QGraphicsItem, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsItem_update1(self.h, rect.h)

proc scroll*(self: gen_qgraphicsitem_types.QGraphicsItem, dx: float64, dy: float64, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsItem_scroll3(self.h, dx, dy, rect.h)

proc QGraphicsItemadvance*(self: gen_qgraphicsitem_types.QGraphicsItem, phase: cint): void =
  fQGraphicsItem_virtualbase_advance(self.h, phase)

type QGraphicsItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_advance(self: ptr cQGraphicsItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsItem_advance ".} =
  var nimfunc = cast[ptr QGraphicsItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
type QGraphicsItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_boundingRect(self: ptr cQGraphicsItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsItemshape*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsItem_virtualbase_shape(self.h))

type QGraphicsItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_shape(self: ptr cQGraphicsItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_shape ".} =
  var nimfunc = cast[ptr QGraphicsItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsItemcontains*(self: gen_qgraphicsitem_types.QGraphicsItem, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsItem_virtualbase_contains(self.h, point.h)

type QGraphicsItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_contains(self: ptr cQGraphicsItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItem_contains ".} =
  var nimfunc = cast[ptr QGraphicsItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_collidesWithItem(self: ptr cQGraphicsItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_collidesWithPath(self: ptr cQGraphicsItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_isObscuredBy(self: ptr cQGraphicsItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsItem_virtualbase_opaqueArea(self.h))

type QGraphicsItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_opaqueArea(self: ptr cQGraphicsItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QGraphicsItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItempaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_paint(self: ptr cQGraphicsItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_paint ".} =
  var nimfunc = cast[ptr QGraphicsItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsItem, ): cint =
  fQGraphicsItem_virtualbase_type(self.h)

type QGraphicsItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_type(self: ptr cQGraphicsItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsItem_type ".} =
  var nimfunc = cast[ptr QGraphicsItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_sceneEventFilter(self: ptr cQGraphicsItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_sceneEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItem_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_contextMenuEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_dragEnterEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_dragLeaveEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_dragMoveEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_dropEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_focusInEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_focusOutEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_hoverEnterEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_hoverMoveEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_hoverLeaveEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_keyPressEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_keyReleaseEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_mousePressEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_mouseMoveEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_mouseReleaseEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_mouseDoubleClickEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_wheelEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_inputMethodEvent(self: ptr cQGraphicsItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_inputMethodQuery(self: ptr cQGraphicsItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_itemChange(self: ptr cQGraphicsItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsItem, extension: cint): bool =
  fQGraphicsItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_supportsExtension(self: ptr cQGraphicsItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItem_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_setExtension(self: ptr cQGraphicsItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItem_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsItemextension*(self: gen_qgraphicsitem_types.QGraphicsItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsItem_virtualbase_extension(self.h, variant.h))

type QGraphicsItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QGraphicsItem, slot: QGraphicsItemextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItem_extension(self: ptr cQGraphicsItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsItem_extension ".} =
  var nimfunc = cast[ptr QGraphicsItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QGraphicsItem) =
  fcQGraphicsItem_delete(self.h)

func init*(T: type gen_qgraphicsitem_types.QGraphicsObject, h: ptr cQGraphicsObject): gen_qgraphicsitem_types.QGraphicsObject =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QGraphicsObject, ): gen_qgraphicsitem_types.QGraphicsObject =
  gen_qgraphicsitem_types.QGraphicsObject.init(fcQGraphicsObject_new())

proc create*(T: type gen_qgraphicsitem_types.QGraphicsObject, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsObject =
  gen_qgraphicsitem_types.QGraphicsObject.init(fcQGraphicsObject_new2(parent.h))

proc metaObject*(self: gen_qgraphicsitem_types.QGraphicsObject, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsObject_metaObject(self.h))

proc metacast*(self: gen_qgraphicsitem_types.QGraphicsObject, param1: cstring): pointer =
  fcQGraphicsObject_metacast(self.h, param1)

proc tr*(_: type gen_qgraphicsitem_types.QGraphicsObject, s: cstring): string =
  let v_ms = fcQGraphicsObject_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc grabGesture*(self: gen_qgraphicsitem_types.QGraphicsObject, typeVal: cint): void =
  fcQGraphicsObject_grabGesture(self.h, cint(typeVal))

proc ungrabGesture*(self: gen_qgraphicsitem_types.QGraphicsObject, typeVal: cint): void =
  fcQGraphicsObject_ungrabGesture(self.h, cint(typeVal))

proc parentChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_parentChanged(self.h)

type QGraphicsObjectparentChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_parentChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectparentChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onparentChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectparentChangedSlot) =
  var tmp = new QGraphicsObjectparentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_parentChanged(self.h, cast[int](addr tmp[]))

proc opacityChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_opacityChanged(self.h)

type QGraphicsObjectopacityChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_opacityChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectopacityChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onopacityChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectopacityChangedSlot) =
  var tmp = new QGraphicsObjectopacityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_opacityChanged(self.h, cast[int](addr tmp[]))

proc visibleChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_visibleChanged(self.h)

type QGraphicsObjectvisibleChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_visibleChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectvisibleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvisibleChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectvisibleChangedSlot) =
  var tmp = new QGraphicsObjectvisibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_visibleChanged(self.h, cast[int](addr tmp[]))

proc enabledChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_enabledChanged(self.h)

type QGraphicsObjectenabledChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_enabledChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectenabledChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onenabledChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectenabledChangedSlot) =
  var tmp = new QGraphicsObjectenabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_enabledChanged(self.h, cast[int](addr tmp[]))

proc xChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_xChanged(self.h)

type QGraphicsObjectxChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_xChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectxChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onxChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectxChangedSlot) =
  var tmp = new QGraphicsObjectxChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_xChanged(self.h, cast[int](addr tmp[]))

proc yChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_yChanged(self.h)

type QGraphicsObjectyChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_yChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectyChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onyChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectyChangedSlot) =
  var tmp = new QGraphicsObjectyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_yChanged(self.h, cast[int](addr tmp[]))

proc zChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_zChanged(self.h)

type QGraphicsObjectzChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_zChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectzChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onzChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectzChangedSlot) =
  var tmp = new QGraphicsObjectzChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_zChanged(self.h, cast[int](addr tmp[]))

proc rotationChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_rotationChanged(self.h)

type QGraphicsObjectrotationChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_rotationChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectrotationChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onrotationChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectrotationChangedSlot) =
  var tmp = new QGraphicsObjectrotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_rotationChanged(self.h, cast[int](addr tmp[]))

proc scaleChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_scaleChanged(self.h)

type QGraphicsObjectscaleChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_scaleChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectscaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onscaleChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectscaleChangedSlot) =
  var tmp = new QGraphicsObjectscaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_scaleChanged(self.h, cast[int](addr tmp[]))

proc childrenChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_childrenChanged(self.h)

type QGraphicsObjectchildrenChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_childrenChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectchildrenChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onchildrenChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectchildrenChangedSlot) =
  var tmp = new QGraphicsObjectchildrenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_childrenChanged(self.h, cast[int](addr tmp[]))

proc widthChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_widthChanged(self.h)

type QGraphicsObjectwidthChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_widthChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectwidthChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onwidthChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectwidthChangedSlot) =
  var tmp = new QGraphicsObjectwidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_widthChanged(self.h, cast[int](addr tmp[]))

proc heightChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_heightChanged(self.h)

type QGraphicsObjectheightChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsObject_heightChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsObjectheightChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onheightChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectheightChangedSlot) =
  var tmp = new QGraphicsObjectheightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_heightChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qgraphicsitem_types.QGraphicsObject, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsObject_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicsitem_types.QGraphicsObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc grabGesture*(self: gen_qgraphicsitem_types.QGraphicsObject, typeVal: cint, flags: cint): void =
  fcQGraphicsObject_grabGesture2(self.h, cint(typeVal), cint(flags))

proc QGraphicsObjectevent*(self: gen_qgraphicsitem_types.QGraphicsObject, ev: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsObject_virtualbase_event(self.h, ev.h)

type QGraphicsObjecteventProc* = proc(ev: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjecteventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjecteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_event(self: ptr cQGraphicsObject, slot: int, ev: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_event ".} =
  var nimfunc = cast[ptr QGraphicsObjecteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: ev)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsObjecteventFilter*(self: gen_qgraphicsitem_types.QGraphicsObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsObject_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsObjecteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjecteventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjecteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_eventFilter(self: ptr cQGraphicsObject, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsObjecteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsObjecttimerEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsObject_virtualbase_timerEvent(self.h, event.h)

type QGraphicsObjecttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjecttimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjecttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_timerEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjecttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectchildEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsObject_virtualbase_childEvent(self.h, event.h)

type QGraphicsObjectchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_childEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectcustomEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsObject_virtualbase_customEvent(self.h, event.h)

type QGraphicsObjectcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_customEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsObject_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsObjectconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_connectNotify(self: ptr cQGraphicsObject, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsObjectconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsObjectdisconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsObject_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsObjectdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_disconnectNotify(self: ptr cQGraphicsObject, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsObjectdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsObjectadvance*(self: gen_qgraphicsitem_types.QGraphicsObject, phase: cint): void =
  fQGraphicsObject_virtualbase_advance(self.h, phase)

type QGraphicsObjectadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_advance(self: ptr cQGraphicsObject, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsObject_advance ".} =
  var nimfunc = cast[ptr QGraphicsObjectadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
type QGraphicsObjectboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_boundingRect(self: ptr cQGraphicsObject, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsObjectboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsObjectshape*(self: gen_qgraphicsitem_types.QGraphicsObject, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsObject_virtualbase_shape(self.h))

type QGraphicsObjectshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_shape(self: ptr cQGraphicsObject, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_shape ".} =
  var nimfunc = cast[ptr QGraphicsObjectshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsObjectcontains*(self: gen_qgraphicsitem_types.QGraphicsObject, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsObject_virtualbase_contains(self.h, point.h)

type QGraphicsObjectcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_contains(self: ptr cQGraphicsObject, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_contains ".} =
  var nimfunc = cast[ptr QGraphicsObjectcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsObjectcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsObject, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsObject_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsObjectcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_collidesWithItem(self: ptr cQGraphicsObject, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsObject_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsObjectcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsObjectcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsObject, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsObject_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsObjectcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_collidesWithPath(self: ptr cQGraphicsObject, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsObject_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsObjectcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsObjectisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsObject, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsObject_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsObjectisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_isObscuredBy(self: ptr cQGraphicsObject, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsObjectisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsObjectopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsObject, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsObject_virtualbase_opaqueArea(self.h))

type QGraphicsObjectopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_opaqueArea(self: ptr cQGraphicsObject, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsObjectopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QGraphicsObjectpaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectpaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectpaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_paint(self: ptr cQGraphicsObject, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_paint ".} =
  var nimfunc = cast[ptr QGraphicsObjectpaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsObjecttypeX*(self: gen_qgraphicsitem_types.QGraphicsObject, ): cint =
  fQGraphicsObject_virtualbase_type(self.h)

type QGraphicsObjecttypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjecttypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjecttypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_type(self: ptr cQGraphicsObject, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsObject_type ".} =
  var nimfunc = cast[ptr QGraphicsObjecttypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsObjectsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsObject, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsObject_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsObjectsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_sceneEventFilter(self: ptr cQGraphicsObject, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsObjectsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsObjectsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsObject_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsObjectsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_sceneEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsObject_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsObjectcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsObject_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsObjectcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_contextMenuEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsObject_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsObjectdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_dragEnterEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsObject_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsObjectdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_dragLeaveEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsObject_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsObjectdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_dragMoveEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectdropEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsObject_virtualbase_dropEvent(self.h, event.h)

type QGraphicsObjectdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_dropEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsObject_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsObjectfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_focusInEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsObject_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsObjectfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_focusOutEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjecthoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsObject_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsObjecthoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjecthoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjecthoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_hoverEnterEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjecthoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjecthoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsObject_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsObjecthoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjecthoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjecthoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_hoverMoveEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjecthoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjecthoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsObject_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsObjecthoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjecthoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjecthoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_hoverLeaveEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjecthoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsObject_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsObjectkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_keyPressEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsObject_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsObjectkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_keyReleaseEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsObject_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsObjectmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_mousePressEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsObject_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsObjectmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_mouseMoveEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsObject_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsObjectmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_mouseReleaseEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsObject_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsObjectmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_mouseDoubleClickEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsObject_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsObjectwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_wheelEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectinputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsObject_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsObjectinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_inputMethodEvent(self: ptr cQGraphicsObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsObjectinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsObjectinputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsObject, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsObject_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsObjectinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_inputMethodQuery(self: ptr cQGraphicsObject, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsObjectinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsObjectitemChange*(self: gen_qgraphicsitem_types.QGraphicsObject, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsObject_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsObjectitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_itemChange(self: ptr cQGraphicsObject, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsObjectitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsObjectsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsObject, extension: cint): bool =
  fQGraphicsObject_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsObjectsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_supportsExtension(self: ptr cQGraphicsObject, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsObject_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsObjectsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsObjectsetExtension*(self: gen_qgraphicsitem_types.QGraphicsObject, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsObject_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsObjectsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_setExtension(self: ptr cQGraphicsObject, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsObject_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsObjectsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsObjectextension*(self: gen_qgraphicsitem_types.QGraphicsObject, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsObject_virtualbase_extension(self.h, variant.h))

type QGraphicsObjectextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsObjectextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsObject_extension(self: ptr cQGraphicsObject, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsObject_extension ".} =
  var nimfunc = cast[ptr QGraphicsObjectextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QGraphicsObject) =
  fcQGraphicsObject_delete(self.h)

func init*(T: type gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, h: ptr cQAbstractGraphicsShapeItem): gen_qgraphicsitem_types.QAbstractGraphicsShapeItem =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): gen_qgraphicsitem_types.QAbstractGraphicsShapeItem =
  gen_qgraphicsitem_types.QAbstractGraphicsShapeItem.init(fcQAbstractGraphicsShapeItem_new())

proc create*(T: type gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QAbstractGraphicsShapeItem =
  gen_qgraphicsitem_types.QAbstractGraphicsShapeItem.init(fcQAbstractGraphicsShapeItem_new2(parent.h))

proc pen*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): gen_qpen_types.QPen =
  gen_qpen_types.QPen(h: fcQAbstractGraphicsShapeItem_pen(self.h))

proc setPen*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, pen: gen_qpen_types.QPen): void =
  fcQAbstractGraphicsShapeItem_setPen(self.h, pen.h)

proc brush*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQAbstractGraphicsShapeItem_brush(self.h))

proc setBrush*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, brush: gen_qbrush_types.QBrush): void =
  fcQAbstractGraphicsShapeItem_setBrush(self.h, brush.h)

proc isObscuredBy*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQAbstractGraphicsShapeItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQAbstractGraphicsShapeItem_opaqueArea(self.h))

proc QAbstractGraphicsShapeItemisObscuredBy*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQAbstractGraphicsShapeItem_virtualbase_isObscuredBy(self.h, item.h)

type QAbstractGraphicsShapeItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_isObscuredBy(self: ptr cQAbstractGraphicsShapeItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractGraphicsShapeItemopaqueArea*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQAbstractGraphicsShapeItem_virtualbase_opaqueArea(self.h))

type QAbstractGraphicsShapeItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_opaqueArea(self: ptr cQAbstractGraphicsShapeItem, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_opaqueArea ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractGraphicsShapeItemadvance*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, phase: cint): void =
  fQAbstractGraphicsShapeItem_virtualbase_advance(self.h, phase)

type QAbstractGraphicsShapeItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemadvanceProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_advance(self: ptr cQAbstractGraphicsShapeItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_advance ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
type QAbstractGraphicsShapeItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_boundingRect(self: ptr cQAbstractGraphicsShapeItem, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_boundingRect ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractGraphicsShapeItemshape*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQAbstractGraphicsShapeItem_virtualbase_shape(self.h))

type QAbstractGraphicsShapeItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemshapeProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_shape(self: ptr cQAbstractGraphicsShapeItem, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_shape ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractGraphicsShapeItemcontains*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, point: gen_qpoint_types.QPointF): bool =
  fQAbstractGraphicsShapeItem_virtualbase_contains(self.h, point.h)

type QAbstractGraphicsShapeItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemcontainsProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_contains(self: ptr cQAbstractGraphicsShapeItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_contains ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractGraphicsShapeItemcollidesWithItem*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQAbstractGraphicsShapeItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QAbstractGraphicsShapeItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_collidesWithItem(self: ptr cQAbstractGraphicsShapeItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractGraphicsShapeItemcollidesWithPath*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQAbstractGraphicsShapeItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QAbstractGraphicsShapeItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_collidesWithPath(self: ptr cQAbstractGraphicsShapeItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
type QAbstractGraphicsShapeItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItempaintProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_paint(self: ptr cQAbstractGraphicsShapeItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_paint ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QAbstractGraphicsShapeItemtypeX*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): cint =
  fQAbstractGraphicsShapeItem_virtualbase_type(self.h)

type QAbstractGraphicsShapeItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemtypeXProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_type(self: ptr cQAbstractGraphicsShapeItem, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_type ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractGraphicsShapeItemsceneEventFilter*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractGraphicsShapeItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QAbstractGraphicsShapeItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_sceneEventFilter(self: ptr cQAbstractGraphicsShapeItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractGraphicsShapeItemsceneEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractGraphicsShapeItem_virtualbase_sceneEvent(self.h, event.h)

type QAbstractGraphicsShapeItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_sceneEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_sceneEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractGraphicsShapeItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_contextMenuEvent(self.h, event.h)

type QAbstractGraphicsShapeItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_contextMenuEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemdragEnterEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractGraphicsShapeItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_dragEnterEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractGraphicsShapeItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_dragLeaveEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemdragMoveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractGraphicsShapeItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_dragMoveEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemdropEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_dropEvent(self.h, event.h)

type QAbstractGraphicsShapeItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemdropEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_dropEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_dropEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemfocusInEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_focusInEvent(self.h, event.h)

type QAbstractGraphicsShapeItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_focusInEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_focusInEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemfocusOutEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractGraphicsShapeItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_focusOutEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QAbstractGraphicsShapeItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_hoverEnterEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QAbstractGraphicsShapeItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_hoverMoveEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QAbstractGraphicsShapeItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_hoverLeaveEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemkeyPressEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qevent_types.QKeyEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_keyPressEvent(self.h, event.h)

type QAbstractGraphicsShapeItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_keyPressEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qevent_types.QKeyEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractGraphicsShapeItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_keyReleaseEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemmousePressEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_mousePressEvent(self.h, event.h)

type QAbstractGraphicsShapeItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_mousePressEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QAbstractGraphicsShapeItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_mouseMoveEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QAbstractGraphicsShapeItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_mouseReleaseEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractGraphicsShapeItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_mouseDoubleClickEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeItemwheelEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_wheelEvent(self.h, event.h)

type QAbstractGraphicsShapeItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_wheelEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_wheelEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeIteminputMethodEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQAbstractGraphicsShapeItem_virtualbase_inputMethodEvent(self.h, event.h)

type QAbstractGraphicsShapeIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_inputMethodEvent(self: ptr cQAbstractGraphicsShapeItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractGraphicsShapeIteminputMethodQuery*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractGraphicsShapeItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QAbstractGraphicsShapeIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_inputMethodQuery(self: ptr cQAbstractGraphicsShapeItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractGraphicsShapeItemitemChange*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractGraphicsShapeItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QAbstractGraphicsShapeItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_itemChange(self: ptr cQAbstractGraphicsShapeItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_itemChange ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QAbstractGraphicsShapeItemsupportsExtension*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, extension: cint): bool =
  fQAbstractGraphicsShapeItem_virtualbase_supportsExtension(self.h, cint(extension))

type QAbstractGraphicsShapeItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_supportsExtension(self: ptr cQAbstractGraphicsShapeItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_supportsExtension ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractGraphicsShapeItemsetExtension*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQAbstractGraphicsShapeItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QAbstractGraphicsShapeItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_setExtension(self: ptr cQAbstractGraphicsShapeItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_setExtension ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QAbstractGraphicsShapeItemextension*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractGraphicsShapeItem_virtualbase_extension(self.h, variant.h))

type QAbstractGraphicsShapeItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, slot: QAbstractGraphicsShapeItemextensionProc) =
  # TODO check subclass
  var tmp = new QAbstractGraphicsShapeItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractGraphicsShapeItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractGraphicsShapeItem_extension(self: ptr cQAbstractGraphicsShapeItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractGraphicsShapeItem_extension ".} =
  var nimfunc = cast[ptr QAbstractGraphicsShapeItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem) =
  fcQAbstractGraphicsShapeItem_delete(self.h)

func init*(T: type gen_qgraphicsitem_types.QGraphicsPathItem, h: ptr cQGraphicsPathItem): gen_qgraphicsitem_types.QGraphicsPathItem =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QGraphicsPathItem, ): gen_qgraphicsitem_types.QGraphicsPathItem =
  gen_qgraphicsitem_types.QGraphicsPathItem.init(fcQGraphicsPathItem_new())

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPathItem, path: gen_qpainterpath_types.QPainterPath): gen_qgraphicsitem_types.QGraphicsPathItem =
  gen_qgraphicsitem_types.QGraphicsPathItem.init(fcQGraphicsPathItem_new2(path.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPathItem, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsPathItem =
  gen_qgraphicsitem_types.QGraphicsPathItem.init(fcQGraphicsPathItem_new3(parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPathItem, path: gen_qpainterpath_types.QPainterPath, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsPathItem =
  gen_qgraphicsitem_types.QGraphicsPathItem.init(fcQGraphicsPathItem_new4(path.h, parent.h))

proc path*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPathItem_path(self.h))

proc setPath*(self: gen_qgraphicsitem_types.QGraphicsPathItem, path: gen_qpainterpath_types.QPainterPath): void =
  fcQGraphicsPathItem_setPath(self.h, path.h)

proc boundingRect*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsPathItem_boundingRect(self.h))

proc shape*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPathItem_shape(self.h))

proc contains*(self: gen_qgraphicsitem_types.QGraphicsPathItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsPathItem_contains(self.h, point.h)

proc paint*(self: gen_qgraphicsitem_types.QGraphicsPathItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsPathItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPathItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsPathItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPathItem_opaqueArea(self.h))

proc typeX*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): cint =
  fcQGraphicsPathItem_typeX(self.h)

proc QGraphicsPathItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsPathItem_virtualbase_boundingRect(self.h))

type QGraphicsPathItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_boundingRect(self: ptr cQGraphicsPathItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsPathItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsPathItemshape*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsPathItem_virtualbase_shape(self.h))

type QGraphicsPathItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_shape(self: ptr cQGraphicsPathItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_shape ".} =
  var nimfunc = cast[ptr QGraphicsPathItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsPathItemcontains*(self: gen_qgraphicsitem_types.QGraphicsPathItem, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsPathItem_virtualbase_contains(self.h, point.h)

type QGraphicsPathItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_contains(self: ptr cQGraphicsPathItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_contains ".} =
  var nimfunc = cast[ptr QGraphicsPathItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPathItempaint*(self: gen_qgraphicsitem_types.QGraphicsPathItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsPathItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsPathItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItempaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_paint(self: ptr cQGraphicsPathItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_paint ".} =
  var nimfunc = cast[ptr QGraphicsPathItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsPathItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPathItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsPathItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsPathItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_isObscuredBy(self: ptr cQGraphicsPathItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsPathItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPathItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsPathItem_virtualbase_opaqueArea(self.h))

type QGraphicsPathItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_opaqueArea(self: ptr cQGraphicsPathItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsPathItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsPathItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): cint =
  fQGraphicsPathItem_virtualbase_type(self.h)

type QGraphicsPathItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_type(self: ptr cQGraphicsPathItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsPathItem_type ".} =
  var nimfunc = cast[ptr QGraphicsPathItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsPathItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsPathItem, extension: cint): bool =
  fQGraphicsPathItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsPathItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_supportsExtension(self: ptr cQGraphicsPathItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsPathItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPathItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsPathItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsPathItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsPathItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_setExtension(self: ptr cQGraphicsPathItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsPathItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsPathItemextension*(self: gen_qgraphicsitem_types.QGraphicsPathItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsPathItem_virtualbase_extension(self.h, variant.h))

type QGraphicsPathItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_extension(self: ptr cQGraphicsPathItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_extension ".} =
  var nimfunc = cast[ptr QGraphicsPathItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsPathItemadvance*(self: gen_qgraphicsitem_types.QGraphicsPathItem, phase: cint): void =
  fQGraphicsPathItem_virtualbase_advance(self.h, phase)

type QGraphicsPathItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_advance(self: ptr cQGraphicsPathItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_advance ".} =
  var nimfunc = cast[ptr QGraphicsPathItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsPathItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsPathItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsPathItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsPathItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_collidesWithItem(self: ptr cQGraphicsPathItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsPathItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsPathItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsPathItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsPathItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsPathItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_collidesWithPath(self: ptr cQGraphicsPathItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsPathItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsPathItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsPathItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsPathItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsPathItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_sceneEventFilter(self: ptr cQGraphicsPathItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsPathItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsPathItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsPathItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsPathItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_sceneEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPathItem_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPathItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsPathItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsPathItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_contextMenuEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPathItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsPathItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_dragEnterEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPathItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsPathItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_dragLeaveEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPathItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsPathItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_dragMoveEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPathItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsPathItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_dropEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsPathItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsPathItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_focusInEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsPathItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsPathItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_focusOutEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsPathItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsPathItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_hoverEnterEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsPathItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsPathItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_hoverMoveEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsPathItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsPathItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_hoverLeaveEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsPathItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsPathItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_keyPressEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsPathItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsPathItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_keyReleaseEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPathItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsPathItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_mousePressEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPathItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsPathItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_mouseMoveEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPathItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsPathItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_mouseReleaseEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPathItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsPathItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_mouseDoubleClickEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsPathItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsPathItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_wheelEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsPathItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsPathIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_inputMethodEvent(self: ptr cQGraphicsPathItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPathItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsPathIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPathIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsPathItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsPathItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsPathIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_inputMethodQuery(self: ptr cQGraphicsPathItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsPathIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsPathItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsPathItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsPathItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsPathItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QGraphicsPathItem, slot: QGraphicsPathItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsPathItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPathItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPathItem_itemChange(self: ptr cQGraphicsPathItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPathItem_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsPathItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QGraphicsPathItem) =
  fcQGraphicsPathItem_delete(self.h)

func init*(T: type gen_qgraphicsitem_types.QGraphicsRectItem, h: ptr cQGraphicsRectItem): gen_qgraphicsitem_types.QGraphicsRectItem =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem, ): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem.init(fcQGraphicsRectItem_new())

proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem, rect: gen_qrect_types.QRectF): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem.init(fcQGraphicsRectItem_new2(rect.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem, x: float64, y: float64, w: float64, h: float64): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem.init(fcQGraphicsRectItem_new3(x, y, w, h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem.init(fcQGraphicsRectItem_new4(parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem, rect: gen_qrect_types.QRectF, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem.init(fcQGraphicsRectItem_new5(rect.h, parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem, x: float64, y: float64, w: float64, h: float64, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsRectItem =
  gen_qgraphicsitem_types.QGraphicsRectItem.init(fcQGraphicsRectItem_new6(x, y, w, h, parent.h))

proc rect*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsRectItem_rect(self.h))

proc setRect*(self: gen_qgraphicsitem_types.QGraphicsRectItem, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsRectItem_setRect(self.h, rect.h)

proc setRect*(self: gen_qgraphicsitem_types.QGraphicsRectItem, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsRectItem_setRect2(self.h, x, y, w, h)

proc boundingRect*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsRectItem_boundingRect(self.h))

proc shape*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsRectItem_shape(self.h))

proc contains*(self: gen_qgraphicsitem_types.QGraphicsRectItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsRectItem_contains(self.h, point.h)

proc paint*(self: gen_qgraphicsitem_types.QGraphicsRectItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsRectItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsRectItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsRectItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsRectItem_opaqueArea(self.h))

proc typeX*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): cint =
  fcQGraphicsRectItem_typeX(self.h)

proc QGraphicsRectItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsRectItem_virtualbase_boundingRect(self.h))

type QGraphicsRectItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_boundingRect(self: ptr cQGraphicsRectItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsRectItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsRectItemshape*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsRectItem_virtualbase_shape(self.h))

type QGraphicsRectItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_shape(self: ptr cQGraphicsRectItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_shape ".} =
  var nimfunc = cast[ptr QGraphicsRectItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsRectItemcontains*(self: gen_qgraphicsitem_types.QGraphicsRectItem, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsRectItem_virtualbase_contains(self.h, point.h)

type QGraphicsRectItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_contains(self: ptr cQGraphicsRectItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_contains ".} =
  var nimfunc = cast[ptr QGraphicsRectItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsRectItempaint*(self: gen_qgraphicsitem_types.QGraphicsRectItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsRectItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsRectItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItempaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_paint(self: ptr cQGraphicsRectItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_paint ".} =
  var nimfunc = cast[ptr QGraphicsRectItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsRectItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsRectItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsRectItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsRectItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_isObscuredBy(self: ptr cQGraphicsRectItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsRectItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsRectItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsRectItem_virtualbase_opaqueArea(self.h))

type QGraphicsRectItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_opaqueArea(self: ptr cQGraphicsRectItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsRectItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsRectItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): cint =
  fQGraphicsRectItem_virtualbase_type(self.h)

type QGraphicsRectItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_type(self: ptr cQGraphicsRectItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsRectItem_type ".} =
  var nimfunc = cast[ptr QGraphicsRectItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsRectItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsRectItem, extension: cint): bool =
  fQGraphicsRectItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsRectItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_supportsExtension(self: ptr cQGraphicsRectItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsRectItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsRectItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsRectItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsRectItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsRectItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_setExtension(self: ptr cQGraphicsRectItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsRectItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsRectItemextension*(self: gen_qgraphicsitem_types.QGraphicsRectItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsRectItem_virtualbase_extension(self.h, variant.h))

type QGraphicsRectItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_extension(self: ptr cQGraphicsRectItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_extension ".} =
  var nimfunc = cast[ptr QGraphicsRectItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsRectItemadvance*(self: gen_qgraphicsitem_types.QGraphicsRectItem, phase: cint): void =
  fQGraphicsRectItem_virtualbase_advance(self.h, phase)

type QGraphicsRectItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_advance(self: ptr cQGraphicsRectItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_advance ".} =
  var nimfunc = cast[ptr QGraphicsRectItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsRectItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsRectItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsRectItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsRectItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_collidesWithItem(self: ptr cQGraphicsRectItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsRectItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsRectItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsRectItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsRectItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsRectItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_collidesWithPath(self: ptr cQGraphicsRectItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsRectItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsRectItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsRectItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsRectItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsRectItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_sceneEventFilter(self: ptr cQGraphicsRectItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsRectItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsRectItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsRectItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsRectItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_sceneEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRectItem_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsRectItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsRectItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsRectItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_contextMenuEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsRectItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsRectItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_dragEnterEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsRectItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsRectItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_dragLeaveEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsRectItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsRectItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_dragMoveEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsRectItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsRectItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_dropEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsRectItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsRectItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_focusInEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsRectItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsRectItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_focusOutEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsRectItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsRectItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_hoverEnterEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsRectItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsRectItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_hoverMoveEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsRectItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsRectItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_hoverLeaveEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsRectItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsRectItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_keyPressEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsRectItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsRectItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_keyReleaseEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsRectItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsRectItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_mousePressEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsRectItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsRectItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_mouseMoveEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsRectItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsRectItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_mouseReleaseEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsRectItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsRectItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_mouseDoubleClickEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsRectItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsRectItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_wheelEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsRectItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsRectIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_inputMethodEvent(self: ptr cQGraphicsRectItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRectItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsRectIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRectIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsRectItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsRectItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsRectIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_inputMethodQuery(self: ptr cQGraphicsRectItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsRectIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsRectItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsRectItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsRectItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsRectItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QGraphicsRectItem, slot: QGraphicsRectItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsRectItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRectItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRectItem_itemChange(self: ptr cQGraphicsRectItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsRectItem_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsRectItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QGraphicsRectItem) =
  fcQGraphicsRectItem_delete(self.h)

func init*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem, h: ptr cQGraphicsEllipseItem): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem, ): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new())

proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem, rect: gen_qrect_types.QRectF): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new2(rect.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem, x: float64, y: float64, w: float64, h: float64): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new3(x, y, w, h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new4(parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem, rect: gen_qrect_types.QRectF, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new5(rect.h, parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem, x: float64, y: float64, w: float64, h: float64, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  gen_qgraphicsitem_types.QGraphicsEllipseItem.init(fcQGraphicsEllipseItem_new6(x, y, w, h, parent.h))

proc rect*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEllipseItem_rect(self.h))

proc setRect*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsEllipseItem_setRect(self.h, rect.h)

proc setRect*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsEllipseItem_setRect2(self.h, x, y, w, h)

proc startAngle*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): cint =
  fcQGraphicsEllipseItem_startAngle(self.h)

proc setStartAngle*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, angle: cint): void =
  fcQGraphicsEllipseItem_setStartAngle(self.h, angle)

proc spanAngle*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): cint =
  fcQGraphicsEllipseItem_spanAngle(self.h)

proc setSpanAngle*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, angle: cint): void =
  fcQGraphicsEllipseItem_setSpanAngle(self.h, angle)

proc boundingRect*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEllipseItem_boundingRect(self.h))

proc shape*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsEllipseItem_shape(self.h))

proc contains*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsEllipseItem_contains(self.h, point.h)

proc paint*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsEllipseItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsEllipseItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsEllipseItem_opaqueArea(self.h))

proc typeX*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): cint =
  fcQGraphicsEllipseItem_typeX(self.h)

proc QGraphicsEllipseItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsEllipseItem_virtualbase_boundingRect(self.h))

type QGraphicsEllipseItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_boundingRect(self: ptr cQGraphicsEllipseItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsEllipseItemshape*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsEllipseItem_virtualbase_shape(self.h))

type QGraphicsEllipseItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_shape(self: ptr cQGraphicsEllipseItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_shape ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsEllipseItemcontains*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsEllipseItem_virtualbase_contains(self.h, point.h)

type QGraphicsEllipseItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_contains(self: ptr cQGraphicsEllipseItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_contains ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsEllipseItempaint*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsEllipseItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsEllipseItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItempaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_paint(self: ptr cQGraphicsEllipseItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_paint ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsEllipseItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsEllipseItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsEllipseItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_isObscuredBy(self: ptr cQGraphicsEllipseItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsEllipseItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsEllipseItem_virtualbase_opaqueArea(self.h))

type QGraphicsEllipseItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_opaqueArea(self: ptr cQGraphicsEllipseItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsEllipseItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): cint =
  fQGraphicsEllipseItem_virtualbase_type(self.h)

type QGraphicsEllipseItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_type(self: ptr cQGraphicsEllipseItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_type ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsEllipseItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, extension: cint): bool =
  fQGraphicsEllipseItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsEllipseItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_supportsExtension(self: ptr cQGraphicsEllipseItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsEllipseItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsEllipseItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsEllipseItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_setExtension(self: ptr cQGraphicsEllipseItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsEllipseItemextension*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsEllipseItem_virtualbase_extension(self.h, variant.h))

type QGraphicsEllipseItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_extension(self: ptr cQGraphicsEllipseItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_extension ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsEllipseItemadvance*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, phase: cint): void =
  fQGraphicsEllipseItem_virtualbase_advance(self.h, phase)

type QGraphicsEllipseItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_advance(self: ptr cQGraphicsEllipseItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_advance ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsEllipseItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsEllipseItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsEllipseItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_collidesWithItem(self: ptr cQGraphicsEllipseItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsEllipseItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsEllipseItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsEllipseItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_collidesWithPath(self: ptr cQGraphicsEllipseItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsEllipseItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsEllipseItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsEllipseItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_sceneEventFilter(self: ptr cQGraphicsEllipseItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsEllipseItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsEllipseItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsEllipseItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_sceneEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsEllipseItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsEllipseItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsEllipseItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_contextMenuEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsEllipseItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsEllipseItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_dragEnterEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsEllipseItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsEllipseItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_dragLeaveEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsEllipseItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsEllipseItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_dragMoveEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsEllipseItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsEllipseItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_dropEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsEllipseItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsEllipseItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_focusInEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsEllipseItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsEllipseItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_focusOutEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsEllipseItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsEllipseItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_hoverEnterEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsEllipseItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsEllipseItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_hoverMoveEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsEllipseItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsEllipseItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_hoverLeaveEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsEllipseItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsEllipseItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_keyPressEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsEllipseItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsEllipseItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_keyReleaseEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsEllipseItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsEllipseItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_mousePressEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsEllipseItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsEllipseItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_mouseMoveEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsEllipseItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsEllipseItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_mouseReleaseEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsEllipseItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_mouseDoubleClickEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsEllipseItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsEllipseItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_wheelEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsEllipseItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsEllipseIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_inputMethodEvent(self: ptr cQGraphicsEllipseItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsEllipseIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEllipseIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsEllipseItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsEllipseIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_inputMethodQuery(self: ptr cQGraphicsEllipseItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsEllipseIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsEllipseItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsEllipseItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsEllipseItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, slot: QGraphicsEllipseItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsEllipseItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEllipseItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEllipseItem_itemChange(self: ptr cQGraphicsEllipseItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsEllipseItem_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsEllipseItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem) =
  fcQGraphicsEllipseItem_delete(self.h)

func init*(T: type gen_qgraphicsitem_types.QGraphicsPolygonItem, h: ptr cQGraphicsPolygonItem): gen_qgraphicsitem_types.QGraphicsPolygonItem =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QGraphicsPolygonItem, ): gen_qgraphicsitem_types.QGraphicsPolygonItem =
  gen_qgraphicsitem_types.QGraphicsPolygonItem.init(fcQGraphicsPolygonItem_new())

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPolygonItem, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsPolygonItem =
  gen_qgraphicsitem_types.QGraphicsPolygonItem.init(fcQGraphicsPolygonItem_new2(parent.h))

proc fillRule*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): cint =
  cint(fcQGraphicsPolygonItem_fillRule(self.h))

proc setFillRule*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, rule: cint): void =
  fcQGraphicsPolygonItem_setFillRule(self.h, cint(rule))

proc boundingRect*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsPolygonItem_boundingRect(self.h))

proc shape*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPolygonItem_shape(self.h))

proc contains*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsPolygonItem_contains(self.h, point.h)

proc paint*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsPolygonItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsPolygonItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPolygonItem_opaqueArea(self.h))

proc typeX*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): cint =
  fcQGraphicsPolygonItem_typeX(self.h)

proc QGraphicsPolygonItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsPolygonItem_virtualbase_boundingRect(self.h))

type QGraphicsPolygonItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_boundingRect(self: ptr cQGraphicsPolygonItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsPolygonItemshape*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsPolygonItem_virtualbase_shape(self.h))

type QGraphicsPolygonItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_shape(self: ptr cQGraphicsPolygonItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_shape ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsPolygonItemcontains*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsPolygonItem_virtualbase_contains(self.h, point.h)

type QGraphicsPolygonItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_contains(self: ptr cQGraphicsPolygonItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_contains ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPolygonItempaint*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsPolygonItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsPolygonItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItempaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_paint(self: ptr cQGraphicsPolygonItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_paint ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsPolygonItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsPolygonItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsPolygonItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_isObscuredBy(self: ptr cQGraphicsPolygonItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPolygonItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsPolygonItem_virtualbase_opaqueArea(self.h))

type QGraphicsPolygonItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_opaqueArea(self: ptr cQGraphicsPolygonItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsPolygonItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): cint =
  fQGraphicsPolygonItem_virtualbase_type(self.h)

type QGraphicsPolygonItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_type(self: ptr cQGraphicsPolygonItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_type ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsPolygonItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, extension: cint): bool =
  fQGraphicsPolygonItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsPolygonItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_supportsExtension(self: ptr cQGraphicsPolygonItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPolygonItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsPolygonItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsPolygonItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_setExtension(self: ptr cQGraphicsPolygonItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsPolygonItemextension*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsPolygonItem_virtualbase_extension(self.h, variant.h))

type QGraphicsPolygonItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_extension(self: ptr cQGraphicsPolygonItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_extension ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsPolygonItemadvance*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, phase: cint): void =
  fQGraphicsPolygonItem_virtualbase_advance(self.h, phase)

type QGraphicsPolygonItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_advance(self: ptr cQGraphicsPolygonItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_advance ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsPolygonItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsPolygonItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsPolygonItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_collidesWithItem(self: ptr cQGraphicsPolygonItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsPolygonItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsPolygonItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsPolygonItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_collidesWithPath(self: ptr cQGraphicsPolygonItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsPolygonItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsPolygonItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsPolygonItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_sceneEventFilter(self: ptr cQGraphicsPolygonItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsPolygonItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsPolygonItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsPolygonItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_sceneEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPolygonItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsPolygonItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsPolygonItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_contextMenuEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPolygonItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsPolygonItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_dragEnterEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPolygonItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsPolygonItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_dragLeaveEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPolygonItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsPolygonItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_dragMoveEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPolygonItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsPolygonItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_dropEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsPolygonItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsPolygonItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_focusInEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsPolygonItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsPolygonItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_focusOutEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsPolygonItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsPolygonItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_hoverEnterEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsPolygonItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsPolygonItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_hoverMoveEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsPolygonItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsPolygonItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_hoverLeaveEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsPolygonItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsPolygonItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_keyPressEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsPolygonItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsPolygonItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_keyReleaseEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPolygonItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsPolygonItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_mousePressEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPolygonItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsPolygonItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_mouseMoveEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPolygonItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsPolygonItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_mouseReleaseEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsPolygonItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_mouseDoubleClickEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsPolygonItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsPolygonItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_wheelEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsPolygonItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsPolygonIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_inputMethodEvent(self: ptr cQGraphicsPolygonItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsPolygonIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPolygonIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsPolygonItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsPolygonIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_inputMethodQuery(self: ptr cQGraphicsPolygonItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsPolygonIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsPolygonItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsPolygonItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsPolygonItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, slot: QGraphicsPolygonItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsPolygonItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPolygonItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPolygonItem_itemChange(self: ptr cQGraphicsPolygonItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPolygonItem_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsPolygonItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem) =
  fcQGraphicsPolygonItem_delete(self.h)

func init*(T: type gen_qgraphicsitem_types.QGraphicsLineItem, h: ptr cQGraphicsLineItem): gen_qgraphicsitem_types.QGraphicsLineItem =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qgraphicsitem_types.QGraphicsLineItem =
  gen_qgraphicsitem_types.QGraphicsLineItem.init(fcQGraphicsLineItem_new())

proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem, line: gen_qline_types.QLineF): gen_qgraphicsitem_types.QGraphicsLineItem =
  gen_qgraphicsitem_types.QGraphicsLineItem.init(fcQGraphicsLineItem_new2(line.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem, x1: float64, y1: float64, x2: float64, y2: float64): gen_qgraphicsitem_types.QGraphicsLineItem =
  gen_qgraphicsitem_types.QGraphicsLineItem.init(fcQGraphicsLineItem_new3(x1, y1, x2, y2))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsLineItem =
  gen_qgraphicsitem_types.QGraphicsLineItem.init(fcQGraphicsLineItem_new4(parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem, line: gen_qline_types.QLineF, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsLineItem =
  gen_qgraphicsitem_types.QGraphicsLineItem.init(fcQGraphicsLineItem_new5(line.h, parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem, x1: float64, y1: float64, x2: float64, y2: float64, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsLineItem =
  gen_qgraphicsitem_types.QGraphicsLineItem.init(fcQGraphicsLineItem_new6(x1, y1, x2, y2, parent.h))

proc pen*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qpen_types.QPen =
  gen_qpen_types.QPen(h: fcQGraphicsLineItem_pen(self.h))

proc setPen*(self: gen_qgraphicsitem_types.QGraphicsLineItem, pen: gen_qpen_types.QPen): void =
  fcQGraphicsLineItem_setPen(self.h, pen.h)

proc line*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQGraphicsLineItem_line(self.h))

proc setLine*(self: gen_qgraphicsitem_types.QGraphicsLineItem, line: gen_qline_types.QLineF): void =
  fcQGraphicsLineItem_setLine(self.h, line.h)

proc setLine*(self: gen_qgraphicsitem_types.QGraphicsLineItem, x1: float64, y1: float64, x2: float64, y2: float64): void =
  fcQGraphicsLineItem_setLine2(self.h, x1, y1, x2, y2)

proc boundingRect*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsLineItem_boundingRect(self.h))

proc shape*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsLineItem_shape(self.h))

proc contains*(self: gen_qgraphicsitem_types.QGraphicsLineItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsLineItem_contains(self.h, point.h)

proc paint*(self: gen_qgraphicsitem_types.QGraphicsLineItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsLineItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsLineItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsLineItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsLineItem_opaqueArea(self.h))

proc typeX*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): cint =
  fcQGraphicsLineItem_typeX(self.h)

proc QGraphicsLineItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsLineItem_virtualbase_boundingRect(self.h))

type QGraphicsLineItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_boundingRect(self: ptr cQGraphicsLineItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsLineItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsLineItemshape*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsLineItem_virtualbase_shape(self.h))

type QGraphicsLineItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_shape(self: ptr cQGraphicsLineItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_shape ".} =
  var nimfunc = cast[ptr QGraphicsLineItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsLineItemcontains*(self: gen_qgraphicsitem_types.QGraphicsLineItem, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsLineItem_virtualbase_contains(self.h, point.h)

type QGraphicsLineItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_contains(self: ptr cQGraphicsLineItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_contains ".} =
  var nimfunc = cast[ptr QGraphicsLineItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsLineItempaint*(self: gen_qgraphicsitem_types.QGraphicsLineItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsLineItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsLineItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItempaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_paint(self: ptr cQGraphicsLineItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_paint ".} =
  var nimfunc = cast[ptr QGraphicsLineItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsLineItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsLineItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsLineItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsLineItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_isObscuredBy(self: ptr cQGraphicsLineItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsLineItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsLineItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsLineItem_virtualbase_opaqueArea(self.h))

type QGraphicsLineItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_opaqueArea(self: ptr cQGraphicsLineItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsLineItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsLineItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): cint =
  fQGraphicsLineItem_virtualbase_type(self.h)

type QGraphicsLineItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_type(self: ptr cQGraphicsLineItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsLineItem_type ".} =
  var nimfunc = cast[ptr QGraphicsLineItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsLineItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsLineItem, extension: cint): bool =
  fQGraphicsLineItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsLineItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_supportsExtension(self: ptr cQGraphicsLineItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsLineItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsLineItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsLineItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsLineItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsLineItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_setExtension(self: ptr cQGraphicsLineItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsLineItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsLineItemextension*(self: gen_qgraphicsitem_types.QGraphicsLineItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsLineItem_virtualbase_extension(self.h, variant.h))

type QGraphicsLineItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_extension(self: ptr cQGraphicsLineItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_extension ".} =
  var nimfunc = cast[ptr QGraphicsLineItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsLineItemadvance*(self: gen_qgraphicsitem_types.QGraphicsLineItem, phase: cint): void =
  fQGraphicsLineItem_virtualbase_advance(self.h, phase)

type QGraphicsLineItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_advance(self: ptr cQGraphicsLineItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_advance ".} =
  var nimfunc = cast[ptr QGraphicsLineItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsLineItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsLineItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsLineItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsLineItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_collidesWithItem(self: ptr cQGraphicsLineItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsLineItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsLineItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsLineItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsLineItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsLineItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_collidesWithPath(self: ptr cQGraphicsLineItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsLineItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsLineItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsLineItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsLineItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsLineItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_sceneEventFilter(self: ptr cQGraphicsLineItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsLineItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsLineItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsLineItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsLineItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_sceneEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsLineItem_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsLineItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsLineItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsLineItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_contextMenuEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsLineItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsLineItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_dragEnterEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsLineItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsLineItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_dragLeaveEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsLineItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsLineItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_dragMoveEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsLineItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsLineItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_dropEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsLineItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsLineItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_focusInEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsLineItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsLineItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_focusOutEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsLineItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsLineItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_hoverEnterEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsLineItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsLineItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_hoverMoveEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsLineItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsLineItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_hoverLeaveEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsLineItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsLineItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_keyPressEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsLineItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsLineItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_keyReleaseEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsLineItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsLineItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_mousePressEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsLineItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsLineItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_mouseMoveEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsLineItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsLineItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_mouseReleaseEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsLineItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsLineItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_mouseDoubleClickEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsLineItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsLineItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_wheelEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsLineItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsLineIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_inputMethodEvent(self: ptr cQGraphicsLineItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLineItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsLineIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsLineIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsLineItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsLineItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsLineIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_inputMethodQuery(self: ptr cQGraphicsLineItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsLineIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsLineItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsLineItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsLineItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsLineItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QGraphicsLineItem, slot: QGraphicsLineItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsLineItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLineItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLineItem_itemChange(self: ptr cQGraphicsLineItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsLineItem_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsLineItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QGraphicsLineItem) =
  fcQGraphicsLineItem_delete(self.h)

func init*(T: type gen_qgraphicsitem_types.QGraphicsPixmapItem, h: ptr cQGraphicsPixmapItem): gen_qgraphicsitem_types.QGraphicsPixmapItem =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qgraphicsitem_types.QGraphicsPixmapItem =
  gen_qgraphicsitem_types.QGraphicsPixmapItem.init(fcQGraphicsPixmapItem_new())

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPixmapItem, pixmap: gen_qpixmap_types.QPixmap): gen_qgraphicsitem_types.QGraphicsPixmapItem =
  gen_qgraphicsitem_types.QGraphicsPixmapItem.init(fcQGraphicsPixmapItem_new2(pixmap.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPixmapItem, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsPixmapItem =
  gen_qgraphicsitem_types.QGraphicsPixmapItem.init(fcQGraphicsPixmapItem_new3(parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPixmapItem, pixmap: gen_qpixmap_types.QPixmap, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsPixmapItem =
  gen_qgraphicsitem_types.QGraphicsPixmapItem.init(fcQGraphicsPixmapItem_new4(pixmap.h, parent.h))

proc pixmap*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsPixmapItem_pixmap(self.h))

proc setPixmap*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQGraphicsPixmapItem_setPixmap(self.h, pixmap.h)

proc transformationMode*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): cint =
  cint(fcQGraphicsPixmapItem_transformationMode(self.h))

proc setTransformationMode*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, mode: cint): void =
  fcQGraphicsPixmapItem_setTransformationMode(self.h, cint(mode))

proc offset*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsPixmapItem_offset(self.h))

proc setOffset*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, offset: gen_qpoint_types.QPointF): void =
  fcQGraphicsPixmapItem_setOffset(self.h, offset.h)

proc setOffset*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, x: float64, y: float64): void =
  fcQGraphicsPixmapItem_setOffset2(self.h, x, y)

proc boundingRect*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsPixmapItem_boundingRect(self.h))

proc shape*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPixmapItem_shape(self.h))

proc contains*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsPixmapItem_contains(self.h, point.h)

proc paint*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsPixmapItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsPixmapItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPixmapItem_opaqueArea(self.h))

proc typeX*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): cint =
  fcQGraphicsPixmapItem_typeX(self.h)

proc shapeMode*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): cint =
  cint(fcQGraphicsPixmapItem_shapeMode(self.h))

proc setShapeMode*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, mode: cint): void =
  fcQGraphicsPixmapItem_setShapeMode(self.h, cint(mode))

proc QGraphicsPixmapItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsPixmapItem_virtualbase_boundingRect(self.h))

type QGraphicsPixmapItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_boundingRect(self: ptr cQGraphicsPixmapItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsPixmapItemshape*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsPixmapItem_virtualbase_shape(self.h))

type QGraphicsPixmapItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_shape(self: ptr cQGraphicsPixmapItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_shape ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsPixmapItemcontains*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsPixmapItem_virtualbase_contains(self.h, point.h)

type QGraphicsPixmapItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_contains(self: ptr cQGraphicsPixmapItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_contains ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPixmapItempaint*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsPixmapItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsPixmapItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItempaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_paint(self: ptr cQGraphicsPixmapItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_paint ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsPixmapItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsPixmapItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsPixmapItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_isObscuredBy(self: ptr cQGraphicsPixmapItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPixmapItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsPixmapItem_virtualbase_opaqueArea(self.h))

type QGraphicsPixmapItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_opaqueArea(self: ptr cQGraphicsPixmapItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsPixmapItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): cint =
  fQGraphicsPixmapItem_virtualbase_type(self.h)

type QGraphicsPixmapItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_type(self: ptr cQGraphicsPixmapItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_type ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsPixmapItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, extension: cint): bool =
  fQGraphicsPixmapItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsPixmapItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_supportsExtension(self: ptr cQGraphicsPixmapItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPixmapItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsPixmapItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsPixmapItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_setExtension(self: ptr cQGraphicsPixmapItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsPixmapItemextension*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsPixmapItem_virtualbase_extension(self.h, variant.h))

type QGraphicsPixmapItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_extension(self: ptr cQGraphicsPixmapItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_extension ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsPixmapItemadvance*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, phase: cint): void =
  fQGraphicsPixmapItem_virtualbase_advance(self.h, phase)

type QGraphicsPixmapItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_advance(self: ptr cQGraphicsPixmapItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_advance ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsPixmapItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsPixmapItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsPixmapItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_collidesWithItem(self: ptr cQGraphicsPixmapItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsPixmapItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsPixmapItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsPixmapItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_collidesWithPath(self: ptr cQGraphicsPixmapItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsPixmapItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsPixmapItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsPixmapItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_sceneEventFilter(self: ptr cQGraphicsPixmapItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsPixmapItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsPixmapItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsPixmapItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_sceneEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsPixmapItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsPixmapItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsPixmapItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_contextMenuEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPixmapItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsPixmapItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_dragEnterEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPixmapItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsPixmapItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_dragLeaveEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPixmapItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsPixmapItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_dragMoveEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsPixmapItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsPixmapItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_dropEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsPixmapItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsPixmapItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_focusInEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsPixmapItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsPixmapItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_focusOutEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsPixmapItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsPixmapItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_hoverEnterEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsPixmapItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsPixmapItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_hoverMoveEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsPixmapItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsPixmapItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_hoverLeaveEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsPixmapItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsPixmapItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_keyPressEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsPixmapItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsPixmapItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_keyReleaseEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPixmapItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsPixmapItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_mousePressEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPixmapItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsPixmapItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_mouseMoveEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPixmapItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsPixmapItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_mouseReleaseEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsPixmapItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_mouseDoubleClickEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsPixmapItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsPixmapItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_wheelEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsPixmapItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsPixmapIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_inputMethodEvent(self: ptr cQGraphicsPixmapItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsPixmapIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsPixmapIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsPixmapItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsPixmapIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_inputMethodQuery(self: ptr cQGraphicsPixmapItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsPixmapIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsPixmapItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsPixmapItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsPixmapItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, slot: QGraphicsPixmapItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsPixmapItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsPixmapItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsPixmapItem_itemChange(self: ptr cQGraphicsPixmapItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsPixmapItem_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsPixmapItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem) =
  fcQGraphicsPixmapItem_delete(self.h)

func init*(T: type gen_qgraphicsitem_types.QGraphicsTextItem, h: ptr cQGraphicsTextItem): gen_qgraphicsitem_types.QGraphicsTextItem =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qgraphicsitem_types.QGraphicsTextItem =
  gen_qgraphicsitem_types.QGraphicsTextItem.init(fcQGraphicsTextItem_new())

proc create*(T: type gen_qgraphicsitem_types.QGraphicsTextItem, text: string): gen_qgraphicsitem_types.QGraphicsTextItem =
  gen_qgraphicsitem_types.QGraphicsTextItem.init(fcQGraphicsTextItem_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsTextItem, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsTextItem =
  gen_qgraphicsitem_types.QGraphicsTextItem.init(fcQGraphicsTextItem_new3(parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsTextItem, text: string, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsTextItem =
  gen_qgraphicsitem_types.QGraphicsTextItem.init(fcQGraphicsTextItem_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc metaObject*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsTextItem_metaObject(self.h))

proc metacast*(self: gen_qgraphicsitem_types.QGraphicsTextItem, param1: cstring): pointer =
  fcQGraphicsTextItem_metacast(self.h, param1)

proc tr*(_: type gen_qgraphicsitem_types.QGraphicsTextItem, s: cstring): string =
  let v_ms = fcQGraphicsTextItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toHtml*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): string =
  let v_ms = fcQGraphicsTextItem_toHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHtml*(self: gen_qgraphicsitem_types.QGraphicsTextItem, html: string): void =
  fcQGraphicsTextItem_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc toPlainText*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): string =
  let v_ms = fcQGraphicsTextItem_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPlainText*(self: gen_qgraphicsitem_types.QGraphicsTextItem, text: string): void =
  fcQGraphicsTextItem_setPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc font*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQGraphicsTextItem_font(self.h))

proc setFont*(self: gen_qgraphicsitem_types.QGraphicsTextItem, font: gen_qfont_types.QFont): void =
  fcQGraphicsTextItem_setFont(self.h, font.h)

proc setDefaultTextColor*(self: gen_qgraphicsitem_types.QGraphicsTextItem, c: gen_qcolor_types.QColor): void =
  fcQGraphicsTextItem_setDefaultTextColor(self.h, c.h)

proc defaultTextColor*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQGraphicsTextItem_defaultTextColor(self.h))

proc boundingRect*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsTextItem_boundingRect(self.h))

proc shape*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsTextItem_shape(self.h))

proc contains*(self: gen_qgraphicsitem_types.QGraphicsTextItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsTextItem_contains(self.h, point.h)

proc paint*(self: gen_qgraphicsitem_types.QGraphicsTextItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsTextItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsTextItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsTextItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsTextItem_opaqueArea(self.h))

proc typeX*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): cint =
  fcQGraphicsTextItem_typeX(self.h)

proc setTextWidth*(self: gen_qgraphicsitem_types.QGraphicsTextItem, width: float64): void =
  fcQGraphicsTextItem_setTextWidth(self.h, width)

proc textWidth*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): float64 =
  fcQGraphicsTextItem_textWidth(self.h)

proc adjustSize*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): void =
  fcQGraphicsTextItem_adjustSize(self.h)

proc setDocument*(self: gen_qgraphicsitem_types.QGraphicsTextItem, document: gen_qtextdocument_types.QTextDocument): void =
  fcQGraphicsTextItem_setDocument(self.h, document.h)

proc document*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQGraphicsTextItem_document(self.h))

proc setTextInteractionFlags*(self: gen_qgraphicsitem_types.QGraphicsTextItem, flags: cint): void =
  fcQGraphicsTextItem_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): cint =
  cint(fcQGraphicsTextItem_textInteractionFlags(self.h))

proc setTabChangesFocus*(self: gen_qgraphicsitem_types.QGraphicsTextItem, b: bool): void =
  fcQGraphicsTextItem_setTabChangesFocus(self.h, b)

proc tabChangesFocus*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): bool =
  fcQGraphicsTextItem_tabChangesFocus(self.h)

proc setOpenExternalLinks*(self: gen_qgraphicsitem_types.QGraphicsTextItem, open: bool): void =
  fcQGraphicsTextItem_setOpenExternalLinks(self.h, open)

proc openExternalLinks*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): bool =
  fcQGraphicsTextItem_openExternalLinks(self.h)

proc setTextCursor*(self: gen_qgraphicsitem_types.QGraphicsTextItem, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQGraphicsTextItem_setTextCursor(self.h, cursor.h)

proc textCursor*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQGraphicsTextItem_textCursor(self.h))

proc linkActivated*(self: gen_qgraphicsitem_types.QGraphicsTextItem, param1: string): void =
  fcQGraphicsTextItem_linkActivated(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QGraphicsTextItemlinkActivatedSlot* = proc(param1: string)
proc miqt_exec_callback_QGraphicsTextItem_linkActivated(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsTextItemlinkActivatedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc onlinkActivated*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemlinkActivatedSlot) =
  var tmp = new QGraphicsTextItemlinkActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_connect_linkActivated(self.h, cast[int](addr tmp[]))

proc linkHovered*(self: gen_qgraphicsitem_types.QGraphicsTextItem, param1: string): void =
  fcQGraphicsTextItem_linkHovered(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QGraphicsTextItemlinkHoveredSlot* = proc(param1: string)
proc miqt_exec_callback_QGraphicsTextItem_linkHovered(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsTextItemlinkHoveredSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc onlinkHovered*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemlinkHoveredSlot) =
  var tmp = new QGraphicsTextItemlinkHoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_connect_linkHovered(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qgraphicsitem_types.QGraphicsTextItem, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsTextItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicsitem_types.QGraphicsTextItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsTextItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QGraphicsTextItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsTextItem_virtualbase_boundingRect(self.h))

type QGraphicsTextItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_boundingRect(self: ptr cQGraphicsTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsTextItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsTextItemshape*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsTextItem_virtualbase_shape(self.h))

type QGraphicsTextItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_shape(self: ptr cQGraphicsTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_shape ".} =
  var nimfunc = cast[ptr QGraphicsTextItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsTextItemcontains*(self: gen_qgraphicsitem_types.QGraphicsTextItem, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsTextItem_virtualbase_contains(self.h, point.h)

type QGraphicsTextItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_contains(self: ptr cQGraphicsTextItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_contains ".} =
  var nimfunc = cast[ptr QGraphicsTextItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsTextItempaint*(self: gen_qgraphicsitem_types.QGraphicsTextItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsTextItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsTextItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItempaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_paint(self: ptr cQGraphicsTextItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_paint ".} =
  var nimfunc = cast[ptr QGraphicsTextItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsTextItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsTextItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsTextItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsTextItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_isObscuredBy(self: ptr cQGraphicsTextItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsTextItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsTextItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsTextItem_virtualbase_opaqueArea(self.h))

type QGraphicsTextItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_opaqueArea(self: ptr cQGraphicsTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsTextItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsTextItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): cint =
  fQGraphicsTextItem_virtualbase_type(self.h)

type QGraphicsTextItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_type(self: ptr cQGraphicsTextItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsTextItem_type ".} =
  var nimfunc = cast[ptr QGraphicsTextItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsTextItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsTextItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsTextItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_sceneEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsTextItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsTextItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsTextItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_mousePressEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsTextItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsTextItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_mouseMoveEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsTextItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsTextItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_mouseReleaseEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsTextItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsTextItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_mouseDoubleClickEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsTextItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsTextItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_contextMenuEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsTextItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsTextItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_keyPressEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsTextItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsTextItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_keyReleaseEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsTextItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsTextItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_focusInEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsTextItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsTextItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_focusOutEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsTextItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsTextItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_dragEnterEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsTextItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsTextItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_dragLeaveEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsTextItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsTextItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_dragMoveEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsTextItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsTextItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_dropEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsTextItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsTextIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_inputMethodEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsTextItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsTextItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_hoverEnterEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsTextItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsTextItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_hoverMoveEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsTextItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsTextItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_hoverLeaveEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsTextItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsTextItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsTextIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_inputMethodQuery(self: ptr cQGraphicsTextItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsTextIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsTextItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsTextItem, extension: cint): bool =
  fQGraphicsTextItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsTextItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_supportsExtension(self: ptr cQGraphicsTextItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsTextItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsTextItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsTextItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsTextItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsTextItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_setExtension(self: ptr cQGraphicsTextItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsTextItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsTextItemextension*(self: gen_qgraphicsitem_types.QGraphicsTextItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsTextItem_virtualbase_extension(self.h, variant.h))

type QGraphicsTextItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_extension(self: ptr cQGraphicsTextItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_extension ".} =
  var nimfunc = cast[ptr QGraphicsTextItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsTextItemevent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ev: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsTextItem_virtualbase_event(self.h, ev.h)

type QGraphicsTextItemeventProc* = proc(ev: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemeventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_event(self: ptr cQGraphicsTextItem, slot: int, ev: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_event ".} =
  var nimfunc = cast[ptr QGraphicsTextItemeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: ev)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsTextItemeventFilter*(self: gen_qgraphicsitem_types.QGraphicsTextItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsTextItem_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsTextItemeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemeventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_eventFilter(self: ptr cQGraphicsTextItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsTextItemeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsTextItemtimerEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsTextItem_virtualbase_timerEvent(self.h, event.h)

type QGraphicsTextItemtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemtimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_timerEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemchildEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsTextItem_virtualbase_childEvent(self.h, event.h)

type QGraphicsTextItemchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_childEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemcustomEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsTextItem_virtualbase_customEvent(self.h, event.h)

type QGraphicsTextItemcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_customEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsTextItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsTextItem_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsTextItemconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_connectNotify(self: ptr cQGraphicsTextItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsTextItemconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsTextItemdisconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsTextItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsTextItem_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsTextItemdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_disconnectNotify(self: ptr cQGraphicsTextItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsTextItemdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsTextItemadvance*(self: gen_qgraphicsitem_types.QGraphicsTextItem, phase: cint): void =
  fQGraphicsTextItem_virtualbase_advance(self.h, phase)

type QGraphicsTextItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_advance(self: ptr cQGraphicsTextItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_advance ".} =
  var nimfunc = cast[ptr QGraphicsTextItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsTextItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsTextItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsTextItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsTextItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_collidesWithItem(self: ptr cQGraphicsTextItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsTextItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsTextItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsTextItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsTextItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsTextItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_collidesWithPath(self: ptr cQGraphicsTextItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsTextItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsTextItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsTextItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsTextItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsTextItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_sceneEventFilter(self: ptr cQGraphicsTextItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTextItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsTextItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsTextItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsTextItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsTextItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_wheelEvent(self: ptr cQGraphicsTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTextItem_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsTextItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTextItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsTextItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsTextItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsTextItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsTextItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTextItem_itemChange(self: ptr cQGraphicsTextItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsTextItem_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsTextItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QGraphicsTextItem) =
  fcQGraphicsTextItem_delete(self.h)

func init*(T: type gen_qgraphicsitem_types.QGraphicsSimpleTextItem, h: ptr cQGraphicsSimpleTextItem): gen_qgraphicsitem_types.QGraphicsSimpleTextItem =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): gen_qgraphicsitem_types.QGraphicsSimpleTextItem =
  gen_qgraphicsitem_types.QGraphicsSimpleTextItem.init(fcQGraphicsSimpleTextItem_new())

proc create*(T: type gen_qgraphicsitem_types.QGraphicsSimpleTextItem, text: string): gen_qgraphicsitem_types.QGraphicsSimpleTextItem =
  gen_qgraphicsitem_types.QGraphicsSimpleTextItem.init(fcQGraphicsSimpleTextItem_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsSimpleTextItem, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsSimpleTextItem =
  gen_qgraphicsitem_types.QGraphicsSimpleTextItem.init(fcQGraphicsSimpleTextItem_new3(parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsSimpleTextItem, text: string, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsSimpleTextItem =
  gen_qgraphicsitem_types.QGraphicsSimpleTextItem.init(fcQGraphicsSimpleTextItem_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc setText*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, text: string): void =
  fcQGraphicsSimpleTextItem_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc text*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): string =
  let v_ms = fcQGraphicsSimpleTextItem_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFont*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, font: gen_qfont_types.QFont): void =
  fcQGraphicsSimpleTextItem_setFont(self.h, font.h)

proc font*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQGraphicsSimpleTextItem_font(self.h))

proc boundingRect*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsSimpleTextItem_boundingRect(self.h))

proc shape*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsSimpleTextItem_shape(self.h))

proc contains*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsSimpleTextItem_contains(self.h, point.h)

proc paint*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsSimpleTextItem_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsSimpleTextItem_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsSimpleTextItem_opaqueArea(self.h))

proc typeX*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): cint =
  fcQGraphicsSimpleTextItem_typeX(self.h)

proc QGraphicsSimpleTextItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsSimpleTextItem_virtualbase_boundingRect(self.h))

type QGraphicsSimpleTextItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_boundingRect(self: ptr cQGraphicsSimpleTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsSimpleTextItemshape*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsSimpleTextItem_virtualbase_shape(self.h))

type QGraphicsSimpleTextItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_shape(self: ptr cQGraphicsSimpleTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_shape ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsSimpleTextItemcontains*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsSimpleTextItem_virtualbase_contains(self.h, point.h)

type QGraphicsSimpleTextItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_contains(self: ptr cQGraphicsSimpleTextItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_contains ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsSimpleTextItempaint*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsSimpleTextItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsSimpleTextItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItempaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_paint(self: ptr cQGraphicsSimpleTextItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_paint ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsSimpleTextItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsSimpleTextItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsSimpleTextItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_isObscuredBy(self: ptr cQGraphicsSimpleTextItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsSimpleTextItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsSimpleTextItem_virtualbase_opaqueArea(self.h))

type QGraphicsSimpleTextItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_opaqueArea(self: ptr cQGraphicsSimpleTextItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsSimpleTextItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): cint =
  fQGraphicsSimpleTextItem_virtualbase_type(self.h)

type QGraphicsSimpleTextItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_type(self: ptr cQGraphicsSimpleTextItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_type ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsSimpleTextItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, extension: cint): bool =
  fQGraphicsSimpleTextItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsSimpleTextItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_supportsExtension(self: ptr cQGraphicsSimpleTextItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsSimpleTextItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsSimpleTextItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsSimpleTextItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_setExtension(self: ptr cQGraphicsSimpleTextItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsSimpleTextItemextension*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsSimpleTextItem_virtualbase_extension(self.h, variant.h))

type QGraphicsSimpleTextItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_extension(self: ptr cQGraphicsSimpleTextItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_extension ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsSimpleTextItemadvance*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, phase: cint): void =
  fQGraphicsSimpleTextItem_virtualbase_advance(self.h, phase)

type QGraphicsSimpleTextItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_advance(self: ptr cQGraphicsSimpleTextItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_advance ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsSimpleTextItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsSimpleTextItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_collidesWithItem(self: ptr cQGraphicsSimpleTextItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsSimpleTextItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsSimpleTextItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsSimpleTextItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_collidesWithPath(self: ptr cQGraphicsSimpleTextItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsSimpleTextItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsSimpleTextItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsSimpleTextItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_sceneEventFilter(self: ptr cQGraphicsSimpleTextItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsSimpleTextItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsSimpleTextItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsSimpleTextItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_sceneEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsSimpleTextItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsSimpleTextItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_contextMenuEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsSimpleTextItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_dragEnterEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsSimpleTextItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_dragLeaveEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsSimpleTextItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_dragMoveEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsSimpleTextItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_dropEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsSimpleTextItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_focusInEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsSimpleTextItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_focusOutEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsSimpleTextItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_hoverEnterEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsSimpleTextItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_hoverMoveEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsSimpleTextItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_hoverLeaveEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsSimpleTextItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_keyPressEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsSimpleTextItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_keyReleaseEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsSimpleTextItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_mousePressEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsSimpleTextItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_mouseMoveEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsSimpleTextItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_mouseReleaseEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsSimpleTextItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_mouseDoubleClickEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsSimpleTextItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_wheelEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsSimpleTextItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsSimpleTextIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_inputMethodEvent(self: ptr cQGraphicsSimpleTextItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSimpleTextIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsSimpleTextItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsSimpleTextIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_inputMethodQuery(self: ptr cQGraphicsSimpleTextItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsSimpleTextItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsSimpleTextItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsSimpleTextItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, slot: QGraphicsSimpleTextItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsSimpleTextItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSimpleTextItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSimpleTextItem_itemChange(self: ptr cQGraphicsSimpleTextItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsSimpleTextItem_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsSimpleTextItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem) =
  fcQGraphicsSimpleTextItem_delete(self.h)

func init*(T: type gen_qgraphicsitem_types.QGraphicsItemGroup, h: ptr cQGraphicsItemGroup): gen_qgraphicsitem_types.QGraphicsItemGroup =
  T(h: h)
proc create*(T: type gen_qgraphicsitem_types.QGraphicsItemGroup, ): gen_qgraphicsitem_types.QGraphicsItemGroup =
  gen_qgraphicsitem_types.QGraphicsItemGroup.init(fcQGraphicsItemGroup_new())

proc create*(T: type gen_qgraphicsitem_types.QGraphicsItemGroup, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsitem_types.QGraphicsItemGroup =
  gen_qgraphicsitem_types.QGraphicsItemGroup.init(fcQGraphicsItemGroup_new2(parent.h))

proc addToGroup*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsItemGroup_addToGroup(self.h, item.h)

proc removeFromGroup*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsItemGroup_removeFromGroup(self.h, item.h)

proc boundingRect*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItemGroup_boundingRect(self.h))

proc paint*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsItemGroup_paint(self.h, painter.h, option.h, widget.h)

proc isObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsItemGroup_isObscuredBy(self.h, item.h)

proc opaqueArea*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItemGroup_opaqueArea(self.h))

proc typeX*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): cint =
  fcQGraphicsItemGroup_typeX(self.h)

proc QGraphicsItemGroupboundingRect*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsItemGroup_virtualbase_boundingRect(self.h))

type QGraphicsItemGroupboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_boundingRect(self: ptr cQGraphicsItemGroup, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsItemGrouppaint*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsItemGroup_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsItemGrouppaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGrouppaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGrouppaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_paint(self: ptr cQGraphicsItemGroup, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_paint ".} =
  var nimfunc = cast[ptr QGraphicsItemGrouppaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsItemGroupisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsItemGroup_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsItemGroupisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_isObscuredBy(self: ptr cQGraphicsItemGroup, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsItemGroupopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsItemGroup_virtualbase_opaqueArea(self.h))

type QGraphicsItemGroupopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_opaqueArea(self: ptr cQGraphicsItemGroup, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsItemGrouptypeX*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): cint =
  fQGraphicsItemGroup_virtualbase_type(self.h)

type QGraphicsItemGrouptypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGrouptypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGrouptypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_type(self: ptr cQGraphicsItemGroup, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsItemGroup_type ".} =
  var nimfunc = cast[ptr QGraphicsItemGrouptypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsItemGroupadvance*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, phase: cint): void =
  fQGraphicsItemGroup_virtualbase_advance(self.h, phase)

type QGraphicsItemGroupadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_advance(self: ptr cQGraphicsItemGroup, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_advance ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsItemGroupshape*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsItemGroup_virtualbase_shape(self.h))

type QGraphicsItemGroupshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_shape(self: ptr cQGraphicsItemGroup, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_shape ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsItemGroupcontains*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsItemGroup_virtualbase_contains(self.h, point.h)

type QGraphicsItemGroupcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_contains(self: ptr cQGraphicsItemGroup, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_contains ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsItemGroupcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsItemGroup_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsItemGroupcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_collidesWithItem(self: ptr cQGraphicsItemGroup, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsItemGroupcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsItemGroup_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsItemGroupcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_collidesWithPath(self: ptr cQGraphicsItemGroup, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsItemGroupsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsItemGroup_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsItemGroupsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_sceneEventFilter(self: ptr cQGraphicsItemGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsItemGroupsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsItemGroup_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsItemGroupsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_sceneEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsItemGroupcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsItemGroup_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsItemGroupcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_contextMenuEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsItemGroup_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsItemGroupdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_dragEnterEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsItemGroup_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsItemGroupdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_dragLeaveEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsItemGroup_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsItemGroupdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_dragMoveEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupdropEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsItemGroup_virtualbase_dropEvent(self.h, event.h)

type QGraphicsItemGroupdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_dropEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsItemGroup_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsItemGroupfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_focusInEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsItemGroup_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsItemGroupfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_focusOutEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGrouphoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsItemGroup_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsItemGrouphoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGrouphoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGrouphoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_hoverEnterEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGrouphoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGrouphoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsItemGroup_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsItemGrouphoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGrouphoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGrouphoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_hoverMoveEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGrouphoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGrouphoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsItemGroup_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsItemGrouphoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGrouphoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGrouphoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_hoverLeaveEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGrouphoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsItemGroup_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsItemGroupkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_keyPressEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsItemGroup_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsItemGroupkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_keyReleaseEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsItemGroup_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsItemGroupmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_mousePressEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsItemGroup_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsItemGroupmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_mouseMoveEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsItemGroup_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsItemGroupmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_mouseReleaseEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsItemGroup_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsItemGroupmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_mouseDoubleClickEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsItemGroup_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsItemGroupwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_wheelEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupinputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsItemGroup_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsItemGroupinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_inputMethodEvent(self: ptr cQGraphicsItemGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemGroupinputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsItemGroup_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsItemGroupinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_inputMethodQuery(self: ptr cQGraphicsItemGroup, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsItemGroupitemChange*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsItemGroup_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsItemGroupitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_itemChange(self: ptr cQGraphicsItemGroup, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsItemGroupsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, extension: cint): bool =
  fQGraphicsItemGroup_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsItemGroupsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_supportsExtension(self: ptr cQGraphicsItemGroup, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsItemGroup_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsItemGroupsetExtension*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsItemGroup_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsItemGroupsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_setExtension(self: ptr cQGraphicsItemGroup, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemGroup_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsItemGroupextension*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsItemGroup_virtualbase_extension(self.h, variant.h))

type QGraphicsItemGroupextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, slot: QGraphicsItemGroupextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemGroupextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemGroup_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemGroup_extension(self: ptr cQGraphicsItemGroup, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsItemGroup_extension ".} =
  var nimfunc = cast[ptr QGraphicsItemGroupextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc delete*(self: gen_qgraphicsitem_types.QGraphicsItemGroup) =
  fcQGraphicsItemGroup_delete(self.h)
