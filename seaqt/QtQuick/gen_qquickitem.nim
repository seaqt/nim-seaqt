import ./qtquick_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QQuickItemFlagEnum* = distinct cint
template ItemClipsChildrenToShape*(_: type QQuickItemFlagEnum): untyped = 1
template ItemAcceptsInputMethod*(_: type QQuickItemFlagEnum): untyped = 2
template ItemIsFocusScope*(_: type QQuickItemFlagEnum): untyped = 4
template ItemHasContents*(_: type QQuickItemFlagEnum): untyped = 8
template ItemAcceptsDrops*(_: type QQuickItemFlagEnum): untyped = 16
template ItemIsViewport*(_: type QQuickItemFlagEnum): untyped = 32
template ItemObservesViewport*(_: type QQuickItemFlagEnum): untyped = 64


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

proc fcQQuickTransform_metaObject(self: pointer): pointer {.importc: "QQuickTransform_metaObject".}
proc fcQQuickTransform_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTransform_metacast".}
proc fcQQuickTransform_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTransform_metacall".}
proc fcQQuickTransform_tr(s: cstring): struct_miqt_string {.importc: "QQuickTransform_tr".}
proc fcQQuickTransform_appendToItem(self: pointer, param1: pointer): void {.importc: "QQuickTransform_appendToItem".}
proc fcQQuickTransform_prependToItem(self: pointer, param1: pointer): void {.importc: "QQuickTransform_prependToItem".}
proc fcQQuickTransform_applyTo(self: pointer, matrix: pointer): void {.importc: "QQuickTransform_applyTo".}
proc fcQQuickTransform_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTransform_tr2".}
proc fcQQuickTransform_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTransform_tr3".}
proc fcQQuickTransform_vtbl(self: pointer): pointer {.importc: "QQuickTransform_vtbl".}
proc fcQQuickTransform_vdata(self: pointer): pointer {.importc: "QQuickTransform_vdata".}
type cQQuickTransformVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  applyTo*: proc(self: pointer, matrix: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickTransform_virtualbase_metaObject(self: pointer): pointer {.importc: "QQuickTransform_virtualbase_metaObject".}
proc fcQQuickTransform_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTransform_virtualbase_metacast".}
proc fcQQuickTransform_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTransform_virtualbase_metacall".}
proc fcQQuickTransform_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickTransform_virtualbase_event".}
proc fcQQuickTransform_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickTransform_virtualbase_eventFilter".}
proc fcQQuickTransform_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickTransform_virtualbase_timerEvent".}
proc fcQQuickTransform_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickTransform_virtualbase_childEvent".}
proc fcQQuickTransform_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickTransform_virtualbase_customEvent".}
proc fcQQuickTransform_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTransform_virtualbase_connectNotify".}
proc fcQQuickTransform_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTransform_virtualbase_disconnectNotify".}
proc fcQQuickTransform_protectedbase_update(self: pointer): void {.importc: "QQuickTransform_protectedbase_update".}
proc fcQQuickTransform_protectedbase_sender(self: pointer): pointer {.importc: "QQuickTransform_protectedbase_sender".}
proc fcQQuickTransform_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickTransform_protectedbase_senderSignalIndex".}
proc fcQQuickTransform_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickTransform_protectedbase_receivers".}
proc fcQQuickTransform_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickTransform_protectedbase_isSignalConnected".}
proc fcQQuickTransform_new(vtbl, vdata: pointer): ptr cQQuickTransform {.importc: "QQuickTransform_new".}
proc fcQQuickTransform_new2(vtbl, vdata: pointer, parent: pointer): ptr cQQuickTransform {.importc: "QQuickTransform_new2".}
proc fcQQuickTransform_staticMetaObject(): pointer {.importc: "QQuickTransform_staticMetaObject".}
proc fcQQuickItem_metaObject(self: pointer): pointer {.importc: "QQuickItem_metaObject".}
proc fcQQuickItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickItem_metacast".}
proc fcQQuickItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickItem_metacall".}
proc fcQQuickItem_tr(s: cstring): struct_miqt_string {.importc: "QQuickItem_tr".}
proc fcQQuickItem_window(self: pointer): pointer {.importc: "QQuickItem_window".}
proc fcQQuickItem_parentItem(self: pointer): pointer {.importc: "QQuickItem_parentItem".}
proc fcQQuickItem_setParentItem(self: pointer, parent: pointer): void {.importc: "QQuickItem_setParentItem".}
proc fcQQuickItem_stackBefore(self: pointer, param1: pointer): void {.importc: "QQuickItem_stackBefore".}
proc fcQQuickItem_stackAfter(self: pointer, param1: pointer): void {.importc: "QQuickItem_stackAfter".}
proc fcQQuickItem_childrenRect(self: pointer): pointer {.importc: "QQuickItem_childrenRect".}
proc fcQQuickItem_childItems(self: pointer): struct_miqt_array {.importc: "QQuickItem_childItems".}
proc fcQQuickItem_clip(self: pointer): bool {.importc: "QQuickItem_clip".}
proc fcQQuickItem_setClip(self: pointer, clip: bool): void {.importc: "QQuickItem_setClip".}
proc fcQQuickItem_state(self: pointer): struct_miqt_string {.importc: "QQuickItem_state".}
proc fcQQuickItem_setState(self: pointer, state: struct_miqt_string): void {.importc: "QQuickItem_setState".}
proc fcQQuickItem_baselineOffset(self: pointer): float64 {.importc: "QQuickItem_baselineOffset".}
proc fcQQuickItem_setBaselineOffset(self: pointer, baselineOffset: float64): void {.importc: "QQuickItem_setBaselineOffset".}
proc fcQQuickItem_x(self: pointer): float64 {.importc: "QQuickItem_x".}
proc fcQQuickItem_y(self: pointer): float64 {.importc: "QQuickItem_y".}
proc fcQQuickItem_position(self: pointer): pointer {.importc: "QQuickItem_position".}
proc fcQQuickItem_setX(self: pointer, x: float64): void {.importc: "QQuickItem_setX".}
proc fcQQuickItem_setY(self: pointer, y: float64): void {.importc: "QQuickItem_setY".}
proc fcQQuickItem_setPosition(self: pointer, position: pointer): void {.importc: "QQuickItem_setPosition".}
proc fcQQuickItem_width(self: pointer): float64 {.importc: "QQuickItem_width".}
proc fcQQuickItem_setWidth(self: pointer, width: float64): void {.importc: "QQuickItem_setWidth".}
proc fcQQuickItem_resetWidth(self: pointer): void {.importc: "QQuickItem_resetWidth".}
proc fcQQuickItem_setImplicitWidth(self: pointer, implicitWidth: float64): void {.importc: "QQuickItem_setImplicitWidth".}
proc fcQQuickItem_implicitWidth(self: pointer): float64 {.importc: "QQuickItem_implicitWidth".}
proc fcQQuickItem_height(self: pointer): float64 {.importc: "QQuickItem_height".}
proc fcQQuickItem_setHeight(self: pointer, height: float64): void {.importc: "QQuickItem_setHeight".}
proc fcQQuickItem_resetHeight(self: pointer): void {.importc: "QQuickItem_resetHeight".}
proc fcQQuickItem_setImplicitHeight(self: pointer, implicitHeight: float64): void {.importc: "QQuickItem_setImplicitHeight".}
proc fcQQuickItem_implicitHeight(self: pointer): float64 {.importc: "QQuickItem_implicitHeight".}
proc fcQQuickItem_size(self: pointer): pointer {.importc: "QQuickItem_size".}
proc fcQQuickItem_setSize(self: pointer, size: pointer): void {.importc: "QQuickItem_setSize".}
proc fcQQuickItem_transformOrigin(self: pointer): cint {.importc: "QQuickItem_transformOrigin".}
proc fcQQuickItem_setTransformOrigin(self: pointer, transformOrigin: cint): void {.importc: "QQuickItem_setTransformOrigin".}
proc fcQQuickItem_transformOriginPoint(self: pointer): pointer {.importc: "QQuickItem_transformOriginPoint".}
proc fcQQuickItem_setTransformOriginPoint(self: pointer, transformOriginPoint: pointer): void {.importc: "QQuickItem_setTransformOriginPoint".}
proc fcQQuickItem_z(self: pointer): float64 {.importc: "QQuickItem_z".}
proc fcQQuickItem_setZ(self: pointer, z: float64): void {.importc: "QQuickItem_setZ".}
proc fcQQuickItem_rotation(self: pointer): float64 {.importc: "QQuickItem_rotation".}
proc fcQQuickItem_setRotation(self: pointer, rotation: float64): void {.importc: "QQuickItem_setRotation".}
proc fcQQuickItem_scale(self: pointer): float64 {.importc: "QQuickItem_scale".}
proc fcQQuickItem_setScale(self: pointer, scale: float64): void {.importc: "QQuickItem_setScale".}
proc fcQQuickItem_opacity(self: pointer): float64 {.importc: "QQuickItem_opacity".}
proc fcQQuickItem_setOpacity(self: pointer, opacity: float64): void {.importc: "QQuickItem_setOpacity".}
proc fcQQuickItem_isVisible(self: pointer): bool {.importc: "QQuickItem_isVisible".}
proc fcQQuickItem_setVisible(self: pointer, visible: bool): void {.importc: "QQuickItem_setVisible".}
proc fcQQuickItem_isEnabled(self: pointer): bool {.importc: "QQuickItem_isEnabled".}
proc fcQQuickItem_setEnabled(self: pointer, enabled: bool): void {.importc: "QQuickItem_setEnabled".}
proc fcQQuickItem_smooth(self: pointer): bool {.importc: "QQuickItem_smooth".}
proc fcQQuickItem_setSmooth(self: pointer, smooth: bool): void {.importc: "QQuickItem_setSmooth".}
proc fcQQuickItem_activeFocusOnTab(self: pointer): bool {.importc: "QQuickItem_activeFocusOnTab".}
proc fcQQuickItem_setActiveFocusOnTab(self: pointer, activeFocusOnTab: bool): void {.importc: "QQuickItem_setActiveFocusOnTab".}
proc fcQQuickItem_antialiasing(self: pointer): bool {.importc: "QQuickItem_antialiasing".}
proc fcQQuickItem_setAntialiasing(self: pointer, antialiasing: bool): void {.importc: "QQuickItem_setAntialiasing".}
proc fcQQuickItem_resetAntialiasing(self: pointer): void {.importc: "QQuickItem_resetAntialiasing".}
proc fcQQuickItem_flags(self: pointer): cint {.importc: "QQuickItem_flags".}
proc fcQQuickItem_setFlag(self: pointer, flag: cint): void {.importc: "QQuickItem_setFlag".}
proc fcQQuickItem_setFlags(self: pointer, flags: cint): void {.importc: "QQuickItem_setFlags".}
proc fcQQuickItem_boundingRect(self: pointer): pointer {.importc: "QQuickItem_boundingRect".}
proc fcQQuickItem_clipRect(self: pointer): pointer {.importc: "QQuickItem_clipRect".}
proc fcQQuickItem_viewportItem(self: pointer): pointer {.importc: "QQuickItem_viewportItem".}
proc fcQQuickItem_hasActiveFocus(self: pointer): bool {.importc: "QQuickItem_hasActiveFocus".}
proc fcQQuickItem_hasFocus(self: pointer): bool {.importc: "QQuickItem_hasFocus".}
proc fcQQuickItem_setFocus(self: pointer, focus: bool): void {.importc: "QQuickItem_setFocus".}
proc fcQQuickItem_setFocus2(self: pointer, focus: bool, reason: cint): void {.importc: "QQuickItem_setFocus2".}
proc fcQQuickItem_isFocusScope(self: pointer): bool {.importc: "QQuickItem_isFocusScope".}
proc fcQQuickItem_scopedFocusItem(self: pointer): pointer {.importc: "QQuickItem_scopedFocusItem".}
proc fcQQuickItem_isAncestorOf(self: pointer, child: pointer): bool {.importc: "QQuickItem_isAncestorOf".}
proc fcQQuickItem_acceptedMouseButtons(self: pointer): cint {.importc: "QQuickItem_acceptedMouseButtons".}
proc fcQQuickItem_setAcceptedMouseButtons(self: pointer, buttons: cint): void {.importc: "QQuickItem_setAcceptedMouseButtons".}
proc fcQQuickItem_acceptHoverEvents(self: pointer): bool {.importc: "QQuickItem_acceptHoverEvents".}
proc fcQQuickItem_setAcceptHoverEvents(self: pointer, enabled: bool): void {.importc: "QQuickItem_setAcceptHoverEvents".}
proc fcQQuickItem_acceptTouchEvents(self: pointer): bool {.importc: "QQuickItem_acceptTouchEvents".}
proc fcQQuickItem_setAcceptTouchEvents(self: pointer, accept: bool): void {.importc: "QQuickItem_setAcceptTouchEvents".}
proc fcQQuickItem_cursor(self: pointer): pointer {.importc: "QQuickItem_cursor".}
proc fcQQuickItem_setCursor(self: pointer, cursor: pointer): void {.importc: "QQuickItem_setCursor".}
proc fcQQuickItem_unsetCursor(self: pointer): void {.importc: "QQuickItem_unsetCursor".}
proc fcQQuickItem_isUnderMouse(self: pointer): bool {.importc: "QQuickItem_isUnderMouse".}
proc fcQQuickItem_grabMouse(self: pointer): void {.importc: "QQuickItem_grabMouse".}
proc fcQQuickItem_ungrabMouse(self: pointer): void {.importc: "QQuickItem_ungrabMouse".}
proc fcQQuickItem_keepMouseGrab(self: pointer): bool {.importc: "QQuickItem_keepMouseGrab".}
proc fcQQuickItem_setKeepMouseGrab(self: pointer, keepMouseGrab: bool): void {.importc: "QQuickItem_setKeepMouseGrab".}
proc fcQQuickItem_filtersChildMouseEvents(self: pointer): bool {.importc: "QQuickItem_filtersChildMouseEvents".}
proc fcQQuickItem_setFiltersChildMouseEvents(self: pointer, filter: bool): void {.importc: "QQuickItem_setFiltersChildMouseEvents".}
proc fcQQuickItem_grabTouchPoints(self: pointer, ids: struct_miqt_array): void {.importc: "QQuickItem_grabTouchPoints".}
proc fcQQuickItem_ungrabTouchPoints(self: pointer): void {.importc: "QQuickItem_ungrabTouchPoints".}
proc fcQQuickItem_keepTouchGrab(self: pointer): bool {.importc: "QQuickItem_keepTouchGrab".}
proc fcQQuickItem_setKeepTouchGrab(self: pointer, keepTouchGrab: bool): void {.importc: "QQuickItem_setKeepTouchGrab".}
proc fcQQuickItem_grabToImage(self: pointer, callback: pointer): bool {.importc: "QQuickItem_grabToImage".}
proc fcQQuickItem_contains(self: pointer, point: pointer): bool {.importc: "QQuickItem_contains".}
proc fcQQuickItem_containmentMask(self: pointer): pointer {.importc: "QQuickItem_containmentMask".}
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
proc fcQQuickItem_polish(self: pointer): void {.importc: "QQuickItem_polish".}
proc fcQQuickItem_forceActiveFocus(self: pointer): void {.importc: "QQuickItem_forceActiveFocus".}
proc fcQQuickItem_forceActiveFocusWithReason(self: pointer, reason: cint): void {.importc: "QQuickItem_forceActiveFocusWithReason".}
proc fcQQuickItem_nextItemInFocusChain(self: pointer): pointer {.importc: "QQuickItem_nextItemInFocusChain".}
proc fcQQuickItem_childAt(self: pointer, x: float64, y: float64): pointer {.importc: "QQuickItem_childAt".}
proc fcQQuickItem_ensurePolished(self: pointer): void {.importc: "QQuickItem_ensurePolished".}
proc fcQQuickItem_dumpItemTree(self: pointer): void {.importc: "QQuickItem_dumpItemTree".}
proc fcQQuickItem_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QQuickItem_inputMethodQuery".}
proc fcQQuickItem_isTextureProvider(self: pointer): bool {.importc: "QQuickItem_isTextureProvider".}
proc fcQQuickItem_textureProvider(self: pointer): pointer {.importc: "QQuickItem_textureProvider".}
proc fcQQuickItem_update(self: pointer): void {.importc: "QQuickItem_update".}
proc fcQQuickItem_childrenRectChanged(self: pointer, param1: pointer): void {.importc: "QQuickItem_childrenRectChanged".}
proc fcQQuickItem_connect_childrenRectChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_childrenRectChanged".}
proc fcQQuickItem_baselineOffsetChanged(self: pointer, param1: float64): void {.importc: "QQuickItem_baselineOffsetChanged".}
proc fcQQuickItem_connect_baselineOffsetChanged(self: pointer, slot: int, callback: proc (slot: int, param1: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_baselineOffsetChanged".}
proc fcQQuickItem_stateChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QQuickItem_stateChanged".}
proc fcQQuickItem_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_stateChanged".}
proc fcQQuickItem_focusChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_focusChanged".}
proc fcQQuickItem_connect_focusChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_focusChanged".}
proc fcQQuickItem_activeFocusChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_activeFocusChanged".}
proc fcQQuickItem_connect_activeFocusChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_activeFocusChanged".}
proc fcQQuickItem_activeFocusOnTabChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_activeFocusOnTabChanged".}
proc fcQQuickItem_connect_activeFocusOnTabChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_activeFocusOnTabChanged".}
proc fcQQuickItem_parentChanged(self: pointer, param1: pointer): void {.importc: "QQuickItem_parentChanged".}
proc fcQQuickItem_connect_parentChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_parentChanged".}
proc fcQQuickItem_transformOriginChanged(self: pointer, param1: cint): void {.importc: "QQuickItem_transformOriginChanged".}
proc fcQQuickItem_connect_transformOriginChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_transformOriginChanged".}
proc fcQQuickItem_smoothChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_smoothChanged".}
proc fcQQuickItem_connect_smoothChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_smoothChanged".}
proc fcQQuickItem_antialiasingChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_antialiasingChanged".}
proc fcQQuickItem_connect_antialiasingChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_antialiasingChanged".}
proc fcQQuickItem_clipChanged(self: pointer, param1: bool): void {.importc: "QQuickItem_clipChanged".}
proc fcQQuickItem_connect_clipChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_clipChanged".}
proc fcQQuickItem_windowChanged(self: pointer, window: pointer): void {.importc: "QQuickItem_windowChanged".}
proc fcQQuickItem_connect_windowChanged(self: pointer, slot: int, callback: proc (slot: int, window: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_windowChanged".}
proc fcQQuickItem_childrenChanged(self: pointer): void {.importc: "QQuickItem_childrenChanged".}
proc fcQQuickItem_connect_childrenChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_childrenChanged".}
proc fcQQuickItem_opacityChanged(self: pointer): void {.importc: "QQuickItem_opacityChanged".}
proc fcQQuickItem_connect_opacityChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_opacityChanged".}
proc fcQQuickItem_enabledChanged(self: pointer): void {.importc: "QQuickItem_enabledChanged".}
proc fcQQuickItem_connect_enabledChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_enabledChanged".}
proc fcQQuickItem_visibleChanged(self: pointer): void {.importc: "QQuickItem_visibleChanged".}
proc fcQQuickItem_connect_visibleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_visibleChanged".}
proc fcQQuickItem_visibleChildrenChanged(self: pointer): void {.importc: "QQuickItem_visibleChildrenChanged".}
proc fcQQuickItem_connect_visibleChildrenChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_visibleChildrenChanged".}
proc fcQQuickItem_rotationChanged(self: pointer): void {.importc: "QQuickItem_rotationChanged".}
proc fcQQuickItem_connect_rotationChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_rotationChanged".}
proc fcQQuickItem_scaleChanged(self: pointer): void {.importc: "QQuickItem_scaleChanged".}
proc fcQQuickItem_connect_scaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_scaleChanged".}
proc fcQQuickItem_xChanged(self: pointer): void {.importc: "QQuickItem_xChanged".}
proc fcQQuickItem_connect_xChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_xChanged".}
proc fcQQuickItem_yChanged(self: pointer): void {.importc: "QQuickItem_yChanged".}
proc fcQQuickItem_connect_yChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_yChanged".}
proc fcQQuickItem_widthChanged(self: pointer): void {.importc: "QQuickItem_widthChanged".}
proc fcQQuickItem_connect_widthChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_widthChanged".}
proc fcQQuickItem_heightChanged(self: pointer): void {.importc: "QQuickItem_heightChanged".}
proc fcQQuickItem_connect_heightChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_heightChanged".}
proc fcQQuickItem_zChanged(self: pointer): void {.importc: "QQuickItem_zChanged".}
proc fcQQuickItem_connect_zChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_zChanged".}
proc fcQQuickItem_implicitWidthChanged(self: pointer): void {.importc: "QQuickItem_implicitWidthChanged".}
proc fcQQuickItem_connect_implicitWidthChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_implicitWidthChanged".}
proc fcQQuickItem_implicitHeightChanged(self: pointer): void {.importc: "QQuickItem_implicitHeightChanged".}
proc fcQQuickItem_connect_implicitHeightChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_implicitHeightChanged".}
proc fcQQuickItem_containmentMaskChanged(self: pointer): void {.importc: "QQuickItem_containmentMaskChanged".}
proc fcQQuickItem_connect_containmentMaskChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_containmentMaskChanged".}
proc fcQQuickItem_paletteChanged(self: pointer): void {.importc: "QQuickItem_paletteChanged".}
proc fcQQuickItem_connect_paletteChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_paletteChanged".}
proc fcQQuickItem_paletteCreated(self: pointer): void {.importc: "QQuickItem_paletteCreated".}
proc fcQQuickItem_connect_paletteCreated(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_paletteCreated".}
proc fcQQuickItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickItem_tr2".}
proc fcQQuickItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickItem_tr3".}
proc fcQQuickItem_setFlag2(self: pointer, flag: cint, enabled: bool): void {.importc: "QQuickItem_setFlag2".}
proc fcQQuickItem_grabToImage22(self: pointer, callback: pointer, targetSize: pointer): bool {.importc: "QQuickItem_grabToImage22".}
proc fcQQuickItem_nextItemInFocusChain1(self: pointer, forward: bool): pointer {.importc: "QQuickItem_nextItemInFocusChain1".}
proc fcQQuickItem_vtbl(self: pointer): pointer {.importc: "QQuickItem_vtbl".}
proc fcQQuickItem_vdata(self: pointer): pointer {.importc: "QQuickItem_vdata".}
type cQQuickItemVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  clipRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  isTextureProvider*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  textureProvider*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(self: pointer, param1: cint, param2: pointer): void {.cdecl, raises: [], gcsafe.}
  geometryChange*: proc(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl, raises: [], gcsafe.}
  classBegin*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  componentComplete*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseUngrabEvent*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  touchUngrabEvent*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  touchEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  childMouseEventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  updatePaintNode*: proc(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl, raises: [], gcsafe.}
  releaseResources*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updatePolish*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickItem_virtualbase_metaObject(self: pointer): pointer {.importc: "QQuickItem_virtualbase_metaObject".}
proc fcQQuickItem_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickItem_virtualbase_metacast".}
proc fcQQuickItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickItem_virtualbase_metacall".}
proc fcQQuickItem_virtualbase_boundingRect(self: pointer): pointer {.importc: "QQuickItem_virtualbase_boundingRect".}
proc fcQQuickItem_virtualbase_clipRect(self: pointer): pointer {.importc: "QQuickItem_virtualbase_clipRect".}
proc fcQQuickItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QQuickItem_virtualbase_contains".}
proc fcQQuickItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QQuickItem_virtualbase_inputMethodQuery".}
proc fcQQuickItem_virtualbase_isTextureProvider(self: pointer): bool {.importc: "QQuickItem_virtualbase_isTextureProvider".}
proc fcQQuickItem_virtualbase_textureProvider(self: pointer): pointer {.importc: "QQuickItem_virtualbase_textureProvider".}
proc fcQQuickItem_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQuickItem_virtualbase_event".}
proc fcQQuickItem_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void {.importc: "QQuickItem_virtualbase_itemChange".}
proc fcQQuickItem_virtualbase_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.importc: "QQuickItem_virtualbase_geometryChange".}
proc fcQQuickItem_virtualbase_classBegin(self: pointer): void {.importc: "QQuickItem_virtualbase_classBegin".}
proc fcQQuickItem_virtualbase_componentComplete(self: pointer): void {.importc: "QQuickItem_virtualbase_componentComplete".}
proc fcQQuickItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_keyPressEvent".}
proc fcQQuickItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_keyReleaseEvent".}
proc fcQQuickItem_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QQuickItem_virtualbase_inputMethodEvent".}
proc fcQQuickItem_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QQuickItem_virtualbase_focusInEvent".}
proc fcQQuickItem_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QQuickItem_virtualbase_focusOutEvent".}
proc fcQQuickItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_mousePressEvent".}
proc fcQQuickItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_mouseMoveEvent".}
proc fcQQuickItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_mouseReleaseEvent".}
proc fcQQuickItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickItem_virtualbase_mouseUngrabEvent(self: pointer): void {.importc: "QQuickItem_virtualbase_mouseUngrabEvent".}
proc fcQQuickItem_virtualbase_touchUngrabEvent(self: pointer): void {.importc: "QQuickItem_virtualbase_touchUngrabEvent".}
proc fcQQuickItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_wheelEvent".}
proc fcQQuickItem_virtualbase_touchEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_touchEvent".}
proc fcQQuickItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_hoverEnterEvent".}
proc fcQQuickItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_hoverMoveEvent".}
proc fcQQuickItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_hoverLeaveEvent".}
proc fcQQuickItem_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QQuickItem_virtualbase_dragEnterEvent".}
proc fcQQuickItem_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QQuickItem_virtualbase_dragMoveEvent".}
proc fcQQuickItem_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QQuickItem_virtualbase_dragLeaveEvent".}
proc fcQQuickItem_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QQuickItem_virtualbase_dropEvent".}
proc fcQQuickItem_virtualbase_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QQuickItem_virtualbase_childMouseEventFilter".}
proc fcQQuickItem_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QQuickItem_virtualbase_updatePaintNode".}
proc fcQQuickItem_virtualbase_releaseResources(self: pointer): void {.importc: "QQuickItem_virtualbase_releaseResources".}
proc fcQQuickItem_virtualbase_updatePolish(self: pointer): void {.importc: "QQuickItem_virtualbase_updatePolish".}
proc fcQQuickItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickItem_virtualbase_eventFilter".}
proc fcQQuickItem_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_timerEvent".}
proc fcQQuickItem_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_childEvent".}
proc fcQQuickItem_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_customEvent".}
proc fcQQuickItem_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickItem_virtualbase_connectNotify".}
proc fcQQuickItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickItem_virtualbase_disconnectNotify".}
proc fcQQuickItem_protectedbase_isComponentComplete(self: pointer): bool {.importc: "QQuickItem_protectedbase_isComponentComplete".}
proc fcQQuickItem_protectedbase_updateInputMethod(self: pointer): void {.importc: "QQuickItem_protectedbase_updateInputMethod".}
proc fcQQuickItem_protectedbase_widthValid(self: pointer): bool {.importc: "QQuickItem_protectedbase_widthValid".}
proc fcQQuickItem_protectedbase_heightValid(self: pointer): bool {.importc: "QQuickItem_protectedbase_heightValid".}
proc fcQQuickItem_protectedbase_setImplicitSize(self: pointer, param1: float64, param2: float64): void {.importc: "QQuickItem_protectedbase_setImplicitSize".}
proc fcQQuickItem_protectedbase_updateInputMethod1(self: pointer, queries: cint): void {.importc: "QQuickItem_protectedbase_updateInputMethod1".}
proc fcQQuickItem_protectedbase_sender(self: pointer): pointer {.importc: "QQuickItem_protectedbase_sender".}
proc fcQQuickItem_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickItem_protectedbase_senderSignalIndex".}
proc fcQQuickItem_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickItem_protectedbase_receivers".}
proc fcQQuickItem_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickItem_protectedbase_isSignalConnected".}
proc fcQQuickItem_new(vtbl, vdata: pointer): ptr cQQuickItem {.importc: "QQuickItem_new".}
proc fcQQuickItem_new2(vtbl, vdata: pointer, parent: pointer): ptr cQQuickItem {.importc: "QQuickItem_new2".}
proc fcQQuickItem_staticMetaObject(): pointer {.importc: "QQuickItem_staticMetaObject".}
proc fcQQuickItemItemChangeData_new(v: pointer): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new".}
proc fcQQuickItemItemChangeData_new2(v: pointer): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new2".}
proc fcQQuickItemItemChangeData_new3(v: float64): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new3".}
proc fcQQuickItemItemChangeData_new4(v: bool): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new4".}

proc metaObject*(self: gen_qquickitem_types.QQuickTransform): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTransform_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickitem_types.QQuickTransform, param1: cstring): pointer =
  fcQQuickTransform_metacast(self.h, param1)

proc metacall*(self: gen_qquickitem_types.QQuickTransform, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTransform_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickitem_types.QQuickTransform, s: cstring): string =
  let v_ms = fcQQuickTransform_tr(s)
  let vx_ret = string.fromBytes(v_ms)
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
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickitem_types.QQuickTransform, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTransform_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQuickTransformmetaObjectProc* = proc(self: QQuickTransform): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickTransformmetacastProc* = proc(self: QQuickTransform, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickTransformmetacallProc* = proc(self: QQuickTransform, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickTransformapplyToProc* = proc(self: QQuickTransform, matrix: gen_qmatrix4x4_types.QMatrix4x4): void {.raises: [], gcsafe.}
type QQuickTransformeventProc* = proc(self: QQuickTransform, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickTransformeventFilterProc* = proc(self: QQuickTransform, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickTransformtimerEventProc* = proc(self: QQuickTransform, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickTransformchildEventProc* = proc(self: QQuickTransform, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickTransformcustomEventProc* = proc(self: QQuickTransform, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickTransformconnectNotifyProc* = proc(self: QQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickTransformdisconnectNotifyProc* = proc(self: QQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickTransformVTable* {.inheritable, pure.} = object
  vtbl: cQQuickTransformVTable
  metaObject*: QQuickTransformmetaObjectProc
  metacast*: QQuickTransformmetacastProc
  metacall*: QQuickTransformmetacallProc
  applyTo*: QQuickTransformapplyToProc
  event*: QQuickTransformeventProc
  eventFilter*: QQuickTransformeventFilterProc
  timerEvent*: QQuickTransformtimerEventProc
  childEvent*: QQuickTransformchildEventProc
  customEvent*: QQuickTransformcustomEventProc
  connectNotify*: QQuickTransformconnectNotifyProc
  disconnectNotify*: QQuickTransformdisconnectNotifyProc
proc QQuickTransformmetaObject*(self: gen_qquickitem_types.QQuickTransform): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTransform_virtualbase_metaObject(self.h), owned: false)

proc cQQuickTransform_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](fcQQuickTransform_vdata(self))
  let self = QQuickTransform(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickTransformmetacast*(self: gen_qquickitem_types.QQuickTransform, param1: cstring): pointer =
  fcQQuickTransform_virtualbase_metacast(self.h, param1)

proc cQQuickTransform_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](fcQQuickTransform_vdata(self))
  let self = QQuickTransform(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickTransformmetacall*(self: gen_qquickitem_types.QQuickTransform, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTransform_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQQuickTransform_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](fcQQuickTransform_vdata(self))
  let self = QQuickTransform(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQQuickTransform_vtable_callback_applyTo(self: pointer, matrix: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](fcQQuickTransform_vdata(self))
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix, owned: false)
  vtbl[].applyTo(self, slotval1)

proc QQuickTransformevent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTransform_virtualbase_event(self.h, event.h)

proc cQQuickTransform_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](fcQQuickTransform_vdata(self))
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickTransformeventFilter*(self: gen_qquickitem_types.QQuickTransform, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTransform_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQQuickTransform_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](fcQQuickTransform_vdata(self))
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickTransformtimerEvent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickTransform_virtualbase_timerEvent(self.h, event.h)

proc cQQuickTransform_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](fcQQuickTransform_vdata(self))
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQuickTransformchildEvent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickTransform_virtualbase_childEvent(self.h, event.h)

proc cQQuickTransform_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](fcQQuickTransform_vdata(self))
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQuickTransformcustomEvent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickTransform_virtualbase_customEvent(self.h, event.h)

proc cQQuickTransform_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](fcQQuickTransform_vdata(self))
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQuickTransformconnectNotify*(self: gen_qquickitem_types.QQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTransform_virtualbase_connectNotify(self.h, signal.h)

proc cQQuickTransform_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](fcQQuickTransform_vdata(self))
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQuickTransformdisconnectNotify*(self: gen_qquickitem_types.QQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTransform_virtualbase_disconnectNotify(self.h, signal.h)

proc cQQuickTransform_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](fcQQuickTransform_vdata(self))
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickTransform* {.inheritable.} = ref object of QQuickTransform
  vtbl*: cQQuickTransformVTable
method metaObject*(self: VirtualQQuickTransform): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickTransformmetaObject(self[])
proc cQQuickTransform_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickTransform](fcQQuickTransform_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQuickTransform, param1: cstring): pointer {.base.} =
  QQuickTransformmetacast(self[], param1)
proc cQQuickTransform_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickTransform](fcQQuickTransform_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQuickTransform, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickTransformmetacall(self[], param1, param2, param3)
proc cQQuickTransform_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickTransform](fcQQuickTransform_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method applyTo*(self: VirtualQQuickTransform, matrix: gen_qmatrix4x4_types.QMatrix4x4): void {.base.} =
  raiseAssert("missing implementation of QQuickTransform_virtualbase_applyTo")
proc cQQuickTransform_method_callback_applyTo(self: pointer, matrix: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTransform](fcQQuickTransform_vdata(self))
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix, owned: false)
  inst.applyTo(slotval1)

method event*(self: VirtualQQuickTransform, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickTransformevent(self[], event)
proc cQQuickTransform_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickTransform](fcQQuickTransform_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQuickTransform, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickTransformeventFilter(self[], watched, event)
proc cQQuickTransform_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickTransform](fcQQuickTransform_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQuickTransform, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickTransformtimerEvent(self[], event)
proc cQQuickTransform_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTransform](fcQQuickTransform_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQQuickTransform, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickTransformchildEvent(self[], event)
proc cQQuickTransform_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTransform](fcQQuickTransform_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQQuickTransform, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickTransformcustomEvent(self[], event)
proc cQQuickTransform_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTransform](fcQQuickTransform_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickTransformconnectNotify(self[], signal)
proc cQQuickTransform_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTransform](fcQQuickTransform_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickTransformdisconnectNotify(self[], signal)
proc cQQuickTransform_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickTransform](fcQQuickTransform_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc update*(self: gen_qquickitem_types.QQuickTransform): void =
  fcQQuickTransform_protectedbase_update(self.h)

proc sender*(self: gen_qquickitem_types.QQuickTransform): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickTransform_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickitem_types.QQuickTransform): cint =
  fcQQuickTransform_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickitem_types.QQuickTransform, signal: cstring): cint =
  fcQQuickTransform_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickitem_types.QQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickTransform_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickitem_types.QQuickTransform,
    vtbl: ref QQuickTransformVTable = nil): gen_qquickitem_types.QQuickTransform =
  let vtbl = if vtbl == nil: new QQuickTransformVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickTransformVTable](fcQQuickTransform_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQuickTransform_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQuickTransform_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQuickTransform_vtable_callback_metacall
  if not isNil(vtbl[].applyTo):
    vtbl[].vtbl.applyTo = cQQuickTransform_vtable_callback_applyTo
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQuickTransform_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQuickTransform_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQuickTransform_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQuickTransform_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQuickTransform_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQuickTransform_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQuickTransform_vtable_callback_disconnectNotify
  gen_qquickitem_types.QQuickTransform(h: fcQQuickTransform_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qquickitem_types.QQuickTransform,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQuickTransformVTable = nil): gen_qquickitem_types.QQuickTransform =
  let vtbl = if vtbl == nil: new QQuickTransformVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickTransformVTable](fcQQuickTransform_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQuickTransform_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQuickTransform_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQuickTransform_vtable_callback_metacall
  if not isNil(vtbl[].applyTo):
    vtbl[].vtbl.applyTo = cQQuickTransform_vtable_callback_applyTo
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQuickTransform_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQuickTransform_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQuickTransform_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQuickTransform_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQuickTransform_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQuickTransform_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQuickTransform_vtable_callback_disconnectNotify
  gen_qquickitem_types.QQuickTransform(h: fcQQuickTransform_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQQuickTransform_mvtbl = cQQuickTransformVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickTransform()[])](self.fcQQuickTransform_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQQuickTransform_method_callback_metaObject,
  metacast: cQQuickTransform_method_callback_metacast,
  metacall: cQQuickTransform_method_callback_metacall,
  applyTo: cQQuickTransform_method_callback_applyTo,
  event: cQQuickTransform_method_callback_event,
  eventFilter: cQQuickTransform_method_callback_eventFilter,
  timerEvent: cQQuickTransform_method_callback_timerEvent,
  childEvent: cQQuickTransform_method_callback_childEvent,
  customEvent: cQQuickTransform_method_callback_customEvent,
  connectNotify: cQQuickTransform_method_callback_connectNotify,
  disconnectNotify: cQQuickTransform_method_callback_disconnectNotify,
)
proc create*(T: type gen_qquickitem_types.QQuickTransform,
    inst: VirtualQQuickTransform) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickTransform_new(addr(cQQuickTransform_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qquickitem_types.QQuickTransform,
    parent: gen_qobject_types.QObject,
    inst: VirtualQQuickTransform) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickTransform_new2(addr(cQQuickTransform_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qquickitem_types.QQuickTransform): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTransform_staticMetaObject())
proc metaObject*(self: gen_qquickitem_types.QQuickItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickItem_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickitem_types.QQuickItem, param1: cstring): pointer =
  fcQQuickItem_metacast(self.h, param1)

proc metacall*(self: gen_qquickitem_types.QQuickItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickitem_types.QQuickItem, s: cstring): string =
  let v_ms = fcQQuickItem_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc window*(self: gen_qquickitem_types.QQuickItem): gen_qquickwindow_types.QQuickWindow =
  gen_qquickwindow_types.QQuickWindow(h: fcQQuickItem_window(self.h), owned: false)

proc parentItem*(self: gen_qquickitem_types.QQuickItem): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_parentItem(self.h), owned: false)

proc setParentItem*(self: gen_qquickitem_types.QQuickItem, parent: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_setParentItem(self.h, parent.h)

proc stackBefore*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_stackBefore(self.h, param1.h)

proc stackAfter*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_stackAfter(self.h, param1.h)

proc childrenRect*(self: gen_qquickitem_types.QQuickItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_childrenRect(self.h), owned: true)

proc childItems*(self: gen_qquickitem_types.QQuickItem): seq[gen_qquickitem_types.QQuickItem] =
  var v_ma = fcQQuickItem_childItems(self.h)
  var vx_ret = newSeq[gen_qquickitem_types.QQuickItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qquickitem_types.QQuickItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc clip*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_clip(self.h)

proc setClip*(self: gen_qquickitem_types.QQuickItem, clip: bool): void =
  fcQQuickItem_setClip(self.h, clip)

proc state*(self: gen_qquickitem_types.QQuickItem): string =
  let v_ms = fcQQuickItem_state(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setState*(self: gen_qquickitem_types.QQuickItem, state: openArray[char]): void =
  fcQQuickItem_setState(self.h, struct_miqt_string(data: if len(state) > 0: addr state[0] else: nil, len: csize_t(len(state))))

proc baselineOffset*(self: gen_qquickitem_types.QQuickItem): float64 =
  fcQQuickItem_baselineOffset(self.h)

proc setBaselineOffset*(self: gen_qquickitem_types.QQuickItem, baselineOffset: float64): void =
  fcQQuickItem_setBaselineOffset(self.h, baselineOffset)

proc x*(self: gen_qquickitem_types.QQuickItem): float64 =
  fcQQuickItem_x(self.h)

proc y*(self: gen_qquickitem_types.QQuickItem): float64 =
  fcQQuickItem_y(self.h)

proc position*(self: gen_qquickitem_types.QQuickItem): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_position(self.h), owned: true)

proc setX*(self: gen_qquickitem_types.QQuickItem, x: float64): void =
  fcQQuickItem_setX(self.h, x)

proc setY*(self: gen_qquickitem_types.QQuickItem, y: float64): void =
  fcQQuickItem_setY(self.h, y)

proc setPosition*(self: gen_qquickitem_types.QQuickItem, position: gen_qpoint_types.QPointF): void =
  fcQQuickItem_setPosition(self.h, position.h)

proc width*(self: gen_qquickitem_types.QQuickItem): float64 =
  fcQQuickItem_width(self.h)

proc setWidth*(self: gen_qquickitem_types.QQuickItem, width: float64): void =
  fcQQuickItem_setWidth(self.h, width)

proc resetWidth*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_resetWidth(self.h)

proc setImplicitWidth*(self: gen_qquickitem_types.QQuickItem, implicitWidth: float64): void =
  fcQQuickItem_setImplicitWidth(self.h, implicitWidth)

proc implicitWidth*(self: gen_qquickitem_types.QQuickItem): float64 =
  fcQQuickItem_implicitWidth(self.h)

proc height*(self: gen_qquickitem_types.QQuickItem): float64 =
  fcQQuickItem_height(self.h)

proc setHeight*(self: gen_qquickitem_types.QQuickItem, height: float64): void =
  fcQQuickItem_setHeight(self.h, height)

proc resetHeight*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_resetHeight(self.h)

proc setImplicitHeight*(self: gen_qquickitem_types.QQuickItem, implicitHeight: float64): void =
  fcQQuickItem_setImplicitHeight(self.h, implicitHeight)

proc implicitHeight*(self: gen_qquickitem_types.QQuickItem): float64 =
  fcQQuickItem_implicitHeight(self.h)

proc size*(self: gen_qquickitem_types.QQuickItem): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQQuickItem_size(self.h), owned: true)

proc setSize*(self: gen_qquickitem_types.QQuickItem, size: gen_qsize_types.QSizeF): void =
  fcQQuickItem_setSize(self.h, size.h)

proc transformOrigin*(self: gen_qquickitem_types.QQuickItem): cint =
  cint(fcQQuickItem_transformOrigin(self.h))

proc setTransformOrigin*(self: gen_qquickitem_types.QQuickItem, transformOrigin: cint): void =
  fcQQuickItem_setTransformOrigin(self.h, cint(transformOrigin))

proc transformOriginPoint*(self: gen_qquickitem_types.QQuickItem): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_transformOriginPoint(self.h), owned: true)

proc setTransformOriginPoint*(self: gen_qquickitem_types.QQuickItem, transformOriginPoint: gen_qpoint_types.QPointF): void =
  fcQQuickItem_setTransformOriginPoint(self.h, transformOriginPoint.h)

proc z*(self: gen_qquickitem_types.QQuickItem): float64 =
  fcQQuickItem_z(self.h)

proc setZ*(self: gen_qquickitem_types.QQuickItem, z: float64): void =
  fcQQuickItem_setZ(self.h, z)

proc rotation*(self: gen_qquickitem_types.QQuickItem): float64 =
  fcQQuickItem_rotation(self.h)

proc setRotation*(self: gen_qquickitem_types.QQuickItem, rotation: float64): void =
  fcQQuickItem_setRotation(self.h, rotation)

proc scale*(self: gen_qquickitem_types.QQuickItem): float64 =
  fcQQuickItem_scale(self.h)

proc setScale*(self: gen_qquickitem_types.QQuickItem, scale: float64): void =
  fcQQuickItem_setScale(self.h, scale)

proc opacity*(self: gen_qquickitem_types.QQuickItem): float64 =
  fcQQuickItem_opacity(self.h)

proc setOpacity*(self: gen_qquickitem_types.QQuickItem, opacity: float64): void =
  fcQQuickItem_setOpacity(self.h, opacity)

proc isVisible*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_isVisible(self.h)

proc setVisible*(self: gen_qquickitem_types.QQuickItem, visible: bool): void =
  fcQQuickItem_setVisible(self.h, visible)

proc isEnabled*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_isEnabled(self.h)

proc setEnabled*(self: gen_qquickitem_types.QQuickItem, enabled: bool): void =
  fcQQuickItem_setEnabled(self.h, enabled)

proc smooth*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_smooth(self.h)

proc setSmooth*(self: gen_qquickitem_types.QQuickItem, smooth: bool): void =
  fcQQuickItem_setSmooth(self.h, smooth)

proc activeFocusOnTab*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_activeFocusOnTab(self.h)

proc setActiveFocusOnTab*(self: gen_qquickitem_types.QQuickItem, activeFocusOnTab: bool): void =
  fcQQuickItem_setActiveFocusOnTab(self.h, activeFocusOnTab)

proc antialiasing*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_antialiasing(self.h)

proc setAntialiasing*(self: gen_qquickitem_types.QQuickItem, antialiasing: bool): void =
  fcQQuickItem_setAntialiasing(self.h, antialiasing)

proc resetAntialiasing*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_resetAntialiasing(self.h)

proc flags*(self: gen_qquickitem_types.QQuickItem): cint =
  cint(fcQQuickItem_flags(self.h))

proc setFlag*(self: gen_qquickitem_types.QQuickItem, flag: cint): void =
  fcQQuickItem_setFlag(self.h, cint(flag))

proc setFlags*(self: gen_qquickitem_types.QQuickItem, flags: cint): void =
  fcQQuickItem_setFlags(self.h, cint(flags))

proc boundingRect*(self: gen_qquickitem_types.QQuickItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_boundingRect(self.h), owned: true)

proc clipRect*(self: gen_qquickitem_types.QQuickItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_clipRect(self.h), owned: true)

proc viewportItem*(self: gen_qquickitem_types.QQuickItem): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_viewportItem(self.h), owned: false)

proc hasActiveFocus*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_hasActiveFocus(self.h)

proc hasFocus*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_hasFocus(self.h)

proc setFocus*(self: gen_qquickitem_types.QQuickItem, focus: bool): void =
  fcQQuickItem_setFocus(self.h, focus)

proc setFocus*(self: gen_qquickitem_types.QQuickItem, focus: bool, reason: cint): void =
  fcQQuickItem_setFocus2(self.h, focus, cint(reason))

proc isFocusScope*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_isFocusScope(self.h)

proc scopedFocusItem*(self: gen_qquickitem_types.QQuickItem): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_scopedFocusItem(self.h), owned: false)

proc isAncestorOf*(self: gen_qquickitem_types.QQuickItem, child: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_isAncestorOf(self.h, child.h)

proc acceptedMouseButtons*(self: gen_qquickitem_types.QQuickItem): cint =
  cint(fcQQuickItem_acceptedMouseButtons(self.h))

proc setAcceptedMouseButtons*(self: gen_qquickitem_types.QQuickItem, buttons: cint): void =
  fcQQuickItem_setAcceptedMouseButtons(self.h, cint(buttons))

proc acceptHoverEvents*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_acceptHoverEvents(self.h)

proc setAcceptHoverEvents*(self: gen_qquickitem_types.QQuickItem, enabled: bool): void =
  fcQQuickItem_setAcceptHoverEvents(self.h, enabled)

proc acceptTouchEvents*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_acceptTouchEvents(self.h)

proc setAcceptTouchEvents*(self: gen_qquickitem_types.QQuickItem, accept: bool): void =
  fcQQuickItem_setAcceptTouchEvents(self.h, accept)

proc cursor*(self: gen_qquickitem_types.QQuickItem): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQQuickItem_cursor(self.h), owned: true)

proc setCursor*(self: gen_qquickitem_types.QQuickItem, cursor: gen_qcursor_types.QCursor): void =
  fcQQuickItem_setCursor(self.h, cursor.h)

proc unsetCursor*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_unsetCursor(self.h)

proc isUnderMouse*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_isUnderMouse(self.h)

proc grabMouse*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_grabMouse(self.h)

proc ungrabMouse*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_ungrabMouse(self.h)

proc keepMouseGrab*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_keepMouseGrab(self.h)

proc setKeepMouseGrab*(self: gen_qquickitem_types.QQuickItem, keepMouseGrab: bool): void =
  fcQQuickItem_setKeepMouseGrab(self.h, keepMouseGrab)

proc filtersChildMouseEvents*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_filtersChildMouseEvents(self.h)

proc setFiltersChildMouseEvents*(self: gen_qquickitem_types.QQuickItem, filter: bool): void =
  fcQQuickItem_setFiltersChildMouseEvents(self.h, filter)

proc grabTouchPoints*(self: gen_qquickitem_types.QQuickItem, ids: openArray[cint]): void =
  var ids_CArray = newSeq[cint](len(ids))
  for i in 0..<len(ids):
    ids_CArray[i] = ids[i]

  fcQQuickItem_grabTouchPoints(self.h, struct_miqt_array(len: csize_t(len(ids)), data: if len(ids) == 0: nil else: addr(ids_CArray[0])))

proc ungrabTouchPoints*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_ungrabTouchPoints(self.h)

proc keepTouchGrab*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_keepTouchGrab(self.h)

proc setKeepTouchGrab*(self: gen_qquickitem_types.QQuickItem, keepTouchGrab: bool): void =
  fcQQuickItem_setKeepTouchGrab(self.h, keepTouchGrab)

proc grabToImage*(self: gen_qquickitem_types.QQuickItem, callback: gen_qjsvalue_types.QJSValue): bool =
  fcQQuickItem_grabToImage(self.h, callback.h)

proc contains*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): bool =
  fcQQuickItem_contains(self.h, point.h)

