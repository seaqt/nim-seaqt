import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
{.compile("gen_qquickitem.cpp", cflags).}


type QQuickItemFlagEnum* = distinct cint
template ItemClipsChildrenToShape*(_: type QQuickItemFlagEnum): untyped = 1
template ItemAcceptsInputMethod*(_: type QQuickItemFlagEnum): untyped = 2
template ItemIsFocusScope*(_: type QQuickItemFlagEnum): untyped = 4
template ItemHasContents*(_: type QQuickItemFlagEnum): untyped = 8
template ItemAcceptsDrops*(_: type QQuickItemFlagEnum): untyped = 16


type QQuickItemItemChangeEnum* = distinct cint
template ItemChildAddedChange*(_: type QQuickItemItemChangeEnum): untyped = 0
template ItemChildRemovedChange*(_: type QQuickItemItemChangeEnum): untyped = 1
template ItemSceneChange*(_: type QQuickItemItemChangeEnum): untyped = 2
template ItemVisibleHasChanged*(_: type QQuickItemItemChangeEnum): untyped = 3
template ItemParentHasChanged*(_: type QQuickItemItemChangeEnum): untyped = 4
template ItemOpacityHasChanged*(_: type QQuickItemItemChangeEnum): untyped = 5
template ItemActiveFocusHasChanged*(_: type QQuickItemItemChangeEnum): untyped = 6
template ItemRotationHasChanged*(_: type QQuickItemItemChangeEnum): untyped = 7
template ItemAntialiasingHasChanged*(_: type QQuickItemItemChangeEnum): untyped = 8
template ItemDevicePixelRatioHasChanged*(_: type QQuickItemItemChangeEnum): untyped = 9
template ItemEnabledHasChanged*(_: type QQuickItemItemChangeEnum): untyped = 10


type QQuickItemTransformOriginEnum* = distinct cint
template TopLeft*(_: type QQuickItemTransformOriginEnum): untyped = 0
template Top*(_: type QQuickItemTransformOriginEnum): untyped = 1
template TopRight*(_: type QQuickItemTransformOriginEnum): untyped = 2
template Left*(_: type QQuickItemTransformOriginEnum): untyped = 3
template Center*(_: type QQuickItemTransformOriginEnum): untyped = 4
template Right*(_: type QQuickItemTransformOriginEnum): untyped = 5
template BottomLeft*(_: type QQuickItemTransformOriginEnum): untyped = 6
template Bottom*(_: type QQuickItemTransformOriginEnum): untyped = 7
template BottomRight*(_: type QQuickItemTransformOriginEnum): untyped = 8


import ./gen_qquickitem_types
export gen_qquickitem_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qcursor_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qmatrix4x4_types,
  ../QtGui/gen_qtransform_types,
  ../QtQml/gen_qjsvalue_types,
  ./gen_qquickwindow_types,
  ./gen_qsgnode_types,
  ./gen_qsgtextureprovider_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qcursor_types,
  gen_qevent_types,
  gen_qmatrix4x4_types,
  gen_qtransform_types,
  gen_qjsvalue_types,
  gen_qquickwindow_types,
  gen_qsgnode_types,
  gen_qsgtextureprovider_types

type cQQuickTransform*{.exportc: "QQuickTransform", incompleteStruct.} = object
type cQQuickItem*{.exportc: "QQuickItem", incompleteStruct.} = object
type cQQuickItemItemChangeData*{.exportc: "QQuickItem__ItemChangeData", incompleteStruct.} = object
type cQQuickItemUpdatePaintNodeData*{.exportc: "QQuickItem__UpdatePaintNodeData", incompleteStruct.} = object

