import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
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
template ItemMatrixChange*(_: type QGraphicsItemGraphicsItemChangeEnum): untyped = 1
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
  ../QtGui/gen_qmatrix_types,
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
  gen_qmatrix_types,
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
proc fcQGraphicsItem_matrix(self: pointer, ): pointer {.importc: "QGraphicsItem_matrix".}
proc fcQGraphicsItem_sceneMatrix(self: pointer, ): pointer {.importc: "QGraphicsItem_sceneMatrix".}
proc fcQGraphicsItem_setMatrix(self: pointer, matrix: pointer): void {.importc: "QGraphicsItem_setMatrix".}
proc fcQGraphicsItem_resetMatrix(self: pointer, ): void {.importc: "QGraphicsItem_resetMatrix".}
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
proc fcQGraphicsItem_setMatrix2(self: pointer, matrix: pointer, combine: bool): void {.importc: "QGraphicsItem_setMatrix2".}
proc fcQGraphicsItem_itemTransform2(self: pointer, other: pointer, ok: ptr bool): pointer {.importc: "QGraphicsItem_itemTransform2".}
proc fcQGraphicsItem_setTransform2(self: pointer, matrix: pointer, combine: bool): void {.importc: "QGraphicsItem_setTransform2".}
proc fcQGraphicsItem_collidingItems1(self: pointer, mode: cint): struct_miqt_array {.importc: "QGraphicsItem_collidingItems1".}
proc fcQGraphicsItem_isObscured1(self: pointer, rect: pointer): bool {.importc: "QGraphicsItem_isObscured1".}
proc fcQGraphicsItem_update1(self: pointer, rect: pointer): void {.importc: "QGraphicsItem_update1".}
proc fcQGraphicsItem_scroll3(self: pointer, dx: float64, dy: float64, rect: pointer): void {.importc: "QGraphicsItem_scroll3".}
type cQGraphicsItemVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsItemVTable, self: ptr cQGraphicsItem) {.cdecl, raises:[], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsItem_virtualbase_advance".}
proc fcQGraphicsItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsItem_virtualbase_shape".}
proc fcQGraphicsItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsItem_virtualbase_contains".}
proc fcQGraphicsItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsItem_virtualbase_collidesWithItem".}
proc fcQGraphicsItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsItem_virtualbase_collidesWithPath".}
proc fcQGraphicsItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsItem_virtualbase_isObscuredBy".}
proc fcQGraphicsItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsItem_virtualbase_opaqueArea".}
proc fcQGraphicsItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsItem_virtualbase_type".}
proc fcQGraphicsItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsItem_virtualbase_sceneEvent".}
proc fcQGraphicsItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_dropEvent".}
proc fcQGraphicsItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_focusInEvent".}
proc fcQGraphicsItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_focusOutEvent".}
proc fcQGraphicsItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_keyPressEvent".}
proc fcQGraphicsItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_mousePressEvent".}
proc fcQGraphicsItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_wheelEvent".}
proc fcQGraphicsItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsItem_virtualbase_itemChange".}
proc fcQGraphicsItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsItem_virtualbase_supportsExtension".}
proc fcQGraphicsItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsItem_virtualbase_setExtension".}
proc fcQGraphicsItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsItem_virtualbase_extension".}
proc fcQGraphicsItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsItem_protectedbase_addToIndex".}
proc fcQGraphicsItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsItem_protectedbase_removeFromIndex".}
proc fcQGraphicsItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsItem_new(vtbl: pointer, ): ptr cQGraphicsItem {.importc: "QGraphicsItem_new".}
proc fcQGraphicsItem_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsItem {.importc: "QGraphicsItem_new2".}
proc fcQGraphicsItem_delete(self: pointer) {.importc: "QGraphicsItem_delete".}
proc fcQGraphicsObject_metaObject(self: pointer, ): pointer {.importc: "QGraphicsObject_metaObject".}
proc fcQGraphicsObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsObject_metacast".}
proc fcQGraphicsObject_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsObject_metacall".}
proc fcQGraphicsObject_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsObject_tr".}
proc fcQGraphicsObject_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsObject_trUtf8".}
proc fcQGraphicsObject_grabGesture(self: pointer, typeVal: cint): void {.importc: "QGraphicsObject_grabGesture".}
proc fcQGraphicsObject_ungrabGesture(self: pointer, typeVal: cint): void {.importc: "QGraphicsObject_ungrabGesture".}
proc fcQGraphicsObject_parentChanged(self: pointer, ): void {.importc: "QGraphicsObject_parentChanged".}
proc fcQGraphicsObject_connect_parentChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_parentChanged".}
proc fcQGraphicsObject_opacityChanged(self: pointer, ): void {.importc: "QGraphicsObject_opacityChanged".}
proc fcQGraphicsObject_connect_opacityChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_opacityChanged".}
proc fcQGraphicsObject_visibleChanged(self: pointer, ): void {.importc: "QGraphicsObject_visibleChanged".}
proc fcQGraphicsObject_connect_visibleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_visibleChanged".}
proc fcQGraphicsObject_enabledChanged(self: pointer, ): void {.importc: "QGraphicsObject_enabledChanged".}
proc fcQGraphicsObject_connect_enabledChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_enabledChanged".}
proc fcQGraphicsObject_xChanged(self: pointer, ): void {.importc: "QGraphicsObject_xChanged".}
proc fcQGraphicsObject_connect_xChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_xChanged".}
proc fcQGraphicsObject_yChanged(self: pointer, ): void {.importc: "QGraphicsObject_yChanged".}
proc fcQGraphicsObject_connect_yChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_yChanged".}
proc fcQGraphicsObject_zChanged(self: pointer, ): void {.importc: "QGraphicsObject_zChanged".}
proc fcQGraphicsObject_connect_zChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_zChanged".}
proc fcQGraphicsObject_rotationChanged(self: pointer, ): void {.importc: "QGraphicsObject_rotationChanged".}
proc fcQGraphicsObject_connect_rotationChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_rotationChanged".}
proc fcQGraphicsObject_scaleChanged(self: pointer, ): void {.importc: "QGraphicsObject_scaleChanged".}
proc fcQGraphicsObject_connect_scaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_scaleChanged".}
proc fcQGraphicsObject_childrenChanged(self: pointer, ): void {.importc: "QGraphicsObject_childrenChanged".}
proc fcQGraphicsObject_connect_childrenChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_childrenChanged".}
proc fcQGraphicsObject_widthChanged(self: pointer, ): void {.importc: "QGraphicsObject_widthChanged".}
proc fcQGraphicsObject_connect_widthChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_widthChanged".}
proc fcQGraphicsObject_heightChanged(self: pointer, ): void {.importc: "QGraphicsObject_heightChanged".}
proc fcQGraphicsObject_connect_heightChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsObject_connect_heightChanged".}
proc fcQGraphicsObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsObject_tr2".}
proc fcQGraphicsObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsObject_tr3".}
proc fcQGraphicsObject_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsObject_trUtf82".}
proc fcQGraphicsObject_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsObject_trUtf83".}
proc fcQGraphicsObject_grabGesture2(self: pointer, typeVal: cint, flags: cint): void {.importc: "QGraphicsObject_grabGesture2".}
type cQGraphicsObjectVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsObjectVTable, self: ptr cQGraphicsObject) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, ev: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsObject_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsObject_virtualbase_metaObject".}
proc fcQGraphicsObject_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsObject_virtualbase_metacast".}
proc fcQGraphicsObject_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsObject_virtualbase_metacall".}
proc fcQGraphicsObject_virtualbase_event(self: pointer, ev: pointer): bool {.importc: "QGraphicsObject_virtualbase_event".}
proc fcQGraphicsObject_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsObject_virtualbase_eventFilter".}
proc fcQGraphicsObject_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_timerEvent".}
proc fcQGraphicsObject_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_childEvent".}
proc fcQGraphicsObject_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_customEvent".}
proc fcQGraphicsObject_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsObject_virtualbase_connectNotify".}
proc fcQGraphicsObject_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsObject_virtualbase_disconnectNotify".}
proc fcQGraphicsObject_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsObject_virtualbase_advance".}
proc fcQGraphicsObject_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsObject_virtualbase_shape".}
proc fcQGraphicsObject_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsObject_virtualbase_contains".}
proc fcQGraphicsObject_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsObject_virtualbase_collidesWithItem".}
proc fcQGraphicsObject_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsObject_virtualbase_collidesWithPath".}
proc fcQGraphicsObject_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsObject_virtualbase_isObscuredBy".}
proc fcQGraphicsObject_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsObject_virtualbase_opaqueArea".}
proc fcQGraphicsObject_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsObject_virtualbase_type".}
proc fcQGraphicsObject_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsObject_virtualbase_sceneEventFilter".}
proc fcQGraphicsObject_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsObject_virtualbase_sceneEvent".}
proc fcQGraphicsObject_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_contextMenuEvent".}
proc fcQGraphicsObject_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_dragEnterEvent".}
proc fcQGraphicsObject_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_dragLeaveEvent".}
proc fcQGraphicsObject_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_dragMoveEvent".}
proc fcQGraphicsObject_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_dropEvent".}
proc fcQGraphicsObject_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_focusInEvent".}
proc fcQGraphicsObject_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_focusOutEvent".}
proc fcQGraphicsObject_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_hoverEnterEvent".}
proc fcQGraphicsObject_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_hoverMoveEvent".}
proc fcQGraphicsObject_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsObject_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_keyPressEvent".}
proc fcQGraphicsObject_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_keyReleaseEvent".}
proc fcQGraphicsObject_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_mousePressEvent".}
proc fcQGraphicsObject_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_mouseMoveEvent".}
proc fcQGraphicsObject_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsObject_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsObject_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_wheelEvent".}
proc fcQGraphicsObject_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsObject_virtualbase_inputMethodEvent".}
proc fcQGraphicsObject_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsObject_virtualbase_inputMethodQuery".}
proc fcQGraphicsObject_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsObject_virtualbase_itemChange".}
proc fcQGraphicsObject_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsObject_virtualbase_supportsExtension".}
proc fcQGraphicsObject_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsObject_virtualbase_setExtension".}
proc fcQGraphicsObject_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsObject_virtualbase_extension".}
proc fcQGraphicsObject_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsObject_protectedbase_updateMicroFocus".}
proc fcQGraphicsObject_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsObject_protectedbase_sender".}
proc fcQGraphicsObject_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsObject_protectedbase_senderSignalIndex".}
proc fcQGraphicsObject_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsObject_protectedbase_receivers".}
proc fcQGraphicsObject_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsObject_protectedbase_isSignalConnected".}
proc fcQGraphicsObject_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsObject_protectedbase_addToIndex".}
proc fcQGraphicsObject_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsObject_protectedbase_removeFromIndex".}
proc fcQGraphicsObject_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsObject_protectedbase_prepareGeometryChange".}
proc fcQGraphicsObject_new(vtbl: pointer, ): ptr cQGraphicsObject {.importc: "QGraphicsObject_new".}
proc fcQGraphicsObject_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsObject {.importc: "QGraphicsObject_new2".}
proc fcQGraphicsObject_staticMetaObject(): pointer {.importc: "QGraphicsObject_staticMetaObject".}
proc fcQGraphicsObject_delete(self: pointer) {.importc: "QGraphicsObject_delete".}
proc fcQAbstractGraphicsShapeItem_pen(self: pointer, ): pointer {.importc: "QAbstractGraphicsShapeItem_pen".}
proc fcQAbstractGraphicsShapeItem_setPen(self: pointer, pen: pointer): void {.importc: "QAbstractGraphicsShapeItem_setPen".}
proc fcQAbstractGraphicsShapeItem_brush(self: pointer, ): pointer {.importc: "QAbstractGraphicsShapeItem_brush".}
proc fcQAbstractGraphicsShapeItem_setBrush(self: pointer, brush: pointer): void {.importc: "QAbstractGraphicsShapeItem_setBrush".}
proc fcQAbstractGraphicsShapeItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QAbstractGraphicsShapeItem_isObscuredBy".}
proc fcQAbstractGraphicsShapeItem_opaqueArea(self: pointer, ): pointer {.importc: "QAbstractGraphicsShapeItem_opaqueArea".}
type cQAbstractGraphicsShapeItemVTable = object
  destructor*: proc(vtbl: ptr cQAbstractGraphicsShapeItemVTable, self: ptr cQAbstractGraphicsShapeItem) {.cdecl, raises:[], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAbstractGraphicsShapeItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QAbstractGraphicsShapeItem_virtualbase_isObscuredBy".}
proc fcQAbstractGraphicsShapeItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QAbstractGraphicsShapeItem_virtualbase_opaqueArea".}
proc fcQAbstractGraphicsShapeItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_advance".}
proc fcQAbstractGraphicsShapeItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QAbstractGraphicsShapeItem_virtualbase_shape".}
proc fcQAbstractGraphicsShapeItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QAbstractGraphicsShapeItem_virtualbase_contains".}
proc fcQAbstractGraphicsShapeItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QAbstractGraphicsShapeItem_virtualbase_collidesWithItem".}
proc fcQAbstractGraphicsShapeItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QAbstractGraphicsShapeItem_virtualbase_collidesWithPath".}
proc fcQAbstractGraphicsShapeItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QAbstractGraphicsShapeItem_virtualbase_type".}
proc fcQAbstractGraphicsShapeItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractGraphicsShapeItem_virtualbase_sceneEventFilter".}
proc fcQAbstractGraphicsShapeItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QAbstractGraphicsShapeItem_virtualbase_sceneEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_contextMenuEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_dragEnterEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_dragMoveEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_dropEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_focusInEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_focusOutEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_keyPressEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_mousePressEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_wheelEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_inputMethodEvent".}
proc fcQAbstractGraphicsShapeItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QAbstractGraphicsShapeItem_virtualbase_inputMethodQuery".}
proc fcQAbstractGraphicsShapeItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QAbstractGraphicsShapeItem_virtualbase_itemChange".}
proc fcQAbstractGraphicsShapeItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QAbstractGraphicsShapeItem_virtualbase_supportsExtension".}
proc fcQAbstractGraphicsShapeItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QAbstractGraphicsShapeItem_virtualbase_setExtension".}
proc fcQAbstractGraphicsShapeItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QAbstractGraphicsShapeItem_virtualbase_extension".}
proc fcQAbstractGraphicsShapeItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QAbstractGraphicsShapeItem_protectedbase_updateMicroFocus".}
proc fcQAbstractGraphicsShapeItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QAbstractGraphicsShapeItem_protectedbase_addToIndex".}
proc fcQAbstractGraphicsShapeItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QAbstractGraphicsShapeItem_protectedbase_removeFromIndex".}
proc fcQAbstractGraphicsShapeItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QAbstractGraphicsShapeItem_protectedbase_prepareGeometryChange".}
proc fcQAbstractGraphicsShapeItem_new(vtbl: pointer, ): ptr cQAbstractGraphicsShapeItem {.importc: "QAbstractGraphicsShapeItem_new".}
proc fcQAbstractGraphicsShapeItem_new2(vtbl: pointer, parent: pointer): ptr cQAbstractGraphicsShapeItem {.importc: "QAbstractGraphicsShapeItem_new2".}
proc fcQAbstractGraphicsShapeItem_delete(self: pointer) {.importc: "QAbstractGraphicsShapeItem_delete".}
proc fcQGraphicsPathItem_path(self: pointer, ): pointer {.importc: "QGraphicsPathItem_path".}
proc fcQGraphicsPathItem_setPath(self: pointer, path: pointer): void {.importc: "QGraphicsPathItem_setPath".}
proc fcQGraphicsPathItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsPathItem_boundingRect".}
proc fcQGraphicsPathItem_shape(self: pointer, ): pointer {.importc: "QGraphicsPathItem_shape".}
proc fcQGraphicsPathItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsPathItem_contains".}
proc fcQGraphicsPathItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsPathItem_paint".}
proc fcQGraphicsPathItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsPathItem_isObscuredBy".}
proc fcQGraphicsPathItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsPathItem_opaqueArea".}
proc fcQGraphicsPathItem_typeX(self: pointer, ): cint {.importc: "QGraphicsPathItem_type".}
type cQGraphicsPathItemVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsPathItemVTable, self: ptr cQGraphicsPathItem) {.cdecl, raises:[], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsPathItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsPathItem_virtualbase_boundingRect".}
proc fcQGraphicsPathItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsPathItem_virtualbase_shape".}
proc fcQGraphicsPathItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsPathItem_virtualbase_contains".}
proc fcQGraphicsPathItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsPathItem_virtualbase_paint".}
proc fcQGraphicsPathItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsPathItem_virtualbase_isObscuredBy".}
proc fcQGraphicsPathItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsPathItem_virtualbase_opaqueArea".}
proc fcQGraphicsPathItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsPathItem_virtualbase_type".}
proc fcQGraphicsPathItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsPathItem_virtualbase_supportsExtension".}
proc fcQGraphicsPathItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsPathItem_virtualbase_setExtension".}
proc fcQGraphicsPathItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsPathItem_virtualbase_extension".}
proc fcQGraphicsPathItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsPathItem_virtualbase_advance".}
proc fcQGraphicsPathItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsPathItem_virtualbase_collidesWithItem".}
proc fcQGraphicsPathItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsPathItem_virtualbase_collidesWithPath".}
proc fcQGraphicsPathItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsPathItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsPathItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsPathItem_virtualbase_sceneEvent".}
proc fcQGraphicsPathItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsPathItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsPathItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsPathItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsPathItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_dropEvent".}
proc fcQGraphicsPathItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_focusInEvent".}
proc fcQGraphicsPathItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_focusOutEvent".}
proc fcQGraphicsPathItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsPathItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsPathItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsPathItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_keyPressEvent".}
proc fcQGraphicsPathItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsPathItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_mousePressEvent".}
proc fcQGraphicsPathItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsPathItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsPathItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsPathItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_wheelEvent".}
proc fcQGraphicsPathItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPathItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsPathItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsPathItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsPathItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsPathItem_virtualbase_itemChange".}
proc fcQGraphicsPathItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsPathItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsPathItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsPathItem_protectedbase_addToIndex".}
proc fcQGraphicsPathItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsPathItem_protectedbase_removeFromIndex".}
proc fcQGraphicsPathItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsPathItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsPathItem_new(vtbl: pointer, ): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new".}
proc fcQGraphicsPathItem_new2(vtbl: pointer, path: pointer): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new2".}
proc fcQGraphicsPathItem_new3(vtbl: pointer, parent: pointer): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new3".}
proc fcQGraphicsPathItem_new4(vtbl: pointer, path: pointer, parent: pointer): ptr cQGraphicsPathItem {.importc: "QGraphicsPathItem_new4".}
proc fcQGraphicsPathItem_delete(self: pointer) {.importc: "QGraphicsPathItem_delete".}
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
type cQGraphicsRectItemVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsRectItemVTable, self: ptr cQGraphicsRectItem) {.cdecl, raises:[], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsRectItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsRectItem_virtualbase_boundingRect".}
proc fcQGraphicsRectItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsRectItem_virtualbase_shape".}
proc fcQGraphicsRectItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsRectItem_virtualbase_contains".}
proc fcQGraphicsRectItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsRectItem_virtualbase_paint".}
proc fcQGraphicsRectItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsRectItem_virtualbase_isObscuredBy".}
proc fcQGraphicsRectItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsRectItem_virtualbase_opaqueArea".}
proc fcQGraphicsRectItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsRectItem_virtualbase_type".}
proc fcQGraphicsRectItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsRectItem_virtualbase_supportsExtension".}
proc fcQGraphicsRectItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsRectItem_virtualbase_setExtension".}
proc fcQGraphicsRectItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsRectItem_virtualbase_extension".}
proc fcQGraphicsRectItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsRectItem_virtualbase_advance".}
proc fcQGraphicsRectItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsRectItem_virtualbase_collidesWithItem".}
proc fcQGraphicsRectItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsRectItem_virtualbase_collidesWithPath".}
proc fcQGraphicsRectItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsRectItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsRectItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsRectItem_virtualbase_sceneEvent".}
proc fcQGraphicsRectItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsRectItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsRectItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsRectItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsRectItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_dropEvent".}
proc fcQGraphicsRectItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_focusInEvent".}
proc fcQGraphicsRectItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_focusOutEvent".}
proc fcQGraphicsRectItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsRectItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsRectItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsRectItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_keyPressEvent".}
proc fcQGraphicsRectItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsRectItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_mousePressEvent".}
proc fcQGraphicsRectItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsRectItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsRectItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsRectItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_wheelEvent".}
proc fcQGraphicsRectItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRectItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsRectItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsRectItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsRectItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsRectItem_virtualbase_itemChange".}
proc fcQGraphicsRectItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsRectItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsRectItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsRectItem_protectedbase_addToIndex".}
proc fcQGraphicsRectItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsRectItem_protectedbase_removeFromIndex".}
proc fcQGraphicsRectItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsRectItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsRectItem_new(vtbl: pointer, ): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new".}
proc fcQGraphicsRectItem_new2(vtbl: pointer, rect: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new2".}
proc fcQGraphicsRectItem_new3(vtbl: pointer, x: float64, y: float64, w: float64, h: float64): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new3".}
proc fcQGraphicsRectItem_new4(vtbl: pointer, parent: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new4".}
proc fcQGraphicsRectItem_new5(vtbl: pointer, rect: pointer, parent: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new5".}
proc fcQGraphicsRectItem_new6(vtbl: pointer, x: float64, y: float64, w: float64, h: float64, parent: pointer): ptr cQGraphicsRectItem {.importc: "QGraphicsRectItem_new6".}
proc fcQGraphicsRectItem_delete(self: pointer) {.importc: "QGraphicsRectItem_delete".}
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
type cQGraphicsEllipseItemVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsEllipseItemVTable, self: ptr cQGraphicsEllipseItem) {.cdecl, raises:[], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsEllipseItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsEllipseItem_virtualbase_boundingRect".}
proc fcQGraphicsEllipseItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsEllipseItem_virtualbase_shape".}
proc fcQGraphicsEllipseItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsEllipseItem_virtualbase_contains".}
proc fcQGraphicsEllipseItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_paint".}
proc fcQGraphicsEllipseItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsEllipseItem_virtualbase_isObscuredBy".}
proc fcQGraphicsEllipseItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsEllipseItem_virtualbase_opaqueArea".}
proc fcQGraphicsEllipseItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsEllipseItem_virtualbase_type".}
proc fcQGraphicsEllipseItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsEllipseItem_virtualbase_supportsExtension".}
proc fcQGraphicsEllipseItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_setExtension".}
proc fcQGraphicsEllipseItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsEllipseItem_virtualbase_extension".}
proc fcQGraphicsEllipseItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsEllipseItem_virtualbase_advance".}
proc fcQGraphicsEllipseItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsEllipseItem_virtualbase_collidesWithItem".}
proc fcQGraphicsEllipseItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsEllipseItem_virtualbase_collidesWithPath".}
proc fcQGraphicsEllipseItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsEllipseItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsEllipseItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsEllipseItem_virtualbase_sceneEvent".}
proc fcQGraphicsEllipseItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsEllipseItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsEllipseItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsEllipseItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsEllipseItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_dropEvent".}
proc fcQGraphicsEllipseItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_focusInEvent".}
proc fcQGraphicsEllipseItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_focusOutEvent".}
proc fcQGraphicsEllipseItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsEllipseItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsEllipseItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsEllipseItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_keyPressEvent".}
proc fcQGraphicsEllipseItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsEllipseItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_mousePressEvent".}
proc fcQGraphicsEllipseItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsEllipseItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsEllipseItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_wheelEvent".}
proc fcQGraphicsEllipseItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEllipseItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsEllipseItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsEllipseItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsEllipseItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsEllipseItem_virtualbase_itemChange".}
proc fcQGraphicsEllipseItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsEllipseItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsEllipseItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsEllipseItem_protectedbase_addToIndex".}
proc fcQGraphicsEllipseItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsEllipseItem_protectedbase_removeFromIndex".}
proc fcQGraphicsEllipseItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsEllipseItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsEllipseItem_new(vtbl: pointer, ): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new".}
proc fcQGraphicsEllipseItem_new2(vtbl: pointer, rect: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new2".}
proc fcQGraphicsEllipseItem_new3(vtbl: pointer, x: float64, y: float64, w: float64, h: float64): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new3".}
proc fcQGraphicsEllipseItem_new4(vtbl: pointer, parent: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new4".}
proc fcQGraphicsEllipseItem_new5(vtbl: pointer, rect: pointer, parent: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new5".}
proc fcQGraphicsEllipseItem_new6(vtbl: pointer, x: float64, y: float64, w: float64, h: float64, parent: pointer): ptr cQGraphicsEllipseItem {.importc: "QGraphicsEllipseItem_new6".}
proc fcQGraphicsEllipseItem_delete(self: pointer) {.importc: "QGraphicsEllipseItem_delete".}
proc fcQGraphicsPolygonItem_fillRule(self: pointer, ): cint {.importc: "QGraphicsPolygonItem_fillRule".}
proc fcQGraphicsPolygonItem_setFillRule(self: pointer, rule: cint): void {.importc: "QGraphicsPolygonItem_setFillRule".}
proc fcQGraphicsPolygonItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_boundingRect".}
proc fcQGraphicsPolygonItem_shape(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_shape".}
proc fcQGraphicsPolygonItem_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsPolygonItem_contains".}
proc fcQGraphicsPolygonItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsPolygonItem_paint".}
proc fcQGraphicsPolygonItem_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsPolygonItem_isObscuredBy".}
proc fcQGraphicsPolygonItem_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_opaqueArea".}
proc fcQGraphicsPolygonItem_typeX(self: pointer, ): cint {.importc: "QGraphicsPolygonItem_type".}
type cQGraphicsPolygonItemVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsPolygonItemVTable, self: ptr cQGraphicsPolygonItem) {.cdecl, raises:[], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsPolygonItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_virtualbase_boundingRect".}
proc fcQGraphicsPolygonItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_virtualbase_shape".}
proc fcQGraphicsPolygonItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsPolygonItem_virtualbase_contains".}
proc fcQGraphicsPolygonItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_paint".}
proc fcQGraphicsPolygonItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsPolygonItem_virtualbase_isObscuredBy".}
proc fcQGraphicsPolygonItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsPolygonItem_virtualbase_opaqueArea".}
proc fcQGraphicsPolygonItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsPolygonItem_virtualbase_type".}
proc fcQGraphicsPolygonItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsPolygonItem_virtualbase_supportsExtension".}
proc fcQGraphicsPolygonItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_setExtension".}
proc fcQGraphicsPolygonItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsPolygonItem_virtualbase_extension".}
proc fcQGraphicsPolygonItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsPolygonItem_virtualbase_advance".}
proc fcQGraphicsPolygonItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsPolygonItem_virtualbase_collidesWithItem".}
proc fcQGraphicsPolygonItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsPolygonItem_virtualbase_collidesWithPath".}
proc fcQGraphicsPolygonItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsPolygonItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsPolygonItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsPolygonItem_virtualbase_sceneEvent".}
proc fcQGraphicsPolygonItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsPolygonItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsPolygonItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsPolygonItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsPolygonItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_dropEvent".}
proc fcQGraphicsPolygonItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_focusInEvent".}
proc fcQGraphicsPolygonItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_focusOutEvent".}
proc fcQGraphicsPolygonItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsPolygonItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsPolygonItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsPolygonItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_keyPressEvent".}
proc fcQGraphicsPolygonItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsPolygonItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_mousePressEvent".}
proc fcQGraphicsPolygonItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsPolygonItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsPolygonItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_wheelEvent".}
proc fcQGraphicsPolygonItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPolygonItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsPolygonItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsPolygonItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsPolygonItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsPolygonItem_virtualbase_itemChange".}
proc fcQGraphicsPolygonItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsPolygonItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsPolygonItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsPolygonItem_protectedbase_addToIndex".}
proc fcQGraphicsPolygonItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsPolygonItem_protectedbase_removeFromIndex".}
proc fcQGraphicsPolygonItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsPolygonItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsPolygonItem_new(vtbl: pointer, ): ptr cQGraphicsPolygonItem {.importc: "QGraphicsPolygonItem_new".}
proc fcQGraphicsPolygonItem_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsPolygonItem {.importc: "QGraphicsPolygonItem_new2".}
proc fcQGraphicsPolygonItem_delete(self: pointer) {.importc: "QGraphicsPolygonItem_delete".}
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
type cQGraphicsLineItemVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsLineItemVTable, self: ptr cQGraphicsLineItem) {.cdecl, raises:[], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsLineItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsLineItem_virtualbase_boundingRect".}
proc fcQGraphicsLineItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsLineItem_virtualbase_shape".}
proc fcQGraphicsLineItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsLineItem_virtualbase_contains".}
proc fcQGraphicsLineItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsLineItem_virtualbase_paint".}
proc fcQGraphicsLineItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsLineItem_virtualbase_isObscuredBy".}
proc fcQGraphicsLineItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsLineItem_virtualbase_opaqueArea".}
proc fcQGraphicsLineItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsLineItem_virtualbase_type".}
proc fcQGraphicsLineItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsLineItem_virtualbase_supportsExtension".}
proc fcQGraphicsLineItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsLineItem_virtualbase_setExtension".}
proc fcQGraphicsLineItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsLineItem_virtualbase_extension".}
proc fcQGraphicsLineItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsLineItem_virtualbase_advance".}
proc fcQGraphicsLineItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsLineItem_virtualbase_collidesWithItem".}
proc fcQGraphicsLineItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsLineItem_virtualbase_collidesWithPath".}
proc fcQGraphicsLineItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsLineItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsLineItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsLineItem_virtualbase_sceneEvent".}
proc fcQGraphicsLineItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsLineItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsLineItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsLineItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsLineItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_dropEvent".}
proc fcQGraphicsLineItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_focusInEvent".}
proc fcQGraphicsLineItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_focusOutEvent".}
proc fcQGraphicsLineItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsLineItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsLineItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsLineItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_keyPressEvent".}
proc fcQGraphicsLineItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsLineItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_mousePressEvent".}
proc fcQGraphicsLineItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsLineItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsLineItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsLineItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_wheelEvent".}
proc fcQGraphicsLineItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsLineItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsLineItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsLineItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsLineItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsLineItem_virtualbase_itemChange".}
proc fcQGraphicsLineItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsLineItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsLineItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsLineItem_protectedbase_addToIndex".}
proc fcQGraphicsLineItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsLineItem_protectedbase_removeFromIndex".}
proc fcQGraphicsLineItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsLineItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsLineItem_new(vtbl: pointer, ): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new".}
proc fcQGraphicsLineItem_new2(vtbl: pointer, line: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new2".}
proc fcQGraphicsLineItem_new3(vtbl: pointer, x1: float64, y1: float64, x2: float64, y2: float64): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new3".}
proc fcQGraphicsLineItem_new4(vtbl: pointer, parent: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new4".}
proc fcQGraphicsLineItem_new5(vtbl: pointer, line: pointer, parent: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new5".}
proc fcQGraphicsLineItem_new6(vtbl: pointer, x1: float64, y1: float64, x2: float64, y2: float64, parent: pointer): ptr cQGraphicsLineItem {.importc: "QGraphicsLineItem_new6".}
proc fcQGraphicsLineItem_delete(self: pointer) {.importc: "QGraphicsLineItem_delete".}
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
type cQGraphicsPixmapItemVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsPixmapItemVTable, self: ptr cQGraphicsPixmapItem) {.cdecl, raises:[], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsPixmapItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_virtualbase_boundingRect".}
proc fcQGraphicsPixmapItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_virtualbase_shape".}
proc fcQGraphicsPixmapItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsPixmapItem_virtualbase_contains".}
proc fcQGraphicsPixmapItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_paint".}
proc fcQGraphicsPixmapItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsPixmapItem_virtualbase_isObscuredBy".}
proc fcQGraphicsPixmapItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsPixmapItem_virtualbase_opaqueArea".}
proc fcQGraphicsPixmapItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsPixmapItem_virtualbase_type".}
proc fcQGraphicsPixmapItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsPixmapItem_virtualbase_supportsExtension".}
proc fcQGraphicsPixmapItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_setExtension".}
proc fcQGraphicsPixmapItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsPixmapItem_virtualbase_extension".}
proc fcQGraphicsPixmapItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsPixmapItem_virtualbase_advance".}
proc fcQGraphicsPixmapItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsPixmapItem_virtualbase_collidesWithItem".}
proc fcQGraphicsPixmapItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsPixmapItem_virtualbase_collidesWithPath".}
proc fcQGraphicsPixmapItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsPixmapItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsPixmapItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsPixmapItem_virtualbase_sceneEvent".}
proc fcQGraphicsPixmapItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsPixmapItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsPixmapItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsPixmapItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsPixmapItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_dropEvent".}
proc fcQGraphicsPixmapItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_focusInEvent".}
proc fcQGraphicsPixmapItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_focusOutEvent".}
proc fcQGraphicsPixmapItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsPixmapItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsPixmapItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsPixmapItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_keyPressEvent".}
proc fcQGraphicsPixmapItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsPixmapItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_mousePressEvent".}
proc fcQGraphicsPixmapItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsPixmapItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsPixmapItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_wheelEvent".}
proc fcQGraphicsPixmapItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsPixmapItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsPixmapItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsPixmapItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsPixmapItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsPixmapItem_virtualbase_itemChange".}
proc fcQGraphicsPixmapItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsPixmapItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsPixmapItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsPixmapItem_protectedbase_addToIndex".}
proc fcQGraphicsPixmapItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsPixmapItem_protectedbase_removeFromIndex".}
proc fcQGraphicsPixmapItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsPixmapItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsPixmapItem_new(vtbl: pointer, ): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new".}
proc fcQGraphicsPixmapItem_new2(vtbl: pointer, pixmap: pointer): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new2".}
proc fcQGraphicsPixmapItem_new3(vtbl: pointer, parent: pointer): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new3".}
proc fcQGraphicsPixmapItem_new4(vtbl: pointer, pixmap: pointer, parent: pointer): ptr cQGraphicsPixmapItem {.importc: "QGraphicsPixmapItem_new4".}
proc fcQGraphicsPixmapItem_delete(self: pointer) {.importc: "QGraphicsPixmapItem_delete".}
proc fcQGraphicsTextItem_metaObject(self: pointer, ): pointer {.importc: "QGraphicsTextItem_metaObject".}
proc fcQGraphicsTextItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsTextItem_metacast".}
proc fcQGraphicsTextItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsTextItem_metacall".}
proc fcQGraphicsTextItem_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsTextItem_tr".}
proc fcQGraphicsTextItem_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsTextItem_trUtf8".}
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
proc fcQGraphicsTextItem_connect_linkActivated(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsTextItem_connect_linkActivated".}
proc fcQGraphicsTextItem_linkHovered(self: pointer, param1: struct_miqt_string): void {.importc: "QGraphicsTextItem_linkHovered".}
proc fcQGraphicsTextItem_connect_linkHovered(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsTextItem_connect_linkHovered".}
proc fcQGraphicsTextItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsTextItem_tr2".}
proc fcQGraphicsTextItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsTextItem_tr3".}
proc fcQGraphicsTextItem_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsTextItem_trUtf82".}
proc fcQGraphicsTextItem_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsTextItem_trUtf83".}
type cQGraphicsTextItemVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsTextItemVTable, self: ptr cQGraphicsTextItem) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, ev: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsTextItem_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsTextItem_virtualbase_metaObject".}
proc fcQGraphicsTextItem_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsTextItem_virtualbase_metacast".}
proc fcQGraphicsTextItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsTextItem_virtualbase_metacall".}
proc fcQGraphicsTextItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsTextItem_virtualbase_boundingRect".}
proc fcQGraphicsTextItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsTextItem_virtualbase_shape".}
proc fcQGraphicsTextItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsTextItem_virtualbase_contains".}
proc fcQGraphicsTextItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsTextItem_virtualbase_paint".}
proc fcQGraphicsTextItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsTextItem_virtualbase_isObscuredBy".}
proc fcQGraphicsTextItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsTextItem_virtualbase_opaqueArea".}
proc fcQGraphicsTextItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsTextItem_virtualbase_type".}
proc fcQGraphicsTextItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsTextItem_virtualbase_sceneEvent".}
proc fcQGraphicsTextItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_mousePressEvent".}
proc fcQGraphicsTextItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsTextItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsTextItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsTextItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsTextItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_keyPressEvent".}
proc fcQGraphicsTextItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsTextItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_focusInEvent".}
proc fcQGraphicsTextItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_focusOutEvent".}
proc fcQGraphicsTextItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsTextItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsTextItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsTextItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_dropEvent".}
proc fcQGraphicsTextItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsTextItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsTextItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsTextItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsTextItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsTextItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsTextItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsTextItem_virtualbase_supportsExtension".}
proc fcQGraphicsTextItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsTextItem_virtualbase_setExtension".}
proc fcQGraphicsTextItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsTextItem_virtualbase_extension".}
proc fcQGraphicsTextItem_virtualbase_event(self: pointer, ev: pointer): bool {.importc: "QGraphicsTextItem_virtualbase_event".}
proc fcQGraphicsTextItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsTextItem_virtualbase_eventFilter".}
proc fcQGraphicsTextItem_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_timerEvent".}
proc fcQGraphicsTextItem_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_childEvent".}
proc fcQGraphicsTextItem_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_customEvent".}
proc fcQGraphicsTextItem_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsTextItem_virtualbase_connectNotify".}
proc fcQGraphicsTextItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsTextItem_virtualbase_disconnectNotify".}
proc fcQGraphicsTextItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsTextItem_virtualbase_advance".}
proc fcQGraphicsTextItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsTextItem_virtualbase_collidesWithItem".}
proc fcQGraphicsTextItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsTextItem_virtualbase_collidesWithPath".}
proc fcQGraphicsTextItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsTextItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsTextItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTextItem_virtualbase_wheelEvent".}
proc fcQGraphicsTextItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsTextItem_virtualbase_itemChange".}
proc fcQGraphicsTextItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsTextItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsTextItem_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsTextItem_protectedbase_sender".}
proc fcQGraphicsTextItem_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsTextItem_protectedbase_senderSignalIndex".}
proc fcQGraphicsTextItem_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsTextItem_protectedbase_receivers".}
proc fcQGraphicsTextItem_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsTextItem_protectedbase_isSignalConnected".}
proc fcQGraphicsTextItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsTextItem_protectedbase_addToIndex".}
proc fcQGraphicsTextItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsTextItem_protectedbase_removeFromIndex".}
proc fcQGraphicsTextItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsTextItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsTextItem_new(vtbl: pointer, ): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new".}
proc fcQGraphicsTextItem_new2(vtbl: pointer, text: struct_miqt_string): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new2".}
proc fcQGraphicsTextItem_new3(vtbl: pointer, parent: pointer): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new3".}
proc fcQGraphicsTextItem_new4(vtbl: pointer, text: struct_miqt_string, parent: pointer): ptr cQGraphicsTextItem {.importc: "QGraphicsTextItem_new4".}
proc fcQGraphicsTextItem_staticMetaObject(): pointer {.importc: "QGraphicsTextItem_staticMetaObject".}
proc fcQGraphicsTextItem_delete(self: pointer) {.importc: "QGraphicsTextItem_delete".}
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
type cQGraphicsSimpleTextItemVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsSimpleTextItemVTable, self: ptr cQGraphicsSimpleTextItem) {.cdecl, raises:[], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsSimpleTextItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsSimpleTextItem_virtualbase_boundingRect".}
proc fcQGraphicsSimpleTextItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsSimpleTextItem_virtualbase_shape".}
proc fcQGraphicsSimpleTextItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsSimpleTextItem_virtualbase_contains".}
proc fcQGraphicsSimpleTextItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_paint".}
proc fcQGraphicsSimpleTextItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsSimpleTextItem_virtualbase_isObscuredBy".}
proc fcQGraphicsSimpleTextItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsSimpleTextItem_virtualbase_opaqueArea".}
proc fcQGraphicsSimpleTextItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsSimpleTextItem_virtualbase_type".}
proc fcQGraphicsSimpleTextItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsSimpleTextItem_virtualbase_supportsExtension".}
proc fcQGraphicsSimpleTextItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_setExtension".}
proc fcQGraphicsSimpleTextItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsSimpleTextItem_virtualbase_extension".}
proc fcQGraphicsSimpleTextItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsSimpleTextItem_virtualbase_advance".}
proc fcQGraphicsSimpleTextItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsSimpleTextItem_virtualbase_collidesWithItem".}
proc fcQGraphicsSimpleTextItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsSimpleTextItem_virtualbase_collidesWithPath".}
proc fcQGraphicsSimpleTextItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsSimpleTextItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsSimpleTextItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsSimpleTextItem_virtualbase_sceneEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_dropEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_focusInEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_focusOutEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_keyPressEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_mousePressEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_wheelEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSimpleTextItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsSimpleTextItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsSimpleTextItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsSimpleTextItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsSimpleTextItem_virtualbase_itemChange".}
proc fcQGraphicsSimpleTextItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsSimpleTextItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsSimpleTextItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsSimpleTextItem_protectedbase_addToIndex".}
proc fcQGraphicsSimpleTextItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsSimpleTextItem_protectedbase_removeFromIndex".}
proc fcQGraphicsSimpleTextItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsSimpleTextItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsSimpleTextItem_new(vtbl: pointer, ): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new".}
proc fcQGraphicsSimpleTextItem_new2(vtbl: pointer, text: struct_miqt_string): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new2".}
proc fcQGraphicsSimpleTextItem_new3(vtbl: pointer, parent: pointer): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new3".}
proc fcQGraphicsSimpleTextItem_new4(vtbl: pointer, text: struct_miqt_string, parent: pointer): ptr cQGraphicsSimpleTextItem {.importc: "QGraphicsSimpleTextItem_new4".}
proc fcQGraphicsSimpleTextItem_delete(self: pointer) {.importc: "QGraphicsSimpleTextItem_delete".}
proc fcQGraphicsItemGroup_addToGroup(self: pointer, item: pointer): void {.importc: "QGraphicsItemGroup_addToGroup".}
proc fcQGraphicsItemGroup_removeFromGroup(self: pointer, item: pointer): void {.importc: "QGraphicsItemGroup_removeFromGroup".}
proc fcQGraphicsItemGroup_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsItemGroup_boundingRect".}
proc fcQGraphicsItemGroup_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsItemGroup_paint".}
proc fcQGraphicsItemGroup_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsItemGroup_isObscuredBy".}
proc fcQGraphicsItemGroup_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsItemGroup_opaqueArea".}
proc fcQGraphicsItemGroup_typeX(self: pointer, ): cint {.importc: "QGraphicsItemGroup_type".}
type cQGraphicsItemGroupVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsItemGroupVTable, self: ptr cQGraphicsItemGroup) {.cdecl, raises:[], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsItemGroup_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsItemGroup_virtualbase_boundingRect".}
proc fcQGraphicsItemGroup_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_paint".}
proc fcQGraphicsItemGroup_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsItemGroup_virtualbase_isObscuredBy".}
proc fcQGraphicsItemGroup_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsItemGroup_virtualbase_opaqueArea".}
proc fcQGraphicsItemGroup_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsItemGroup_virtualbase_type".}
proc fcQGraphicsItemGroup_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsItemGroup_virtualbase_advance".}
proc fcQGraphicsItemGroup_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsItemGroup_virtualbase_shape".}
proc fcQGraphicsItemGroup_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsItemGroup_virtualbase_contains".}
proc fcQGraphicsItemGroup_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsItemGroup_virtualbase_collidesWithItem".}
proc fcQGraphicsItemGroup_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsItemGroup_virtualbase_collidesWithPath".}
proc fcQGraphicsItemGroup_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsItemGroup_virtualbase_sceneEventFilter".}
proc fcQGraphicsItemGroup_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsItemGroup_virtualbase_sceneEvent".}
proc fcQGraphicsItemGroup_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_contextMenuEvent".}
proc fcQGraphicsItemGroup_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_dragEnterEvent".}
proc fcQGraphicsItemGroup_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_dragLeaveEvent".}
proc fcQGraphicsItemGroup_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_dragMoveEvent".}
proc fcQGraphicsItemGroup_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_dropEvent".}
proc fcQGraphicsItemGroup_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_focusInEvent".}
proc fcQGraphicsItemGroup_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_focusOutEvent".}
proc fcQGraphicsItemGroup_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_hoverEnterEvent".}
proc fcQGraphicsItemGroup_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_hoverMoveEvent".}
proc fcQGraphicsItemGroup_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsItemGroup_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_keyPressEvent".}
proc fcQGraphicsItemGroup_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_keyReleaseEvent".}
proc fcQGraphicsItemGroup_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_mousePressEvent".}
proc fcQGraphicsItemGroup_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_mouseMoveEvent".}
proc fcQGraphicsItemGroup_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsItemGroup_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsItemGroup_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_wheelEvent".}
proc fcQGraphicsItemGroup_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_inputMethodEvent".}
proc fcQGraphicsItemGroup_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsItemGroup_virtualbase_inputMethodQuery".}
proc fcQGraphicsItemGroup_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsItemGroup_virtualbase_itemChange".}
proc fcQGraphicsItemGroup_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsItemGroup_virtualbase_supportsExtension".}
proc fcQGraphicsItemGroup_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsItemGroup_virtualbase_setExtension".}
proc fcQGraphicsItemGroup_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsItemGroup_virtualbase_extension".}
proc fcQGraphicsItemGroup_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsItemGroup_protectedbase_updateMicroFocus".}
proc fcQGraphicsItemGroup_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsItemGroup_protectedbase_addToIndex".}
proc fcQGraphicsItemGroup_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsItemGroup_protectedbase_removeFromIndex".}
proc fcQGraphicsItemGroup_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsItemGroup_protectedbase_prepareGeometryChange".}
proc fcQGraphicsItemGroup_new(vtbl: pointer, ): ptr cQGraphicsItemGroup {.importc: "QGraphicsItemGroup_new".}
proc fcQGraphicsItemGroup_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsItemGroup {.importc: "QGraphicsItemGroup_new2".}
proc fcQGraphicsItemGroup_delete(self: pointer) {.importc: "QGraphicsItemGroup_delete".}

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

proc matrix*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQGraphicsItem_matrix(self.h))

proc sceneMatrix*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQGraphicsItem_sceneMatrix(self.h))

proc setMatrix*(self: gen_qgraphicsitem_types.QGraphicsItem, matrix: gen_qmatrix_types.QMatrix): void =
  fcQGraphicsItem_setMatrix(self.h, matrix.h)

proc resetMatrix*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_resetMatrix(self.h)

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

proc setMatrix*(self: gen_qgraphicsitem_types.QGraphicsItem, matrix: gen_qmatrix_types.QMatrix, combine: bool): void =
  fcQGraphicsItem_setMatrix2(self.h, matrix.h, combine)

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

type QGraphicsItemadvanceProc* = proc(self: QGraphicsItem, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsItemboundingRectProc* = proc(self: QGraphicsItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsItemshapeProc* = proc(self: QGraphicsItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsItemcontainsProc* = proc(self: QGraphicsItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsItemcollidesWithItemProc* = proc(self: QGraphicsItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsItemcollidesWithPathProc* = proc(self: QGraphicsItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsItemisObscuredByProc* = proc(self: QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsItemopaqueAreaProc* = proc(self: QGraphicsItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsItempaintProc* = proc(self: QGraphicsItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsItemtypeXProc* = proc(self: QGraphicsItem): cint {.raises: [], gcsafe.}
type QGraphicsItemsceneEventFilterProc* = proc(self: QGraphicsItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsItemsceneEventProc* = proc(self: QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsItemcontextMenuEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsItemdragEnterEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsItemdragLeaveEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsItemdragMoveEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsItemdropEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsItemfocusInEventProc* = proc(self: QGraphicsItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsItemfocusOutEventProc* = proc(self: QGraphicsItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsItemhoverEnterEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsItemhoverMoveEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsItemhoverLeaveEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsItemkeyPressEventProc* = proc(self: QGraphicsItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsItemkeyReleaseEventProc* = proc(self: QGraphicsItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsItemmousePressEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsItemmouseMoveEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsItemmouseReleaseEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsItemmouseDoubleClickEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsItemwheelEventProc* = proc(self: QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsIteminputMethodEventProc* = proc(self: QGraphicsItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsIteminputMethodQueryProc* = proc(self: QGraphicsItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsItemitemChangeProc* = proc(self: QGraphicsItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsItemsupportsExtensionProc* = proc(self: QGraphicsItem, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsItemsetExtensionProc* = proc(self: QGraphicsItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsItemextensionProc* = proc(self: QGraphicsItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsItemVTable* = object
  vtbl: cQGraphicsItemVTable
  advance*: QGraphicsItemadvanceProc
  boundingRect*: QGraphicsItemboundingRectProc
  shape*: QGraphicsItemshapeProc
  contains*: QGraphicsItemcontainsProc
  collidesWithItem*: QGraphicsItemcollidesWithItemProc
  collidesWithPath*: QGraphicsItemcollidesWithPathProc
  isObscuredBy*: QGraphicsItemisObscuredByProc
  opaqueArea*: QGraphicsItemopaqueAreaProc
  paint*: QGraphicsItempaintProc
  typeX*: QGraphicsItemtypeXProc
  sceneEventFilter*: QGraphicsItemsceneEventFilterProc
  sceneEvent*: QGraphicsItemsceneEventProc
  contextMenuEvent*: QGraphicsItemcontextMenuEventProc
  dragEnterEvent*: QGraphicsItemdragEnterEventProc
  dragLeaveEvent*: QGraphicsItemdragLeaveEventProc
  dragMoveEvent*: QGraphicsItemdragMoveEventProc
  dropEvent*: QGraphicsItemdropEventProc
  focusInEvent*: QGraphicsItemfocusInEventProc
  focusOutEvent*: QGraphicsItemfocusOutEventProc
  hoverEnterEvent*: QGraphicsItemhoverEnterEventProc
  hoverMoveEvent*: QGraphicsItemhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsItemhoverLeaveEventProc
  keyPressEvent*: QGraphicsItemkeyPressEventProc
  keyReleaseEvent*: QGraphicsItemkeyReleaseEventProc
  mousePressEvent*: QGraphicsItemmousePressEventProc
  mouseMoveEvent*: QGraphicsItemmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsItemmouseDoubleClickEventProc
  wheelEvent*: QGraphicsItemwheelEventProc
  inputMethodEvent*: QGraphicsIteminputMethodEventProc
  inputMethodQuery*: QGraphicsIteminputMethodQueryProc
  itemChange*: QGraphicsItemitemChangeProc
  supportsExtension*: QGraphicsItemsupportsExtensionProc
  setExtension*: QGraphicsItemsetExtensionProc
  extension*: QGraphicsItemextensionProc
proc QGraphicsItemadvance*(self: gen_qgraphicsitem_types.QGraphicsItem, phase: cint): void =
  fcQGraphicsItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc miqt_exec_callback_cQGraphicsItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsItemshape*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItem_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsItemcontains*(self: gen_qgraphicsitem_types.QGraphicsItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItem_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc miqt_exec_callback_cQGraphicsItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsItem, ): cint =
  fcQGraphicsItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsItem_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc QGraphicsItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsItem, extension: cint): bool =
  fcQGraphicsItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsItemextension*(self: gen_qgraphicsitem_types.QGraphicsItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsItem_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemVTable](vtbl)
  let self = QGraphicsItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_protectedbase_updateMicroFocus(self.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QGraphicsItem, ): void =
  fcQGraphicsItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsItemVTable = nil): gen_qgraphicsitem_types.QGraphicsItem =
  let vtbl = if vtbl == nil: new QGraphicsItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsItemVTable, _: ptr cQGraphicsItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsItem_advance
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsItem_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsItem_collidesWithPath
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsItem_opaqueArea
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsItem_paint
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsItem_typeX
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsItem_itemChange
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsItem_extension
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsItemVTable = nil): gen_qgraphicsitem_types.QGraphicsItem =
  let vtbl = if vtbl == nil: new QGraphicsItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsItemVTable, _: ptr cQGraphicsItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsItem_advance
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsItem_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsItem_collidesWithPath
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsItem_opaqueArea
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsItem_paint
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsItem_typeX
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsItem_itemChange
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsItem_extension
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsItem_new2(addr(vtbl[]), parent.h))

proc delete*(self: gen_qgraphicsitem_types.QGraphicsItem) =
  fcQGraphicsItem_delete(self.h)
proc metaObject*(self: gen_qgraphicsitem_types.QGraphicsObject, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsObject_metaObject(self.h))

proc metacast*(self: gen_qgraphicsitem_types.QGraphicsObject, param1: cstring): pointer =
  fcQGraphicsObject_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsitem_types.QGraphicsObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsObject_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsitem_types.QGraphicsObject, s: cstring): string =
  let v_ms = fcQGraphicsObject_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsitem_types.QGraphicsObject, s: cstring): string =
  let v_ms = fcQGraphicsObject_trUtf8(s)
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
proc miqt_exec_callback_cQGraphicsObject_parentChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectparentChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_parentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectparentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onparentChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectparentChangedSlot) =
  var tmp = new QGraphicsObjectparentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_parentChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_parentChanged, miqt_exec_callback_cQGraphicsObject_parentChanged_release)

proc opacityChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_opacityChanged(self.h)

type QGraphicsObjectopacityChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsObject_opacityChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectopacityChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_opacityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectopacityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onopacityChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectopacityChangedSlot) =
  var tmp = new QGraphicsObjectopacityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_opacityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_opacityChanged, miqt_exec_callback_cQGraphicsObject_opacityChanged_release)

proc visibleChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_visibleChanged(self.h)

type QGraphicsObjectvisibleChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsObject_visibleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectvisibleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_visibleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectvisibleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvisibleChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectvisibleChangedSlot) =
  var tmp = new QGraphicsObjectvisibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_visibleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_visibleChanged, miqt_exec_callback_cQGraphicsObject_visibleChanged_release)

proc enabledChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_enabledChanged(self.h)

type QGraphicsObjectenabledChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsObject_enabledChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectenabledChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_enabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectenabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onenabledChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectenabledChangedSlot) =
  var tmp = new QGraphicsObjectenabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_enabledChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_enabledChanged, miqt_exec_callback_cQGraphicsObject_enabledChanged_release)

proc xChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_xChanged(self.h)

type QGraphicsObjectxChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsObject_xChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectxChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_xChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectxChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onxChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectxChangedSlot) =
  var tmp = new QGraphicsObjectxChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_xChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_xChanged, miqt_exec_callback_cQGraphicsObject_xChanged_release)

proc yChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_yChanged(self.h)

type QGraphicsObjectyChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsObject_yChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectyChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_yChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onyChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectyChangedSlot) =
  var tmp = new QGraphicsObjectyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_yChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_yChanged, miqt_exec_callback_cQGraphicsObject_yChanged_release)

proc zChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_zChanged(self.h)

type QGraphicsObjectzChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsObject_zChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectzChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_zChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectzChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onzChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectzChangedSlot) =
  var tmp = new QGraphicsObjectzChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_zChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_zChanged, miqt_exec_callback_cQGraphicsObject_zChanged_release)

proc rotationChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_rotationChanged(self.h)

type QGraphicsObjectrotationChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsObject_rotationChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectrotationChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_rotationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectrotationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrotationChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectrotationChangedSlot) =
  var tmp = new QGraphicsObjectrotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_rotationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_rotationChanged, miqt_exec_callback_cQGraphicsObject_rotationChanged_release)

proc scaleChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_scaleChanged(self.h)

type QGraphicsObjectscaleChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsObject_scaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectscaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_scaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectscaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscaleChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectscaleChangedSlot) =
  var tmp = new QGraphicsObjectscaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_scaleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_scaleChanged, miqt_exec_callback_cQGraphicsObject_scaleChanged_release)

proc childrenChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_childrenChanged(self.h)

type QGraphicsObjectchildrenChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsObject_childrenChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectchildrenChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_childrenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectchildrenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onchildrenChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectchildrenChangedSlot) =
  var tmp = new QGraphicsObjectchildrenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_childrenChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_childrenChanged, miqt_exec_callback_cQGraphicsObject_childrenChanged_release)

proc widthChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_widthChanged(self.h)

type QGraphicsObjectwidthChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsObject_widthChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectwidthChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_widthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectwidthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwidthChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectwidthChangedSlot) =
  var tmp = new QGraphicsObjectwidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_widthChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_widthChanged, miqt_exec_callback_cQGraphicsObject_widthChanged_release)

proc heightChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_heightChanged(self.h)

type QGraphicsObjectheightChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsObject_heightChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsObjectheightChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsObject_heightChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsObjectheightChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onheightChanged*(self: gen_qgraphicsitem_types.QGraphicsObject, slot: QGraphicsObjectheightChangedSlot) =
  var tmp = new QGraphicsObjectheightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsObject_connect_heightChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsObject_heightChanged, miqt_exec_callback_cQGraphicsObject_heightChanged_release)

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

proc trUtf8*(_: type gen_qgraphicsitem_types.QGraphicsObject, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsObject_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsitem_types.QGraphicsObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsObject_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc grabGesture*(self: gen_qgraphicsitem_types.QGraphicsObject, typeVal: cint, flags: cint): void =
  fcQGraphicsObject_grabGesture2(self.h, cint(typeVal), cint(flags))

type QGraphicsObjectmetaObjectProc* = proc(self: QGraphicsObject): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsObjectmetacastProc* = proc(self: QGraphicsObject, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsObjectmetacallProc* = proc(self: QGraphicsObject, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsObjecteventProc* = proc(self: QGraphicsObject, ev: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsObjecteventFilterProc* = proc(self: QGraphicsObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsObjecttimerEventProc* = proc(self: QGraphicsObject, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectchildEventProc* = proc(self: QGraphicsObject, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectcustomEventProc* = proc(self: QGraphicsObject, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectconnectNotifyProc* = proc(self: QGraphicsObject, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsObjectdisconnectNotifyProc* = proc(self: QGraphicsObject, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsObjectadvanceProc* = proc(self: QGraphicsObject, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsObjectboundingRectProc* = proc(self: QGraphicsObject): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsObjectshapeProc* = proc(self: QGraphicsObject): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsObjectcontainsProc* = proc(self: QGraphicsObject, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsObjectcollidesWithItemProc* = proc(self: QGraphicsObject, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsObjectcollidesWithPathProc* = proc(self: QGraphicsObject, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsObjectisObscuredByProc* = proc(self: QGraphicsObject, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsObjectopaqueAreaProc* = proc(self: QGraphicsObject): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsObjectpaintProc* = proc(self: QGraphicsObject, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsObjecttypeXProc* = proc(self: QGraphicsObject): cint {.raises: [], gcsafe.}
type QGraphicsObjectsceneEventFilterProc* = proc(self: QGraphicsObject, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsObjectsceneEventProc* = proc(self: QGraphicsObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsObjectcontextMenuEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectdragEnterEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectdragLeaveEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectdragMoveEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectdropEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectfocusInEventProc* = proc(self: QGraphicsObject, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectfocusOutEventProc* = proc(self: QGraphicsObject, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsObjecthoverEnterEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsObjecthoverMoveEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsObjecthoverLeaveEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectkeyPressEventProc* = proc(self: QGraphicsObject, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectkeyReleaseEventProc* = proc(self: QGraphicsObject, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectmousePressEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectmouseMoveEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectmouseReleaseEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectmouseDoubleClickEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectwheelEventProc* = proc(self: QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectinputMethodEventProc* = proc(self: QGraphicsObject, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsObjectinputMethodQueryProc* = proc(self: QGraphicsObject, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsObjectitemChangeProc* = proc(self: QGraphicsObject, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsObjectsupportsExtensionProc* = proc(self: QGraphicsObject, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsObjectsetExtensionProc* = proc(self: QGraphicsObject, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsObjectextensionProc* = proc(self: QGraphicsObject, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsObjectVTable* = object
  vtbl: cQGraphicsObjectVTable
  metaObject*: QGraphicsObjectmetaObjectProc
  metacast*: QGraphicsObjectmetacastProc
  metacall*: QGraphicsObjectmetacallProc
  event*: QGraphicsObjecteventProc
  eventFilter*: QGraphicsObjecteventFilterProc
  timerEvent*: QGraphicsObjecttimerEventProc
  childEvent*: QGraphicsObjectchildEventProc
  customEvent*: QGraphicsObjectcustomEventProc
  connectNotify*: QGraphicsObjectconnectNotifyProc
  disconnectNotify*: QGraphicsObjectdisconnectNotifyProc
  advance*: QGraphicsObjectadvanceProc
  boundingRect*: QGraphicsObjectboundingRectProc
  shape*: QGraphicsObjectshapeProc
  contains*: QGraphicsObjectcontainsProc
  collidesWithItem*: QGraphicsObjectcollidesWithItemProc
  collidesWithPath*: QGraphicsObjectcollidesWithPathProc
  isObscuredBy*: QGraphicsObjectisObscuredByProc
  opaqueArea*: QGraphicsObjectopaqueAreaProc
  paint*: QGraphicsObjectpaintProc
  typeX*: QGraphicsObjecttypeXProc
  sceneEventFilter*: QGraphicsObjectsceneEventFilterProc
  sceneEvent*: QGraphicsObjectsceneEventProc
  contextMenuEvent*: QGraphicsObjectcontextMenuEventProc
  dragEnterEvent*: QGraphicsObjectdragEnterEventProc
  dragLeaveEvent*: QGraphicsObjectdragLeaveEventProc
  dragMoveEvent*: QGraphicsObjectdragMoveEventProc
  dropEvent*: QGraphicsObjectdropEventProc
  focusInEvent*: QGraphicsObjectfocusInEventProc
  focusOutEvent*: QGraphicsObjectfocusOutEventProc
  hoverEnterEvent*: QGraphicsObjecthoverEnterEventProc
  hoverMoveEvent*: QGraphicsObjecthoverMoveEventProc
  hoverLeaveEvent*: QGraphicsObjecthoverLeaveEventProc
  keyPressEvent*: QGraphicsObjectkeyPressEventProc
  keyReleaseEvent*: QGraphicsObjectkeyReleaseEventProc
  mousePressEvent*: QGraphicsObjectmousePressEventProc
  mouseMoveEvent*: QGraphicsObjectmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsObjectmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsObjectmouseDoubleClickEventProc
  wheelEvent*: QGraphicsObjectwheelEventProc
  inputMethodEvent*: QGraphicsObjectinputMethodEventProc
  inputMethodQuery*: QGraphicsObjectinputMethodQueryProc
  itemChange*: QGraphicsObjectitemChangeProc
  supportsExtension*: QGraphicsObjectsupportsExtensionProc
  setExtension*: QGraphicsObjectsetExtensionProc
  extension*: QGraphicsObjectextensionProc
proc QGraphicsObjectmetaObject*(self: gen_qgraphicsitem_types.QGraphicsObject, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsObject_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsObject_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsObjectmetacast*(self: gen_qgraphicsitem_types.QGraphicsObject, param1: cstring): pointer =
  fcQGraphicsObject_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsObject_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsObjectmetacall*(self: gen_qgraphicsitem_types.QGraphicsObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsObject_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsObject_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsObjectevent*(self: gen_qgraphicsitem_types.QGraphicsObject, ev: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsObject_virtualbase_event(self.h, ev.h)

proc miqt_exec_callback_cQGraphicsObject_event(vtbl: pointer, self: pointer, ev: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: ev)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsObjecteventFilter*(self: gen_qgraphicsitem_types.QGraphicsObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsObject_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsObjecttimerEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsObject_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsObjectchildEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsObject_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsObjectcustomEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsObject_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsObjectconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsObject_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsObject_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsObjectdisconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsObject_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsObject_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc QGraphicsObjectadvance*(self: gen_qgraphicsitem_types.QGraphicsObject, phase: cint): void =
  fcQGraphicsObject_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsObject_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc miqt_exec_callback_cQGraphicsObject_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsObjectshape*(self: gen_qgraphicsitem_types.QGraphicsObject, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsObject_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsObject_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsObjectcontains*(self: gen_qgraphicsitem_types.QGraphicsObject, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsObject_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsObject_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsObjectcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsObject, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsObject_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsObject_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsObjectcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsObject, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsObject_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsObject_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsObjectisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsObject, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsObject_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsObject_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsObjectopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsObject, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsObject_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsObject_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc miqt_exec_callback_cQGraphicsObject_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsObjecttypeX*(self: gen_qgraphicsitem_types.QGraphicsObject, ): cint =
  fcQGraphicsObject_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsObject_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsObjectsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsObject, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsObject_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsObjectsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsObject_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsObjectcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsObject_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsObjectdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsObject_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsObjectdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsObject_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsObjectdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsObject_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsObjectdropEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsObject_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsObjectfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsObject_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsObjectfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsObject_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsObjecthoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsObject_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsObjecthoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsObject_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsObjecthoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsObject_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsObjectkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsObject_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsObjectkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsObject_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsObjectmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsObject_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsObjectmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsObject_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsObjectmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsObject_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsObjectmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsObject_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsObjectwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsObject_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsObjectinputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsObject, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsObject_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsObject_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsObjectinputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsObject, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsObject_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsObject_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsObjectitemChange*(self: gen_qgraphicsitem_types.QGraphicsObject, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsObject_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsObject_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc QGraphicsObjectsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsObject, extension: cint): bool =
  fcQGraphicsObject_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsObject_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsObjectsetExtension*(self: gen_qgraphicsitem_types.QGraphicsObject, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsObject_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsObject_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsObjectextension*(self: gen_qgraphicsitem_types.QGraphicsObject, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsObject_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsObject_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsObjectVTable](vtbl)
  let self = QGraphicsObject(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_protectedbase_updateMicroFocus(self.h)

proc sender*(self: gen_qgraphicsitem_types.QGraphicsObject, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsObject_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicsitem_types.QGraphicsObject, ): cint =
  fcQGraphicsObject_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicsitem_types.QGraphicsObject, signal: cstring): cint =
  fcQGraphicsObject_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicsitem_types.QGraphicsObject, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsObject_protectedbase_isSignalConnected(self.h, signal.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QGraphicsObject, ): void =
  fcQGraphicsObject_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QGraphicsObject,
    vtbl: ref QGraphicsObjectVTable = nil): gen_qgraphicsitem_types.QGraphicsObject =
  let vtbl = if vtbl == nil: new QGraphicsObjectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsObjectVTable, _: ptr cQGraphicsObject) {.cdecl.} =
    let vtbl = cast[ref QGraphicsObjectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsObject_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsObject_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsObject_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsObject_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsObject_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsObject_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsObject_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsObject_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsObject_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsObject_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsObject_advance
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsObject_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsObject_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsObject_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsObject_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsObject_collidesWithPath
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsObject_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsObject_opaqueArea
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsObject_paint
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsObject_typeX
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsObject_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsObject_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsObject_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsObject_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsObject_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsObject_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsObject_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsObject_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsObject_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsObject_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsObject_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsObject_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsObject_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsObject_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsObject_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsObject_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsObject_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsObject_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsObject_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsObject_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsObject_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsObject_itemChange
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsObject_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsObject_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsObject_extension
  gen_qgraphicsitem_types.QGraphicsObject(h: fcQGraphicsObject_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsObject,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsObjectVTable = nil): gen_qgraphicsitem_types.QGraphicsObject =
  let vtbl = if vtbl == nil: new QGraphicsObjectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsObjectVTable, _: ptr cQGraphicsObject) {.cdecl.} =
    let vtbl = cast[ref QGraphicsObjectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsObject_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsObject_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsObject_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsObject_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsObject_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsObject_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsObject_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsObject_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsObject_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsObject_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsObject_advance
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsObject_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsObject_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsObject_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsObject_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsObject_collidesWithPath
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsObject_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsObject_opaqueArea
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsObject_paint
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsObject_typeX
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsObject_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsObject_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsObject_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsObject_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsObject_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsObject_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsObject_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsObject_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsObject_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsObject_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsObject_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsObject_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsObject_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsObject_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsObject_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsObject_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsObject_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsObject_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsObject_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsObject_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsObject_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsObject_itemChange
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsObject_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsObject_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsObject_extension
  gen_qgraphicsitem_types.QGraphicsObject(h: fcQGraphicsObject_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicsitem_types.QGraphicsObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsObject_staticMetaObject())
proc delete*(self: gen_qgraphicsitem_types.QGraphicsObject) =
  fcQGraphicsObject_delete(self.h)
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

type QAbstractGraphicsShapeItemisObscuredByProc* = proc(self: QAbstractGraphicsShapeItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemopaqueAreaProc* = proc(self: QAbstractGraphicsShapeItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemadvanceProc* = proc(self: QAbstractGraphicsShapeItem, phase: cint): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemboundingRectProc* = proc(self: QAbstractGraphicsShapeItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemshapeProc* = proc(self: QAbstractGraphicsShapeItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemcontainsProc* = proc(self: QAbstractGraphicsShapeItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemcollidesWithItemProc* = proc(self: QAbstractGraphicsShapeItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemcollidesWithPathProc* = proc(self: QAbstractGraphicsShapeItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItempaintProc* = proc(self: QAbstractGraphicsShapeItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemtypeXProc* = proc(self: QAbstractGraphicsShapeItem): cint {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemsceneEventFilterProc* = proc(self: QAbstractGraphicsShapeItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemsceneEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemcontextMenuEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemdragEnterEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemdragLeaveEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemdragMoveEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemdropEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemfocusInEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemfocusOutEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemhoverEnterEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemhoverMoveEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemhoverLeaveEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemkeyPressEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemkeyReleaseEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemmousePressEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemmouseMoveEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemmouseReleaseEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemmouseDoubleClickEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemwheelEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeIteminputMethodEventProc* = proc(self: QAbstractGraphicsShapeItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeIteminputMethodQueryProc* = proc(self: QAbstractGraphicsShapeItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemitemChangeProc* = proc(self: QAbstractGraphicsShapeItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemsupportsExtensionProc* = proc(self: QAbstractGraphicsShapeItem, extension: cint): bool {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemsetExtensionProc* = proc(self: QAbstractGraphicsShapeItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemextensionProc* = proc(self: QAbstractGraphicsShapeItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractGraphicsShapeItemVTable* = object
  vtbl: cQAbstractGraphicsShapeItemVTable
  isObscuredBy*: QAbstractGraphicsShapeItemisObscuredByProc
  opaqueArea*: QAbstractGraphicsShapeItemopaqueAreaProc
  advance*: QAbstractGraphicsShapeItemadvanceProc
  boundingRect*: QAbstractGraphicsShapeItemboundingRectProc
  shape*: QAbstractGraphicsShapeItemshapeProc
  contains*: QAbstractGraphicsShapeItemcontainsProc
  collidesWithItem*: QAbstractGraphicsShapeItemcollidesWithItemProc
  collidesWithPath*: QAbstractGraphicsShapeItemcollidesWithPathProc
  paint*: QAbstractGraphicsShapeItempaintProc
  typeX*: QAbstractGraphicsShapeItemtypeXProc
  sceneEventFilter*: QAbstractGraphicsShapeItemsceneEventFilterProc
  sceneEvent*: QAbstractGraphicsShapeItemsceneEventProc
  contextMenuEvent*: QAbstractGraphicsShapeItemcontextMenuEventProc
  dragEnterEvent*: QAbstractGraphicsShapeItemdragEnterEventProc
  dragLeaveEvent*: QAbstractGraphicsShapeItemdragLeaveEventProc
  dragMoveEvent*: QAbstractGraphicsShapeItemdragMoveEventProc
  dropEvent*: QAbstractGraphicsShapeItemdropEventProc
  focusInEvent*: QAbstractGraphicsShapeItemfocusInEventProc
  focusOutEvent*: QAbstractGraphicsShapeItemfocusOutEventProc
  hoverEnterEvent*: QAbstractGraphicsShapeItemhoverEnterEventProc
  hoverMoveEvent*: QAbstractGraphicsShapeItemhoverMoveEventProc
  hoverLeaveEvent*: QAbstractGraphicsShapeItemhoverLeaveEventProc
  keyPressEvent*: QAbstractGraphicsShapeItemkeyPressEventProc
  keyReleaseEvent*: QAbstractGraphicsShapeItemkeyReleaseEventProc
  mousePressEvent*: QAbstractGraphicsShapeItemmousePressEventProc
  mouseMoveEvent*: QAbstractGraphicsShapeItemmouseMoveEventProc
  mouseReleaseEvent*: QAbstractGraphicsShapeItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QAbstractGraphicsShapeItemmouseDoubleClickEventProc
  wheelEvent*: QAbstractGraphicsShapeItemwheelEventProc
  inputMethodEvent*: QAbstractGraphicsShapeIteminputMethodEventProc
  inputMethodQuery*: QAbstractGraphicsShapeIteminputMethodQueryProc
  itemChange*: QAbstractGraphicsShapeItemitemChangeProc
  supportsExtension*: QAbstractGraphicsShapeItemsupportsExtensionProc
  setExtension*: QAbstractGraphicsShapeItemsetExtensionProc
  extension*: QAbstractGraphicsShapeItemextensionProc
proc QAbstractGraphicsShapeItemisObscuredBy*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQAbstractGraphicsShapeItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QAbstractGraphicsShapeItemopaqueArea*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQAbstractGraphicsShapeItem_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QAbstractGraphicsShapeItemadvance*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, phase: cint): void =
  fcQAbstractGraphicsShapeItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QAbstractGraphicsShapeItemshape*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQAbstractGraphicsShapeItem_virtualbase_shape(self.h))

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QAbstractGraphicsShapeItemcontains*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, point: gen_qpoint_types.QPointF): bool =
  fcQAbstractGraphicsShapeItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QAbstractGraphicsShapeItemcollidesWithItem*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQAbstractGraphicsShapeItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QAbstractGraphicsShapeItemcollidesWithPath*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQAbstractGraphicsShapeItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QAbstractGraphicsShapeItemtypeX*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): cint =
  fcQAbstractGraphicsShapeItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QAbstractGraphicsShapeItemsceneEventFilter*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractGraphicsShapeItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractGraphicsShapeItemsceneEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractGraphicsShapeItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QAbstractGraphicsShapeItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QAbstractGraphicsShapeItemdragEnterEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QAbstractGraphicsShapeItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QAbstractGraphicsShapeItemdragMoveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QAbstractGraphicsShapeItemdropEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QAbstractGraphicsShapeItemfocusInEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QAbstractGraphicsShapeItemfocusOutEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QAbstractGraphicsShapeItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QAbstractGraphicsShapeItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QAbstractGraphicsShapeItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QAbstractGraphicsShapeItemkeyPressEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QAbstractGraphicsShapeItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QAbstractGraphicsShapeItemmousePressEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QAbstractGraphicsShapeItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QAbstractGraphicsShapeItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QAbstractGraphicsShapeItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QAbstractGraphicsShapeItemwheelEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QAbstractGraphicsShapeIteminputMethodEvent*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractGraphicsShapeItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QAbstractGraphicsShapeIteminputMethodQuery*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractGraphicsShapeItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QAbstractGraphicsShapeItemitemChange*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractGraphicsShapeItem_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc QAbstractGraphicsShapeItemsupportsExtension*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, extension: cint): bool =
  fcQAbstractGraphicsShapeItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QAbstractGraphicsShapeItemsetExtension*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQAbstractGraphicsShapeItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QAbstractGraphicsShapeItemextension*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractGraphicsShapeItem_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQAbstractGraphicsShapeItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractGraphicsShapeItemVTable](vtbl)
  let self = QAbstractGraphicsShapeItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): void =
  fcQAbstractGraphicsShapeItem_protectedbase_updateMicroFocus(self.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): void =
  fcQAbstractGraphicsShapeItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): void =
  fcQAbstractGraphicsShapeItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem, ): void =
  fcQAbstractGraphicsShapeItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QAbstractGraphicsShapeItem,
    vtbl: ref QAbstractGraphicsShapeItemVTable = nil): gen_qgraphicsitem_types.QAbstractGraphicsShapeItem =
  let vtbl = if vtbl == nil: new QAbstractGraphicsShapeItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractGraphicsShapeItemVTable, _: ptr cQAbstractGraphicsShapeItem) {.cdecl.} =
    let vtbl = cast[ref QAbstractGraphicsShapeItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQAbstractGraphicsShapeItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQAbstractGraphicsShapeItem_opaqueArea
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQAbstractGraphicsShapeItem_advance
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQAbstractGraphicsShapeItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQAbstractGraphicsShapeItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQAbstractGraphicsShapeItem_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQAbstractGraphicsShapeItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQAbstractGraphicsShapeItem_collidesWithPath
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQAbstractGraphicsShapeItem_paint
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQAbstractGraphicsShapeItem_typeX
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQAbstractGraphicsShapeItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractGraphicsShapeItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQAbstractGraphicsShapeItem_itemChange
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQAbstractGraphicsShapeItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQAbstractGraphicsShapeItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQAbstractGraphicsShapeItem_extension
  gen_qgraphicsitem_types.QAbstractGraphicsShapeItem(h: fcQAbstractGraphicsShapeItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QAbstractGraphicsShapeItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QAbstractGraphicsShapeItemVTable = nil): gen_qgraphicsitem_types.QAbstractGraphicsShapeItem =
  let vtbl = if vtbl == nil: new QAbstractGraphicsShapeItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractGraphicsShapeItemVTable, _: ptr cQAbstractGraphicsShapeItem) {.cdecl.} =
    let vtbl = cast[ref QAbstractGraphicsShapeItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQAbstractGraphicsShapeItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQAbstractGraphicsShapeItem_opaqueArea
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQAbstractGraphicsShapeItem_advance
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQAbstractGraphicsShapeItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQAbstractGraphicsShapeItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQAbstractGraphicsShapeItem_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQAbstractGraphicsShapeItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQAbstractGraphicsShapeItem_collidesWithPath
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQAbstractGraphicsShapeItem_paint
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQAbstractGraphicsShapeItem_typeX
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQAbstractGraphicsShapeItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractGraphicsShapeItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractGraphicsShapeItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQAbstractGraphicsShapeItem_itemChange
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQAbstractGraphicsShapeItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQAbstractGraphicsShapeItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQAbstractGraphicsShapeItem_extension
  gen_qgraphicsitem_types.QAbstractGraphicsShapeItem(h: fcQAbstractGraphicsShapeItem_new2(addr(vtbl[]), parent.h))

proc delete*(self: gen_qgraphicsitem_types.QAbstractGraphicsShapeItem) =
  fcQAbstractGraphicsShapeItem_delete(self.h)
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

type QGraphicsPathItemboundingRectProc* = proc(self: QGraphicsPathItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsPathItemshapeProc* = proc(self: QGraphicsPathItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsPathItemcontainsProc* = proc(self: QGraphicsPathItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsPathItempaintProc* = proc(self: QGraphicsPathItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsPathItemisObscuredByProc* = proc(self: QGraphicsPathItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsPathItemopaqueAreaProc* = proc(self: QGraphicsPathItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsPathItemtypeXProc* = proc(self: QGraphicsPathItem): cint {.raises: [], gcsafe.}
type QGraphicsPathItemsupportsExtensionProc* = proc(self: QGraphicsPathItem, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsPathItemsetExtensionProc* = proc(self: QGraphicsPathItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsPathItemextensionProc* = proc(self: QGraphicsPathItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsPathItemadvanceProc* = proc(self: QGraphicsPathItem, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsPathItemcollidesWithItemProc* = proc(self: QGraphicsPathItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsPathItemcollidesWithPathProc* = proc(self: QGraphicsPathItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsPathItemsceneEventFilterProc* = proc(self: QGraphicsPathItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsPathItemsceneEventProc* = proc(self: QGraphicsPathItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsPathItemcontextMenuEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemdragEnterEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemdragLeaveEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemdragMoveEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemdropEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemfocusInEventProc* = proc(self: QGraphicsPathItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemfocusOutEventProc* = proc(self: QGraphicsPathItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemhoverEnterEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemhoverMoveEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemhoverLeaveEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemkeyPressEventProc* = proc(self: QGraphicsPathItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemkeyReleaseEventProc* = proc(self: QGraphicsPathItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemmousePressEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemmouseMoveEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemmouseReleaseEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemmouseDoubleClickEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPathItemwheelEventProc* = proc(self: QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsPathIteminputMethodEventProc* = proc(self: QGraphicsPathItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsPathIteminputMethodQueryProc* = proc(self: QGraphicsPathItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsPathItemitemChangeProc* = proc(self: QGraphicsPathItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsPathItemVTable* = object
  vtbl: cQGraphicsPathItemVTable
  boundingRect*: QGraphicsPathItemboundingRectProc
  shape*: QGraphicsPathItemshapeProc
  contains*: QGraphicsPathItemcontainsProc
  paint*: QGraphicsPathItempaintProc
  isObscuredBy*: QGraphicsPathItemisObscuredByProc
  opaqueArea*: QGraphicsPathItemopaqueAreaProc
  typeX*: QGraphicsPathItemtypeXProc
  supportsExtension*: QGraphicsPathItemsupportsExtensionProc
  setExtension*: QGraphicsPathItemsetExtensionProc
  extension*: QGraphicsPathItemextensionProc
  advance*: QGraphicsPathItemadvanceProc
  collidesWithItem*: QGraphicsPathItemcollidesWithItemProc
  collidesWithPath*: QGraphicsPathItemcollidesWithPathProc
  sceneEventFilter*: QGraphicsPathItemsceneEventFilterProc
  sceneEvent*: QGraphicsPathItemsceneEventProc
  contextMenuEvent*: QGraphicsPathItemcontextMenuEventProc
  dragEnterEvent*: QGraphicsPathItemdragEnterEventProc
  dragLeaveEvent*: QGraphicsPathItemdragLeaveEventProc
  dragMoveEvent*: QGraphicsPathItemdragMoveEventProc
  dropEvent*: QGraphicsPathItemdropEventProc
  focusInEvent*: QGraphicsPathItemfocusInEventProc
  focusOutEvent*: QGraphicsPathItemfocusOutEventProc
  hoverEnterEvent*: QGraphicsPathItemhoverEnterEventProc
  hoverMoveEvent*: QGraphicsPathItemhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsPathItemhoverLeaveEventProc
  keyPressEvent*: QGraphicsPathItemkeyPressEventProc
  keyReleaseEvent*: QGraphicsPathItemkeyReleaseEventProc
  mousePressEvent*: QGraphicsPathItemmousePressEventProc
  mouseMoveEvent*: QGraphicsPathItemmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsPathItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsPathItemmouseDoubleClickEventProc
  wheelEvent*: QGraphicsPathItemwheelEventProc
  inputMethodEvent*: QGraphicsPathIteminputMethodEventProc
  inputMethodQuery*: QGraphicsPathIteminputMethodQueryProc
  itemChange*: QGraphicsPathItemitemChangeProc
proc QGraphicsPathItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsPathItem_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsPathItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsPathItemshape*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPathItem_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsPathItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsPathItemcontains*(self: gen_qgraphicsitem_types.QGraphicsPathItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsPathItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsPathItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsPathItempaint*(self: gen_qgraphicsitem_types.QGraphicsPathItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsPathItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsPathItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsPathItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPathItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsPathItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsPathItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsPathItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPathItem_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsPathItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsPathItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): cint =
  fcQGraphicsPathItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsPathItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsPathItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsPathItem, extension: cint): bool =
  fcQGraphicsPathItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsPathItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsPathItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsPathItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsPathItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsPathItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsPathItemextension*(self: gen_qgraphicsitem_types.QGraphicsPathItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsPathItem_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsPathItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc QGraphicsPathItemadvance*(self: gen_qgraphicsitem_types.QGraphicsPathItem, phase: cint): void =
  fcQGraphicsPathItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsPathItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsPathItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsPathItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsPathItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsPathItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsPathItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsPathItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsPathItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsPathItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsPathItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsPathItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsPathItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsPathItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsPathItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsPathItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsPathItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsPathItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPathItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsPathItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPathItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsPathItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPathItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsPathItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPathItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsPathItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsPathItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsPathItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsPathItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsPathItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsPathItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsPathItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsPathItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsPathItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsPathItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsPathItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsPathItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsPathItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsPathItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsPathItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPathItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsPathItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPathItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsPathItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPathItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsPathItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPathItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsPathItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsPathItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsPathIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsPathItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsPathItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPathItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsPathIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsPathItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsPathItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsPathItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsPathItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsPathItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsPathItem_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsPathItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPathItemVTable](vtbl)
  let self = QGraphicsPathItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): void =
  fcQGraphicsPathItem_protectedbase_updateMicroFocus(self.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): void =
  fcQGraphicsPathItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): void =
  fcQGraphicsPathItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QGraphicsPathItem, ): void =
  fcQGraphicsPathItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPathItem,
    vtbl: ref QGraphicsPathItemVTable = nil): gen_qgraphicsitem_types.QGraphicsPathItem =
  let vtbl = if vtbl == nil: new QGraphicsPathItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsPathItemVTable, _: ptr cQGraphicsPathItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsPathItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsPathItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsPathItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsPathItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsPathItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsPathItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsPathItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsPathItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsPathItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsPathItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsPathItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsPathItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsPathItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsPathItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsPathItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsPathItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsPathItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsPathItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsPathItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsPathItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsPathItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsPathItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsPathItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsPathItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsPathItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsPathItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsPathItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsPathItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsPathItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsPathItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsPathItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsPathItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsPathItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsPathItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsPathItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsPathItem_itemChange
  gen_qgraphicsitem_types.QGraphicsPathItem(h: fcQGraphicsPathItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPathItem,
    path: gen_qpainterpath_types.QPainterPath,
    vtbl: ref QGraphicsPathItemVTable = nil): gen_qgraphicsitem_types.QGraphicsPathItem =
  let vtbl = if vtbl == nil: new QGraphicsPathItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsPathItemVTable, _: ptr cQGraphicsPathItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsPathItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsPathItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsPathItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsPathItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsPathItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsPathItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsPathItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsPathItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsPathItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsPathItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsPathItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsPathItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsPathItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsPathItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsPathItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsPathItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsPathItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsPathItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsPathItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsPathItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsPathItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsPathItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsPathItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsPathItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsPathItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsPathItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsPathItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsPathItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsPathItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsPathItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsPathItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsPathItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsPathItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsPathItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsPathItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsPathItem_itemChange
  gen_qgraphicsitem_types.QGraphicsPathItem(h: fcQGraphicsPathItem_new2(addr(vtbl[]), path.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPathItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsPathItemVTable = nil): gen_qgraphicsitem_types.QGraphicsPathItem =
  let vtbl = if vtbl == nil: new QGraphicsPathItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsPathItemVTable, _: ptr cQGraphicsPathItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsPathItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsPathItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsPathItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsPathItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsPathItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsPathItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsPathItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsPathItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsPathItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsPathItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsPathItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsPathItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsPathItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsPathItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsPathItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsPathItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsPathItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsPathItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsPathItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsPathItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsPathItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsPathItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsPathItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsPathItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsPathItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsPathItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsPathItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsPathItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsPathItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsPathItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsPathItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsPathItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsPathItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsPathItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsPathItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsPathItem_itemChange
  gen_qgraphicsitem_types.QGraphicsPathItem(h: fcQGraphicsPathItem_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPathItem,
    path: gen_qpainterpath_types.QPainterPath, parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsPathItemVTable = nil): gen_qgraphicsitem_types.QGraphicsPathItem =
  let vtbl = if vtbl == nil: new QGraphicsPathItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsPathItemVTable, _: ptr cQGraphicsPathItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsPathItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsPathItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsPathItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsPathItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsPathItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsPathItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsPathItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsPathItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsPathItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsPathItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsPathItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsPathItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsPathItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsPathItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsPathItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsPathItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsPathItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsPathItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsPathItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsPathItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsPathItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsPathItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsPathItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsPathItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsPathItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsPathItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsPathItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsPathItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsPathItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsPathItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsPathItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsPathItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsPathItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsPathItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsPathItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsPathItem_itemChange
  gen_qgraphicsitem_types.QGraphicsPathItem(h: fcQGraphicsPathItem_new4(addr(vtbl[]), path.h, parent.h))

proc delete*(self: gen_qgraphicsitem_types.QGraphicsPathItem) =
  fcQGraphicsPathItem_delete(self.h)
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

type QGraphicsRectItemboundingRectProc* = proc(self: QGraphicsRectItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsRectItemshapeProc* = proc(self: QGraphicsRectItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsRectItemcontainsProc* = proc(self: QGraphicsRectItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsRectItempaintProc* = proc(self: QGraphicsRectItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsRectItemisObscuredByProc* = proc(self: QGraphicsRectItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsRectItemopaqueAreaProc* = proc(self: QGraphicsRectItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsRectItemtypeXProc* = proc(self: QGraphicsRectItem): cint {.raises: [], gcsafe.}
type QGraphicsRectItemsupportsExtensionProc* = proc(self: QGraphicsRectItem, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsRectItemsetExtensionProc* = proc(self: QGraphicsRectItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsRectItemextensionProc* = proc(self: QGraphicsRectItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsRectItemadvanceProc* = proc(self: QGraphicsRectItem, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsRectItemcollidesWithItemProc* = proc(self: QGraphicsRectItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsRectItemcollidesWithPathProc* = proc(self: QGraphicsRectItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsRectItemsceneEventFilterProc* = proc(self: QGraphicsRectItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsRectItemsceneEventProc* = proc(self: QGraphicsRectItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsRectItemcontextMenuEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemdragEnterEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemdragLeaveEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemdragMoveEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemdropEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemfocusInEventProc* = proc(self: QGraphicsRectItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemfocusOutEventProc* = proc(self: QGraphicsRectItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemhoverEnterEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemhoverMoveEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemhoverLeaveEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemkeyPressEventProc* = proc(self: QGraphicsRectItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemkeyReleaseEventProc* = proc(self: QGraphicsRectItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemmousePressEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemmouseMoveEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemmouseReleaseEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemmouseDoubleClickEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsRectItemwheelEventProc* = proc(self: QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsRectIteminputMethodEventProc* = proc(self: QGraphicsRectItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsRectIteminputMethodQueryProc* = proc(self: QGraphicsRectItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsRectItemitemChangeProc* = proc(self: QGraphicsRectItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsRectItemVTable* = object
  vtbl: cQGraphicsRectItemVTable
  boundingRect*: QGraphicsRectItemboundingRectProc
  shape*: QGraphicsRectItemshapeProc
  contains*: QGraphicsRectItemcontainsProc
  paint*: QGraphicsRectItempaintProc
  isObscuredBy*: QGraphicsRectItemisObscuredByProc
  opaqueArea*: QGraphicsRectItemopaqueAreaProc
  typeX*: QGraphicsRectItemtypeXProc
  supportsExtension*: QGraphicsRectItemsupportsExtensionProc
  setExtension*: QGraphicsRectItemsetExtensionProc
  extension*: QGraphicsRectItemextensionProc
  advance*: QGraphicsRectItemadvanceProc
  collidesWithItem*: QGraphicsRectItemcollidesWithItemProc
  collidesWithPath*: QGraphicsRectItemcollidesWithPathProc
  sceneEventFilter*: QGraphicsRectItemsceneEventFilterProc
  sceneEvent*: QGraphicsRectItemsceneEventProc
  contextMenuEvent*: QGraphicsRectItemcontextMenuEventProc
  dragEnterEvent*: QGraphicsRectItemdragEnterEventProc
  dragLeaveEvent*: QGraphicsRectItemdragLeaveEventProc
  dragMoveEvent*: QGraphicsRectItemdragMoveEventProc
  dropEvent*: QGraphicsRectItemdropEventProc
  focusInEvent*: QGraphicsRectItemfocusInEventProc
  focusOutEvent*: QGraphicsRectItemfocusOutEventProc
  hoverEnterEvent*: QGraphicsRectItemhoverEnterEventProc
  hoverMoveEvent*: QGraphicsRectItemhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsRectItemhoverLeaveEventProc
  keyPressEvent*: QGraphicsRectItemkeyPressEventProc
  keyReleaseEvent*: QGraphicsRectItemkeyReleaseEventProc
  mousePressEvent*: QGraphicsRectItemmousePressEventProc
  mouseMoveEvent*: QGraphicsRectItemmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsRectItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsRectItemmouseDoubleClickEventProc
  wheelEvent*: QGraphicsRectItemwheelEventProc
  inputMethodEvent*: QGraphicsRectIteminputMethodEventProc
  inputMethodQuery*: QGraphicsRectIteminputMethodQueryProc
  itemChange*: QGraphicsRectItemitemChangeProc
proc QGraphicsRectItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsRectItem_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsRectItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsRectItemshape*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsRectItem_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsRectItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsRectItemcontains*(self: gen_qgraphicsitem_types.QGraphicsRectItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsRectItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsRectItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsRectItempaint*(self: gen_qgraphicsitem_types.QGraphicsRectItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsRectItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsRectItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsRectItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsRectItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsRectItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsRectItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsRectItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsRectItem_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsRectItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsRectItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): cint =
  fcQGraphicsRectItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsRectItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsRectItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsRectItem, extension: cint): bool =
  fcQGraphicsRectItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsRectItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsRectItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsRectItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsRectItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsRectItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsRectItemextension*(self: gen_qgraphicsitem_types.QGraphicsRectItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsRectItem_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsRectItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc QGraphicsRectItemadvance*(self: gen_qgraphicsitem_types.QGraphicsRectItem, phase: cint): void =
  fcQGraphicsRectItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsRectItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsRectItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsRectItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsRectItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsRectItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsRectItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsRectItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsRectItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsRectItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsRectItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsRectItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsRectItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsRectItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsRectItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsRectItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsRectItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsRectItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsRectItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsRectItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsRectItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsRectItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsRectItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsRectItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsRectItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsRectItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsRectItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsRectItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsRectItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsRectItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsRectItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsRectItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsRectItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsRectItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsRectItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsRectItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsRectItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsRectItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsRectItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsRectItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsRectItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsRectItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsRectItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsRectItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsRectItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsRectItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsRectItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsRectItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsRectItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsRectIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsRectItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsRectItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRectItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsRectIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsRectItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsRectItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsRectItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsRectItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsRectItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsRectItem_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsRectItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRectItemVTable](vtbl)
  let self = QGraphicsRectItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): void =
  fcQGraphicsRectItem_protectedbase_updateMicroFocus(self.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): void =
  fcQGraphicsRectItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): void =
  fcQGraphicsRectItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QGraphicsRectItem, ): void =
  fcQGraphicsRectItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem,
    vtbl: ref QGraphicsRectItemVTable = nil): gen_qgraphicsitem_types.QGraphicsRectItem =
  let vtbl = if vtbl == nil: new QGraphicsRectItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsRectItemVTable, _: ptr cQGraphicsRectItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsRectItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsRectItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsRectItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsRectItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsRectItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsRectItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsRectItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsRectItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsRectItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsRectItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsRectItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsRectItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsRectItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsRectItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsRectItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsRectItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsRectItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsRectItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsRectItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsRectItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsRectItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsRectItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsRectItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsRectItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsRectItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsRectItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsRectItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsRectItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsRectItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsRectItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsRectItem_itemChange
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsRectItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem,
    rect: gen_qrect_types.QRectF,
    vtbl: ref QGraphicsRectItemVTable = nil): gen_qgraphicsitem_types.QGraphicsRectItem =
  let vtbl = if vtbl == nil: new QGraphicsRectItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsRectItemVTable, _: ptr cQGraphicsRectItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsRectItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsRectItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsRectItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsRectItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsRectItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsRectItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsRectItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsRectItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsRectItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsRectItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsRectItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsRectItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsRectItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsRectItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsRectItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsRectItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsRectItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsRectItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsRectItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsRectItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsRectItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsRectItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsRectItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsRectItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsRectItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsRectItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsRectItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsRectItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsRectItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsRectItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsRectItem_itemChange
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsRectItem_new2(addr(vtbl[]), rect.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem,
    x: float64, y: float64, w: float64, h: float64,
    vtbl: ref QGraphicsRectItemVTable = nil): gen_qgraphicsitem_types.QGraphicsRectItem =
  let vtbl = if vtbl == nil: new QGraphicsRectItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsRectItemVTable, _: ptr cQGraphicsRectItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsRectItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsRectItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsRectItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsRectItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsRectItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsRectItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsRectItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsRectItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsRectItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsRectItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsRectItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsRectItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsRectItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsRectItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsRectItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsRectItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsRectItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsRectItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsRectItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsRectItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsRectItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsRectItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsRectItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsRectItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsRectItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsRectItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsRectItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsRectItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsRectItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsRectItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsRectItem_itemChange
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsRectItem_new3(addr(vtbl[]), x, y, w, h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsRectItemVTable = nil): gen_qgraphicsitem_types.QGraphicsRectItem =
  let vtbl = if vtbl == nil: new QGraphicsRectItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsRectItemVTable, _: ptr cQGraphicsRectItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsRectItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsRectItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsRectItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsRectItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsRectItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsRectItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsRectItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsRectItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsRectItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsRectItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsRectItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsRectItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsRectItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsRectItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsRectItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsRectItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsRectItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsRectItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsRectItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsRectItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsRectItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsRectItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsRectItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsRectItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsRectItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsRectItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsRectItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsRectItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsRectItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsRectItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsRectItem_itemChange
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsRectItem_new4(addr(vtbl[]), parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem,
    rect: gen_qrect_types.QRectF, parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsRectItemVTable = nil): gen_qgraphicsitem_types.QGraphicsRectItem =
  let vtbl = if vtbl == nil: new QGraphicsRectItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsRectItemVTable, _: ptr cQGraphicsRectItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsRectItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsRectItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsRectItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsRectItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsRectItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsRectItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsRectItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsRectItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsRectItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsRectItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsRectItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsRectItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsRectItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsRectItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsRectItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsRectItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsRectItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsRectItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsRectItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsRectItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsRectItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsRectItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsRectItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsRectItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsRectItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsRectItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsRectItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsRectItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsRectItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsRectItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsRectItem_itemChange
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsRectItem_new5(addr(vtbl[]), rect.h, parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsRectItem,
    x: float64, y: float64, w: float64, h: float64, parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsRectItemVTable = nil): gen_qgraphicsitem_types.QGraphicsRectItem =
  let vtbl = if vtbl == nil: new QGraphicsRectItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsRectItemVTable, _: ptr cQGraphicsRectItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsRectItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsRectItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsRectItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsRectItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsRectItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsRectItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsRectItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsRectItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsRectItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsRectItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsRectItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsRectItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsRectItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsRectItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsRectItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsRectItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsRectItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsRectItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsRectItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsRectItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsRectItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsRectItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsRectItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsRectItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsRectItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsRectItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsRectItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsRectItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsRectItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsRectItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsRectItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsRectItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsRectItem_itemChange
  gen_qgraphicsitem_types.QGraphicsRectItem(h: fcQGraphicsRectItem_new6(addr(vtbl[]), x, y, w, h, parent.h))

proc delete*(self: gen_qgraphicsitem_types.QGraphicsRectItem) =
  fcQGraphicsRectItem_delete(self.h)
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

type QGraphicsEllipseItemboundingRectProc* = proc(self: QGraphicsEllipseItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsEllipseItemshapeProc* = proc(self: QGraphicsEllipseItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsEllipseItemcontainsProc* = proc(self: QGraphicsEllipseItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsEllipseItempaintProc* = proc(self: QGraphicsEllipseItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemisObscuredByProc* = proc(self: QGraphicsEllipseItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsEllipseItemopaqueAreaProc* = proc(self: QGraphicsEllipseItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsEllipseItemtypeXProc* = proc(self: QGraphicsEllipseItem): cint {.raises: [], gcsafe.}
type QGraphicsEllipseItemsupportsExtensionProc* = proc(self: QGraphicsEllipseItem, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsEllipseItemsetExtensionProc* = proc(self: QGraphicsEllipseItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemextensionProc* = proc(self: QGraphicsEllipseItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsEllipseItemadvanceProc* = proc(self: QGraphicsEllipseItem, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemcollidesWithItemProc* = proc(self: QGraphicsEllipseItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsEllipseItemcollidesWithPathProc* = proc(self: QGraphicsEllipseItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsEllipseItemsceneEventFilterProc* = proc(self: QGraphicsEllipseItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsEllipseItemsceneEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsEllipseItemcontextMenuEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemdragEnterEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemdragLeaveEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemdragMoveEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemdropEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemfocusInEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemfocusOutEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemhoverEnterEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemhoverMoveEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemhoverLeaveEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemkeyPressEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemkeyReleaseEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemmousePressEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemmouseMoveEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemmouseReleaseEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemmouseDoubleClickEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseItemwheelEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseIteminputMethodEventProc* = proc(self: QGraphicsEllipseItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsEllipseIteminputMethodQueryProc* = proc(self: QGraphicsEllipseItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsEllipseItemitemChangeProc* = proc(self: QGraphicsEllipseItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsEllipseItemVTable* = object
  vtbl: cQGraphicsEllipseItemVTable
  boundingRect*: QGraphicsEllipseItemboundingRectProc
  shape*: QGraphicsEllipseItemshapeProc
  contains*: QGraphicsEllipseItemcontainsProc
  paint*: QGraphicsEllipseItempaintProc
  isObscuredBy*: QGraphicsEllipseItemisObscuredByProc
  opaqueArea*: QGraphicsEllipseItemopaqueAreaProc
  typeX*: QGraphicsEllipseItemtypeXProc
  supportsExtension*: QGraphicsEllipseItemsupportsExtensionProc
  setExtension*: QGraphicsEllipseItemsetExtensionProc
  extension*: QGraphicsEllipseItemextensionProc
  advance*: QGraphicsEllipseItemadvanceProc
  collidesWithItem*: QGraphicsEllipseItemcollidesWithItemProc
  collidesWithPath*: QGraphicsEllipseItemcollidesWithPathProc
  sceneEventFilter*: QGraphicsEllipseItemsceneEventFilterProc
  sceneEvent*: QGraphicsEllipseItemsceneEventProc
  contextMenuEvent*: QGraphicsEllipseItemcontextMenuEventProc
  dragEnterEvent*: QGraphicsEllipseItemdragEnterEventProc
  dragLeaveEvent*: QGraphicsEllipseItemdragLeaveEventProc
  dragMoveEvent*: QGraphicsEllipseItemdragMoveEventProc
  dropEvent*: QGraphicsEllipseItemdropEventProc
  focusInEvent*: QGraphicsEllipseItemfocusInEventProc
  focusOutEvent*: QGraphicsEllipseItemfocusOutEventProc
  hoverEnterEvent*: QGraphicsEllipseItemhoverEnterEventProc
  hoverMoveEvent*: QGraphicsEllipseItemhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsEllipseItemhoverLeaveEventProc
  keyPressEvent*: QGraphicsEllipseItemkeyPressEventProc
  keyReleaseEvent*: QGraphicsEllipseItemkeyReleaseEventProc
  mousePressEvent*: QGraphicsEllipseItemmousePressEventProc
  mouseMoveEvent*: QGraphicsEllipseItemmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsEllipseItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsEllipseItemmouseDoubleClickEventProc
  wheelEvent*: QGraphicsEllipseItemwheelEventProc
  inputMethodEvent*: QGraphicsEllipseIteminputMethodEventProc
  inputMethodQuery*: QGraphicsEllipseIteminputMethodQueryProc
  itemChange*: QGraphicsEllipseItemitemChangeProc
proc QGraphicsEllipseItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEllipseItem_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsEllipseItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsEllipseItemshape*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsEllipseItem_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsEllipseItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsEllipseItemcontains*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsEllipseItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsEllipseItempaint*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsEllipseItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsEllipseItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsEllipseItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsEllipseItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsEllipseItem_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsEllipseItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsEllipseItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): cint =
  fcQGraphicsEllipseItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsEllipseItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, extension: cint): bool =
  fcQGraphicsEllipseItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsEllipseItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsEllipseItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsEllipseItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsEllipseItemextension*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsEllipseItem_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsEllipseItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc QGraphicsEllipseItemadvance*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, phase: cint): void =
  fcQGraphicsEllipseItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsEllipseItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsEllipseItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsEllipseItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsEllipseItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsEllipseItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsEllipseItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsEllipseItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsEllipseItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsEllipseItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsEllipseItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsEllipseItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsEllipseItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsEllipseItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsEllipseItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsEllipseItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsEllipseItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsEllipseItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsEllipseItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsEllipseItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsEllipseItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsEllipseItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsEllipseItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsEllipseItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsEllipseItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsEllipseItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsEllipseItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsEllipseItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsEllipseItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsEllipseItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsEllipseItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsEllipseItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsEllipseItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsEllipseItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsEllipseItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsEllipseItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsEllipseItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsEllipseItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsEllipseItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsEllipseItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsEllipseItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsEllipseItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsEllipseItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsEllipseItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsEllipseItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsEllipseIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsEllipseItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEllipseItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsEllipseIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsEllipseItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsEllipseItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsEllipseItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsEllipseItem_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsEllipseItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEllipseItemVTable](vtbl)
  let self = QGraphicsEllipseItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): void =
  fcQGraphicsEllipseItem_protectedbase_updateMicroFocus(self.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): void =
  fcQGraphicsEllipseItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): void =
  fcQGraphicsEllipseItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem, ): void =
  fcQGraphicsEllipseItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem,
    vtbl: ref QGraphicsEllipseItemVTable = nil): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  let vtbl = if vtbl == nil: new QGraphicsEllipseItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsEllipseItemVTable, _: ptr cQGraphicsEllipseItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsEllipseItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsEllipseItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsEllipseItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsEllipseItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsEllipseItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsEllipseItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsEllipseItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsEllipseItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsEllipseItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsEllipseItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsEllipseItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsEllipseItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsEllipseItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsEllipseItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsEllipseItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsEllipseItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsEllipseItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsEllipseItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsEllipseItem_itemChange
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsEllipseItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem,
    rect: gen_qrect_types.QRectF,
    vtbl: ref QGraphicsEllipseItemVTable = nil): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  let vtbl = if vtbl == nil: new QGraphicsEllipseItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsEllipseItemVTable, _: ptr cQGraphicsEllipseItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsEllipseItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsEllipseItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsEllipseItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsEllipseItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsEllipseItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsEllipseItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsEllipseItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsEllipseItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsEllipseItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsEllipseItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsEllipseItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsEllipseItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsEllipseItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsEllipseItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsEllipseItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsEllipseItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsEllipseItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsEllipseItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsEllipseItem_itemChange
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsEllipseItem_new2(addr(vtbl[]), rect.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem,
    x: float64, y: float64, w: float64, h: float64,
    vtbl: ref QGraphicsEllipseItemVTable = nil): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  let vtbl = if vtbl == nil: new QGraphicsEllipseItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsEllipseItemVTable, _: ptr cQGraphicsEllipseItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsEllipseItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsEllipseItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsEllipseItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsEllipseItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsEllipseItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsEllipseItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsEllipseItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsEllipseItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsEllipseItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsEllipseItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsEllipseItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsEllipseItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsEllipseItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsEllipseItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsEllipseItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsEllipseItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsEllipseItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsEllipseItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsEllipseItem_itemChange
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsEllipseItem_new3(addr(vtbl[]), x, y, w, h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsEllipseItemVTable = nil): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  let vtbl = if vtbl == nil: new QGraphicsEllipseItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsEllipseItemVTable, _: ptr cQGraphicsEllipseItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsEllipseItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsEllipseItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsEllipseItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsEllipseItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsEllipseItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsEllipseItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsEllipseItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsEllipseItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsEllipseItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsEllipseItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsEllipseItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsEllipseItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsEllipseItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsEllipseItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsEllipseItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsEllipseItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsEllipseItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsEllipseItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsEllipseItem_itemChange
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsEllipseItem_new4(addr(vtbl[]), parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem,
    rect: gen_qrect_types.QRectF, parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsEllipseItemVTable = nil): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  let vtbl = if vtbl == nil: new QGraphicsEllipseItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsEllipseItemVTable, _: ptr cQGraphicsEllipseItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsEllipseItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsEllipseItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsEllipseItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsEllipseItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsEllipseItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsEllipseItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsEllipseItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsEllipseItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsEllipseItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsEllipseItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsEllipseItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsEllipseItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsEllipseItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsEllipseItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsEllipseItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsEllipseItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsEllipseItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsEllipseItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsEllipseItem_itemChange
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsEllipseItem_new5(addr(vtbl[]), rect.h, parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsEllipseItem,
    x: float64, y: float64, w: float64, h: float64, parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsEllipseItemVTable = nil): gen_qgraphicsitem_types.QGraphicsEllipseItem =
  let vtbl = if vtbl == nil: new QGraphicsEllipseItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsEllipseItemVTable, _: ptr cQGraphicsEllipseItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsEllipseItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsEllipseItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsEllipseItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsEllipseItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsEllipseItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsEllipseItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsEllipseItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsEllipseItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsEllipseItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsEllipseItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsEllipseItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsEllipseItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsEllipseItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsEllipseItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsEllipseItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsEllipseItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsEllipseItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsEllipseItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsEllipseItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsEllipseItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsEllipseItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsEllipseItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsEllipseItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsEllipseItem_itemChange
  gen_qgraphicsitem_types.QGraphicsEllipseItem(h: fcQGraphicsEllipseItem_new6(addr(vtbl[]), x, y, w, h, parent.h))

proc delete*(self: gen_qgraphicsitem_types.QGraphicsEllipseItem) =
  fcQGraphicsEllipseItem_delete(self.h)
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

type QGraphicsPolygonItemboundingRectProc* = proc(self: QGraphicsPolygonItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsPolygonItemshapeProc* = proc(self: QGraphicsPolygonItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsPolygonItemcontainsProc* = proc(self: QGraphicsPolygonItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsPolygonItempaintProc* = proc(self: QGraphicsPolygonItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemisObscuredByProc* = proc(self: QGraphicsPolygonItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsPolygonItemopaqueAreaProc* = proc(self: QGraphicsPolygonItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsPolygonItemtypeXProc* = proc(self: QGraphicsPolygonItem): cint {.raises: [], gcsafe.}
type QGraphicsPolygonItemsupportsExtensionProc* = proc(self: QGraphicsPolygonItem, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsPolygonItemsetExtensionProc* = proc(self: QGraphicsPolygonItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemextensionProc* = proc(self: QGraphicsPolygonItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsPolygonItemadvanceProc* = proc(self: QGraphicsPolygonItem, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemcollidesWithItemProc* = proc(self: QGraphicsPolygonItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsPolygonItemcollidesWithPathProc* = proc(self: QGraphicsPolygonItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsPolygonItemsceneEventFilterProc* = proc(self: QGraphicsPolygonItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsPolygonItemsceneEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsPolygonItemcontextMenuEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemdragEnterEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemdragLeaveEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemdragMoveEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemdropEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemfocusInEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemfocusOutEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemhoverEnterEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemhoverMoveEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemhoverLeaveEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemkeyPressEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemkeyReleaseEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemmousePressEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemmouseMoveEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemmouseReleaseEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemmouseDoubleClickEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonItemwheelEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonIteminputMethodEventProc* = proc(self: QGraphicsPolygonItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsPolygonIteminputMethodQueryProc* = proc(self: QGraphicsPolygonItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsPolygonItemitemChangeProc* = proc(self: QGraphicsPolygonItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsPolygonItemVTable* = object
  vtbl: cQGraphicsPolygonItemVTable
  boundingRect*: QGraphicsPolygonItemboundingRectProc
  shape*: QGraphicsPolygonItemshapeProc
  contains*: QGraphicsPolygonItemcontainsProc
  paint*: QGraphicsPolygonItempaintProc
  isObscuredBy*: QGraphicsPolygonItemisObscuredByProc
  opaqueArea*: QGraphicsPolygonItemopaqueAreaProc
  typeX*: QGraphicsPolygonItemtypeXProc
  supportsExtension*: QGraphicsPolygonItemsupportsExtensionProc
  setExtension*: QGraphicsPolygonItemsetExtensionProc
  extension*: QGraphicsPolygonItemextensionProc
  advance*: QGraphicsPolygonItemadvanceProc
  collidesWithItem*: QGraphicsPolygonItemcollidesWithItemProc
  collidesWithPath*: QGraphicsPolygonItemcollidesWithPathProc
  sceneEventFilter*: QGraphicsPolygonItemsceneEventFilterProc
  sceneEvent*: QGraphicsPolygonItemsceneEventProc
  contextMenuEvent*: QGraphicsPolygonItemcontextMenuEventProc
  dragEnterEvent*: QGraphicsPolygonItemdragEnterEventProc
  dragLeaveEvent*: QGraphicsPolygonItemdragLeaveEventProc
  dragMoveEvent*: QGraphicsPolygonItemdragMoveEventProc
  dropEvent*: QGraphicsPolygonItemdropEventProc
  focusInEvent*: QGraphicsPolygonItemfocusInEventProc
  focusOutEvent*: QGraphicsPolygonItemfocusOutEventProc
  hoverEnterEvent*: QGraphicsPolygonItemhoverEnterEventProc
  hoverMoveEvent*: QGraphicsPolygonItemhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsPolygonItemhoverLeaveEventProc
  keyPressEvent*: QGraphicsPolygonItemkeyPressEventProc
  keyReleaseEvent*: QGraphicsPolygonItemkeyReleaseEventProc
  mousePressEvent*: QGraphicsPolygonItemmousePressEventProc
  mouseMoveEvent*: QGraphicsPolygonItemmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsPolygonItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsPolygonItemmouseDoubleClickEventProc
  wheelEvent*: QGraphicsPolygonItemwheelEventProc
  inputMethodEvent*: QGraphicsPolygonIteminputMethodEventProc
  inputMethodQuery*: QGraphicsPolygonIteminputMethodQueryProc
  itemChange*: QGraphicsPolygonItemitemChangeProc
proc QGraphicsPolygonItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsPolygonItem_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsPolygonItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsPolygonItemshape*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPolygonItem_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsPolygonItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsPolygonItemcontains*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsPolygonItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsPolygonItempaint*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsPolygonItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsPolygonItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsPolygonItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsPolygonItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPolygonItem_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsPolygonItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsPolygonItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): cint =
  fcQGraphicsPolygonItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsPolygonItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, extension: cint): bool =
  fcQGraphicsPolygonItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsPolygonItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsPolygonItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsPolygonItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsPolygonItemextension*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsPolygonItem_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsPolygonItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc QGraphicsPolygonItemadvance*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, phase: cint): void =
  fcQGraphicsPolygonItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsPolygonItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsPolygonItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsPolygonItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsPolygonItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsPolygonItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsPolygonItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsPolygonItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsPolygonItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsPolygonItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsPolygonItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsPolygonItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsPolygonItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsPolygonItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsPolygonItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPolygonItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsPolygonItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPolygonItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsPolygonItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPolygonItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsPolygonItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPolygonItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsPolygonItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsPolygonItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsPolygonItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsPolygonItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsPolygonItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsPolygonItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsPolygonItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsPolygonItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsPolygonItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsPolygonItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsPolygonItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsPolygonItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsPolygonItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsPolygonItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsPolygonItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPolygonItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsPolygonItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPolygonItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsPolygonItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPolygonItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsPolygonItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsPolygonItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsPolygonItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsPolygonIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsPolygonItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPolygonItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsPolygonIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsPolygonItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsPolygonItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsPolygonItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsPolygonItem_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsPolygonItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPolygonItemVTable](vtbl)
  let self = QGraphicsPolygonItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): void =
  fcQGraphicsPolygonItem_protectedbase_updateMicroFocus(self.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): void =
  fcQGraphicsPolygonItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): void =
  fcQGraphicsPolygonItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem, ): void =
  fcQGraphicsPolygonItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPolygonItem,
    vtbl: ref QGraphicsPolygonItemVTable = nil): gen_qgraphicsitem_types.QGraphicsPolygonItem =
  let vtbl = if vtbl == nil: new QGraphicsPolygonItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsPolygonItemVTable, _: ptr cQGraphicsPolygonItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsPolygonItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsPolygonItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsPolygonItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsPolygonItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsPolygonItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsPolygonItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsPolygonItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsPolygonItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsPolygonItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsPolygonItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsPolygonItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsPolygonItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsPolygonItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsPolygonItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsPolygonItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsPolygonItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsPolygonItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsPolygonItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsPolygonItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsPolygonItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsPolygonItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsPolygonItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsPolygonItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsPolygonItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsPolygonItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsPolygonItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsPolygonItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsPolygonItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsPolygonItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsPolygonItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsPolygonItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsPolygonItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsPolygonItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsPolygonItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsPolygonItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsPolygonItem_itemChange
  gen_qgraphicsitem_types.QGraphicsPolygonItem(h: fcQGraphicsPolygonItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPolygonItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsPolygonItemVTable = nil): gen_qgraphicsitem_types.QGraphicsPolygonItem =
  let vtbl = if vtbl == nil: new QGraphicsPolygonItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsPolygonItemVTable, _: ptr cQGraphicsPolygonItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsPolygonItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsPolygonItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsPolygonItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsPolygonItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsPolygonItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsPolygonItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsPolygonItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsPolygonItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsPolygonItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsPolygonItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsPolygonItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsPolygonItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsPolygonItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsPolygonItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsPolygonItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsPolygonItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsPolygonItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsPolygonItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsPolygonItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsPolygonItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsPolygonItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsPolygonItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsPolygonItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsPolygonItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsPolygonItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsPolygonItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsPolygonItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsPolygonItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsPolygonItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsPolygonItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsPolygonItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsPolygonItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsPolygonItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsPolygonItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsPolygonItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsPolygonItem_itemChange
  gen_qgraphicsitem_types.QGraphicsPolygonItem(h: fcQGraphicsPolygonItem_new2(addr(vtbl[]), parent.h))

proc delete*(self: gen_qgraphicsitem_types.QGraphicsPolygonItem) =
  fcQGraphicsPolygonItem_delete(self.h)
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

type QGraphicsLineItemboundingRectProc* = proc(self: QGraphicsLineItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsLineItemshapeProc* = proc(self: QGraphicsLineItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsLineItemcontainsProc* = proc(self: QGraphicsLineItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsLineItempaintProc* = proc(self: QGraphicsLineItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsLineItemisObscuredByProc* = proc(self: QGraphicsLineItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsLineItemopaqueAreaProc* = proc(self: QGraphicsLineItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsLineItemtypeXProc* = proc(self: QGraphicsLineItem): cint {.raises: [], gcsafe.}
type QGraphicsLineItemsupportsExtensionProc* = proc(self: QGraphicsLineItem, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsLineItemsetExtensionProc* = proc(self: QGraphicsLineItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsLineItemextensionProc* = proc(self: QGraphicsLineItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsLineItemadvanceProc* = proc(self: QGraphicsLineItem, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsLineItemcollidesWithItemProc* = proc(self: QGraphicsLineItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsLineItemcollidesWithPathProc* = proc(self: QGraphicsLineItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsLineItemsceneEventFilterProc* = proc(self: QGraphicsLineItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsLineItemsceneEventProc* = proc(self: QGraphicsLineItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsLineItemcontextMenuEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemdragEnterEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemdragLeaveEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemdragMoveEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemdropEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemfocusInEventProc* = proc(self: QGraphicsLineItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemfocusOutEventProc* = proc(self: QGraphicsLineItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemhoverEnterEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemhoverMoveEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemhoverLeaveEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemkeyPressEventProc* = proc(self: QGraphicsLineItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemkeyReleaseEventProc* = proc(self: QGraphicsLineItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemmousePressEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemmouseMoveEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemmouseReleaseEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemmouseDoubleClickEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsLineItemwheelEventProc* = proc(self: QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsLineIteminputMethodEventProc* = proc(self: QGraphicsLineItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsLineIteminputMethodQueryProc* = proc(self: QGraphicsLineItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsLineItemitemChangeProc* = proc(self: QGraphicsLineItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsLineItemVTable* = object
  vtbl: cQGraphicsLineItemVTable
  boundingRect*: QGraphicsLineItemboundingRectProc
  shape*: QGraphicsLineItemshapeProc
  contains*: QGraphicsLineItemcontainsProc
  paint*: QGraphicsLineItempaintProc
  isObscuredBy*: QGraphicsLineItemisObscuredByProc
  opaqueArea*: QGraphicsLineItemopaqueAreaProc
  typeX*: QGraphicsLineItemtypeXProc
  supportsExtension*: QGraphicsLineItemsupportsExtensionProc
  setExtension*: QGraphicsLineItemsetExtensionProc
  extension*: QGraphicsLineItemextensionProc
  advance*: QGraphicsLineItemadvanceProc
  collidesWithItem*: QGraphicsLineItemcollidesWithItemProc
  collidesWithPath*: QGraphicsLineItemcollidesWithPathProc
  sceneEventFilter*: QGraphicsLineItemsceneEventFilterProc
  sceneEvent*: QGraphicsLineItemsceneEventProc
  contextMenuEvent*: QGraphicsLineItemcontextMenuEventProc
  dragEnterEvent*: QGraphicsLineItemdragEnterEventProc
  dragLeaveEvent*: QGraphicsLineItemdragLeaveEventProc
  dragMoveEvent*: QGraphicsLineItemdragMoveEventProc
  dropEvent*: QGraphicsLineItemdropEventProc
  focusInEvent*: QGraphicsLineItemfocusInEventProc
  focusOutEvent*: QGraphicsLineItemfocusOutEventProc
  hoverEnterEvent*: QGraphicsLineItemhoverEnterEventProc
  hoverMoveEvent*: QGraphicsLineItemhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsLineItemhoverLeaveEventProc
  keyPressEvent*: QGraphicsLineItemkeyPressEventProc
  keyReleaseEvent*: QGraphicsLineItemkeyReleaseEventProc
  mousePressEvent*: QGraphicsLineItemmousePressEventProc
  mouseMoveEvent*: QGraphicsLineItemmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsLineItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsLineItemmouseDoubleClickEventProc
  wheelEvent*: QGraphicsLineItemwheelEventProc
  inputMethodEvent*: QGraphicsLineIteminputMethodEventProc
  inputMethodQuery*: QGraphicsLineIteminputMethodQueryProc
  itemChange*: QGraphicsLineItemitemChangeProc
proc QGraphicsLineItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsLineItem_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsLineItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsLineItemshape*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsLineItem_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsLineItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsLineItemcontains*(self: gen_qgraphicsitem_types.QGraphicsLineItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsLineItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsLineItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsLineItempaint*(self: gen_qgraphicsitem_types.QGraphicsLineItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsLineItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsLineItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsLineItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsLineItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsLineItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsLineItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsLineItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsLineItem_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsLineItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsLineItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): cint =
  fcQGraphicsLineItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsLineItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsLineItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsLineItem, extension: cint): bool =
  fcQGraphicsLineItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsLineItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsLineItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsLineItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsLineItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsLineItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsLineItemextension*(self: gen_qgraphicsitem_types.QGraphicsLineItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsLineItem_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsLineItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc QGraphicsLineItemadvance*(self: gen_qgraphicsitem_types.QGraphicsLineItem, phase: cint): void =
  fcQGraphicsLineItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsLineItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsLineItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsLineItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsLineItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsLineItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsLineItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsLineItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsLineItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsLineItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsLineItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsLineItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsLineItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsLineItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsLineItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsLineItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsLineItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsLineItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsLineItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsLineItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsLineItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsLineItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsLineItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsLineItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsLineItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsLineItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsLineItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsLineItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsLineItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsLineItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsLineItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsLineItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsLineItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsLineItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsLineItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsLineItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsLineItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsLineItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsLineItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsLineItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsLineItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsLineItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsLineItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsLineItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsLineItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsLineItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsLineItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsLineItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsLineItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsLineIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsLineItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsLineItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsLineItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsLineIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsLineItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsLineItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsLineItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsLineItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsLineItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsLineItem_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsLineItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLineItemVTable](vtbl)
  let self = QGraphicsLineItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): void =
  fcQGraphicsLineItem_protectedbase_updateMicroFocus(self.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): void =
  fcQGraphicsLineItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): void =
  fcQGraphicsLineItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QGraphicsLineItem, ): void =
  fcQGraphicsLineItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem,
    vtbl: ref QGraphicsLineItemVTable = nil): gen_qgraphicsitem_types.QGraphicsLineItem =
  let vtbl = if vtbl == nil: new QGraphicsLineItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsLineItemVTable, _: ptr cQGraphicsLineItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLineItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsLineItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsLineItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsLineItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsLineItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsLineItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsLineItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsLineItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsLineItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsLineItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsLineItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsLineItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsLineItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsLineItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsLineItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsLineItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsLineItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsLineItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsLineItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsLineItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsLineItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsLineItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsLineItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsLineItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsLineItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsLineItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsLineItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsLineItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsLineItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsLineItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsLineItem_itemChange
  gen_qgraphicsitem_types.QGraphicsLineItem(h: fcQGraphicsLineItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem,
    line: gen_qline_types.QLineF,
    vtbl: ref QGraphicsLineItemVTable = nil): gen_qgraphicsitem_types.QGraphicsLineItem =
  let vtbl = if vtbl == nil: new QGraphicsLineItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsLineItemVTable, _: ptr cQGraphicsLineItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLineItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsLineItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsLineItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsLineItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsLineItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsLineItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsLineItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsLineItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsLineItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsLineItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsLineItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsLineItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsLineItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsLineItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsLineItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsLineItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsLineItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsLineItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsLineItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsLineItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsLineItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsLineItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsLineItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsLineItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsLineItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsLineItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsLineItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsLineItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsLineItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsLineItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsLineItem_itemChange
  gen_qgraphicsitem_types.QGraphicsLineItem(h: fcQGraphicsLineItem_new2(addr(vtbl[]), line.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem,
    x1: float64, y1: float64, x2: float64, y2: float64,
    vtbl: ref QGraphicsLineItemVTable = nil): gen_qgraphicsitem_types.QGraphicsLineItem =
  let vtbl = if vtbl == nil: new QGraphicsLineItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsLineItemVTable, _: ptr cQGraphicsLineItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLineItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsLineItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsLineItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsLineItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsLineItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsLineItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsLineItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsLineItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsLineItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsLineItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsLineItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsLineItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsLineItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsLineItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsLineItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsLineItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsLineItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsLineItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsLineItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsLineItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsLineItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsLineItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsLineItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsLineItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsLineItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsLineItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsLineItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsLineItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsLineItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsLineItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsLineItem_itemChange
  gen_qgraphicsitem_types.QGraphicsLineItem(h: fcQGraphicsLineItem_new3(addr(vtbl[]), x1, y1, x2, y2))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsLineItemVTable = nil): gen_qgraphicsitem_types.QGraphicsLineItem =
  let vtbl = if vtbl == nil: new QGraphicsLineItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsLineItemVTable, _: ptr cQGraphicsLineItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLineItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsLineItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsLineItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsLineItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsLineItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsLineItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsLineItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsLineItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsLineItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsLineItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsLineItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsLineItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsLineItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsLineItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsLineItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsLineItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsLineItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsLineItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsLineItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsLineItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsLineItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsLineItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsLineItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsLineItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsLineItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsLineItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsLineItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsLineItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsLineItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsLineItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsLineItem_itemChange
  gen_qgraphicsitem_types.QGraphicsLineItem(h: fcQGraphicsLineItem_new4(addr(vtbl[]), parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem,
    line: gen_qline_types.QLineF, parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsLineItemVTable = nil): gen_qgraphicsitem_types.QGraphicsLineItem =
  let vtbl = if vtbl == nil: new QGraphicsLineItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsLineItemVTable, _: ptr cQGraphicsLineItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLineItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsLineItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsLineItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsLineItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsLineItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsLineItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsLineItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsLineItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsLineItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsLineItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsLineItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsLineItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsLineItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsLineItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsLineItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsLineItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsLineItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsLineItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsLineItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsLineItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsLineItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsLineItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsLineItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsLineItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsLineItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsLineItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsLineItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsLineItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsLineItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsLineItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsLineItem_itemChange
  gen_qgraphicsitem_types.QGraphicsLineItem(h: fcQGraphicsLineItem_new5(addr(vtbl[]), line.h, parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsLineItem,
    x1: float64, y1: float64, x2: float64, y2: float64, parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsLineItemVTable = nil): gen_qgraphicsitem_types.QGraphicsLineItem =
  let vtbl = if vtbl == nil: new QGraphicsLineItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsLineItemVTable, _: ptr cQGraphicsLineItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLineItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsLineItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsLineItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsLineItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsLineItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsLineItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsLineItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsLineItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsLineItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsLineItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsLineItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsLineItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsLineItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsLineItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsLineItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsLineItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsLineItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsLineItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsLineItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsLineItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsLineItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsLineItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsLineItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsLineItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsLineItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsLineItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsLineItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsLineItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsLineItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsLineItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsLineItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsLineItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsLineItem_itemChange
  gen_qgraphicsitem_types.QGraphicsLineItem(h: fcQGraphicsLineItem_new6(addr(vtbl[]), x1, y1, x2, y2, parent.h))

proc delete*(self: gen_qgraphicsitem_types.QGraphicsLineItem) =
  fcQGraphicsLineItem_delete(self.h)
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

type QGraphicsPixmapItemboundingRectProc* = proc(self: QGraphicsPixmapItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsPixmapItemshapeProc* = proc(self: QGraphicsPixmapItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsPixmapItemcontainsProc* = proc(self: QGraphicsPixmapItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsPixmapItempaintProc* = proc(self: QGraphicsPixmapItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemisObscuredByProc* = proc(self: QGraphicsPixmapItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsPixmapItemopaqueAreaProc* = proc(self: QGraphicsPixmapItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsPixmapItemtypeXProc* = proc(self: QGraphicsPixmapItem): cint {.raises: [], gcsafe.}
type QGraphicsPixmapItemsupportsExtensionProc* = proc(self: QGraphicsPixmapItem, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsPixmapItemsetExtensionProc* = proc(self: QGraphicsPixmapItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemextensionProc* = proc(self: QGraphicsPixmapItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsPixmapItemadvanceProc* = proc(self: QGraphicsPixmapItem, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemcollidesWithItemProc* = proc(self: QGraphicsPixmapItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsPixmapItemcollidesWithPathProc* = proc(self: QGraphicsPixmapItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsPixmapItemsceneEventFilterProc* = proc(self: QGraphicsPixmapItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsPixmapItemsceneEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsPixmapItemcontextMenuEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemdragEnterEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemdragLeaveEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemdragMoveEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemdropEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemfocusInEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemfocusOutEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemhoverEnterEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemhoverMoveEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemhoverLeaveEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemkeyPressEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemkeyReleaseEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemmousePressEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemmouseMoveEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemmouseReleaseEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemmouseDoubleClickEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapItemwheelEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapIteminputMethodEventProc* = proc(self: QGraphicsPixmapItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsPixmapIteminputMethodQueryProc* = proc(self: QGraphicsPixmapItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsPixmapItemitemChangeProc* = proc(self: QGraphicsPixmapItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsPixmapItemVTable* = object
  vtbl: cQGraphicsPixmapItemVTable
  boundingRect*: QGraphicsPixmapItemboundingRectProc
  shape*: QGraphicsPixmapItemshapeProc
  contains*: QGraphicsPixmapItemcontainsProc
  paint*: QGraphicsPixmapItempaintProc
  isObscuredBy*: QGraphicsPixmapItemisObscuredByProc
  opaqueArea*: QGraphicsPixmapItemopaqueAreaProc
  typeX*: QGraphicsPixmapItemtypeXProc
  supportsExtension*: QGraphicsPixmapItemsupportsExtensionProc
  setExtension*: QGraphicsPixmapItemsetExtensionProc
  extension*: QGraphicsPixmapItemextensionProc
  advance*: QGraphicsPixmapItemadvanceProc
  collidesWithItem*: QGraphicsPixmapItemcollidesWithItemProc
  collidesWithPath*: QGraphicsPixmapItemcollidesWithPathProc
  sceneEventFilter*: QGraphicsPixmapItemsceneEventFilterProc
  sceneEvent*: QGraphicsPixmapItemsceneEventProc
  contextMenuEvent*: QGraphicsPixmapItemcontextMenuEventProc
  dragEnterEvent*: QGraphicsPixmapItemdragEnterEventProc
  dragLeaveEvent*: QGraphicsPixmapItemdragLeaveEventProc
  dragMoveEvent*: QGraphicsPixmapItemdragMoveEventProc
  dropEvent*: QGraphicsPixmapItemdropEventProc
  focusInEvent*: QGraphicsPixmapItemfocusInEventProc
  focusOutEvent*: QGraphicsPixmapItemfocusOutEventProc
  hoverEnterEvent*: QGraphicsPixmapItemhoverEnterEventProc
  hoverMoveEvent*: QGraphicsPixmapItemhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsPixmapItemhoverLeaveEventProc
  keyPressEvent*: QGraphicsPixmapItemkeyPressEventProc
  keyReleaseEvent*: QGraphicsPixmapItemkeyReleaseEventProc
  mousePressEvent*: QGraphicsPixmapItemmousePressEventProc
  mouseMoveEvent*: QGraphicsPixmapItemmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsPixmapItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsPixmapItemmouseDoubleClickEventProc
  wheelEvent*: QGraphicsPixmapItemwheelEventProc
  inputMethodEvent*: QGraphicsPixmapIteminputMethodEventProc
  inputMethodQuery*: QGraphicsPixmapIteminputMethodQueryProc
  itemChange*: QGraphicsPixmapItemitemChangeProc
proc QGraphicsPixmapItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsPixmapItem_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsPixmapItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsPixmapItemshape*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPixmapItem_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsPixmapItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsPixmapItemcontains*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsPixmapItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsPixmapItempaint*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsPixmapItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsPixmapItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsPixmapItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsPixmapItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsPixmapItem_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsPixmapItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsPixmapItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): cint =
  fcQGraphicsPixmapItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsPixmapItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, extension: cint): bool =
  fcQGraphicsPixmapItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsPixmapItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsPixmapItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsPixmapItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsPixmapItemextension*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsPixmapItem_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsPixmapItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc QGraphicsPixmapItemadvance*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, phase: cint): void =
  fcQGraphicsPixmapItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsPixmapItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsPixmapItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsPixmapItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsPixmapItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsPixmapItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsPixmapItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsPixmapItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsPixmapItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsPixmapItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsPixmapItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsPixmapItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsPixmapItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsPixmapItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsPixmapItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPixmapItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsPixmapItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPixmapItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsPixmapItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPixmapItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsPixmapItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsPixmapItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsPixmapItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsPixmapItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsPixmapItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsPixmapItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsPixmapItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsPixmapItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsPixmapItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsPixmapItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsPixmapItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsPixmapItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsPixmapItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsPixmapItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsPixmapItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsPixmapItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsPixmapItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPixmapItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsPixmapItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPixmapItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsPixmapItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPixmapItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsPixmapItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsPixmapItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsPixmapItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsPixmapIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsPixmapItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsPixmapItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsPixmapIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsPixmapItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsPixmapItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsPixmapItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsPixmapItem_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsPixmapItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsPixmapItemVTable](vtbl)
  let self = QGraphicsPixmapItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): void =
  fcQGraphicsPixmapItem_protectedbase_updateMicroFocus(self.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): void =
  fcQGraphicsPixmapItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): void =
  fcQGraphicsPixmapItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem, ): void =
  fcQGraphicsPixmapItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPixmapItem,
    vtbl: ref QGraphicsPixmapItemVTable = nil): gen_qgraphicsitem_types.QGraphicsPixmapItem =
  let vtbl = if vtbl == nil: new QGraphicsPixmapItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsPixmapItemVTable, _: ptr cQGraphicsPixmapItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsPixmapItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsPixmapItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsPixmapItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsPixmapItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsPixmapItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsPixmapItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsPixmapItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsPixmapItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsPixmapItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsPixmapItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsPixmapItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsPixmapItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsPixmapItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsPixmapItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsPixmapItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsPixmapItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsPixmapItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsPixmapItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsPixmapItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsPixmapItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsPixmapItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsPixmapItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsPixmapItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsPixmapItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsPixmapItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsPixmapItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsPixmapItem_itemChange
  gen_qgraphicsitem_types.QGraphicsPixmapItem(h: fcQGraphicsPixmapItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPixmapItem,
    pixmap: gen_qpixmap_types.QPixmap,
    vtbl: ref QGraphicsPixmapItemVTable = nil): gen_qgraphicsitem_types.QGraphicsPixmapItem =
  let vtbl = if vtbl == nil: new QGraphicsPixmapItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsPixmapItemVTable, _: ptr cQGraphicsPixmapItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsPixmapItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsPixmapItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsPixmapItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsPixmapItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsPixmapItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsPixmapItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsPixmapItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsPixmapItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsPixmapItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsPixmapItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsPixmapItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsPixmapItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsPixmapItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsPixmapItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsPixmapItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsPixmapItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsPixmapItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsPixmapItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsPixmapItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsPixmapItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsPixmapItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsPixmapItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsPixmapItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsPixmapItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsPixmapItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsPixmapItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsPixmapItem_itemChange
  gen_qgraphicsitem_types.QGraphicsPixmapItem(h: fcQGraphicsPixmapItem_new2(addr(vtbl[]), pixmap.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPixmapItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsPixmapItemVTable = nil): gen_qgraphicsitem_types.QGraphicsPixmapItem =
  let vtbl = if vtbl == nil: new QGraphicsPixmapItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsPixmapItemVTable, _: ptr cQGraphicsPixmapItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsPixmapItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsPixmapItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsPixmapItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsPixmapItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsPixmapItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsPixmapItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsPixmapItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsPixmapItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsPixmapItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsPixmapItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsPixmapItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsPixmapItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsPixmapItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsPixmapItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsPixmapItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsPixmapItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsPixmapItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsPixmapItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsPixmapItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsPixmapItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsPixmapItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsPixmapItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsPixmapItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsPixmapItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsPixmapItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsPixmapItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsPixmapItem_itemChange
  gen_qgraphicsitem_types.QGraphicsPixmapItem(h: fcQGraphicsPixmapItem_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsPixmapItem,
    pixmap: gen_qpixmap_types.QPixmap, parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsPixmapItemVTable = nil): gen_qgraphicsitem_types.QGraphicsPixmapItem =
  let vtbl = if vtbl == nil: new QGraphicsPixmapItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsPixmapItemVTable, _: ptr cQGraphicsPixmapItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsPixmapItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsPixmapItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsPixmapItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsPixmapItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsPixmapItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsPixmapItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsPixmapItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsPixmapItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsPixmapItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsPixmapItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsPixmapItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsPixmapItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsPixmapItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsPixmapItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsPixmapItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsPixmapItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsPixmapItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsPixmapItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsPixmapItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsPixmapItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsPixmapItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsPixmapItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsPixmapItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsPixmapItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsPixmapItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsPixmapItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsPixmapItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsPixmapItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsPixmapItem_itemChange
  gen_qgraphicsitem_types.QGraphicsPixmapItem(h: fcQGraphicsPixmapItem_new4(addr(vtbl[]), pixmap.h, parent.h))

proc delete*(self: gen_qgraphicsitem_types.QGraphicsPixmapItem) =
  fcQGraphicsPixmapItem_delete(self.h)
proc metaObject*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsTextItem_metaObject(self.h))

proc metacast*(self: gen_qgraphicsitem_types.QGraphicsTextItem, param1: cstring): pointer =
  fcQGraphicsTextItem_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsitem_types.QGraphicsTextItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsTextItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsitem_types.QGraphicsTextItem, s: cstring): string =
  let v_ms = fcQGraphicsTextItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsitem_types.QGraphicsTextItem, s: cstring): string =
  let v_ms = fcQGraphicsTextItem_trUtf8(s)
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
proc miqt_exec_callback_cQGraphicsTextItem_linkActivated(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsTextItemlinkActivatedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsTextItem_linkActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsTextItemlinkActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlinkActivated*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemlinkActivatedSlot) =
  var tmp = new QGraphicsTextItemlinkActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_connect_linkActivated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsTextItem_linkActivated, miqt_exec_callback_cQGraphicsTextItem_linkActivated_release)

proc linkHovered*(self: gen_qgraphicsitem_types.QGraphicsTextItem, param1: string): void =
  fcQGraphicsTextItem_linkHovered(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QGraphicsTextItemlinkHoveredSlot* = proc(param1: string)
proc miqt_exec_callback_cQGraphicsTextItem_linkHovered(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsTextItemlinkHoveredSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsTextItem_linkHovered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsTextItemlinkHoveredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlinkHovered*(self: gen_qgraphicsitem_types.QGraphicsTextItem, slot: QGraphicsTextItemlinkHoveredSlot) =
  var tmp = new QGraphicsTextItemlinkHoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTextItem_connect_linkHovered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsTextItem_linkHovered, miqt_exec_callback_cQGraphicsTextItem_linkHovered_release)

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

proc trUtf8*(_: type gen_qgraphicsitem_types.QGraphicsTextItem, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsTextItem_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsitem_types.QGraphicsTextItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsTextItem_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QGraphicsTextItemmetaObjectProc* = proc(self: QGraphicsTextItem): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsTextItemmetacastProc* = proc(self: QGraphicsTextItem, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsTextItemmetacallProc* = proc(self: QGraphicsTextItem, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsTextItemboundingRectProc* = proc(self: QGraphicsTextItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsTextItemshapeProc* = proc(self: QGraphicsTextItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsTextItemcontainsProc* = proc(self: QGraphicsTextItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsTextItempaintProc* = proc(self: QGraphicsTextItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsTextItemisObscuredByProc* = proc(self: QGraphicsTextItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsTextItemopaqueAreaProc* = proc(self: QGraphicsTextItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsTextItemtypeXProc* = proc(self: QGraphicsTextItem): cint {.raises: [], gcsafe.}
type QGraphicsTextItemsceneEventProc* = proc(self: QGraphicsTextItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsTextItemmousePressEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemmouseMoveEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemmouseReleaseEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemmouseDoubleClickEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemcontextMenuEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemkeyPressEventProc* = proc(self: QGraphicsTextItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemkeyReleaseEventProc* = proc(self: QGraphicsTextItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemfocusInEventProc* = proc(self: QGraphicsTextItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemfocusOutEventProc* = proc(self: QGraphicsTextItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemdragEnterEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemdragLeaveEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemdragMoveEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemdropEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsTextIteminputMethodEventProc* = proc(self: QGraphicsTextItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemhoverEnterEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemhoverMoveEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemhoverLeaveEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsTextIteminputMethodQueryProc* = proc(self: QGraphicsTextItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsTextItemsupportsExtensionProc* = proc(self: QGraphicsTextItem, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsTextItemsetExtensionProc* = proc(self: QGraphicsTextItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsTextItemextensionProc* = proc(self: QGraphicsTextItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsTextItemeventProc* = proc(self: QGraphicsTextItem, ev: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsTextItemeventFilterProc* = proc(self: QGraphicsTextItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsTextItemtimerEventProc* = proc(self: QGraphicsTextItem, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemchildEventProc* = proc(self: QGraphicsTextItem, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemcustomEventProc* = proc(self: QGraphicsTextItem, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemconnectNotifyProc* = proc(self: QGraphicsTextItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsTextItemdisconnectNotifyProc* = proc(self: QGraphicsTextItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsTextItemadvanceProc* = proc(self: QGraphicsTextItem, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsTextItemcollidesWithItemProc* = proc(self: QGraphicsTextItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsTextItemcollidesWithPathProc* = proc(self: QGraphicsTextItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsTextItemsceneEventFilterProc* = proc(self: QGraphicsTextItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsTextItemwheelEventProc* = proc(self: QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsTextItemitemChangeProc* = proc(self: QGraphicsTextItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsTextItemVTable* = object
  vtbl: cQGraphicsTextItemVTable
  metaObject*: QGraphicsTextItemmetaObjectProc
  metacast*: QGraphicsTextItemmetacastProc
  metacall*: QGraphicsTextItemmetacallProc
  boundingRect*: QGraphicsTextItemboundingRectProc
  shape*: QGraphicsTextItemshapeProc
  contains*: QGraphicsTextItemcontainsProc
  paint*: QGraphicsTextItempaintProc
  isObscuredBy*: QGraphicsTextItemisObscuredByProc
  opaqueArea*: QGraphicsTextItemopaqueAreaProc
  typeX*: QGraphicsTextItemtypeXProc
  sceneEvent*: QGraphicsTextItemsceneEventProc
  mousePressEvent*: QGraphicsTextItemmousePressEventProc
  mouseMoveEvent*: QGraphicsTextItemmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsTextItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsTextItemmouseDoubleClickEventProc
  contextMenuEvent*: QGraphicsTextItemcontextMenuEventProc
  keyPressEvent*: QGraphicsTextItemkeyPressEventProc
  keyReleaseEvent*: QGraphicsTextItemkeyReleaseEventProc
  focusInEvent*: QGraphicsTextItemfocusInEventProc
  focusOutEvent*: QGraphicsTextItemfocusOutEventProc
  dragEnterEvent*: QGraphicsTextItemdragEnterEventProc
  dragLeaveEvent*: QGraphicsTextItemdragLeaveEventProc
  dragMoveEvent*: QGraphicsTextItemdragMoveEventProc
  dropEvent*: QGraphicsTextItemdropEventProc
  inputMethodEvent*: QGraphicsTextIteminputMethodEventProc
  hoverEnterEvent*: QGraphicsTextItemhoverEnterEventProc
  hoverMoveEvent*: QGraphicsTextItemhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsTextItemhoverLeaveEventProc
  inputMethodQuery*: QGraphicsTextIteminputMethodQueryProc
  supportsExtension*: QGraphicsTextItemsupportsExtensionProc
  setExtension*: QGraphicsTextItemsetExtensionProc
  extension*: QGraphicsTextItemextensionProc
  event*: QGraphicsTextItemeventProc
  eventFilter*: QGraphicsTextItemeventFilterProc
  timerEvent*: QGraphicsTextItemtimerEventProc
  childEvent*: QGraphicsTextItemchildEventProc
  customEvent*: QGraphicsTextItemcustomEventProc
  connectNotify*: QGraphicsTextItemconnectNotifyProc
  disconnectNotify*: QGraphicsTextItemdisconnectNotifyProc
  advance*: QGraphicsTextItemadvanceProc
  collidesWithItem*: QGraphicsTextItemcollidesWithItemProc
  collidesWithPath*: QGraphicsTextItemcollidesWithPathProc
  sceneEventFilter*: QGraphicsTextItemsceneEventFilterProc
  wheelEvent*: QGraphicsTextItemwheelEventProc
  itemChange*: QGraphicsTextItemitemChangeProc
proc QGraphicsTextItemmetaObject*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsTextItem_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsTextItem_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsTextItemmetacast*(self: gen_qgraphicsitem_types.QGraphicsTextItem, param1: cstring): pointer =
  fcQGraphicsTextItem_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsTextItem_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsTextItemmetacall*(self: gen_qgraphicsitem_types.QGraphicsTextItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsTextItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsTextItem_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsTextItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsTextItem_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsTextItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsTextItemshape*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsTextItem_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsTextItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsTextItemcontains*(self: gen_qgraphicsitem_types.QGraphicsTextItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsTextItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsTextItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsTextItempaint*(self: gen_qgraphicsitem_types.QGraphicsTextItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsTextItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsTextItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsTextItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsTextItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsTextItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsTextItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsTextItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsTextItem_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsTextItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsTextItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): cint =
  fcQGraphicsTextItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsTextItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsTextItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsTextItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsTextItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsTextItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsTextItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsTextItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsTextItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsTextItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsTextItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsTextItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsTextItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsTextItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsTextItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsTextItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsTextItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsTextItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsTextItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsTextItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsTextItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsTextItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsTextItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsTextItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsTextItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsTextItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsTextItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsTextItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsTextItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsTextItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsTextIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsTextItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsTextItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsTextItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsTextItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsTextItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsTextItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsTextItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsTextIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsTextItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsTextItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsTextItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsTextItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsTextItem, extension: cint): bool =
  fcQGraphicsTextItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsTextItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsTextItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsTextItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsTextItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsTextItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsTextItemextension*(self: gen_qgraphicsitem_types.QGraphicsTextItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsTextItem_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsTextItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc QGraphicsTextItemevent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ev: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsTextItem_virtualbase_event(self.h, ev.h)

proc miqt_exec_callback_cQGraphicsTextItem_event(vtbl: pointer, self: pointer, ev: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: ev)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsTextItemeventFilter*(self: gen_qgraphicsitem_types.QGraphicsTextItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsTextItem_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsTextItemtimerEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsTextItem_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsTextItemchildEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsTextItem_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsTextItemcustomEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsTextItem_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsTextItemconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsTextItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsTextItem_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsTextItem_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsTextItemdisconnectNotify*(self: gen_qgraphicsitem_types.QGraphicsTextItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsTextItem_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsTextItem_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc QGraphicsTextItemadvance*(self: gen_qgraphicsitem_types.QGraphicsTextItem, phase: cint): void =
  fcQGraphicsTextItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsTextItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsTextItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsTextItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsTextItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsTextItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsTextItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsTextItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsTextItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsTextItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsTextItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsTextItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsTextItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsTextItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsTextItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTextItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsTextItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsTextItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsTextItem_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsTextItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTextItemVTable](vtbl)
  let self = QGraphicsTextItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): void =
  fcQGraphicsTextItem_protectedbase_updateMicroFocus(self.h)

proc sender*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsTextItem_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): cint =
  fcQGraphicsTextItem_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicsitem_types.QGraphicsTextItem, signal: cstring): cint =
  fcQGraphicsTextItem_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicsitem_types.QGraphicsTextItem, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsTextItem_protectedbase_isSignalConnected(self.h, signal.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): void =
  fcQGraphicsTextItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): void =
  fcQGraphicsTextItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QGraphicsTextItem, ): void =
  fcQGraphicsTextItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QGraphicsTextItem,
    vtbl: ref QGraphicsTextItemVTable = nil): gen_qgraphicsitem_types.QGraphicsTextItem =
  let vtbl = if vtbl == nil: new QGraphicsTextItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsTextItemVTable, _: ptr cQGraphicsTextItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsTextItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsTextItem_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsTextItem_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsTextItem_metacall
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsTextItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsTextItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsTextItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsTextItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsTextItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsTextItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsTextItem_typeX
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsTextItem_sceneEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsTextItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsTextItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsTextItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsTextItem_mouseDoubleClickEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsTextItem_contextMenuEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsTextItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsTextItem_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsTextItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsTextItem_focusOutEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsTextItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsTextItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsTextItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsTextItem_dropEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsTextItem_inputMethodEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsTextItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsTextItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsTextItem_hoverLeaveEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsTextItem_inputMethodQuery
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsTextItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsTextItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsTextItem_extension
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsTextItem_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsTextItem_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsTextItem_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsTextItem_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsTextItem_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsTextItem_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsTextItem_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsTextItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsTextItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsTextItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsTextItem_sceneEventFilter
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsTextItem_wheelEvent
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsTextItem_itemChange
  gen_qgraphicsitem_types.QGraphicsTextItem(h: fcQGraphicsTextItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsTextItem,
    text: string,
    vtbl: ref QGraphicsTextItemVTable = nil): gen_qgraphicsitem_types.QGraphicsTextItem =
  let vtbl = if vtbl == nil: new QGraphicsTextItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsTextItemVTable, _: ptr cQGraphicsTextItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsTextItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsTextItem_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsTextItem_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsTextItem_metacall
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsTextItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsTextItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsTextItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsTextItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsTextItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsTextItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsTextItem_typeX
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsTextItem_sceneEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsTextItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsTextItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsTextItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsTextItem_mouseDoubleClickEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsTextItem_contextMenuEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsTextItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsTextItem_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsTextItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsTextItem_focusOutEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsTextItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsTextItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsTextItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsTextItem_dropEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsTextItem_inputMethodEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsTextItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsTextItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsTextItem_hoverLeaveEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsTextItem_inputMethodQuery
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsTextItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsTextItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsTextItem_extension
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsTextItem_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsTextItem_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsTextItem_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsTextItem_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsTextItem_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsTextItem_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsTextItem_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsTextItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsTextItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsTextItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsTextItem_sceneEventFilter
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsTextItem_wheelEvent
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsTextItem_itemChange
  gen_qgraphicsitem_types.QGraphicsTextItem(h: fcQGraphicsTextItem_new2(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsTextItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsTextItemVTable = nil): gen_qgraphicsitem_types.QGraphicsTextItem =
  let vtbl = if vtbl == nil: new QGraphicsTextItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsTextItemVTable, _: ptr cQGraphicsTextItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsTextItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsTextItem_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsTextItem_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsTextItem_metacall
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsTextItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsTextItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsTextItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsTextItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsTextItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsTextItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsTextItem_typeX
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsTextItem_sceneEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsTextItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsTextItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsTextItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsTextItem_mouseDoubleClickEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsTextItem_contextMenuEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsTextItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsTextItem_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsTextItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsTextItem_focusOutEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsTextItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsTextItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsTextItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsTextItem_dropEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsTextItem_inputMethodEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsTextItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsTextItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsTextItem_hoverLeaveEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsTextItem_inputMethodQuery
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsTextItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsTextItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsTextItem_extension
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsTextItem_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsTextItem_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsTextItem_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsTextItem_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsTextItem_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsTextItem_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsTextItem_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsTextItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsTextItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsTextItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsTextItem_sceneEventFilter
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsTextItem_wheelEvent
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsTextItem_itemChange
  gen_qgraphicsitem_types.QGraphicsTextItem(h: fcQGraphicsTextItem_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsTextItem,
    text: string, parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsTextItemVTable = nil): gen_qgraphicsitem_types.QGraphicsTextItem =
  let vtbl = if vtbl == nil: new QGraphicsTextItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsTextItemVTable, _: ptr cQGraphicsTextItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsTextItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsTextItem_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsTextItem_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsTextItem_metacall
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsTextItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsTextItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsTextItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsTextItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsTextItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsTextItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsTextItem_typeX
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsTextItem_sceneEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsTextItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsTextItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsTextItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsTextItem_mouseDoubleClickEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsTextItem_contextMenuEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsTextItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsTextItem_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsTextItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsTextItem_focusOutEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsTextItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsTextItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsTextItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsTextItem_dropEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsTextItem_inputMethodEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsTextItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsTextItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsTextItem_hoverLeaveEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsTextItem_inputMethodQuery
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsTextItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsTextItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsTextItem_extension
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsTextItem_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsTextItem_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsTextItem_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsTextItem_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsTextItem_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsTextItem_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsTextItem_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsTextItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsTextItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsTextItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsTextItem_sceneEventFilter
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsTextItem_wheelEvent
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsTextItem_itemChange
  gen_qgraphicsitem_types.QGraphicsTextItem(h: fcQGraphicsTextItem_new4(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc staticMetaObject*(_: type gen_qgraphicsitem_types.QGraphicsTextItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsTextItem_staticMetaObject())
proc delete*(self: gen_qgraphicsitem_types.QGraphicsTextItem) =
  fcQGraphicsTextItem_delete(self.h)
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

type QGraphicsSimpleTextItemboundingRectProc* = proc(self: QGraphicsSimpleTextItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemshapeProc* = proc(self: QGraphicsSimpleTextItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemcontainsProc* = proc(self: QGraphicsSimpleTextItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsSimpleTextItempaintProc* = proc(self: QGraphicsSimpleTextItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemisObscuredByProc* = proc(self: QGraphicsSimpleTextItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemopaqueAreaProc* = proc(self: QGraphicsSimpleTextItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemtypeXProc* = proc(self: QGraphicsSimpleTextItem): cint {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemsupportsExtensionProc* = proc(self: QGraphicsSimpleTextItem, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemsetExtensionProc* = proc(self: QGraphicsSimpleTextItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemextensionProc* = proc(self: QGraphicsSimpleTextItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemadvanceProc* = proc(self: QGraphicsSimpleTextItem, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemcollidesWithItemProc* = proc(self: QGraphicsSimpleTextItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemcollidesWithPathProc* = proc(self: QGraphicsSimpleTextItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemsceneEventFilterProc* = proc(self: QGraphicsSimpleTextItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemsceneEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemcontextMenuEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemdragEnterEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemdragLeaveEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemdragMoveEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemdropEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemfocusInEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemfocusOutEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemhoverEnterEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemhoverMoveEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemhoverLeaveEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemkeyPressEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemkeyReleaseEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemmousePressEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemmouseMoveEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemmouseReleaseEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemmouseDoubleClickEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemwheelEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextIteminputMethodEventProc* = proc(self: QGraphicsSimpleTextItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsSimpleTextIteminputMethodQueryProc* = proc(self: QGraphicsSimpleTextItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemitemChangeProc* = proc(self: QGraphicsSimpleTextItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsSimpleTextItemVTable* = object
  vtbl: cQGraphicsSimpleTextItemVTable
  boundingRect*: QGraphicsSimpleTextItemboundingRectProc
  shape*: QGraphicsSimpleTextItemshapeProc
  contains*: QGraphicsSimpleTextItemcontainsProc
  paint*: QGraphicsSimpleTextItempaintProc
  isObscuredBy*: QGraphicsSimpleTextItemisObscuredByProc
  opaqueArea*: QGraphicsSimpleTextItemopaqueAreaProc
  typeX*: QGraphicsSimpleTextItemtypeXProc
  supportsExtension*: QGraphicsSimpleTextItemsupportsExtensionProc
  setExtension*: QGraphicsSimpleTextItemsetExtensionProc
  extension*: QGraphicsSimpleTextItemextensionProc
  advance*: QGraphicsSimpleTextItemadvanceProc
  collidesWithItem*: QGraphicsSimpleTextItemcollidesWithItemProc
  collidesWithPath*: QGraphicsSimpleTextItemcollidesWithPathProc
  sceneEventFilter*: QGraphicsSimpleTextItemsceneEventFilterProc
  sceneEvent*: QGraphicsSimpleTextItemsceneEventProc
  contextMenuEvent*: QGraphicsSimpleTextItemcontextMenuEventProc
  dragEnterEvent*: QGraphicsSimpleTextItemdragEnterEventProc
  dragLeaveEvent*: QGraphicsSimpleTextItemdragLeaveEventProc
  dragMoveEvent*: QGraphicsSimpleTextItemdragMoveEventProc
  dropEvent*: QGraphicsSimpleTextItemdropEventProc
  focusInEvent*: QGraphicsSimpleTextItemfocusInEventProc
  focusOutEvent*: QGraphicsSimpleTextItemfocusOutEventProc
  hoverEnterEvent*: QGraphicsSimpleTextItemhoverEnterEventProc
  hoverMoveEvent*: QGraphicsSimpleTextItemhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsSimpleTextItemhoverLeaveEventProc
  keyPressEvent*: QGraphicsSimpleTextItemkeyPressEventProc
  keyReleaseEvent*: QGraphicsSimpleTextItemkeyReleaseEventProc
  mousePressEvent*: QGraphicsSimpleTextItemmousePressEventProc
  mouseMoveEvent*: QGraphicsSimpleTextItemmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsSimpleTextItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsSimpleTextItemmouseDoubleClickEventProc
  wheelEvent*: QGraphicsSimpleTextItemwheelEventProc
  inputMethodEvent*: QGraphicsSimpleTextIteminputMethodEventProc
  inputMethodQuery*: QGraphicsSimpleTextIteminputMethodQueryProc
  itemChange*: QGraphicsSimpleTextItemitemChangeProc
proc QGraphicsSimpleTextItemboundingRect*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsSimpleTextItem_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsSimpleTextItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsSimpleTextItemshape*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsSimpleTextItem_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsSimpleTextItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsSimpleTextItemcontains*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsSimpleTextItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsSimpleTextItempaint*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsSimpleTextItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsSimpleTextItemisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsSimpleTextItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsSimpleTextItemopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsSimpleTextItem_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsSimpleTextItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsSimpleTextItemtypeX*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): cint =
  fcQGraphicsSimpleTextItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsSimpleTextItemsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, extension: cint): bool =
  fcQGraphicsSimpleTextItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsSimpleTextItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsSimpleTextItemsetExtension*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsSimpleTextItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsSimpleTextItemextension*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsSimpleTextItem_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsSimpleTextItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc QGraphicsSimpleTextItemadvance*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, phase: cint): void =
  fcQGraphicsSimpleTextItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsSimpleTextItemcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsSimpleTextItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsSimpleTextItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsSimpleTextItemcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsSimpleTextItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsSimpleTextItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsSimpleTextItemsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsSimpleTextItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsSimpleTextItemsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsSimpleTextItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsSimpleTextItemcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsSimpleTextItemdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsSimpleTextItemdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsSimpleTextItemdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsSimpleTextItemdropEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsSimpleTextItemfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsSimpleTextItemfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsSimpleTextItemhoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsSimpleTextItemhoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsSimpleTextItemhoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsSimpleTextItemkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsSimpleTextItemkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsSimpleTextItemmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsSimpleTextItemmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsSimpleTextItemmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsSimpleTextItemmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsSimpleTextItemwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsSimpleTextIteminputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsSimpleTextItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSimpleTextItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsSimpleTextIteminputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsSimpleTextItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsSimpleTextItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsSimpleTextItemitemChange*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsSimpleTextItem_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsSimpleTextItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSimpleTextItemVTable](vtbl)
  let self = QGraphicsSimpleTextItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): void =
  fcQGraphicsSimpleTextItem_protectedbase_updateMicroFocus(self.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): void =
  fcQGraphicsSimpleTextItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): void =
  fcQGraphicsSimpleTextItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem, ): void =
  fcQGraphicsSimpleTextItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QGraphicsSimpleTextItem,
    vtbl: ref QGraphicsSimpleTextItemVTable = nil): gen_qgraphicsitem_types.QGraphicsSimpleTextItem =
  let vtbl = if vtbl == nil: new QGraphicsSimpleTextItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsSimpleTextItemVTable, _: ptr cQGraphicsSimpleTextItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSimpleTextItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsSimpleTextItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsSimpleTextItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsSimpleTextItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsSimpleTextItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsSimpleTextItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsSimpleTextItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsSimpleTextItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsSimpleTextItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsSimpleTextItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsSimpleTextItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsSimpleTextItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsSimpleTextItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsSimpleTextItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsSimpleTextItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsSimpleTextItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsSimpleTextItem_itemChange
  gen_qgraphicsitem_types.QGraphicsSimpleTextItem(h: fcQGraphicsSimpleTextItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsSimpleTextItem,
    text: string,
    vtbl: ref QGraphicsSimpleTextItemVTable = nil): gen_qgraphicsitem_types.QGraphicsSimpleTextItem =
  let vtbl = if vtbl == nil: new QGraphicsSimpleTextItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsSimpleTextItemVTable, _: ptr cQGraphicsSimpleTextItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSimpleTextItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsSimpleTextItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsSimpleTextItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsSimpleTextItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsSimpleTextItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsSimpleTextItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsSimpleTextItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsSimpleTextItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsSimpleTextItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsSimpleTextItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsSimpleTextItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsSimpleTextItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsSimpleTextItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsSimpleTextItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsSimpleTextItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsSimpleTextItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsSimpleTextItem_itemChange
  gen_qgraphicsitem_types.QGraphicsSimpleTextItem(h: fcQGraphicsSimpleTextItem_new2(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsSimpleTextItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsSimpleTextItemVTable = nil): gen_qgraphicsitem_types.QGraphicsSimpleTextItem =
  let vtbl = if vtbl == nil: new QGraphicsSimpleTextItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsSimpleTextItemVTable, _: ptr cQGraphicsSimpleTextItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSimpleTextItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsSimpleTextItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsSimpleTextItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsSimpleTextItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsSimpleTextItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsSimpleTextItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsSimpleTextItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsSimpleTextItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsSimpleTextItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsSimpleTextItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsSimpleTextItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsSimpleTextItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsSimpleTextItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsSimpleTextItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsSimpleTextItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsSimpleTextItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsSimpleTextItem_itemChange
  gen_qgraphicsitem_types.QGraphicsSimpleTextItem(h: fcQGraphicsSimpleTextItem_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsSimpleTextItem,
    text: string, parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsSimpleTextItemVTable = nil): gen_qgraphicsitem_types.QGraphicsSimpleTextItem =
  let vtbl = if vtbl == nil: new QGraphicsSimpleTextItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsSimpleTextItemVTable, _: ptr cQGraphicsSimpleTextItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSimpleTextItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsSimpleTextItem_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsSimpleTextItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsSimpleTextItem_contains
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsSimpleTextItem_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsSimpleTextItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsSimpleTextItem_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsSimpleTextItem_typeX
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsSimpleTextItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsSimpleTextItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsSimpleTextItem_extension
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsSimpleTextItem_advance
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsSimpleTextItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsSimpleTextItem_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsSimpleTextItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsSimpleTextItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsSimpleTextItem_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsSimpleTextItem_itemChange
  gen_qgraphicsitem_types.QGraphicsSimpleTextItem(h: fcQGraphicsSimpleTextItem_new4(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc delete*(self: gen_qgraphicsitem_types.QGraphicsSimpleTextItem) =
  fcQGraphicsSimpleTextItem_delete(self.h)
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

type QGraphicsItemGroupboundingRectProc* = proc(self: QGraphicsItemGroup): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsItemGrouppaintProc* = proc(self: QGraphicsItemGroup, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsItemGroupisObscuredByProc* = proc(self: QGraphicsItemGroup, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsItemGroupopaqueAreaProc* = proc(self: QGraphicsItemGroup): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsItemGrouptypeXProc* = proc(self: QGraphicsItemGroup): cint {.raises: [], gcsafe.}
type QGraphicsItemGroupadvanceProc* = proc(self: QGraphicsItemGroup, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsItemGroupshapeProc* = proc(self: QGraphicsItemGroup): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsItemGroupcontainsProc* = proc(self: QGraphicsItemGroup, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsItemGroupcollidesWithItemProc* = proc(self: QGraphicsItemGroup, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsItemGroupcollidesWithPathProc* = proc(self: QGraphicsItemGroup, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsItemGroupsceneEventFilterProc* = proc(self: QGraphicsItemGroup, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsItemGroupsceneEventProc* = proc(self: QGraphicsItemGroup, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsItemGroupcontextMenuEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupdragEnterEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupdragLeaveEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupdragMoveEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupdropEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupfocusInEventProc* = proc(self: QGraphicsItemGroup, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupfocusOutEventProc* = proc(self: QGraphicsItemGroup, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGrouphoverEnterEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGrouphoverMoveEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGrouphoverLeaveEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupkeyPressEventProc* = proc(self: QGraphicsItemGroup, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupkeyReleaseEventProc* = proc(self: QGraphicsItemGroup, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupmousePressEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupmouseMoveEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupmouseReleaseEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupmouseDoubleClickEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupwheelEventProc* = proc(self: QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupinputMethodEventProc* = proc(self: QGraphicsItemGroup, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsItemGroupinputMethodQueryProc* = proc(self: QGraphicsItemGroup, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsItemGroupitemChangeProc* = proc(self: QGraphicsItemGroup, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsItemGroupsupportsExtensionProc* = proc(self: QGraphicsItemGroup, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsItemGroupsetExtensionProc* = proc(self: QGraphicsItemGroup, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsItemGroupextensionProc* = proc(self: QGraphicsItemGroup, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsItemGroupVTable* = object
  vtbl: cQGraphicsItemGroupVTable
  boundingRect*: QGraphicsItemGroupboundingRectProc
  paint*: QGraphicsItemGrouppaintProc
  isObscuredBy*: QGraphicsItemGroupisObscuredByProc
  opaqueArea*: QGraphicsItemGroupopaqueAreaProc
  typeX*: QGraphicsItemGrouptypeXProc
  advance*: QGraphicsItemGroupadvanceProc
  shape*: QGraphicsItemGroupshapeProc
  contains*: QGraphicsItemGroupcontainsProc
  collidesWithItem*: QGraphicsItemGroupcollidesWithItemProc
  collidesWithPath*: QGraphicsItemGroupcollidesWithPathProc
  sceneEventFilter*: QGraphicsItemGroupsceneEventFilterProc
  sceneEvent*: QGraphicsItemGroupsceneEventProc
  contextMenuEvent*: QGraphicsItemGroupcontextMenuEventProc
  dragEnterEvent*: QGraphicsItemGroupdragEnterEventProc
  dragLeaveEvent*: QGraphicsItemGroupdragLeaveEventProc
  dragMoveEvent*: QGraphicsItemGroupdragMoveEventProc
  dropEvent*: QGraphicsItemGroupdropEventProc
  focusInEvent*: QGraphicsItemGroupfocusInEventProc
  focusOutEvent*: QGraphicsItemGroupfocusOutEventProc
  hoverEnterEvent*: QGraphicsItemGrouphoverEnterEventProc
  hoverMoveEvent*: QGraphicsItemGrouphoverMoveEventProc
  hoverLeaveEvent*: QGraphicsItemGrouphoverLeaveEventProc
  keyPressEvent*: QGraphicsItemGroupkeyPressEventProc
  keyReleaseEvent*: QGraphicsItemGroupkeyReleaseEventProc
  mousePressEvent*: QGraphicsItemGroupmousePressEventProc
  mouseMoveEvent*: QGraphicsItemGroupmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsItemGroupmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsItemGroupmouseDoubleClickEventProc
  wheelEvent*: QGraphicsItemGroupwheelEventProc
  inputMethodEvent*: QGraphicsItemGroupinputMethodEventProc
  inputMethodQuery*: QGraphicsItemGroupinputMethodQueryProc
  itemChange*: QGraphicsItemGroupitemChangeProc
  supportsExtension*: QGraphicsItemGroupsupportsExtensionProc
  setExtension*: QGraphicsItemGroupsetExtensionProc
  extension*: QGraphicsItemGroupextensionProc
proc QGraphicsItemGroupboundingRect*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsItemGroup_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsItemGroup_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsItemGrouppaint*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsItemGroup_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsItemGroup_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsItemGroupisObscuredBy*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsItemGroup_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsItemGroup_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsItemGroupopaqueArea*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItemGroup_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsItemGroup_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsItemGrouptypeX*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): cint =
  fcQGraphicsItemGroup_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsItemGroup_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsItemGroupadvance*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, phase: cint): void =
  fcQGraphicsItemGroup_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsItemGroup_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsItemGroupshape*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsItemGroup_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsItemGroup_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsItemGroupcontains*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsItemGroup_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsItemGroup_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsItemGroupcollidesWithItem*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsItemGroup_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsItemGroup_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsItemGroupcollidesWithPath*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsItemGroup_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsItemGroup_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsItemGroupsceneEventFilter*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsItemGroup_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsItemGroupsceneEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsItemGroup_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsItemGroupcontextMenuEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsItemGroup_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsItemGroupdragEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsItemGroup_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsItemGroupdragLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsItemGroup_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsItemGroupdragMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsItemGroup_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsItemGroupdropEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsItemGroup_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsItemGroupfocusInEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsItemGroup_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsItemGroupfocusOutEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsItemGroup_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsItemGrouphoverEnterEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsItemGroup_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsItemGrouphoverMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsItemGroup_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsItemGrouphoverLeaveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsItemGroup_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsItemGroupkeyPressEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsItemGroup_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsItemGroupkeyReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsItemGroup_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsItemGroupmousePressEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsItemGroup_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsItemGroupmouseMoveEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsItemGroup_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsItemGroupmouseReleaseEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsItemGroup_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsItemGroupmouseDoubleClickEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsItemGroup_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsItemGroupwheelEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsItemGroup_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsItemGroupinputMethodEvent*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsItemGroup_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemGroup_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsItemGroupinputMethodQuery*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsItemGroup_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsItemGroup_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsItemGroupitemChange*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsItemGroup_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsItemGroup_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc QGraphicsItemGroupsupportsExtension*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, extension: cint): bool =
  fcQGraphicsItemGroup_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsItemGroup_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsItemGroupsetExtension*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsItemGroup_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsItemGroup_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsItemGroupextension*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsItemGroup_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsItemGroup_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemGroupVTable](vtbl)
  let self = QGraphicsItemGroup(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): void =
  fcQGraphicsItemGroup_protectedbase_updateMicroFocus(self.h)

proc addToIndex*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): void =
  fcQGraphicsItemGroup_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): void =
  fcQGraphicsItemGroup_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsitem_types.QGraphicsItemGroup, ): void =
  fcQGraphicsItemGroup_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsitem_types.QGraphicsItemGroup,
    vtbl: ref QGraphicsItemGroupVTable = nil): gen_qgraphicsitem_types.QGraphicsItemGroup =
  let vtbl = if vtbl == nil: new QGraphicsItemGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsItemGroupVTable, _: ptr cQGraphicsItemGroup) {.cdecl.} =
    let vtbl = cast[ref QGraphicsItemGroupVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsItemGroup_boundingRect
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsItemGroup_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsItemGroup_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsItemGroup_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsItemGroup_typeX
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsItemGroup_advance
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsItemGroup_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsItemGroup_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsItemGroup_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsItemGroup_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsItemGroup_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsItemGroup_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsItemGroup_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsItemGroup_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsItemGroup_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsItemGroup_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsItemGroup_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsItemGroup_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsItemGroup_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsItemGroup_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsItemGroup_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsItemGroup_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsItemGroup_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsItemGroup_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsItemGroup_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsItemGroup_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsItemGroup_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsItemGroup_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsItemGroup_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsItemGroup_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsItemGroup_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsItemGroup_itemChange
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsItemGroup_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsItemGroup_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsItemGroup_extension
  gen_qgraphicsitem_types.QGraphicsItemGroup(h: fcQGraphicsItemGroup_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitem_types.QGraphicsItemGroup,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsItemGroupVTable = nil): gen_qgraphicsitem_types.QGraphicsItemGroup =
  let vtbl = if vtbl == nil: new QGraphicsItemGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsItemGroupVTable, _: ptr cQGraphicsItemGroup) {.cdecl.} =
    let vtbl = cast[ref QGraphicsItemGroupVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsItemGroup_boundingRect
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsItemGroup_paint
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsItemGroup_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsItemGroup_opaqueArea
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsItemGroup_typeX
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsItemGroup_advance
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsItemGroup_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsItemGroup_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsItemGroup_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsItemGroup_collidesWithPath
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsItemGroup_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsItemGroup_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsItemGroup_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsItemGroup_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsItemGroup_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsItemGroup_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsItemGroup_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsItemGroup_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsItemGroup_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsItemGroup_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsItemGroup_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsItemGroup_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsItemGroup_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsItemGroup_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsItemGroup_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsItemGroup_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsItemGroup_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsItemGroup_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsItemGroup_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsItemGroup_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsItemGroup_inputMethodQuery
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsItemGroup_itemChange
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsItemGroup_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsItemGroup_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsItemGroup_extension
  gen_qgraphicsitem_types.QGraphicsItemGroup(h: fcQGraphicsItemGroup_new2(addr(vtbl[]), parent.h))

proc delete*(self: gen_qgraphicsitem_types.QGraphicsItemGroup) =
  fcQGraphicsItemGroup_delete(self.h)