proc containmentMask*(self: gen_qquickitem_types.QQuickItem): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickItem_containmentMask(self.h), owned: false)

proc setContainmentMask*(self: gen_qquickitem_types.QQuickItem, mask: gen_qobject_types.QObject): void =
  fcQQuickItem_setContainmentMask(self.h, mask.h)

proc itemTransform*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem, param2: ptr bool): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQQuickItem_itemTransform(self.h, param1.h, param2), owned: true)

proc mapToItem*(self: gen_qquickitem_types.QQuickItem, item: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapToItem(self.h, item.h, point.h), owned: true)

proc mapToScene*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapToScene(self.h, point.h), owned: true)

proc mapToGlobal*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapToGlobal(self.h, point.h), owned: true)

proc mapRectToItem*(self: gen_qquickitem_types.QQuickItem, item: gen_qquickitem_types.QQuickItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_mapRectToItem(self.h, item.h, rect.h), owned: true)

proc mapRectToScene*(self: gen_qquickitem_types.QQuickItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_mapRectToScene(self.h, rect.h), owned: true)

proc mapFromItem*(self: gen_qquickitem_types.QQuickItem, item: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapFromItem(self.h, item.h, point.h), owned: true)

proc mapFromScene*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapFromScene(self.h, point.h), owned: true)