proc fcQQuickTransform_new(): ptr cQQuickTransform {.importc: "QQuickTransform_new".}
proc fcQQuickTransform_new2(parent: pointer): ptr cQQuickTransform {.importc: "QQuickTransform_new2".}
proc fcQQuickTransform_metaObject(self: pointer, ): pointer {.importc: "QQuickTransform_metaObject".}
proc fcQQuickTransform_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTransform_metacast".}
proc fcQQuickTransform_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTransform_metacall".}
proc fcQQuickTransform_tr(s: cstring): struct_miqt_string {.importc: "QQuickTransform_tr".}
proc fcQQuickTransform_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickTransform_trUtf8".}
proc fcQQuickTransform_appendToItem(self: pointer, param1: pointer): void {.importc: "QQuickTransform_appendToItem".}
proc fcQQuickTransform_prependToItem(self: pointer, param1: pointer): void {.importc: "QQuickTransform_prependToItem".}
proc fcQQuickTransform_applyTo(self: pointer, matrix: pointer): void {.importc: "QQuickTransform_applyTo".}
proc fcQQuickTransform_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTransform_tr2".}
proc fcQQuickTransform_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTransform_tr3".}
proc fcQQuickTransform_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTransform_trUtf82".}
proc fcQQuickTransform_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTransform_trUtf83".}
proc fQQuickTransform_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQuickTransform_virtualbase_metaObject".}
proc fcQQuickTransform_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_metaObject".}
proc fQQuickTransform_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQuickTransform_virtualbase_metacast".}
proc fcQQuickTransform_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_metacast".}
proc fQQuickTransform_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickTransform_virtualbase_metacall".}
proc fcQQuickTransform_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_metacall".}
proc fcQQuickTransform_override_virtual_applyTo(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_applyTo".}
proc fQQuickTransform_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickTransform_virtualbase_event".}
proc fcQQuickTransform_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_event".}
proc fQQuickTransform_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickTransform_virtualbase_eventFilter".}
proc fcQQuickTransform_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_eventFilter".}
proc fQQuickTransform_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickTransform_virtualbase_timerEvent".}
proc fcQQuickTransform_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_timerEvent".}
proc fQQuickTransform_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickTransform_virtualbase_childEvent".}
proc fcQQuickTransform_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_childEvent".}
proc fQQuickTransform_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickTransform_virtualbase_customEvent".}
proc fcQQuickTransform_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_customEvent".}
proc fQQuickTransform_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickTransform_virtualbase_connectNotify".}
proc fcQQuickTransform_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_connectNotify".}
proc fQQuickTransform_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickTransform_virtualbase_disconnectNotify".}
proc fcQQuickTransform_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickTransform_override_virtual_disconnectNotify".}
proc fcQQuickTransform_staticMetaObject(): pointer {.importc: "QQuickTransform_staticMetaObject".}
proc fcQQuickTransform_delete(self: pointer) {.importc: "QQuickTransform_delete".}
proc fcQQuickItem_new(): ptr cQQuickItem {.importc: "QQuickItem_new".}
proc fcQQuickItem_new2(parent: pointer): ptr cQQuickItem {.importc: "QQuickItem_new2".}
proc fcQQuickItem_metaObject(self: pointer, ): pointer {.importc: "QQuickItem_metaObject".}
proc fcQQuickItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickItem_metacast".}
proc fcQQuickItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickItem_metacall".}
proc fcQQuickItem_tr(s: cstring): struct_miqt_string {.importc: "QQuickItem_tr".}
proc fcQQuickItem_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickItem_trUtf8".}
proc fcQQuickItem_window(self: pointer, ): pointer {.importc: "QQuickItem_window".}
proc fcQQuickItem_parentItem(self: pointer, ): pointer {.importc: "QQuickItem_parentItem".}
proc fcQQuickItem_setParentItem(self: pointer, parent: pointer): void {.importc: "QQuickItem_setParentItem".}
proc fcQQuickItem_stackBefore(self: pointer, param1: pointer): void {.importc: "QQuickItem_stackBefore".}
proc fcQQuickItem_stackAfter(self: pointer, param1: pointer): void {.importc: "QQuickItem_stackAfter".}
proc fcQQuickItem_childrenRect(self: pointer, ): pointer {.importc: "QQuickItem_childrenRect".}
proc fcQQuickItem_childItems(self: pointer, ): struct_miqt_array {.importc: "QQuickItem_childItems".}
proc fcQQuickItem_clip(self: pointer, ): bool {.importc: "QQuickItem_clip".}
proc fcQQuickItem_setClip(self: pointer, clip: bool): void {.importc: "QQuickItem_setClip".}
proc fcQQuickItem_state(self: pointer, ): struct_miqt_string {.importc: "QQuickItem_state".}
proc fcQQuickItem_setState(self: pointer, state: struct_miqt_string): void {.importc: "QQuickItem_setState".}
proc fcQQuickItem_baselineOffset(self: pointer, ): float64 {.importc: "QQuickItem_baselineOffset".}
proc fcQQuickItem_setBaselineOffset(self: pointer, baselineOffset: float64): void {.importc: "QQuickItem_setBaselineOffset".}
proc fcQQuickItem_x(self: pointer, ): float64 {.importc: "QQuickItem_x".}
proc fcQQuickItem_y(self: pointer, ): float64 {.importc: "QQuickItem_y".}
proc fcQQuickItem_position(self: pointer, ): pointer {.importc: "QQuickItem_position".}
proc fcQQuickItem_setX(self: pointer, x: float64): void {.importc: "QQuickItem_setX".}
proc fcQQuickItem_setY(self: pointer, y: float64): void {.importc: "QQuickItem_setY".}
proc fcQQuickItem_setPosition(self: pointer, position: pointer): void {.importc: "QQuickItem_setPosition".}
proc fcQQuickItem_width(self: pointer, ): float64 {.importc: "QQuickItem_width".}
proc fcQQuickItem_setWidth(self: pointer, width: float64): void {.importc: "QQuickItem_setWidth".}
proc fcQQuickItem_resetWidth(self: pointer, ): void {.importc: "QQuickItem_resetWidth".}
proc fcQQuickItem_setImplicitWidth(self: pointer, implicitWidth: float64): void {.importc: "QQuickItem_setImplicitWidth".}
proc fcQQuickItem_implicitWidth(self: pointer, ): float64 {.importc: "QQuickItem_implicitWidth".}
proc fcQQuickItem_height(self: pointer, ): float64 {.importc: "QQuickItem_height".}
proc fcQQuickItem_setHeight(self: pointer, height: float64): void {.importc: "QQuickItem_setHeight".}
proc fcQQuickItem_resetHeight(self: pointer, ): void {.importc: "QQuickItem_resetHeight".}
proc fcQQuickItem_setImplicitHeight(self: pointer, implicitHeight: float64): void {.importc: "QQuickItem_setImplicitHeight".}
proc fcQQuickItem_implicitHeight(self: pointer, ): float64 {.importc: "QQuickItem_implicitHeight".}
proc fcQQuickItem_size(self: pointer, ): pointer {.importc: "QQuickItem_size".}
proc fcQQuickItem_setSize(self: pointer, size: pointer): void {.importc: "QQuickItem_setSize".}
proc fcQQuickItem_transformOrigin(self: pointer, ): cint {.importc: "QQuickItem_transformOrigin".}
proc fcQQuickItem_setTransformOrigin(self: pointer, transformOrigin: cint): void {.importc: "QQuickItem_setTransformOrigin".}
proc fcQQuickItem_transformOriginPoint(self: pointer, ): pointer {.importc: "QQuickItem_transformOriginPoint".}
proc fcQQuickItem_setTransformOriginPoint(self: pointer, transformOriginPoint: pointer): void {.importc: "QQuickItem_setTransformOriginPoint".}
proc fcQQuickItem_z(self: pointer, ): float64 {.importc: "QQuickItem_z".}
proc fcQQuickItem_setZ(self: pointer, z: float64): void {.importc: "QQuickItem_setZ".}
proc fcQQuickItem_rotation(self: pointer, ): float64 {.importc: "QQuickItem_rotation".}
proc fcQQuickItem_setRotation(self: pointer, rotation: float64): void {.importc: "QQuickItem_setRotation".}
proc fcQQuickItem_scale(self: pointer, ): float64 {.importc: "QQuickItem_scale".}
proc fcQQuickItem_setScale(self: pointer, scale: float64): void {.importc: "QQuickItem_setScale".}
proc fcQQuickItem_opacity(self: pointer, ): float64 {.importc: "QQuickItem_opacity".}
proc fcQQuickItem_setOpacity(self: pointer, opacity: float64): void {.importc: "QQuickItem_setOpacity".}
proc fcQQuickItem_isVisible(self: pointer, ): bool {.importc: "QQuickItem_isVisible".}
proc fcQQuickItem_setVisible(self: pointer, visible: bool): void {.importc: "QQuickItem_setVisible".}
proc fcQQuickItem_isEnabled(self: pointer, ): bool {.importc: "QQuickItem_isEnabled".}
proc fcQQuickItem_setEnabled(self: pointer, enabled: bool): void {.importc: "QQuickItem_setEnabled".}
proc fcQQuickItem_smooth(self: pointer, ): bool {.importc: "QQuickItem_smooth".}
proc fcQQuickItem_setSmooth(self: pointer, smooth: bool): void {.importc: "QQuickItem_setSmooth".}
proc fcQQuickItem_activeFocusOnTab(self: pointer, ): bool {.importc: "QQuickItem_activeFocusOnTab".}
proc fcQQuickItem_setActiveFocusOnTab(self: pointer, activeFocusOnTab: bool): void {.importc: "QQuickItem_setActiveFocusOnTab".}
proc fcQQuickItem_antialiasing(self: pointer, ): bool {.importc: "QQuickItem_antialiasing".}
proc fcQQuickItem_setAntialiasing(self: pointer, antialiasing: bool): void {.importc: "QQuickItem_setAntialiasing".}
proc fcQQuickItem_resetAntialiasing(self: pointer, ): void {.importc: "QQuickItem_resetAntialiasing".}
proc fcQQuickItem_flags(self: pointer, ): cint {.importc: "QQuickItem_flags".}
proc fcQQuickItem_setFlag(self: pointer, flag: cint): void {.importc: "QQuickItem_setFlag".}
proc fcQQuickItem_setFlags(self: pointer, flags: cint): void {.importc: "QQuickItem_setFlags".}
proc fcQQuickItem_boundingRect(self: pointer, ): pointer {.importc: "QQuickItem_boundingRect".}
proc fcQQuickItem_clipRect(self: pointer, ): pointer {.importc: "QQuickItem_clipRect".}
proc fcQQuickItem_hasActiveFocus(self: pointer, ): bool {.importc: "QQuickItem_hasActiveFocus".}
proc fcQQuickItem_hasFocus(self: pointer, ): bool {.importc: "QQuickItem_hasFocus".}
proc fcQQuickItem_setFocus(self: pointer, focus: bool): void {.importc: "QQuickItem_setFocus".}
proc fcQQuickItem_setFocus2(self: pointer, focus: bool, reason: cint): void {.importc: "QQuickItem_setFocus2".}
proc fcQQuickItem_isFocusScope(self: pointer, ): bool {.importc: "QQuickItem_isFocusScope".}
proc fcQQuickItem_scopedFocusItem(self: pointer, ): pointer {.importc: "QQuickItem_scopedFocusItem".}
proc fcQQuickItem_isAncestorOf(self: pointer, child: pointer): bool {.importc: "QQuickItem_isAncestorOf".}
proc fcQQuickItem_acceptedMouseButtons(self: pointer, ): cint {.importc: "QQuickItem_acceptedMouseButtons".}
proc fcQQuickItem_setAcceptedMouseButtons(self: pointer, buttons: cint): void {.importc: "QQuickItem_setAcceptedMouseButtons".}
proc fcQQuickItem_acceptHoverEvents(self: pointer, ): bool {.importc: "QQuickItem_acceptHoverEvents".}
proc fcQQuickItem_setAcceptHoverEvents(self: pointer, enabled: bool): void {.importc: "QQuickItem_setAcceptHoverEvents".}
proc fcQQuickItem_acceptTouchEvents(self: pointer, ): bool {.importc: "QQuickItem_acceptTouchEvents".}
proc fcQQuickItem_setAcceptTouchEvents(self: pointer, accept: bool): void {.importc: "QQuickItem_setAcceptTouchEvents".}
proc fcQQuickItem_cursor(self: pointer, ): pointer {.importc: "QQuickItem_cursor".}
proc fcQQuickItem_setCursor(self: pointer, cursor: pointer): void {.importc: "QQuickItem_setCursor".}
proc fcQQuickItem_unsetCursor(self: pointer, ): void {.importc: "QQuickItem_unsetCursor".}
proc fcQQuickItem_isUnderMouse(self: pointer, ): bool {.importc: "QQuickItem_isUnderMouse".}
proc fcQQuickItem_grabMouse(self: pointer, ): void {.importc: "QQuickItem_grabMouse".}
proc fcQQuickItem_ungrabMouse(self: pointer, ): void {.importc: "QQuickItem_ungrabMouse".}
proc fcQQuickItem_keepMouseGrab(self: pointer, ): bool {.importc: "QQuickItem_keepMouseGrab".}
proc fcQQuickItem_setKeepMouseGrab(self: pointer, keepMouseGrab: bool): void {.importc: "QQuickItem_setKeepMouseGrab".}
proc fcQQuickItem_filtersChildMouseEvents(self: pointer, ): bool {.importc: "QQuickItem_filtersChildMouseEvents".}
proc fcQQuickItem_setFiltersChildMouseEvents(self: pointer, filter: bool): void {.importc: "QQuickItem_setFiltersChildMouseEvents".}
proc fcQQuickItem_grabTouchPoints(self: pointer, ids: struct_miqt_array): void {.importc: "QQuickItem_grabTouchPoints".}
proc fcQQuickItem_ungrabTouchPoints(self: pointer, ): void {.importc: "QQuickItem_ungrabTouchPoints".}
proc fcQQuickItem_keepTouchGrab(self: pointer, ): bool {.importc: "QQuickItem_keepTouchGrab".}
proc fcQQuickItem_setKeepTouchGrab(self: pointer, keepTouchGrab: bool): void {.importc: "QQuickItem_setKeepTouchGrab".}
proc fcQQuickItem_grabToImage(self: pointer, callback: pointer): bool {.importc: "QQuickItem_grabToImage".}
proc fcQQuickItem_contains(self: pointer, point: pointer): bool {.importc: "QQuickItem_contains".}
proc fcQQuickItem_containmentMask(self: pointer, ): pointer {.importc: "QQuickItem_containmentMask".}
proc fcQQuickItem_setContainmentMask(self: pointer, mask: pointer): void {.importc: "QQuickItem_setContainmentMask".}
proc fcQQuickItem_itemTransform(self: pointer, param1: pointer, param2: ptr bool): pointer {.importc: "QQuickItem_itemTransform".}
proc fcQQuickItem_mapToItem(self: pointer, item: pointer, point: pointer): pointer {.importc: "QQuickItem_mapToItem".}
proc fcQQuickItem_mapToScene(self: pointer, point: pointer): pointer {.importc: "QQuickItem_mapToScene".}
proc fcQQuickItem_mapToGlobal(self: pointer, point: pointer): pointer {.importc: "QQuickItem_mapToGlobal".}
proc fcQQuickItem_mapRectToItem(self: pointer, item: pointer, rect: pointer): pointer {.importc: "QQuickItem_mapRectToItem".}
proc fcQQuickItem_mapRectToScene(self: pointer, rect: pointer): pointer {.importc: "QQuickItem_mapRectToScene".}
proc fcQQuickItem_mapFromItem(self: pointer, item: pointer, point: pointer): pointer {.importc: "QQuickItem_mapFromItem".}
proc fcQQuickItem_mapFromScene(self: pointer, point: pointer): pointer {.importc: "QQuickItem_mapFromScene".}
proc fcQQuickItem_mapFromGlobal(self: pointer, point: pointer): pointer {.importc: "QQuickItem_mapFromGlobal".}
proc fcQQuickItem_mapRectFromItem(self: pointer, item: pointer, rect: pointer): pointer {.importc: "QQuickItem_mapRectFromItem".}
proc fcQQuickItem_mapRectFromScene(self: pointer, rect: pointer): pointer {.importc: "QQuickItem_mapRectFromScene".}
proc fcQQuickItem_polish(self: pointer, ): void {.importc: "QQuickItem_polish".}
proc fcQQuickItem_forceActiveFocus(self: pointer, ): void {.importc: "QQuickItem_forceActiveFocus".}
proc fcQQuickItem_forceActiveFocusWithReason(self: pointer, reason: cint): void {.importc: "QQuickItem_forceActiveFocusWithReason".}
proc fcQQuickItem_nextItemInFocusChain(self: pointer, ): pointer {.importc: "QQuickItem_nextItemInFocusChain".}
proc fcQQuickItem_childAt(self: pointer, x: float64, y: float64): pointer {.importc: "QQuickItem_childAt".}
proc fcQQuickItem_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QQuickItem_inputMethodQuery".}
proc fcQQuickItem_isTextureProvider(self: pointer, ): bool {.importc: "QQuickItem_isTextureProvider".}
proc fcQQuickItem_textureProvider(self: pointer, ): pointer {.importc: "QQuickItem_textureProvider".}
proc fcQQuickItem_update(self: pointer, ): void {.importc: "QQuickItem_update".}
proc fcQQuickItem_childrenRectChanged(self: pointer, param1: pointer): void {.importc: "QQuickItem_childrenRectChanged".}
proc fcQQuickItem_connect_childrenRectChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_childrenRectChanged".}
proc fcQQuickItem_baselineOffsetChanged(self: pointer, param1: float64): void {.importc: "QQuickItem_baselineOffsetChanged".}
proc fcQQuickItem_connect_baselineOffsetChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_baselineOffsetChanged".}
proc fcQQuickItem_stateChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QQuickItem_stateChanged".}
proc fcQQuickItem_connect_stateChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_stateChanged".}
proc fcQQuickItem_focusChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_focusChanged".}
proc fcQQuickItem_connect_focusChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_focusChanged".}
proc fcQQuickItem_activeFocusChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_activeFocusChanged".}
proc fcQQuickItem_connect_activeFocusChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_activeFocusChanged".}
proc fcQQuickItem_activeFocusOnTabChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_activeFocusOnTabChanged".}
proc fcQQuickItem_connect_activeFocusOnTabChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_activeFocusOnTabChanged".}
proc fcQQuickItem_parentChanged(self: pointer, param1: pointer): void {.importc: "QQuickItem_parentChanged".}
proc fcQQuickItem_connect_parentChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_parentChanged".}
proc fcQQuickItem_transformOriginChanged(self: pointer, param1: cint): void {.importc: "QQuickItem_transformOriginChanged".}
proc fcQQuickItem_connect_transformOriginChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_transformOriginChanged".}
proc fcQQuickItem_smoothChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_smoothChanged".}
proc fcQQuickItem_connect_smoothChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_smoothChanged".}
proc fcQQuickItem_antialiasingChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_antialiasingChanged".}
proc fcQQuickItem_connect_antialiasingChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_antialiasingChanged".}
proc fcQQuickItem_clipChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_clipChanged".}
proc fcQQuickItem_connect_clipChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_clipChanged".}
proc fcQQuickItem_windowChanged(self: pointer, window: pointer): void {.importc: "QQuickItem_windowChanged".}
proc fcQQuickItem_connect_windowChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_windowChanged".}
proc fcQQuickItem_childrenChanged(self: pointer, ): void {.importc: "QQuickItem_childrenChanged".}
proc fcQQuickItem_connect_childrenChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_childrenChanged".}
proc fcQQuickItem_opacityChanged(self: pointer, ): void {.importc: "QQuickItem_opacityChanged".}
proc fcQQuickItem_connect_opacityChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_opacityChanged".}
proc fcQQuickItem_enabledChanged(self: pointer, ): void {.importc: "QQuickItem_enabledChanged".}
proc fcQQuickItem_connect_enabledChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_enabledChanged".}
proc fcQQuickItem_visibleChanged(self: pointer, ): void {.importc: "QQuickItem_visibleChanged".}
proc fcQQuickItem_connect_visibleChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_visibleChanged".}
proc fcQQuickItem_visibleChildrenChanged(self: pointer, ): void {.importc: "QQuickItem_visibleChildrenChanged".}
proc fcQQuickItem_connect_visibleChildrenChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_visibleChildrenChanged".}
proc fcQQuickItem_rotationChanged(self: pointer, ): void {.importc: "QQuickItem_rotationChanged".}
proc fcQQuickItem_connect_rotationChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_rotationChanged".}
proc fcQQuickItem_scaleChanged(self: pointer, ): void {.importc: "QQuickItem_scaleChanged".}
proc fcQQuickItem_connect_scaleChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_scaleChanged".}
proc fcQQuickItem_xChanged(self: pointer, ): void {.importc: "QQuickItem_xChanged".}
proc fcQQuickItem_connect_xChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_xChanged".}
proc fcQQuickItem_yChanged(self: pointer, ): void {.importc: "QQuickItem_yChanged".}
proc fcQQuickItem_connect_yChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_yChanged".}
proc fcQQuickItem_widthChanged(self: pointer, ): void {.importc: "QQuickItem_widthChanged".}
proc fcQQuickItem_connect_widthChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_widthChanged".}
proc fcQQuickItem_heightChanged(self: pointer, ): void {.importc: "QQuickItem_heightChanged".}
proc fcQQuickItem_connect_heightChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_heightChanged".}
proc fcQQuickItem_zChanged(self: pointer, ): void {.importc: "QQuickItem_zChanged".}
proc fcQQuickItem_connect_zChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_zChanged".}
proc fcQQuickItem_implicitWidthChanged(self: pointer, ): void {.importc: "QQuickItem_implicitWidthChanged".}
proc fcQQuickItem_connect_implicitWidthChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_implicitWidthChanged".}
proc fcQQuickItem_implicitHeightChanged(self: pointer, ): void {.importc: "QQuickItem_implicitHeightChanged".}
proc fcQQuickItem_connect_implicitHeightChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_implicitHeightChanged".}
proc fcQQuickItem_containmentMaskChanged(self: pointer, ): void {.importc: "QQuickItem_containmentMaskChanged".}
proc fcQQuickItem_connect_containmentMaskChanged(self: pointer, slot: int) {.importc: "QQuickItem_connect_containmentMaskChanged".}
proc fcQQuickItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickItem_tr2".}
proc fcQQuickItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickItem_tr3".}
proc fcQQuickItem_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickItem_trUtf82".}
proc fcQQuickItem_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickItem_trUtf83".}
proc fcQQuickItem_setFlag2(self: pointer, flag: cint, enabled: bool): void {.importc: "QQuickItem_setFlag2".}
proc fcQQuickItem_grabToImage22(self: pointer, callback: pointer, targetSize: pointer): bool {.importc: "QQuickItem_grabToImage22".}
proc fcQQuickItem_nextItemInFocusChain1(self: pointer, forward: bool): pointer {.importc: "QQuickItem_nextItemInFocusChain1".}
proc fQQuickItem_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQuickItem_virtualbase_metaObject".}
proc fcQQuickItem_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_metaObject".}
proc fQQuickItem_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQuickItem_virtualbase_metacast".}
proc fcQQuickItem_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_metacast".}
proc fQQuickItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickItem_virtualbase_metacall".}
proc fcQQuickItem_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_metacall".}
proc fQQuickItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QQuickItem_virtualbase_boundingRect".}
proc fcQQuickItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_boundingRect".}
proc fQQuickItem_virtualbase_clipRect(self: pointer, ): pointer{.importc: "QQuickItem_virtualbase_clipRect".}
proc fcQQuickItem_override_virtual_clipRect(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_clipRect".}
proc fQQuickItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QQuickItem_virtualbase_contains".}
proc fcQQuickItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_contains".}
proc fQQuickItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QQuickItem_virtualbase_inputMethodQuery".}
proc fcQQuickItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_inputMethodQuery".}
proc fQQuickItem_virtualbase_isTextureProvider(self: pointer, ): bool{.importc: "QQuickItem_virtualbase_isTextureProvider".}
proc fcQQuickItem_override_virtual_isTextureProvider(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_isTextureProvider".}
proc fQQuickItem_virtualbase_textureProvider(self: pointer, ): pointer{.importc: "QQuickItem_virtualbase_textureProvider".}
proc fcQQuickItem_override_virtual_textureProvider(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_textureProvider".}
proc fQQuickItem_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQuickItem_virtualbase_event".}
proc fcQQuickItem_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_event".}
proc fQQuickItem_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void{.importc: "QQuickItem_virtualbase_itemChange".}
proc fcQQuickItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_itemChange".}
proc fQQuickItem_virtualbase_classBegin(self: pointer, ): void{.importc: "QQuickItem_virtualbase_classBegin".}
proc fcQQuickItem_override_virtual_classBegin(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_classBegin".}
proc fQQuickItem_virtualbase_componentComplete(self: pointer, ): void{.importc: "QQuickItem_virtualbase_componentComplete".}
proc fcQQuickItem_override_virtual_componentComplete(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_componentComplete".}
proc fQQuickItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_keyPressEvent".}
proc fcQQuickItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_keyPressEvent".}
proc fQQuickItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_keyReleaseEvent".}
proc fcQQuickItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_keyReleaseEvent".}
proc fQQuickItem_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_inputMethodEvent".}
proc fcQQuickItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_inputMethodEvent".}
proc fQQuickItem_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_focusInEvent".}
proc fcQQuickItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_focusInEvent".}
proc fQQuickItem_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_focusOutEvent".}
proc fcQQuickItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_focusOutEvent".}
proc fQQuickItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_mousePressEvent".}
proc fcQQuickItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_mousePressEvent".}
proc fQQuickItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_mouseMoveEvent".}
proc fcQQuickItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_mouseMoveEvent".}
proc fQQuickItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_mouseReleaseEvent".}
proc fcQQuickItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_mouseReleaseEvent".}
proc fQQuickItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_mouseDoubleClickEvent".}
proc fQQuickItem_virtualbase_mouseUngrabEvent(self: pointer, ): void{.importc: "QQuickItem_virtualbase_mouseUngrabEvent".}
proc fcQQuickItem_override_virtual_mouseUngrabEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_mouseUngrabEvent".}
proc fQQuickItem_virtualbase_touchUngrabEvent(self: pointer, ): void{.importc: "QQuickItem_virtualbase_touchUngrabEvent".}
proc fcQQuickItem_override_virtual_touchUngrabEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_touchUngrabEvent".}
proc fQQuickItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_wheelEvent".}
proc fcQQuickItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_wheelEvent".}
proc fQQuickItem_virtualbase_touchEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_touchEvent".}
proc fcQQuickItem_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_touchEvent".}
proc fQQuickItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_hoverEnterEvent".}
proc fcQQuickItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_hoverEnterEvent".}
proc fQQuickItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_hoverMoveEvent".}
proc fcQQuickItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_hoverMoveEvent".}
proc fQQuickItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_hoverLeaveEvent".}
proc fcQQuickItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_hoverLeaveEvent".}
proc fQQuickItem_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_dragEnterEvent".}
proc fcQQuickItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_dragEnterEvent".}
proc fQQuickItem_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_dragMoveEvent".}
proc fcQQuickItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_dragMoveEvent".}
proc fQQuickItem_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_dragLeaveEvent".}
proc fcQQuickItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_dragLeaveEvent".}
proc fQQuickItem_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QQuickItem_virtualbase_dropEvent".}
proc fcQQuickItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_dropEvent".}
proc fQQuickItem_virtualbase_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QQuickItem_virtualbase_childMouseEventFilter".}
proc fcQQuickItem_override_virtual_childMouseEventFilter(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_childMouseEventFilter".}
proc fQQuickItem_virtualbase_windowDeactivateEvent(self: pointer, ): void{.importc: "QQuickItem_virtualbase_windowDeactivateEvent".}
proc fcQQuickItem_override_virtual_windowDeactivateEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_windowDeactivateEvent".}
proc fQQuickItem_virtualbase_geometryChanged(self: pointer, newGeometry: pointer, oldGeometry: pointer): void{.importc: "QQuickItem_virtualbase_geometryChanged".}
proc fcQQuickItem_override_virtual_geometryChanged(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_geometryChanged".}
proc fQQuickItem_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer{.importc: "QQuickItem_virtualbase_updatePaintNode".}
proc fcQQuickItem_override_virtual_updatePaintNode(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_updatePaintNode".}
proc fQQuickItem_virtualbase_releaseResources(self: pointer, ): void{.importc: "QQuickItem_virtualbase_releaseResources".}
proc fcQQuickItem_override_virtual_releaseResources(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_releaseResources".}
proc fQQuickItem_virtualbase_updatePolish(self: pointer, ): void{.importc: "QQuickItem_virtualbase_updatePolish".}
proc fcQQuickItem_override_virtual_updatePolish(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_updatePolish".}
proc fQQuickItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickItem_virtualbase_eventFilter".}
proc fcQQuickItem_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_eventFilter".}
proc fQQuickItem_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_timerEvent".}
proc fcQQuickItem_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_timerEvent".}
proc fQQuickItem_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_childEvent".}
proc fcQQuickItem_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_childEvent".}
proc fQQuickItem_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickItem_virtualbase_customEvent".}
proc fcQQuickItem_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_customEvent".}
proc fQQuickItem_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickItem_virtualbase_connectNotify".}
proc fcQQuickItem_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_connectNotify".}
proc fQQuickItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickItem_virtualbase_disconnectNotify".}
proc fcQQuickItem_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickItem_override_virtual_disconnectNotify".}
proc fcQQuickItem_staticMetaObject(): pointer {.importc: "QQuickItem_staticMetaObject".}
proc fcQQuickItem_delete(self: pointer) {.importc: "QQuickItem_delete".}
proc fcQQuickItemItemChangeData_new(v: pointer): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new".}
proc fcQQuickItemItemChangeData_new2(v: pointer): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new2".}
proc fcQQuickItemItemChangeData_new3(v: float64): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new3".}
proc fcQQuickItemItemChangeData_new4(v: bool): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new4".}
proc fcQQuickItemItemChangeData_delete(self: pointer) {.importc: "QQuickItem__ItemChangeData_delete".}
proc fcQQuickItemUpdatePaintNodeData_delete(self: pointer) {.importc: "QQuickItem__UpdatePaintNodeData_delete".}


func init*(T: type gen_qquickitem_types.QQuickTransform, h: ptr cQQuickTransform): gen_qquickitem_types.QQuickTransform =
  T(h: h)
proc create*(T: type gen_qquickitem_types.QQuickTransform, ): gen_qquickitem_types.QQuickTransform =
  gen_qquickitem_types.QQuickTransform.init(fcQQuickTransform_new())

proc create*(T: type gen_qquickitem_types.QQuickTransform, parent: gen_qobject_types.QObject): gen_qquickitem_types.QQuickTransform =
  gen_qquickitem_types.QQuickTransform.init(fcQQuickTransform_new2(parent.h))

proc metaObject*(self: gen_qquickitem_types.QQuickTransform, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTransform_metaObject(self.h))

proc metacast*(self: gen_qquickitem_types.QQuickTransform, param1: cstring): pointer =
  fcQQuickTransform_metacast(self.h, param1)

proc metacall*(self: gen_qquickitem_types.QQuickTransform, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTransform_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickitem_types.QQuickTransform, s: cstring): string =
  let v_ms = fcQQuickTransform_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickitem_types.QQuickTransform, s: cstring): string =
  let v_ms = fcQQuickTransform_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc appendToItem*(self: gen_qquickitem_types.QQuickTransform, param1: gen_qquickitem_types.QQuickItem): void =
  fcQQuickTransform_appendToItem(self.h, param1.h)

proc prependToItem*(self: gen_qquickitem_types.QQuickTransform, param1: gen_qquickitem_types.QQuickItem): void =
  fcQQuickTransform_prependToItem(self.h, param1.h)

proc applyTo*(self: gen_qquickitem_types.QQuickTransform, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQQuickTransform_applyTo(self.h, matrix.h)

proc tr*(_: type gen_qquickitem_types.QQuickTransform, s: cstring, c: cstring): string =
  let v_ms = fcQQuickTransform_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickitem_types.QQuickTransform, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTransform_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickitem_types.QQuickTransform, s: cstring, c: cstring): string =
  let v_ms = fcQQuickTransform_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickitem_types.QQuickTransform, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTransform_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQuickTransformmetaObject*(self: gen_qquickitem_types.QQuickTransform, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQuickTransform_virtualbase_metaObject(self.h))

type QQuickTransformmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qquickitem_types.QQuickTransform, slot: QQuickTransformmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQuickTransformmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_metaObject(self: ptr cQQuickTransform, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickTransform_metaObject ".} =
  var nimfunc = cast[ptr QQuickTransformmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickTransformmetacast*(self: gen_qquickitem_types.QQuickTransform, param1: cstring): pointer =
  fQQuickTransform_virtualbase_metacast(self.h, param1)

type QQuickTransformmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qquickitem_types.QQuickTransform, slot: QQuickTransformmetacastProc) =
  # TODO check subclass
  var tmp = new QQuickTransformmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_metacast(self: ptr cQQuickTransform, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickTransform_metacast ".} =
  var nimfunc = cast[ptr QQuickTransformmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickTransformmetacall*(self: gen_qquickitem_types.QQuickTransform, param1: cint, param2: cint, param3: pointer): cint =
  fQQuickTransform_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickTransformmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qquickitem_types.QQuickTransform, slot: QQuickTransformmetacallProc) =
  # TODO check subclass
  var tmp = new QQuickTransformmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_metacall(self: ptr cQQuickTransform, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickTransform_metacall ".} =
  var nimfunc = cast[ptr QQuickTransformmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QQuickTransformapplyToProc* = proc(matrix: gen_qmatrix4x4_types.QMatrix4x4): void
proc onapplyTo*(self: gen_qquickitem_types.QQuickTransform, slot: QQuickTransformapplyToProc) =
  # TODO check subclass
  var tmp = new QQuickTransformapplyToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_applyTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_applyTo(self: ptr cQQuickTransform, slot: int, matrix: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_applyTo ".} =
  var nimfunc = cast[ptr QQuickTransformapplyToProc](cast[pointer](slot))
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix)


  nimfunc[](slotval1)
proc QQuickTransformevent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickTransform_virtualbase_event(self.h, event.h)

type QQuickTransformeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickitem_types.QQuickTransform, slot: QQuickTransformeventProc) =
  # TODO check subclass
  var tmp = new QQuickTransformeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_event(self: ptr cQQuickTransform, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTransform_event ".} =
  var nimfunc = cast[ptr QQuickTransformeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickTransformeventFilter*(self: gen_qquickitem_types.QQuickTransform, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickTransform_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickTransformeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickitem_types.QQuickTransform, slot: QQuickTransformeventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickTransformeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_eventFilter(self: ptr cQQuickTransform, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTransform_eventFilter ".} =
  var nimfunc = cast[ptr QQuickTransformeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickTransformtimerEvent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickTransform_virtualbase_timerEvent(self.h, event.h)

type QQuickTransformtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickitem_types.QQuickTransform, slot: QQuickTransformtimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickTransformtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_timerEvent(self: ptr cQQuickTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_timerEvent ".} =
  var nimfunc = cast[ptr QQuickTransformtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTransformchildEvent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickTransform_virtualbase_childEvent(self.h, event.h)

type QQuickTransformchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickitem_types.QQuickTransform, slot: QQuickTransformchildEventProc) =
  # TODO check subclass
  var tmp = new QQuickTransformchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_childEvent(self: ptr cQQuickTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_childEvent ".} =
  var nimfunc = cast[ptr QQuickTransformchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTransformcustomEvent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QEvent): void =
  fQQuickTransform_virtualbase_customEvent(self.h, event.h)

type QQuickTransformcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickitem_types.QQuickTransform, slot: QQuickTransformcustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickTransformcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_customEvent(self: ptr cQQuickTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_customEvent ".} =
  var nimfunc = cast[ptr QQuickTransformcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTransformconnectNotify*(self: gen_qquickitem_types.QQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickTransform_virtualbase_connectNotify(self.h, signal.h)

type QQuickTransformconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickitem_types.QQuickTransform, slot: QQuickTransformconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickTransformconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_connectNotify(self: ptr cQQuickTransform, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_connectNotify ".} =
  var nimfunc = cast[ptr QQuickTransformconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickTransformdisconnectNotify*(self: gen_qquickitem_types.QQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickTransform_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickTransformdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickitem_types.QQuickTransform, slot: QQuickTransformdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickTransformdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTransform_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTransform_disconnectNotify(self: ptr cQQuickTransform, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTransform_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickTransformdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qquickitem_types.QQuickTransform): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTransform_staticMetaObject())
proc delete*(self: gen_qquickitem_types.QQuickTransform) =
  fcQQuickTransform_delete(self.h)

func init*(T: type gen_qquickitem_types.QQuickItem, h: ptr cQQuickItem): gen_qquickitem_types.QQuickItem =
  T(h: h)
proc create*(T: type gen_qquickitem_types.QQuickItem, ): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem.init(fcQQuickItem_new())

proc create*(T: type gen_qquickitem_types.QQuickItem, parent: gen_qquickitem_types.QQuickItem): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem.init(fcQQuickItem_new2(parent.h))

proc metaObject*(self: gen_qquickitem_types.QQuickItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickItem_metaObject(self.h))

proc metacast*(self: gen_qquickitem_types.QQuickItem, param1: cstring): pointer =
  fcQQuickItem_metacast(self.h, param1)

proc metacall*(self: gen_qquickitem_types.QQuickItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickitem_types.QQuickItem, s: cstring): string =
  let v_ms = fcQQuickItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickitem_types.QQuickItem, s: cstring): string =
  let v_ms = fcQQuickItem_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc window*(self: gen_qquickitem_types.QQuickItem, ): gen_qquickwindow_types.QQuickWindow =
  gen_qquickwindow_types.QQuickWindow(h: fcQQuickItem_window(self.h))

proc parentItem*(self: gen_qquickitem_types.QQuickItem, ): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_parentItem(self.h))

proc setParentItem*(self: gen_qquickitem_types.QQuickItem, parent: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_setParentItem(self.h, parent.h)

proc stackBefore*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_stackBefore(self.h, param1.h)

proc stackAfter*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_stackAfter(self.h, param1.h)

proc childrenRect*(self: gen_qquickitem_types.QQuickItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_childrenRect(self.h))

proc childItems*(self: gen_qquickitem_types.QQuickItem, ): seq[gen_qquickitem_types.QQuickItem] =
  var v_ma = fcQQuickItem_childItems(self.h)
  var vx_ret = newSeq[gen_qquickitem_types.QQuickItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qquickitem_types.QQuickItem(h: v_outCast[i])
  vx_ret

proc clip*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_clip(self.h)

proc setClip*(self: gen_qquickitem_types.QQuickItem, clip: bool): void =
  fcQQuickItem_setClip(self.h, clip)

proc state*(self: gen_qquickitem_types.QQuickItem, ): string =
  let v_ms = fcQQuickItem_state(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setState*(self: gen_qquickitem_types.QQuickItem, state: string): void =
  fcQQuickItem_setState(self.h, struct_miqt_string(data: state, len: csize_t(len(state))))

proc baselineOffset*(self: gen_qquickitem_types.QQuickItem, ): float64 =
  fcQQuickItem_baselineOffset(self.h)

proc setBaselineOffset*(self: gen_qquickitem_types.QQuickItem, baselineOffset: float64): void =
  fcQQuickItem_setBaselineOffset(self.h, baselineOffset)

proc x*(self: gen_qquickitem_types.QQuickItem, ): float64 =
  fcQQuickItem_x(self.h)

proc y*(self: gen_qquickitem_types.QQuickItem, ): float64 =
  fcQQuickItem_y(self.h)

proc position*(self: gen_qquickitem_types.QQuickItem, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_position(self.h))

proc setX*(self: gen_qquickitem_types.QQuickItem, x: float64): void =
  fcQQuickItem_setX(self.h, x)

proc setY*(self: gen_qquickitem_types.QQuickItem, y: float64): void =
  fcQQuickItem_setY(self.h, y)

proc setPosition*(self: gen_qquickitem_types.QQuickItem, position: gen_qpoint_types.QPointF): void =
  fcQQuickItem_setPosition(self.h, position.h)

proc width*(self: gen_qquickitem_types.QQuickItem, ): float64 =
  fcQQuickItem_width(self.h)

proc setWidth*(self: gen_qquickitem_types.QQuickItem, width: float64): void =
  fcQQuickItem_setWidth(self.h, width)

proc resetWidth*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_resetWidth(self.h)

proc setImplicitWidth*(self: gen_qquickitem_types.QQuickItem, implicitWidth: float64): void =
  fcQQuickItem_setImplicitWidth(self.h, implicitWidth)

proc implicitWidth*(self: gen_qquickitem_types.QQuickItem, ): float64 =
  fcQQuickItem_implicitWidth(self.h)

proc height*(self: gen_qquickitem_types.QQuickItem, ): float64 =
  fcQQuickItem_height(self.h)

proc setHeight*(self: gen_qquickitem_types.QQuickItem, height: float64): void =
  fcQQuickItem_setHeight(self.h, height)

proc resetHeight*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_resetHeight(self.h)

proc setImplicitHeight*(self: gen_qquickitem_types.QQuickItem, implicitHeight: float64): void =
  fcQQuickItem_setImplicitHeight(self.h, implicitHeight)

proc implicitHeight*(self: gen_qquickitem_types.QQuickItem, ): float64 =
  fcQQuickItem_implicitHeight(self.h)

proc size*(self: gen_qquickitem_types.QQuickItem, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQQuickItem_size(self.h))

proc setSize*(self: gen_qquickitem_types.QQuickItem, size: gen_qsize_types.QSizeF): void =
  fcQQuickItem_setSize(self.h, size.h)

proc transformOrigin*(self: gen_qquickitem_types.QQuickItem, ): cint =
  cint(fcQQuickItem_transformOrigin(self.h))

proc setTransformOrigin*(self: gen_qquickitem_types.QQuickItem, transformOrigin: cint): void =
  fcQQuickItem_setTransformOrigin(self.h, cint(transformOrigin))

proc transformOriginPoint*(self: gen_qquickitem_types.QQuickItem, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_transformOriginPoint(self.h))

proc setTransformOriginPoint*(self: gen_qquickitem_types.QQuickItem, transformOriginPoint: gen_qpoint_types.QPointF): void =
  fcQQuickItem_setTransformOriginPoint(self.h, transformOriginPoint.h)

proc z*(self: gen_qquickitem_types.QQuickItem, ): float64 =
  fcQQuickItem_z(self.h)

proc setZ*(self: gen_qquickitem_types.QQuickItem, z: float64): void =
  fcQQuickItem_setZ(self.h, z)

proc rotation*(self: gen_qquickitem_types.QQuickItem, ): float64 =
  fcQQuickItem_rotation(self.h)

proc setRotation*(self: gen_qquickitem_types.QQuickItem, rotation: float64): void =
  fcQQuickItem_setRotation(self.h, rotation)

proc scale*(self: gen_qquickitem_types.QQuickItem, ): float64 =
  fcQQuickItem_scale(self.h)

proc setScale*(self: gen_qquickitem_types.QQuickItem, scale: float64): void =
  fcQQuickItem_setScale(self.h, scale)

proc opacity*(self: gen_qquickitem_types.QQuickItem, ): float64 =
  fcQQuickItem_opacity(self.h)

proc setOpacity*(self: gen_qquickitem_types.QQuickItem, opacity: float64): void =
  fcQQuickItem_setOpacity(self.h, opacity)

proc isVisible*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_isVisible(self.h)

proc setVisible*(self: gen_qquickitem_types.QQuickItem, visible: bool): void =
  fcQQuickItem_setVisible(self.h, visible)

proc isEnabled*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_isEnabled(self.h)

proc setEnabled*(self: gen_qquickitem_types.QQuickItem, enabled: bool): void =
  fcQQuickItem_setEnabled(self.h, enabled)

proc smooth*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_smooth(self.h)

proc setSmooth*(self: gen_qquickitem_types.QQuickItem, smooth: bool): void =
  fcQQuickItem_setSmooth(self.h, smooth)

proc activeFocusOnTab*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_activeFocusOnTab(self.h)

proc setActiveFocusOnTab*(self: gen_qquickitem_types.QQuickItem, activeFocusOnTab: bool): void =
  fcQQuickItem_setActiveFocusOnTab(self.h, activeFocusOnTab)

proc antialiasing*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_antialiasing(self.h)

proc setAntialiasing*(self: gen_qquickitem_types.QQuickItem, antialiasing: bool): void =
  fcQQuickItem_setAntialiasing(self.h, antialiasing)

proc resetAntialiasing*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_resetAntialiasing(self.h)

proc flags*(self: gen_qquickitem_types.QQuickItem, ): cint =
  cint(fcQQuickItem_flags(self.h))

proc setFlag*(self: gen_qquickitem_types.QQuickItem, flag: cint): void =
  fcQQuickItem_setFlag(self.h, cint(flag))

proc setFlags*(self: gen_qquickitem_types.QQuickItem, flags: cint): void =
  fcQQuickItem_setFlags(self.h, cint(flags))

proc boundingRect*(self: gen_qquickitem_types.QQuickItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_boundingRect(self.h))

proc clipRect*(self: gen_qquickitem_types.QQuickItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_clipRect(self.h))

proc hasActiveFocus*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_hasActiveFocus(self.h)

proc hasFocus*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_hasFocus(self.h)

proc setFocus*(self: gen_qquickitem_types.QQuickItem, focus: bool): void =
  fcQQuickItem_setFocus(self.h, focus)

proc setFocus*(self: gen_qquickitem_types.QQuickItem, focus: bool, reason: cint): void =
  fcQQuickItem_setFocus2(self.h, focus, cint(reason))

proc isFocusScope*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_isFocusScope(self.h)

proc scopedFocusItem*(self: gen_qquickitem_types.QQuickItem, ): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_scopedFocusItem(self.h))

proc isAncestorOf*(self: gen_qquickitem_types.QQuickItem, child: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_isAncestorOf(self.h, child.h)

proc acceptedMouseButtons*(self: gen_qquickitem_types.QQuickItem, ): cint =
  cint(fcQQuickItem_acceptedMouseButtons(self.h))

proc setAcceptedMouseButtons*(self: gen_qquickitem_types.QQuickItem, buttons: cint): void =
  fcQQuickItem_setAcceptedMouseButtons(self.h, cint(buttons))

proc acceptHoverEvents*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_acceptHoverEvents(self.h)

proc setAcceptHoverEvents*(self: gen_qquickitem_types.QQuickItem, enabled: bool): void =
  fcQQuickItem_setAcceptHoverEvents(self.h, enabled)

proc acceptTouchEvents*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_acceptTouchEvents(self.h)

proc setAcceptTouchEvents*(self: gen_qquickitem_types.QQuickItem, accept: bool): void =
  fcQQuickItem_setAcceptTouchEvents(self.h, accept)

proc cursor*(self: gen_qquickitem_types.QQuickItem, ): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQQuickItem_cursor(self.h))

proc setCursor*(self: gen_qquickitem_types.QQuickItem, cursor: gen_qcursor_types.QCursor): void =
  fcQQuickItem_setCursor(self.h, cursor.h)

proc unsetCursor*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_unsetCursor(self.h)

proc isUnderMouse*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_isUnderMouse(self.h)

proc grabMouse*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_grabMouse(self.h)

proc ungrabMouse*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_ungrabMouse(self.h)

proc keepMouseGrab*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_keepMouseGrab(self.h)

proc setKeepMouseGrab*(self: gen_qquickitem_types.QQuickItem, keepMouseGrab: bool): void =
  fcQQuickItem_setKeepMouseGrab(self.h, keepMouseGrab)

proc filtersChildMouseEvents*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_filtersChildMouseEvents(self.h)

proc setFiltersChildMouseEvents*(self: gen_qquickitem_types.QQuickItem, filter: bool): void =
  fcQQuickItem_setFiltersChildMouseEvents(self.h, filter)

proc grabTouchPoints*(self: gen_qquickitem_types.QQuickItem, ids: seq[cint]): void =
  var ids_CArray = newSeq[cint](len(ids))
  for i in 0..<len(ids):
    ids_CArray[i] = ids[i]

  fcQQuickItem_grabTouchPoints(self.h, struct_miqt_array(len: csize_t(len(ids)), data: if len(ids) == 0: nil else: addr(ids_CArray[0])))

proc ungrabTouchPoints*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_ungrabTouchPoints(self.h)

proc keepTouchGrab*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_keepTouchGrab(self.h)

proc setKeepTouchGrab*(self: gen_qquickitem_types.QQuickItem, keepTouchGrab: bool): void =
  fcQQuickItem_setKeepTouchGrab(self.h, keepTouchGrab)

proc grabToImage*(self: gen_qquickitem_types.QQuickItem, callback: gen_qjsvalue_types.QJSValue): bool =
  fcQQuickItem_grabToImage(self.h, callback.h)

proc contains*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): bool =
  fcQQuickItem_contains(self.h, point.h)

proc containmentMask*(self: gen_qquickitem_types.QQuickItem, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickItem_containmentMask(self.h))

proc setContainmentMask*(self: gen_qquickitem_types.QQuickItem, mask: gen_qobject_types.QObject): void =
  fcQQuickItem_setContainmentMask(self.h, mask.h)

proc itemTransform*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem, param2: ptr bool): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQQuickItem_itemTransform(self.h, param1.h, param2))

proc mapToItem*(self: gen_qquickitem_types.QQuickItem, item: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapToItem(self.h, item.h, point.h))

proc mapToScene*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapToScene(self.h, point.h))

proc mapToGlobal*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapToGlobal(self.h, point.h))

proc mapRectToItem*(self: gen_qquickitem_types.QQuickItem, item: gen_qquickitem_types.QQuickItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_mapRectToItem(self.h, item.h, rect.h))

proc mapRectToScene*(self: gen_qquickitem_types.QQuickItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_mapRectToScene(self.h, rect.h))

proc mapFromItem*(self: gen_qquickitem_types.QQuickItem, item: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapFromItem(self.h, item.h, point.h))

proc mapFromScene*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapFromScene(self.h, point.h))

proc mapFromGlobal*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapFromGlobal(self.h, point.h))

proc mapRectFromItem*(self: gen_qquickitem_types.QQuickItem, item: gen_qquickitem_types.QQuickItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_mapRectFromItem(self.h, item.h, rect.h))

proc mapRectFromScene*(self: gen_qquickitem_types.QQuickItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_mapRectFromScene(self.h, rect.h))

proc polish*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_polish(self.h)

proc forceActiveFocus*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_forceActiveFocus(self.h)

proc forceActiveFocus*(self: gen_qquickitem_types.QQuickItem, reason: cint): void =
  fcQQuickItem_forceActiveFocusWithReason(self.h, cint(reason))

proc nextItemInFocusChain*(self: gen_qquickitem_types.QQuickItem, ): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_nextItemInFocusChain(self.h))

proc childAt*(self: gen_qquickitem_types.QQuickItem, x: float64, y: float64): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_childAt(self.h, x, y))

proc inputMethodQuery*(self: gen_qquickitem_types.QQuickItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQuickItem_inputMethodQuery(self.h, cint(query)))

proc isTextureProvider*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_isTextureProvider(self.h)

proc textureProvider*(self: gen_qquickitem_types.QQuickItem, ): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickItem_textureProvider(self.h))

proc update*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_update(self.h)

proc childrenRectChanged*(self: gen_qquickitem_types.QQuickItem, param1: gen_qrect_types.QRectF): void =
  fcQQuickItem_childrenRectChanged(self.h, param1.h)

type QQuickItemchildrenRectChangedSlot* = proc(param1: gen_qrect_types.QRectF)
proc miqt_exec_callback_QQuickItem_childrenRectChanged(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemchildrenRectChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: param1)

  nimfunc[](slotval1)

proc onchildrenRectChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemchildrenRectChangedSlot) =
  var tmp = new QQuickItemchildrenRectChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_childrenRectChanged(self.h, cast[int](addr tmp[]))

proc baselineOffsetChanged*(self: gen_qquickitem_types.QQuickItem, param1: float64): void =
  fcQQuickItem_baselineOffsetChanged(self.h, param1)

type QQuickItembaselineOffsetChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_QQuickItem_baselineOffsetChanged(slot: int, param1: float64) {.exportc.} =
  let nimfunc = cast[ptr QQuickItembaselineOffsetChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onbaselineOffsetChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItembaselineOffsetChangedSlot) =
  var tmp = new QQuickItembaselineOffsetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_baselineOffsetChanged(self.h, cast[int](addr tmp[]))

proc stateChanged*(self: gen_qquickitem_types.QQuickItem, param1: string): void =
  fcQQuickItem_stateChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QQuickItemstateChangedSlot* = proc(param1: string)
proc miqt_exec_callback_QQuickItem_stateChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemstateChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemstateChangedSlot) =
  var tmp = new QQuickItemstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc focusChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_focusChanged(self.h, param1)

type QQuickItemfocusChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_QQuickItem_focusChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemfocusChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onfocusChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemfocusChangedSlot) =
  var tmp = new QQuickItemfocusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_focusChanged(self.h, cast[int](addr tmp[]))

proc activeFocusChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_activeFocusChanged(self.h, param1)

type QQuickItemactiveFocusChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_QQuickItem_activeFocusChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemactiveFocusChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onactiveFocusChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemactiveFocusChangedSlot) =
  var tmp = new QQuickItemactiveFocusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_activeFocusChanged(self.h, cast[int](addr tmp[]))

proc activeFocusOnTabChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_activeFocusOnTabChanged(self.h, param1)

type QQuickItemactiveFocusOnTabChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_QQuickItem_activeFocusOnTabChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemactiveFocusOnTabChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onactiveFocusOnTabChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemactiveFocusOnTabChangedSlot) =
  var tmp = new QQuickItemactiveFocusOnTabChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_activeFocusOnTabChanged(self.h, cast[int](addr tmp[]))

proc parentChanged*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_parentChanged(self.h, param1.h)

type QQuickItemparentChangedSlot* = proc(param1: gen_qquickitem_types.QQuickItem)
proc miqt_exec_callback_QQuickItem_parentChanged(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemparentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1)

  nimfunc[](slotval1)

proc onparentChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemparentChangedSlot) =
  var tmp = new QQuickItemparentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_parentChanged(self.h, cast[int](addr tmp[]))

proc transformOriginChanged*(self: gen_qquickitem_types.QQuickItem, param1: cint): void =
  fcQQuickItem_transformOriginChanged(self.h, cint(param1))

type QQuickItemtransformOriginChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_QQuickItem_transformOriginChanged(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemtransformOriginChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc ontransformOriginChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemtransformOriginChangedSlot) =
  var tmp = new QQuickItemtransformOriginChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_transformOriginChanged(self.h, cast[int](addr tmp[]))

proc smoothChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_smoothChanged(self.h, param1)

type QQuickItemsmoothChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_QQuickItem_smoothChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemsmoothChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onsmoothChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemsmoothChangedSlot) =
  var tmp = new QQuickItemsmoothChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_smoothChanged(self.h, cast[int](addr tmp[]))

proc antialiasingChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_antialiasingChanged(self.h, param1)

type QQuickItemantialiasingChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_QQuickItem_antialiasingChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemantialiasingChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onantialiasingChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemantialiasingChangedSlot) =
  var tmp = new QQuickItemantialiasingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_antialiasingChanged(self.h, cast[int](addr tmp[]))

proc clipChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_clipChanged(self.h, param1)

type QQuickItemclipChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_QQuickItem_clipChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemclipChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onclipChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemclipChangedSlot) =
  var tmp = new QQuickItemclipChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_clipChanged(self.h, cast[int](addr tmp[]))

proc windowChanged*(self: gen_qquickitem_types.QQuickItem, window: gen_qquickwindow_types.QQuickWindow): void =
  fcQQuickItem_windowChanged(self.h, window.h)

type QQuickItemwindowChangedSlot* = proc(window: gen_qquickwindow_types.QQuickWindow)
proc miqt_exec_callback_QQuickItem_windowChanged(slot: int, window: pointer) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemwindowChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qquickwindow_types.QQuickWindow(h: window)

  nimfunc[](slotval1)

proc onwindowChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemwindowChangedSlot) =
  var tmp = new QQuickItemwindowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_windowChanged(self.h, cast[int](addr tmp[]))

proc childrenChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_childrenChanged(self.h)

type QQuickItemchildrenChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_childrenChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemchildrenChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onchildrenChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemchildrenChangedSlot) =
  var tmp = new QQuickItemchildrenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_childrenChanged(self.h, cast[int](addr tmp[]))

proc opacityChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_opacityChanged(self.h)

type QQuickItemopacityChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_opacityChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemopacityChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onopacityChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemopacityChangedSlot) =
  var tmp = new QQuickItemopacityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_opacityChanged(self.h, cast[int](addr tmp[]))

proc enabledChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_enabledChanged(self.h)

type QQuickItemenabledChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_enabledChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemenabledChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onenabledChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemenabledChangedSlot) =
  var tmp = new QQuickItemenabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_enabledChanged(self.h, cast[int](addr tmp[]))

proc visibleChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_visibleChanged(self.h)

type QQuickItemvisibleChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_visibleChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemvisibleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvisibleChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemvisibleChangedSlot) =
  var tmp = new QQuickItemvisibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_visibleChanged(self.h, cast[int](addr tmp[]))

proc visibleChildrenChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_visibleChildrenChanged(self.h)

type QQuickItemvisibleChildrenChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_visibleChildrenChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemvisibleChildrenChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvisibleChildrenChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemvisibleChildrenChangedSlot) =
  var tmp = new QQuickItemvisibleChildrenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_visibleChildrenChanged(self.h, cast[int](addr tmp[]))