proc mapFromGlobal*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQQuickItem_mapFromGlobal(self.h, point.h), owned: true)

proc mapRectFromItem*(self: gen_qquickitem_types.QQuickItem, item: gen_qquickitem_types.QQuickItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_mapRectFromItem(self.h, item.h, rect.h), owned: true)

proc mapRectFromScene*(self: gen_qquickitem_types.QQuickItem, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_mapRectFromScene(self.h, rect.h), owned: true)

proc polish*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_polish(self.h)

proc forceActiveFocus*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_forceActiveFocus(self.h)

proc forceActiveFocus*(self: gen_qquickitem_types.QQuickItem, reason: cint): void =
  fcQQuickItem_forceActiveFocusWithReason(self.h, cint(reason))

proc nextItemInFocusChain*(self: gen_qquickitem_types.QQuickItem): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_nextItemInFocusChain(self.h), owned: false)

proc childAt*(self: gen_qquickitem_types.QQuickItem, x: float64, y: float64): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_childAt(self.h, x, y), owned: false)

proc ensurePolished*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_ensurePolished(self.h)

proc dumpItemTree*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_dumpItemTree(self.h)

proc inputMethodQuery*(self: gen_qquickitem_types.QQuickItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQuickItem_inputMethodQuery(self.h, cint(query)), owned: true)

proc isTextureProvider*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_isTextureProvider(self.h)

proc textureProvider*(self: gen_qquickitem_types.QQuickItem): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickItem_textureProvider(self.h), owned: false)

proc update*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_update(self.h)

proc childrenRectChanged*(self: gen_qquickitem_types.QQuickItem, param1: gen_qrect_types.QRectF): void =
  fcQQuickItem_childrenRectChanged(self.h, param1.h)

type QQuickItemchildrenRectChangedSlot* = proc(param1: gen_qrect_types.QRectF)
proc cQQuickItem_slot_callback_childrenRectChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemchildrenRectChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_childrenRectChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemchildrenRectChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onchildrenRectChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemchildrenRectChangedSlot) =
  var tmp = new QQuickItemchildrenRectChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_childrenRectChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_childrenRectChanged, cQQuickItem_slot_callback_childrenRectChanged_release)

proc baselineOffsetChanged*(self: gen_qquickitem_types.QQuickItem, param1: float64): void =
  fcQQuickItem_baselineOffsetChanged(self.h, param1)

type QQuickItembaselineOffsetChangedSlot* = proc(param1: float64)
proc cQQuickItem_slot_callback_baselineOffsetChanged(slot: int, param1: float64) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItembaselineOffsetChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_baselineOffsetChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItembaselineOffsetChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbaselineOffsetChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItembaselineOffsetChangedSlot) =
  var tmp = new QQuickItembaselineOffsetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_baselineOffsetChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_baselineOffsetChanged, cQQuickItem_slot_callback_baselineOffsetChanged_release)