proc rotationChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_rotationChanged(self.h)

type QQuickItemrotationChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_rotationChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemrotationChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onrotationChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemrotationChangedSlot) =
  var tmp = new QQuickItemrotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_rotationChanged(self.h, cast[int](addr tmp[]))

proc scaleChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_scaleChanged(self.h)

type QQuickItemscaleChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_scaleChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemscaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onscaleChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemscaleChangedSlot) =
  var tmp = new QQuickItemscaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_scaleChanged(self.h, cast[int](addr tmp[]))

proc xChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_xChanged(self.h)

type QQuickItemxChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_xChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemxChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onxChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemxChangedSlot) =
  var tmp = new QQuickItemxChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_xChanged(self.h, cast[int](addr tmp[]))

proc yChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_yChanged(self.h)

type QQuickItemyChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_yChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemyChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onyChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemyChangedSlot) =
  var tmp = new QQuickItemyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_yChanged(self.h, cast[int](addr tmp[]))

proc widthChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_widthChanged(self.h)

type QQuickItemwidthChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_widthChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemwidthChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onwidthChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemwidthChangedSlot) =
  var tmp = new QQuickItemwidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_widthChanged(self.h, cast[int](addr tmp[]))

proc heightChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_heightChanged(self.h)

type QQuickItemheightChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_heightChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemheightChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onheightChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemheightChangedSlot) =
  var tmp = new QQuickItemheightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_heightChanged(self.h, cast[int](addr tmp[]))

proc zChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_zChanged(self.h)

type QQuickItemzChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_zChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemzChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onzChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemzChangedSlot) =
  var tmp = new QQuickItemzChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_zChanged(self.h, cast[int](addr tmp[]))

proc implicitWidthChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_implicitWidthChanged(self.h)

type QQuickItemimplicitWidthChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_implicitWidthChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemimplicitWidthChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onimplicitWidthChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemimplicitWidthChangedSlot) =
  var tmp = new QQuickItemimplicitWidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_implicitWidthChanged(self.h, cast[int](addr tmp[]))

proc implicitHeightChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_implicitHeightChanged(self.h)

type QQuickItemimplicitHeightChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_implicitHeightChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemimplicitHeightChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onimplicitHeightChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemimplicitHeightChangedSlot) =
  var tmp = new QQuickItemimplicitHeightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_implicitHeightChanged(self.h, cast[int](addr tmp[]))

proc containmentMaskChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_containmentMaskChanged(self.h)

type QQuickItemcontainmentMaskChangedSlot* = proc()
proc miqt_exec_callback_QQuickItem_containmentMaskChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickItemcontainmentMaskChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncontainmentMaskChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemcontainmentMaskChangedSlot) =
  var tmp = new QQuickItemcontainmentMaskChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_containmentMaskChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qquickitem_types.QQuickItem, s: cstring, c: cstring): string =
  let v_ms = fcQQuickItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickitem_types.QQuickItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickitem_types.QQuickItem, s: cstring, c: cstring): string =
  let v_ms = fcQQuickItem_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickitem_types.QQuickItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickItem_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFlag*(self: gen_qquickitem_types.QQuickItem, flag: cint, enabled: bool): void =
  fcQQuickItem_setFlag2(self.h, cint(flag), enabled)