proc stateChanged*(self: gen_qquickitem_types.QQuickItem, param1: openArray[char]): void =
  fcQQuickItem_stateChanged(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QQuickItemstateChangedSlot* = proc(param1: openArray[char])
proc cQQuickItem_slot_callback_stateChanged(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemstateChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemstateChangedSlot) =
  var tmp = new QQuickItemstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_stateChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_stateChanged, cQQuickItem_slot_callback_stateChanged_release)

proc focusChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_focusChanged(self.h, param1)

type QQuickItemfocusChangedSlot* = proc(param1: bool)
proc cQQuickItem_slot_callback_focusChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemfocusChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_focusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemfocusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemfocusChangedSlot) =
  var tmp = new QQuickItemfocusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_focusChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_focusChanged, cQQuickItem_slot_callback_focusChanged_release)

proc activeFocusChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_activeFocusChanged(self.h, param1)

type QQuickItemactiveFocusChangedSlot* = proc(param1: bool)
proc cQQuickItem_slot_callback_activeFocusChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemactiveFocusChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_activeFocusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemactiveFocusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveFocusChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemactiveFocusChangedSlot) =
  var tmp = new QQuickItemactiveFocusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_activeFocusChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_activeFocusChanged, cQQuickItem_slot_callback_activeFocusChanged_release)

proc activeFocusOnTabChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_activeFocusOnTabChanged(self.h, param1)

type QQuickItemactiveFocusOnTabChangedSlot* = proc(param1: bool)
proc cQQuickItem_slot_callback_activeFocusOnTabChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemactiveFocusOnTabChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_activeFocusOnTabChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemactiveFocusOnTabChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveFocusOnTabChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemactiveFocusOnTabChangedSlot) =
  var tmp = new QQuickItemactiveFocusOnTabChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_activeFocusOnTabChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_activeFocusOnTabChanged, cQQuickItem_slot_callback_activeFocusOnTabChanged_release)

proc parentChanged*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_parentChanged(self.h, param1.h)

type QQuickItemparentChangedSlot* = proc(param1: gen_qquickitem_types.QQuickItem)
proc cQQuickItem_slot_callback_parentChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemparentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_parentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemparentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onparentChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemparentChangedSlot) =
  var tmp = new QQuickItemparentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_parentChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_parentChanged, cQQuickItem_slot_callback_parentChanged_release)

proc transformOriginChanged*(self: gen_qquickitem_types.QQuickItem, param1: cint): void =
  fcQQuickItem_transformOriginChanged(self.h, cint(param1))

type QQuickItemtransformOriginChangedSlot* = proc(param1: cint)
proc cQQuickItem_slot_callback_transformOriginChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemtransformOriginChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_transformOriginChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemtransformOriginChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontransformOriginChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemtransformOriginChangedSlot) =
  var tmp = new QQuickItemtransformOriginChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_transformOriginChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_transformOriginChanged, cQQuickItem_slot_callback_transformOriginChanged_release)

proc smoothChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_smoothChanged(self.h, param1)

type QQuickItemsmoothChangedSlot* = proc(param1: bool)
proc cQQuickItem_slot_callback_smoothChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemsmoothChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_smoothChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemsmoothChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsmoothChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemsmoothChangedSlot) =
  var tmp = new QQuickItemsmoothChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_smoothChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_smoothChanged, cQQuickItem_slot_callback_smoothChanged_release)

proc antialiasingChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_antialiasingChanged(self.h, param1)

type QQuickItemantialiasingChangedSlot* = proc(param1: bool)
proc cQQuickItem_slot_callback_antialiasingChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemantialiasingChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_antialiasingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemantialiasingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onantialiasingChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemantialiasingChangedSlot) =
  var tmp = new QQuickItemantialiasingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_antialiasingChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_antialiasingChanged, cQQuickItem_slot_callback_antialiasingChanged_release)

proc clipChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_clipChanged(self.h, param1)

type QQuickItemclipChangedSlot* = proc(param1: bool)
proc cQQuickItem_slot_callback_clipChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemclipChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_clipChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemclipChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclipChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemclipChangedSlot) =
  var tmp = new QQuickItemclipChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_clipChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_clipChanged, cQQuickItem_slot_callback_clipChanged_release)

proc windowChanged*(self: gen_qquickitem_types.QQuickItem, window: gen_qquickwindow_types.QQuickWindow): void =
  fcQQuickItem_windowChanged(self.h, window.h)

type QQuickItemwindowChangedSlot* = proc(window: gen_qquickwindow_types.QQuickWindow)
proc cQQuickItem_slot_callback_windowChanged(slot: int, window: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemwindowChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qquickwindow_types.QQuickWindow(h: window, owned: false)

  nimfunc[](slotval1)

proc cQQuickItem_slot_callback_windowChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemwindowChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwindowChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemwindowChangedSlot) =
  var tmp = new QQuickItemwindowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_windowChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_windowChanged, cQQuickItem_slot_callback_windowChanged_release)

proc childrenChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_childrenChanged(self.h)

type QQuickItemchildrenChangedSlot* = proc()
proc cQQuickItem_slot_callback_childrenChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemchildrenChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_childrenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemchildrenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onchildrenChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemchildrenChangedSlot) =
  var tmp = new QQuickItemchildrenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_childrenChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_childrenChanged, cQQuickItem_slot_callback_childrenChanged_release)

proc opacityChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_opacityChanged(self.h)

type QQuickItemopacityChangedSlot* = proc()
proc cQQuickItem_slot_callback_opacityChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemopacityChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_opacityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemopacityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onopacityChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemopacityChangedSlot) =
  var tmp = new QQuickItemopacityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_opacityChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_opacityChanged, cQQuickItem_slot_callback_opacityChanged_release)

proc enabledChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_enabledChanged(self.h)

type QQuickItemenabledChangedSlot* = proc()
proc cQQuickItem_slot_callback_enabledChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemenabledChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_enabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemenabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onenabledChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemenabledChangedSlot) =
  var tmp = new QQuickItemenabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_enabledChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_enabledChanged, cQQuickItem_slot_callback_enabledChanged_release)

proc visibleChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_visibleChanged(self.h)

type QQuickItemvisibleChangedSlot* = proc()
proc cQQuickItem_slot_callback_visibleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemvisibleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_visibleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemvisibleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvisibleChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemvisibleChangedSlot) =
  var tmp = new QQuickItemvisibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_visibleChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_visibleChanged, cQQuickItem_slot_callback_visibleChanged_release)

proc visibleChildrenChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_visibleChildrenChanged(self.h)

type QQuickItemvisibleChildrenChangedSlot* = proc()
proc cQQuickItem_slot_callback_visibleChildrenChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemvisibleChildrenChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_visibleChildrenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemvisibleChildrenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvisibleChildrenChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemvisibleChildrenChangedSlot) =
  var tmp = new QQuickItemvisibleChildrenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_visibleChildrenChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_visibleChildrenChanged, cQQuickItem_slot_callback_visibleChildrenChanged_release)

proc rotationChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_rotationChanged(self.h)

type QQuickItemrotationChangedSlot* = proc()
proc cQQuickItem_slot_callback_rotationChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemrotationChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_rotationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemrotationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrotationChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemrotationChangedSlot) =
  var tmp = new QQuickItemrotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_rotationChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_rotationChanged, cQQuickItem_slot_callback_rotationChanged_release)

proc scaleChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_scaleChanged(self.h)

type QQuickItemscaleChangedSlot* = proc()
proc cQQuickItem_slot_callback_scaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemscaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_scaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemscaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscaleChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemscaleChangedSlot) =
  var tmp = new QQuickItemscaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_scaleChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_scaleChanged, cQQuickItem_slot_callback_scaleChanged_release)

proc xChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_xChanged(self.h)

type QQuickItemxChangedSlot* = proc()
proc cQQuickItem_slot_callback_xChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemxChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_xChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemxChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onxChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemxChangedSlot) =
  var tmp = new QQuickItemxChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_xChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_xChanged, cQQuickItem_slot_callback_xChanged_release)

proc yChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_yChanged(self.h)

type QQuickItemyChangedSlot* = proc()
proc cQQuickItem_slot_callback_yChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemyChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_yChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onyChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemyChangedSlot) =
  var tmp = new QQuickItemyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_yChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_yChanged, cQQuickItem_slot_callback_yChanged_release)

proc widthChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_widthChanged(self.h)

type QQuickItemwidthChangedSlot* = proc()
proc cQQuickItem_slot_callback_widthChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemwidthChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_widthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemwidthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwidthChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemwidthChangedSlot) =
  var tmp = new QQuickItemwidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_widthChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_widthChanged, cQQuickItem_slot_callback_widthChanged_release)

proc heightChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_heightChanged(self.h)

type QQuickItemheightChangedSlot* = proc()
proc cQQuickItem_slot_callback_heightChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemheightChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_heightChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemheightChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onheightChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemheightChangedSlot) =
  var tmp = new QQuickItemheightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_heightChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_heightChanged, cQQuickItem_slot_callback_heightChanged_release)

proc zChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_zChanged(self.h)

type QQuickItemzChangedSlot* = proc()
proc cQQuickItem_slot_callback_zChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemzChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_zChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemzChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onzChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemzChangedSlot) =
  var tmp = new QQuickItemzChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_zChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_zChanged, cQQuickItem_slot_callback_zChanged_release)

proc implicitWidthChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_implicitWidthChanged(self.h)

type QQuickItemimplicitWidthChangedSlot* = proc()
proc cQQuickItem_slot_callback_implicitWidthChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemimplicitWidthChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_implicitWidthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemimplicitWidthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onimplicitWidthChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemimplicitWidthChangedSlot) =
  var tmp = new QQuickItemimplicitWidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_implicitWidthChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_implicitWidthChanged, cQQuickItem_slot_callback_implicitWidthChanged_release)

proc implicitHeightChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_implicitHeightChanged(self.h)

type QQuickItemimplicitHeightChangedSlot* = proc()
proc cQQuickItem_slot_callback_implicitHeightChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemimplicitHeightChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_implicitHeightChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemimplicitHeightChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onimplicitHeightChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemimplicitHeightChangedSlot) =
  var tmp = new QQuickItemimplicitHeightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_implicitHeightChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_implicitHeightChanged, cQQuickItem_slot_callback_implicitHeightChanged_release)

proc containmentMaskChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_containmentMaskChanged(self.h)

type QQuickItemcontainmentMaskChangedSlot* = proc()
proc cQQuickItem_slot_callback_containmentMaskChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemcontainmentMaskChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_containmentMaskChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemcontainmentMaskChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontainmentMaskChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemcontainmentMaskChangedSlot) =
  var tmp = new QQuickItemcontainmentMaskChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_containmentMaskChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_containmentMaskChanged, cQQuickItem_slot_callback_containmentMaskChanged_release)

proc paletteChanged*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_paletteChanged(self.h)

type QQuickItempaletteChangedSlot* = proc()
proc cQQuickItem_slot_callback_paletteChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItempaletteChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_paletteChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItempaletteChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpaletteChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItempaletteChangedSlot) =
  var tmp = new QQuickItempaletteChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_paletteChanged(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_paletteChanged, cQQuickItem_slot_callback_paletteChanged_release)

proc paletteCreated*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_paletteCreated(self.h)

type QQuickItempaletteCreatedSlot* = proc()
proc cQQuickItem_slot_callback_paletteCreated(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItempaletteCreatedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItem_slot_callback_paletteCreated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItempaletteCreatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpaletteCreated*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItempaletteCreatedSlot) =
  var tmp = new QQuickItempaletteCreatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_paletteCreated(self.h, cast[int](addr tmp[]), cQQuickItem_slot_callback_paletteCreated, cQQuickItem_slot_callback_paletteCreated_release)

proc tr*(_: type gen_qquickitem_types.QQuickItem, s: cstring, c: cstring): string =
  let v_ms = fcQQuickItem_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickitem_types.QQuickItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFlag*(self: gen_qquickitem_types.QQuickItem, flag: cint, enabled: bool): void =
  fcQQuickItem_setFlag2(self.h, cint(flag), enabled)

proc grabToImage*(self: gen_qquickitem_types.QQuickItem, callback: gen_qjsvalue_types.QJSValue, targetSize: gen_qsize_types.QSize): bool =
  fcQQuickItem_grabToImage22(self.h, callback.h, targetSize.h)

proc nextItemInFocusChain*(self: gen_qquickitem_types.QQuickItem, forward: bool): gen_qquickitem_types.QQuickItem =
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_nextItemInFocusChain1(self.h, forward), owned: false)