proc grabToImage*(self: gen_qquickitem_types.QQuickItem, callback: gen_qjsvalue_types.QJSValue, targetSize: gen_qsize_types.QSize): bool =
  fcQQuickItem_grabToImage22(self.h, callback.h, targetSize.h)

proc nextItemInFocusChain*(self: gen_qquickitem_types.QQuickItem, forward: bool): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_nextItemInFocusChain1(self.h, forward))

proc QQuickItemmetaObject*(self: gen_qquickitem_types.QQuickItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQuickItem_virtualbase_metaObject(self.h))

type QQuickItemmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQuickItemmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_metaObject(self: ptr cQQuickItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickItem_metaObject ".} =
  var nimfunc = cast[ptr QQuickItemmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickItemmetacast*(self: gen_qquickitem_types.QQuickItem, param1: cstring): pointer =
  fQQuickItem_virtualbase_metacast(self.h, param1)

type QQuickItemmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemmetacastProc) =
  # TODO check subclass
  var tmp = new QQuickItemmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_metacast(self: ptr cQQuickItem, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickItem_metacast ".} =
  var nimfunc = cast[ptr QQuickItemmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickItemmetacall*(self: gen_qquickitem_types.QQuickItem, param1: cint, param2: cint, param3: pointer): cint =
  fQQuickItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickItemmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemmetacallProc) =
  # TODO check subclass
  var tmp = new QQuickItemmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_metacall(self: ptr cQQuickItem, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickItem_metacall ".} =
  var nimfunc = cast[ptr QQuickItemmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQuickItemboundingRect*(self: gen_qquickitem_types.QQuickItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQQuickItem_virtualbase_boundingRect(self.h))

type QQuickItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QQuickItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_boundingRect(self: ptr cQQuickItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickItem_boundingRect ".} =
  var nimfunc = cast[ptr QQuickItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickItemclipRect*(self: gen_qquickitem_types.QQuickItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQQuickItem_virtualbase_clipRect(self.h))

type QQuickItemclipRectProc* = proc(): gen_qrect_types.QRectF
proc onclipRect*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemclipRectProc) =
  # TODO check subclass
  var tmp = new QQuickItemclipRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_clipRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_clipRect(self: ptr cQQuickItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickItem_clipRect ".} =
  var nimfunc = cast[ptr QQuickItemclipRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickItemcontains*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): bool =
  fQQuickItem_virtualbase_contains(self.h, point.h)

type QQuickItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemcontainsProc) =
  # TODO check subclass
  var tmp = new QQuickItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_contains(self: ptr cQQuickItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QQuickItem_contains ".} =
  var nimfunc = cast[ptr QQuickItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickIteminputMethodQuery*(self: gen_qquickitem_types.QQuickItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQQuickItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QQuickIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qquickitem_types.QQuickItem, slot: QQuickIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QQuickIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_inputMethodQuery(self: ptr cQQuickItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QQuickItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QQuickIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QQuickItemisTextureProvider*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fQQuickItem_virtualbase_isTextureProvider(self.h)

type QQuickItemisTextureProviderProc* = proc(): bool
proc onisTextureProvider*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemisTextureProviderProc) =
  # TODO check subclass
  var tmp = new QQuickItemisTextureProviderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_isTextureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_isTextureProvider(self: ptr cQQuickItem, slot: int): bool {.exportc: "miqt_exec_callback_QQuickItem_isTextureProvider ".} =
  var nimfunc = cast[ptr QQuickItemisTextureProviderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QQuickItemtextureProvider*(self: gen_qquickitem_types.QQuickItem, ): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fQQuickItem_virtualbase_textureProvider(self.h))

type QQuickItemtextureProviderProc* = proc(): gen_qsgtextureprovider_types.QSGTextureProvider
proc ontextureProvider*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemtextureProviderProc) =
  # TODO check subclass
  var tmp = new QQuickItemtextureProviderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_textureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_textureProvider(self: ptr cQQuickItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickItem_textureProvider ".} =
  var nimfunc = cast[ptr QQuickItemtextureProviderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickItemevent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qcoreevent_types.QEvent): bool =
  fQQuickItem_virtualbase_event(self.h, param1.h)

type QQuickItemeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemeventProc) =
  # TODO check subclass
  var tmp = new QQuickItemeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_event(self: ptr cQQuickItem, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQuickItem_event ".} =
  var nimfunc = cast[ptr QQuickItemeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickItemitemChange*(self: gen_qquickitem_types.QQuickItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void =
  fQQuickItem_virtualbase_itemChange(self.h, cint(param1), param2.h)

type QQuickItemitemChangeProc* = proc(param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void
proc onitemChange*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QQuickItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_itemChange(self: ptr cQQuickItem, slot: int, param1: cint, param2: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_itemChange ".} =
  var nimfunc = cast[ptr QQuickItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2)


  nimfunc[](slotval1, slotval2)
proc QQuickItemclassBegin*(self: gen_qquickitem_types.QQuickItem, ): void =
  fQQuickItem_virtualbase_classBegin(self.h)

type QQuickItemclassBeginProc* = proc(): void
proc onclassBegin*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemclassBeginProc) =
  # TODO check subclass
  var tmp = new QQuickItemclassBeginProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_classBegin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_classBegin(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_classBegin ".} =
  var nimfunc = cast[ptr QQuickItemclassBeginProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickItemcomponentComplete*(self: gen_qquickitem_types.QQuickItem, ): void =
  fQQuickItem_virtualbase_componentComplete(self.h)

type QQuickItemcomponentCompleteProc* = proc(): void
proc oncomponentComplete*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemcomponentCompleteProc) =
  # TODO check subclass
  var tmp = new QQuickItemcomponentCompleteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_componentComplete(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_componentComplete(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_componentComplete ".} =
  var nimfunc = cast[ptr QQuickItemcomponentCompleteProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickItemkeyPressEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QKeyEvent): void =
  fQQuickItem_virtualbase_keyPressEvent(self.h, event.h)

type QQuickItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_keyPressEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QQuickItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemkeyReleaseEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QKeyEvent): void =
  fQQuickItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QQuickItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_keyReleaseEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QQuickItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QQuickIteminputMethodEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QInputMethodEvent): void =
  fQQuickItem_virtualbase_inputMethodEvent(self.h, param1.h)

type QQuickIteminputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QQuickIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_inputMethodEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QQuickIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickItemfocusInEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QFocusEvent): void =
  fQQuickItem_virtualbase_focusInEvent(self.h, param1.h)

type QQuickItemfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_focusInEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_focusInEvent ".} =
  var nimfunc = cast[ptr QQuickItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickItemfocusOutEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QFocusEvent): void =
  fQQuickItem_virtualbase_focusOutEvent(self.h, param1.h)

type QQuickItemfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_focusOutEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QQuickItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickItemmousePressEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fQQuickItem_virtualbase_mousePressEvent(self.h, event.h)

type QQuickItemmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_mousePressEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QQuickItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemmouseMoveEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fQQuickItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QQuickItemmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_mouseMoveEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QQuickItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemmouseReleaseEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fQQuickItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QQuickItemmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_mouseReleaseEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QQuickItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemmouseDoubleClickEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fQQuickItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QQuickItemmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_mouseDoubleClickEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QQuickItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemmouseUngrabEvent*(self: gen_qquickitem_types.QQuickItem, ): void =
  fQQuickItem_virtualbase_mouseUngrabEvent(self.h)

type QQuickItemmouseUngrabEventProc* = proc(): void
proc onmouseUngrabEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemmouseUngrabEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemmouseUngrabEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_mouseUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_mouseUngrabEvent(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_mouseUngrabEvent ".} =
  var nimfunc = cast[ptr QQuickItemmouseUngrabEventProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickItemtouchUngrabEvent*(self: gen_qquickitem_types.QQuickItem, ): void =
  fQQuickItem_virtualbase_touchUngrabEvent(self.h)

type QQuickItemtouchUngrabEventProc* = proc(): void
proc ontouchUngrabEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemtouchUngrabEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemtouchUngrabEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_touchUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_touchUngrabEvent(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_touchUngrabEvent ".} =
  var nimfunc = cast[ptr QQuickItemtouchUngrabEventProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickItemwheelEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QWheelEvent): void =
  fQQuickItem_virtualbase_wheelEvent(self.h, event.h)

type QQuickItemwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_wheelEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_wheelEvent ".} =
  var nimfunc = cast[ptr QQuickItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemtouchEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QTouchEvent): void =
  fQQuickItem_virtualbase_touchEvent(self.h, event.h)

type QQuickItemtouchEventProc* = proc(event: gen_qevent_types.QTouchEvent): void
proc ontouchEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemtouchEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemtouchEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_touchEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_touchEvent ".} =
  var nimfunc = cast[ptr QQuickItemtouchEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTouchEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemhoverEnterEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QHoverEvent): void =
  fQQuickItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QQuickItemhoverEnterEventProc* = proc(event: gen_qevent_types.QHoverEvent): void
proc onhoverEnterEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_hoverEnterEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QQuickItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemhoverMoveEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QHoverEvent): void =
  fQQuickItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QQuickItemhoverMoveEventProc* = proc(event: gen_qevent_types.QHoverEvent): void
proc onhoverMoveEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_hoverMoveEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QQuickItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemhoverLeaveEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QHoverEvent): void =
  fQQuickItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QQuickItemhoverLeaveEventProc* = proc(event: gen_qevent_types.QHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_hoverLeaveEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QQuickItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemdragEnterEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDragEnterEvent): void =
  fQQuickItem_virtualbase_dragEnterEvent(self.h, param1.h)

type QQuickItemdragEnterEventProc* = proc(param1: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_dragEnterEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QQuickItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickItemdragMoveEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDragMoveEvent): void =
  fQQuickItem_virtualbase_dragMoveEvent(self.h, param1.h)

type QQuickItemdragMoveEventProc* = proc(param1: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_dragMoveEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QQuickItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickItemdragLeaveEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDragLeaveEvent): void =
  fQQuickItem_virtualbase_dragLeaveEvent(self.h, param1.h)

type QQuickItemdragLeaveEventProc* = proc(param1: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_dragLeaveEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QQuickItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickItemdropEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDropEvent): void =
  fQQuickItem_virtualbase_dropEvent(self.h, param1.h)

type QQuickItemdropEventProc* = proc(param1: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemdropEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_dropEvent(self: ptr cQQuickItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_dropEvent ".} =
  var nimfunc = cast[ptr QQuickItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickItemchildMouseEventFilter*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool =
  fQQuickItem_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

type QQuickItemchildMouseEventFilterProc* = proc(param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool
proc onchildMouseEventFilter*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemchildMouseEventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickItemchildMouseEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_childMouseEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_childMouseEventFilter(self: ptr cQQuickItem, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QQuickItem_childMouseEventFilter ".} =
  var nimfunc = cast[ptr QQuickItemchildMouseEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickItemwindowDeactivateEvent*(self: gen_qquickitem_types.QQuickItem, ): void =
  fQQuickItem_virtualbase_windowDeactivateEvent(self.h)

type QQuickItemwindowDeactivateEventProc* = proc(): void
proc onwindowDeactivateEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemwindowDeactivateEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemwindowDeactivateEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_windowDeactivateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_windowDeactivateEvent(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_windowDeactivateEvent ".} =
  var nimfunc = cast[ptr QQuickItemwindowDeactivateEventProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickItemgeometryChanged*(self: gen_qquickitem_types.QQuickItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void =
  fQQuickItem_virtualbase_geometryChanged(self.h, newGeometry.h, oldGeometry.h)

type QQuickItemgeometryChangedProc* = proc(newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void
proc ongeometryChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemgeometryChangedProc) =
  # TODO check subclass
  var tmp = new QQuickItemgeometryChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_geometryChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_geometryChanged(self: ptr cQQuickItem, slot: int, newGeometry: pointer, oldGeometry: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_geometryChanged ".} =
  var nimfunc = cast[ptr QQuickItemgeometryChangedProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry)

  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry)


  nimfunc[](slotval1, slotval2)
proc QQuickItemupdatePaintNode*(self: gen_qquickitem_types.QQuickItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fQQuickItem_virtualbase_updatePaintNode(self.h, param1.h, param2.h))

type QQuickItemupdatePaintNodeProc* = proc(param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode
proc onupdatePaintNode*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemupdatePaintNodeProc) =
  # TODO check subclass
  var tmp = new QQuickItemupdatePaintNodeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_updatePaintNode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_updatePaintNode(self: ptr cQQuickItem, slot: int, param1: pointer, param2: pointer): pointer {.exportc: "miqt_exec_callback_QQuickItem_updatePaintNode ".} =
  var nimfunc = cast[ptr QQuickItemupdatePaintNodeProc](cast[pointer](slot))
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1)

  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QQuickItemreleaseResources*(self: gen_qquickitem_types.QQuickItem, ): void =
  fQQuickItem_virtualbase_releaseResources(self.h)

type QQuickItemreleaseResourcesProc* = proc(): void
proc onreleaseResources*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemreleaseResourcesProc) =
  # TODO check subclass
  var tmp = new QQuickItemreleaseResourcesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_releaseResources(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_releaseResources(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_releaseResources ".} =
  var nimfunc = cast[ptr QQuickItemreleaseResourcesProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickItemupdatePolish*(self: gen_qquickitem_types.QQuickItem, ): void =
  fQQuickItem_virtualbase_updatePolish(self.h)

type QQuickItemupdatePolishProc* = proc(): void
proc onupdatePolish*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemupdatePolishProc) =
  # TODO check subclass
  var tmp = new QQuickItemupdatePolishProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_updatePolish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_updatePolish(self: ptr cQQuickItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickItem_updatePolish ".} =
  var nimfunc = cast[ptr QQuickItemupdatePolishProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickItemeventFilter*(self: gen_qquickitem_types.QQuickItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickItem_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickItemeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemeventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickItemeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_eventFilter(self: ptr cQQuickItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickItem_eventFilter ".} =
  var nimfunc = cast[ptr QQuickItemeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickItemtimerEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickItem_virtualbase_timerEvent(self.h, event.h)

type QQuickItemtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemtimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_timerEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_timerEvent ".} =
  var nimfunc = cast[ptr QQuickItemtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemchildEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickItem_virtualbase_childEvent(self.h, event.h)

type QQuickItemchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemchildEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_childEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_childEvent ".} =
  var nimfunc = cast[ptr QQuickItemchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemcustomEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qcoreevent_types.QEvent): void =
  fQQuickItem_virtualbase_customEvent(self.h, event.h)

type QQuickItemcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemcustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickItemcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_customEvent(self: ptr cQQuickItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_customEvent ".} =
  var nimfunc = cast[ptr QQuickItemcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickItemconnectNotify*(self: gen_qquickitem_types.QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickItem_virtualbase_connectNotify(self.h, signal.h)

type QQuickItemconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickItemconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_connectNotify(self: ptr cQQuickItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_connectNotify ".} =
  var nimfunc = cast[ptr QQuickItemconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickItemdisconnectNotify*(self: gen_qquickitem_types.QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickItem_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickItemdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickItemdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickItem_disconnectNotify(self: ptr cQQuickItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickItem_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickItemdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qquickitem_types.QQuickItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickItem_staticMetaObject())
proc delete*(self: gen_qquickitem_types.QQuickItem) =
  fcQQuickItem_delete(self.h)

func init*(T: type gen_qquickitem_types.QQuickItemItemChangeData, h: ptr cQQuickItemItemChangeData): gen_qquickitem_types.QQuickItemItemChangeData =
  T(h: h)
proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData, v: gen_qquickitem_types.QQuickItem): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData.init(fcQQuickItemItemChangeData_new(v.h))

proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData, v: gen_qquickwindow_types.QQuickWindow): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData.init(fcQQuickItemItemChangeData_new2(v.h))

proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData, v: float64): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData.init(fcQQuickItemItemChangeData_new3(v))

proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData, v: bool): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData.init(fcQQuickItemItemChangeData_new4(v))

proc delete*(self: gen_qquickitem_types.QQuickItemItemChangeData) =
  fcQQuickItemItemChangeData_delete(self.h)

func init*(T: type gen_qquickitem_types.QQuickItemUpdatePaintNodeData, h: ptr cQQuickItemUpdatePaintNodeData): gen_qquickitem_types.QQuickItemUpdatePaintNodeData =
  T(h: h)
proc delete*(self: gen_qquickitem_types.QQuickItemUpdatePaintNodeData) =
  fcQQuickItemUpdatePaintNodeData_delete(self.h)