type QQuickItemmetaObjectProc* = proc(self: QQuickItem): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickItemmetacastProc* = proc(self: QQuickItem, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickItemmetacallProc* = proc(self: QQuickItem, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickItemboundingRectProc* = proc(self: QQuickItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QQuickItemclipRectProc* = proc(self: QQuickItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QQuickItemcontainsProc* = proc(self: QQuickItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QQuickIteminputMethodQueryProc* = proc(self: QQuickItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QQuickItemisTextureProviderProc* = proc(self: QQuickItem): bool {.raises: [], gcsafe.}
type QQuickItemtextureProviderProc* = proc(self: QQuickItem): gen_qsgtextureprovider_types.QSGTextureProvider {.raises: [], gcsafe.}
type QQuickItemeventProc* = proc(self: QQuickItem, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickItemitemChangeProc* = proc(self: QQuickItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void {.raises: [], gcsafe.}
type QQuickItemgeometryChangeProc* = proc(self: QQuickItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QQuickItemclassBeginProc* = proc(self: QQuickItem): void {.raises: [], gcsafe.}
type QQuickItemcomponentCompleteProc* = proc(self: QQuickItem): void {.raises: [], gcsafe.}
type QQuickItemkeyPressEventProc* = proc(self: QQuickItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickItemkeyReleaseEventProc* = proc(self: QQuickItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickIteminputMethodEventProc* = proc(self: QQuickItem, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QQuickItemfocusInEventProc* = proc(self: QQuickItem, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickItemfocusOutEventProc* = proc(self: QQuickItem, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickItemmousePressEventProc* = proc(self: QQuickItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickItemmouseMoveEventProc* = proc(self: QQuickItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickItemmouseReleaseEventProc* = proc(self: QQuickItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickItemmouseDoubleClickEventProc* = proc(self: QQuickItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickItemmouseUngrabEventProc* = proc(self: QQuickItem): void {.raises: [], gcsafe.}
type QQuickItemtouchUngrabEventProc* = proc(self: QQuickItem): void {.raises: [], gcsafe.}
type QQuickItemwheelEventProc* = proc(self: QQuickItem, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QQuickItemtouchEventProc* = proc(self: QQuickItem, event: gen_qevent_types.QTouchEvent): void {.raises: [], gcsafe.}
type QQuickItemhoverEnterEventProc* = proc(self: QQuickItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickItemhoverMoveEventProc* = proc(self: QQuickItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickItemhoverLeaveEventProc* = proc(self: QQuickItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickItemdragEnterEventProc* = proc(self: QQuickItem, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QQuickItemdragMoveEventProc* = proc(self: QQuickItem, param1: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QQuickItemdragLeaveEventProc* = proc(self: QQuickItem, param1: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QQuickItemdropEventProc* = proc(self: QQuickItem, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QQuickItemchildMouseEventFilterProc* = proc(self: QQuickItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickItemupdatePaintNodeProc* = proc(self: QQuickItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode {.raises: [], gcsafe.}
type QQuickItemreleaseResourcesProc* = proc(self: QQuickItem): void {.raises: [], gcsafe.}
type QQuickItemupdatePolishProc* = proc(self: QQuickItem): void {.raises: [], gcsafe.}
type QQuickItemeventFilterProc* = proc(self: QQuickItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickItemtimerEventProc* = proc(self: QQuickItem, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickItemchildEventProc* = proc(self: QQuickItem, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickItemcustomEventProc* = proc(self: QQuickItem, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickItemconnectNotifyProc* = proc(self: QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickItemdisconnectNotifyProc* = proc(self: QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickItemVTable* {.inheritable, pure.} = object
  vtbl: cQQuickItemVTable
  metaObject*: QQuickItemmetaObjectProc
  metacast*: QQuickItemmetacastProc
  metacall*: QQuickItemmetacallProc
  boundingRect*: QQuickItemboundingRectProc
  clipRect*: QQuickItemclipRectProc
  contains*: QQuickItemcontainsProc
  inputMethodQuery*: QQuickIteminputMethodQueryProc
  isTextureProvider*: QQuickItemisTextureProviderProc
  textureProvider*: QQuickItemtextureProviderProc
  event*: QQuickItemeventProc
  itemChange*: QQuickItemitemChangeProc
  geometryChange*: QQuickItemgeometryChangeProc
  classBegin*: QQuickItemclassBeginProc
  componentComplete*: QQuickItemcomponentCompleteProc
  keyPressEvent*: QQuickItemkeyPressEventProc
  keyReleaseEvent*: QQuickItemkeyReleaseEventProc
  inputMethodEvent*: QQuickIteminputMethodEventProc
  focusInEvent*: QQuickItemfocusInEventProc
  focusOutEvent*: QQuickItemfocusOutEventProc
  mousePressEvent*: QQuickItemmousePressEventProc
  mouseMoveEvent*: QQuickItemmouseMoveEventProc
  mouseReleaseEvent*: QQuickItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QQuickItemmouseDoubleClickEventProc
  mouseUngrabEvent*: QQuickItemmouseUngrabEventProc
  touchUngrabEvent*: QQuickItemtouchUngrabEventProc
  wheelEvent*: QQuickItemwheelEventProc
  touchEvent*: QQuickItemtouchEventProc
  hoverEnterEvent*: QQuickItemhoverEnterEventProc
  hoverMoveEvent*: QQuickItemhoverMoveEventProc
  hoverLeaveEvent*: QQuickItemhoverLeaveEventProc
  dragEnterEvent*: QQuickItemdragEnterEventProc
  dragMoveEvent*: QQuickItemdragMoveEventProc
  dragLeaveEvent*: QQuickItemdragLeaveEventProc
  dropEvent*: QQuickItemdropEventProc
  childMouseEventFilter*: QQuickItemchildMouseEventFilterProc
  updatePaintNode*: QQuickItemupdatePaintNodeProc
  releaseResources*: QQuickItemreleaseResourcesProc
  updatePolish*: QQuickItemupdatePolishProc
  eventFilter*: QQuickItemeventFilterProc
  timerEvent*: QQuickItemtimerEventProc
  childEvent*: QQuickItemchildEventProc
  customEvent*: QQuickItemcustomEventProc
  connectNotify*: QQuickItemconnectNotifyProc
  disconnectNotify*: QQuickItemdisconnectNotifyProc
proc QQuickItemmetaObject*(self: gen_qquickitem_types.QQuickItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickItem_virtualbase_metaObject(self.h), owned: false)

proc cQQuickItem_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickItemmetacast*(self: gen_qquickitem_types.QQuickItem, param1: cstring): pointer =
  fcQQuickItem_virtualbase_metacast(self.h, param1)

proc cQQuickItem_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickItemmetacall*(self: gen_qquickitem_types.QQuickItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQQuickItem_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickItemboundingRect*(self: gen_qquickitem_types.QQuickItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_virtualbase_boundingRect(self.h), owned: true)

proc cQQuickItem_vtable_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickItemclipRect*(self: gen_qquickitem_types.QQuickItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_virtualbase_clipRect(self.h), owned: true)

proc cQQuickItem_vtable_callback_clipRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  var virtualReturn = vtbl[].clipRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickItemcontains*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): bool =
  fcQQuickItem_virtualbase_contains(self.h, point.h)

proc cQQuickItem_vtable_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QQuickIteminputMethodQuery*(self: gen_qquickitem_types.QQuickItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQuickItem_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc cQQuickItem_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickItemisTextureProvider*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_virtualbase_isTextureProvider(self.h)

proc cQQuickItem_vtable_callback_isTextureProvider(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  var virtualReturn = vtbl[].isTextureProvider(self)
  virtualReturn

proc QQuickItemtextureProvider*(self: gen_qquickitem_types.QQuickItem): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickItem_virtualbase_textureProvider(self.h), owned: false)

proc cQQuickItem_vtable_callback_textureProvider(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  var virtualReturn = vtbl[].textureProvider(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickItemevent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQuickItem_virtualbase_event(self.h, param1.h)

proc cQQuickItem_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickItemitemChange*(self: gen_qquickitem_types.QQuickItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void =
  fcQQuickItem_virtualbase_itemChange(self.h, cint(param1), param2.h)

proc cQQuickItem_vtable_callback_itemChange(self: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2, owned: false)
  vtbl[].itemChange(self, slotval1, slotval2)

proc QQuickItemgeometryChange*(self: gen_qquickitem_types.QQuickItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void =
  fcQQuickItem_virtualbase_geometryChange(self.h, newGeometry.h, oldGeometry.h)

proc cQQuickItem_vtable_callback_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry, owned: false)
  vtbl[].geometryChange(self, slotval1, slotval2)

proc QQuickItemclassBegin*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_virtualbase_classBegin(self.h)

proc cQQuickItem_vtable_callback_classBegin(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  vtbl[].classBegin(self)

proc QQuickItemcomponentComplete*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_virtualbase_componentComplete(self.h)

proc cQQuickItem_vtable_callback_componentComplete(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  vtbl[].componentComplete(self)

proc QQuickItemkeyPressEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickItem_virtualbase_keyPressEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QQuickItemkeyReleaseEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QQuickIteminputMethodEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQQuickItem_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQQuickItem_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QQuickItemfocusInEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickItem_virtualbase_focusInEvent(self.h, param1.h)

proc cQQuickItem_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QQuickItemfocusOutEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickItem_virtualbase_focusOutEvent(self.h, param1.h)

proc cQQuickItem_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QQuickItemmousePressEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickItem_virtualbase_mousePressEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QQuickItemmouseMoveEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QQuickItemmouseReleaseEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QQuickItemmouseDoubleClickEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QQuickItemmouseUngrabEvent*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_virtualbase_mouseUngrabEvent(self.h)

proc cQQuickItem_vtable_callback_mouseUngrabEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  vtbl[].mouseUngrabEvent(self)

proc QQuickItemtouchUngrabEvent*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_virtualbase_touchUngrabEvent(self.h)

proc cQQuickItem_vtable_callback_touchUngrabEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  vtbl[].touchUngrabEvent(self)

proc QQuickItemwheelEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QWheelEvent): void =
  fcQQuickItem_virtualbase_wheelEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QQuickItemtouchEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QTouchEvent): void =
  fcQQuickItem_virtualbase_touchEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_touchEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: event, owned: false)
  vtbl[].touchEvent(self, slotval1)

proc QQuickItemhoverEnterEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QQuickItemhoverMoveEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QQuickItemhoverLeaveEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QQuickItemdragEnterEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQQuickItem_virtualbase_dragEnterEvent(self.h, param1.h)

proc cQQuickItem_vtable_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QQuickItemdragMoveEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQQuickItem_virtualbase_dragMoveEvent(self.h, param1.h)

proc cQQuickItem_vtable_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QQuickItemdragLeaveEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQQuickItem_virtualbase_dragLeaveEvent(self.h, param1.h)

proc cQQuickItem_vtable_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QQuickItemdropEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDropEvent): void =
  fcQQuickItem_virtualbase_dropEvent(self.h, param1.h)

proc cQQuickItem_vtable_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QQuickItemchildMouseEventFilter*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool =
  fcQQuickItem_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

proc cQQuickItem_vtable_callback_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].childMouseEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickItemupdatePaintNode*(self: gen_qquickitem_types.QQuickItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQQuickItem_virtualbase_updatePaintNode(self.h, param1.h, param2.h), owned: false)

proc cQQuickItem_vtable_callback_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1, owned: false)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2, owned: false)
  var virtualReturn = vtbl[].updatePaintNode(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickItemreleaseResources*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_virtualbase_releaseResources(self.h)

proc cQQuickItem_vtable_callback_releaseResources(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  vtbl[].releaseResources(self)

proc QQuickItemupdatePolish*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_virtualbase_updatePolish(self.h)

proc cQQuickItem_vtable_callback_updatePolish(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  vtbl[].updatePolish(self)

proc QQuickItemeventFilter*(self: gen_qquickitem_types.QQuickItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickItem_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQQuickItem_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickItemtimerEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickItem_virtualbase_timerEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQuickItemchildEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickItem_virtualbase_childEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQuickItemcustomEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickItem_virtualbase_customEvent(self.h, event.h)

proc cQQuickItem_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQuickItemconnectNotify*(self: gen_qquickitem_types.QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickItem_virtualbase_connectNotify(self.h, signal.h)

proc cQQuickItem_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQuickItemdisconnectNotify*(self: gen_qquickitem_types.QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickItem_virtualbase_disconnectNotify(self.h, signal.h)

proc cQQuickItem_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](fcQQuickItem_vdata(self))
  let self = QQuickItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickItem* {.inheritable.} = ref object of QQuickItem
  vtbl*: cQQuickItemVTable
method metaObject*(self: VirtualQQuickItem): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickItemmetaObject(self[])
proc cQQuickItem_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQuickItem, param1: cstring): pointer {.base.} =
  QQuickItemmetacast(self[], param1)
proc cQQuickItem_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQuickItem, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickItemmetacall(self[], param1, param2, param3)
proc cQQuickItem_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method boundingRect*(self: VirtualQQuickItem): gen_qrect_types.QRectF {.base.} =
  QQuickItemboundingRect(self[])
proc cQQuickItem_method_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  var virtualReturn = inst.boundingRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method clipRect*(self: VirtualQQuickItem): gen_qrect_types.QRectF {.base.} =
  QQuickItemclipRect(self[])
proc cQQuickItem_method_callback_clipRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  var virtualReturn = inst.clipRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method contains*(self: VirtualQQuickItem, point: gen_qpoint_types.QPointF): bool {.base.} =
  QQuickItemcontains(self[], point)
proc cQQuickItem_method_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = inst.contains(slotval1)
  virtualReturn

method inputMethodQuery*(self: VirtualQQuickItem, query: cint): gen_qvariant_types.QVariant {.base.} =
  QQuickIteminputMethodQuery(self[], query)
proc cQQuickItem_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method isTextureProvider*(self: VirtualQQuickItem): bool {.base.} =
  QQuickItemisTextureProvider(self[])
proc cQQuickItem_method_callback_isTextureProvider(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  var virtualReturn = inst.isTextureProvider()
  virtualReturn

method textureProvider*(self: VirtualQQuickItem): gen_qsgtextureprovider_types.QSGTextureProvider {.base.} =
  QQuickItemtextureProvider(self[])
proc cQQuickItem_method_callback_textureProvider(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  var virtualReturn = inst.textureProvider()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQQuickItem, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickItemevent(self[], param1)
proc cQQuickItem_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method itemChange*(self: VirtualQQuickItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void {.base.} =
  QQuickItemitemChange(self[], param1, param2)
proc cQQuickItem_method_callback_itemChange(self: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2, owned: false)
  inst.itemChange(slotval1, slotval2)

method geometryChange*(self: VirtualQQuickItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.base.} =
  QQuickItemgeometryChange(self[], newGeometry, oldGeometry)
proc cQQuickItem_method_callback_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry, owned: false)
  inst.geometryChange(slotval1, slotval2)

method classBegin*(self: VirtualQQuickItem): void {.base.} =
  QQuickItemclassBegin(self[])
proc cQQuickItem_method_callback_classBegin(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  inst.classBegin()

method componentComplete*(self: VirtualQQuickItem): void {.base.} =
  QQuickItemcomponentComplete(self[])
proc cQQuickItem_method_callback_componentComplete(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  inst.componentComplete()

method keyPressEvent*(self: VirtualQQuickItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickItemkeyPressEvent(self[], event)
proc cQQuickItem_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQQuickItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickItemkeyReleaseEvent(self[], event)
proc cQQuickItem_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method inputMethodEvent*(self: VirtualQQuickItem, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QQuickIteminputMethodEvent(self[], param1)
proc cQQuickItem_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method focusInEvent*(self: VirtualQQuickItem, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickItemfocusInEvent(self[], param1)
proc cQQuickItem_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQQuickItem, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickItemfocusOutEvent(self[], param1)
proc cQQuickItem_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

method mousePressEvent*(self: VirtualQQuickItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickItemmousePressEvent(self[], event)
proc cQQuickItem_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQQuickItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickItemmouseMoveEvent(self[], event)
proc cQQuickItem_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQQuickItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickItemmouseReleaseEvent(self[], event)
proc cQQuickItem_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQQuickItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickItemmouseDoubleClickEvent(self[], event)
proc cQQuickItem_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseUngrabEvent*(self: VirtualQQuickItem): void {.base.} =
  QQuickItemmouseUngrabEvent(self[])
proc cQQuickItem_method_callback_mouseUngrabEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  inst.mouseUngrabEvent()

method touchUngrabEvent*(self: VirtualQQuickItem): void {.base.} =
  QQuickItemtouchUngrabEvent(self[])
proc cQQuickItem_method_callback_touchUngrabEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  inst.touchUngrabEvent()

method wheelEvent*(self: VirtualQQuickItem, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QQuickItemwheelEvent(self[], event)
proc cQQuickItem_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method touchEvent*(self: VirtualQQuickItem, event: gen_qevent_types.QTouchEvent): void {.base.} =
  QQuickItemtouchEvent(self[], event)
proc cQQuickItem_method_callback_touchEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QTouchEvent(h: event, owned: false)
  inst.touchEvent(slotval1)

method hoverEnterEvent*(self: VirtualQQuickItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickItemhoverEnterEvent(self[], event)
proc cQQuickItem_method_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverEnterEvent(slotval1)

method hoverMoveEvent*(self: VirtualQQuickItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickItemhoverMoveEvent(self[], event)
proc cQQuickItem_method_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverMoveEvent(slotval1)

method hoverLeaveEvent*(self: VirtualQQuickItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickItemhoverLeaveEvent(self[], event)
proc cQQuickItem_method_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverLeaveEvent(slotval1)

method dragEnterEvent*(self: VirtualQQuickItem, param1: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QQuickItemdragEnterEvent(self[], param1)
proc cQQuickItem_method_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQQuickItem, param1: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QQuickItemdragMoveEvent(self[], param1)
proc cQQuickItem_method_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQQuickItem, param1: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QQuickItemdragLeaveEvent(self[], param1)
proc cQQuickItem_method_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQQuickItem, param1: gen_qevent_types.QDropEvent): void {.base.} =
  QQuickItemdropEvent(self[], param1)
proc cQQuickItem_method_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  inst.dropEvent(slotval1)

method childMouseEventFilter*(self: VirtualQQuickItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickItemchildMouseEventFilter(self[], param1, param2)
proc cQQuickItem_method_callback_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.childMouseEventFilter(slotval1, slotval2)
  virtualReturn

method updatePaintNode*(self: VirtualQQuickItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode {.base.} =
  QQuickItemupdatePaintNode(self[], param1, param2)
proc cQQuickItem_method_callback_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1, owned: false)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2, owned: false)
  var virtualReturn = inst.updatePaintNode(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method releaseResources*(self: VirtualQQuickItem): void {.base.} =
  QQuickItemreleaseResources(self[])
proc cQQuickItem_method_callback_releaseResources(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  inst.releaseResources()

method updatePolish*(self: VirtualQQuickItem): void {.base.} =
  QQuickItemupdatePolish(self[])
proc cQQuickItem_method_callback_updatePolish(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  inst.updatePolish()

method eventFilter*(self: VirtualQQuickItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickItemeventFilter(self[], watched, event)
proc cQQuickItem_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQuickItem, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickItemtimerEvent(self[], event)
proc cQQuickItem_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQQuickItem, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickItemchildEvent(self[], event)
proc cQQuickItem_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQQuickItem, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickItemcustomEvent(self[], event)
proc cQQuickItem_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickItemconnectNotify(self[], signal)
proc cQQuickItem_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickItemdisconnectNotify(self[], signal)
proc cQQuickItem_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickItem](fcQQuickItem_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc isComponentComplete*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_protectedbase_isComponentComplete(self.h)

proc updateInputMethod*(self: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_protectedbase_updateInputMethod(self.h)

proc widthValid*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_protectedbase_widthValid(self.h)

proc heightValid*(self: gen_qquickitem_types.QQuickItem): bool =
  fcQQuickItem_protectedbase_heightValid(self.h)

proc setImplicitSize*(self: gen_qquickitem_types.QQuickItem, param1: float64, param2: float64): void =
  fcQQuickItem_protectedbase_setImplicitSize(self.h, param1, param2)

proc updateInputMethod*(self: gen_qquickitem_types.QQuickItem, queries: cint): void =
  fcQQuickItem_protectedbase_updateInputMethod1(self.h, cint(queries))

proc sender*(self: gen_qquickitem_types.QQuickItem): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickItem_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickitem_types.QQuickItem): cint =
  fcQQuickItem_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickitem_types.QQuickItem, signal: cstring): cint =
  fcQQuickItem_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickitem_types.QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickItem_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickitem_types.QQuickItem,
    vtbl: ref QQuickItemVTable = nil): gen_qquickitem_types.QQuickItem =
  let vtbl = if vtbl == nil: new QQuickItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickItemVTable](fcQQuickItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQuickItem_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQuickItem_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQuickItem_vtable_callback_metacall
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = cQQuickItem_vtable_callback_boundingRect
  if not isNil(vtbl[].clipRect):
    vtbl[].vtbl.clipRect = cQQuickItem_vtable_callback_clipRect
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = cQQuickItem_vtable_callback_contains
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQQuickItem_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].isTextureProvider):
    vtbl[].vtbl.isTextureProvider = cQQuickItem_vtable_callback_isTextureProvider
  if not isNil(vtbl[].textureProvider):
    vtbl[].vtbl.textureProvider = cQQuickItem_vtable_callback_textureProvider
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQuickItem_vtable_callback_event
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = cQQuickItem_vtable_callback_itemChange
  if not isNil(vtbl[].geometryChange):
    vtbl[].vtbl.geometryChange = cQQuickItem_vtable_callback_geometryChange
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = cQQuickItem_vtable_callback_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = cQQuickItem_vtable_callback_componentComplete
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQQuickItem_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQQuickItem_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQQuickItem_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQQuickItem_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQQuickItem_vtable_callback_focusOutEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQQuickItem_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQQuickItem_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQQuickItem_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQQuickItem_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = cQQuickItem_vtable_callback_mouseUngrabEvent
  if not isNil(vtbl[].touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = cQQuickItem_vtable_callback_touchUngrabEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQQuickItem_vtable_callback_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = cQQuickItem_vtable_callback_touchEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = cQQuickItem_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = cQQuickItem_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = cQQuickItem_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQQuickItem_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQQuickItem_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQQuickItem_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQQuickItem_vtable_callback_dropEvent
  if not isNil(vtbl[].childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = cQQuickItem_vtable_callback_childMouseEventFilter
  if not isNil(vtbl[].updatePaintNode):
    vtbl[].vtbl.updatePaintNode = cQQuickItem_vtable_callback_updatePaintNode
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = cQQuickItem_vtable_callback_releaseResources
  if not isNil(vtbl[].updatePolish):
    vtbl[].vtbl.updatePolish = cQQuickItem_vtable_callback_updatePolish
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQuickItem_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQuickItem_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQuickItem_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQuickItem_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQuickItem_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQuickItem_vtable_callback_disconnectNotify
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qquickitem_types.QQuickItem,
    parent: gen_qquickitem_types.QQuickItem,
    vtbl: ref QQuickItemVTable = nil): gen_qquickitem_types.QQuickItem =
  let vtbl = if vtbl == nil: new QQuickItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickItemVTable](fcQQuickItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQuickItem_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQuickItem_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQuickItem_vtable_callback_metacall
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = cQQuickItem_vtable_callback_boundingRect
  if not isNil(vtbl[].clipRect):
    vtbl[].vtbl.clipRect = cQQuickItem_vtable_callback_clipRect
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = cQQuickItem_vtable_callback_contains
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQQuickItem_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].isTextureProvider):
    vtbl[].vtbl.isTextureProvider = cQQuickItem_vtable_callback_isTextureProvider
  if not isNil(vtbl[].textureProvider):
    vtbl[].vtbl.textureProvider = cQQuickItem_vtable_callback_textureProvider
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQuickItem_vtable_callback_event
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = cQQuickItem_vtable_callback_itemChange
  if not isNil(vtbl[].geometryChange):
    vtbl[].vtbl.geometryChange = cQQuickItem_vtable_callback_geometryChange
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = cQQuickItem_vtable_callback_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = cQQuickItem_vtable_callback_componentComplete
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQQuickItem_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQQuickItem_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQQuickItem_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQQuickItem_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQQuickItem_vtable_callback_focusOutEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQQuickItem_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQQuickItem_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQQuickItem_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQQuickItem_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = cQQuickItem_vtable_callback_mouseUngrabEvent
  if not isNil(vtbl[].touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = cQQuickItem_vtable_callback_touchUngrabEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQQuickItem_vtable_callback_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = cQQuickItem_vtable_callback_touchEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = cQQuickItem_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = cQQuickItem_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = cQQuickItem_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQQuickItem_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQQuickItem_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQQuickItem_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQQuickItem_vtable_callback_dropEvent
  if not isNil(vtbl[].childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = cQQuickItem_vtable_callback_childMouseEventFilter
  if not isNil(vtbl[].updatePaintNode):
    vtbl[].vtbl.updatePaintNode = cQQuickItem_vtable_callback_updatePaintNode
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = cQQuickItem_vtable_callback_releaseResources
  if not isNil(vtbl[].updatePolish):
    vtbl[].vtbl.updatePolish = cQQuickItem_vtable_callback_updatePolish
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQuickItem_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQuickItem_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQuickItem_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQuickItem_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQuickItem_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQuickItem_vtable_callback_disconnectNotify
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQQuickItem_mvtbl = cQQuickItemVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickItem()[])](self.fcQQuickItem_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQQuickItem_method_callback_metaObject,
  metacast: cQQuickItem_method_callback_metacast,
  metacall: cQQuickItem_method_callback_metacall,
  boundingRect: cQQuickItem_method_callback_boundingRect,
  clipRect: cQQuickItem_method_callback_clipRect,
  contains: cQQuickItem_method_callback_contains,
  inputMethodQuery: cQQuickItem_method_callback_inputMethodQuery,
  isTextureProvider: cQQuickItem_method_callback_isTextureProvider,
  textureProvider: cQQuickItem_method_callback_textureProvider,
  event: cQQuickItem_method_callback_event,
  itemChange: cQQuickItem_method_callback_itemChange,
  geometryChange: cQQuickItem_method_callback_geometryChange,
  classBegin: cQQuickItem_method_callback_classBegin,
  componentComplete: cQQuickItem_method_callback_componentComplete,
  keyPressEvent: cQQuickItem_method_callback_keyPressEvent,
  keyReleaseEvent: cQQuickItem_method_callback_keyReleaseEvent,
  inputMethodEvent: cQQuickItem_method_callback_inputMethodEvent,
  focusInEvent: cQQuickItem_method_callback_focusInEvent,
  focusOutEvent: cQQuickItem_method_callback_focusOutEvent,
  mousePressEvent: cQQuickItem_method_callback_mousePressEvent,
  mouseMoveEvent: cQQuickItem_method_callback_mouseMoveEvent,
  mouseReleaseEvent: cQQuickItem_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQQuickItem_method_callback_mouseDoubleClickEvent,
  mouseUngrabEvent: cQQuickItem_method_callback_mouseUngrabEvent,
  touchUngrabEvent: cQQuickItem_method_callback_touchUngrabEvent,
  wheelEvent: cQQuickItem_method_callback_wheelEvent,
  touchEvent: cQQuickItem_method_callback_touchEvent,
  hoverEnterEvent: cQQuickItem_method_callback_hoverEnterEvent,
  hoverMoveEvent: cQQuickItem_method_callback_hoverMoveEvent,
  hoverLeaveEvent: cQQuickItem_method_callback_hoverLeaveEvent,
  dragEnterEvent: cQQuickItem_method_callback_dragEnterEvent,
  dragMoveEvent: cQQuickItem_method_callback_dragMoveEvent,
  dragLeaveEvent: cQQuickItem_method_callback_dragLeaveEvent,
  dropEvent: cQQuickItem_method_callback_dropEvent,
  childMouseEventFilter: cQQuickItem_method_callback_childMouseEventFilter,
  updatePaintNode: cQQuickItem_method_callback_updatePaintNode,
  releaseResources: cQQuickItem_method_callback_releaseResources,
  updatePolish: cQQuickItem_method_callback_updatePolish,
  eventFilter: cQQuickItem_method_callback_eventFilter,
  timerEvent: cQQuickItem_method_callback_timerEvent,
  childEvent: cQQuickItem_method_callback_childEvent,
  customEvent: cQQuickItem_method_callback_customEvent,
  connectNotify: cQQuickItem_method_callback_connectNotify,
  disconnectNotify: cQQuickItem_method_callback_disconnectNotify,
)
proc create*(T: type gen_qquickitem_types.QQuickItem,
    inst: VirtualQQuickItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickItem_new(addr(cQQuickItem_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qquickitem_types.QQuickItem,
    parent: gen_qquickitem_types.QQuickItem,
    inst: VirtualQQuickItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickItem_new2(addr(cQQuickItem_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qquickitem_types.QQuickItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickItem_staticMetaObject())
proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData,
    v: gen_qquickitem_types.QQuickItem): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData(h: fcQQuickItemItemChangeData_new(v.h), owned: true)

proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData,
    v: gen_qquickwindow_types.QQuickWindow): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData(h: fcQQuickItemItemChangeData_new2(v.h), owned: true)

proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData,
    v: float64): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData(h: fcQQuickItemItemChangeData_new3(v), owned: true)

proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData,
    v: bool): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData(h: fcQQuickItemItemChangeData_new4(v), owned: true)

