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
type cQQuickTransformVTable = object
  destructor*: proc(vtbl: ptr cQQuickTransformVTable, self: ptr cQQuickTransform) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  applyTo*: proc(vtbl, self: pointer, matrix: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickTransform_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickTransform_virtualbase_metaObject".}
proc fcQQuickTransform_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTransform_virtualbase_metacast".}
proc fcQQuickTransform_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTransform_virtualbase_metacall".}
proc fcQQuickTransform_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickTransform_virtualbase_event".}
proc fcQQuickTransform_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickTransform_virtualbase_eventFilter".}
proc fcQQuickTransform_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickTransform_virtualbase_timerEvent".}
proc fcQQuickTransform_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickTransform_virtualbase_childEvent".}
proc fcQQuickTransform_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickTransform_virtualbase_customEvent".}
proc fcQQuickTransform_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTransform_virtualbase_connectNotify".}
proc fcQQuickTransform_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickTransform_virtualbase_disconnectNotify".}
proc fcQQuickTransform_protectedbase_update(self: pointer, ): void {.importc: "QQuickTransform_protectedbase_update".}
proc fcQQuickTransform_protectedbase_sender(self: pointer, ): pointer {.importc: "QQuickTransform_protectedbase_sender".}
proc fcQQuickTransform_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQuickTransform_protectedbase_senderSignalIndex".}
proc fcQQuickTransform_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickTransform_protectedbase_receivers".}
proc fcQQuickTransform_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickTransform_protectedbase_isSignalConnected".}
proc fcQQuickTransform_new(vtbl: pointer, ): ptr cQQuickTransform {.importc: "QQuickTransform_new".}
proc fcQQuickTransform_new2(vtbl: pointer, parent: pointer): ptr cQQuickTransform {.importc: "QQuickTransform_new2".}
proc fcQQuickTransform_staticMetaObject(): pointer {.importc: "QQuickTransform_staticMetaObject".}
proc fcQQuickTransform_delete(self: pointer) {.importc: "QQuickTransform_delete".}
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
proc fcQQuickItem_childrenChanged(self: pointer, ): void {.importc: "QQuickItem_childrenChanged".}
proc fcQQuickItem_connect_childrenChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_childrenChanged".}
proc fcQQuickItem_opacityChanged(self: pointer, ): void {.importc: "QQuickItem_opacityChanged".}
proc fcQQuickItem_connect_opacityChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_opacityChanged".}
proc fcQQuickItem_enabledChanged(self: pointer, ): void {.importc: "QQuickItem_enabledChanged".}
proc fcQQuickItem_connect_enabledChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_enabledChanged".}
proc fcQQuickItem_visibleChanged(self: pointer, ): void {.importc: "QQuickItem_visibleChanged".}
proc fcQQuickItem_connect_visibleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_visibleChanged".}
proc fcQQuickItem_visibleChildrenChanged(self: pointer, ): void {.importc: "QQuickItem_visibleChildrenChanged".}
proc fcQQuickItem_connect_visibleChildrenChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_visibleChildrenChanged".}
proc fcQQuickItem_rotationChanged(self: pointer, ): void {.importc: "QQuickItem_rotationChanged".}
proc fcQQuickItem_connect_rotationChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_rotationChanged".}
proc fcQQuickItem_scaleChanged(self: pointer, ): void {.importc: "QQuickItem_scaleChanged".}
proc fcQQuickItem_connect_scaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_scaleChanged".}
proc fcQQuickItem_xChanged(self: pointer, ): void {.importc: "QQuickItem_xChanged".}
proc fcQQuickItem_connect_xChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_xChanged".}
proc fcQQuickItem_yChanged(self: pointer, ): void {.importc: "QQuickItem_yChanged".}
proc fcQQuickItem_connect_yChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_yChanged".}
proc fcQQuickItem_widthChanged(self: pointer, ): void {.importc: "QQuickItem_widthChanged".}
proc fcQQuickItem_connect_widthChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_widthChanged".}
proc fcQQuickItem_heightChanged(self: pointer, ): void {.importc: "QQuickItem_heightChanged".}
proc fcQQuickItem_connect_heightChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_heightChanged".}
proc fcQQuickItem_zChanged(self: pointer, ): void {.importc: "QQuickItem_zChanged".}
proc fcQQuickItem_connect_zChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_zChanged".}
proc fcQQuickItem_implicitWidthChanged(self: pointer, ): void {.importc: "QQuickItem_implicitWidthChanged".}
proc fcQQuickItem_connect_implicitWidthChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_implicitWidthChanged".}
proc fcQQuickItem_implicitHeightChanged(self: pointer, ): void {.importc: "QQuickItem_implicitHeightChanged".}
proc fcQQuickItem_connect_implicitHeightChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_implicitHeightChanged".}
proc fcQQuickItem_containmentMaskChanged(self: pointer, ): void {.importc: "QQuickItem_containmentMaskChanged".}
proc fcQQuickItem_connect_containmentMaskChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItem_connect_containmentMaskChanged".}
proc fcQQuickItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickItem_tr2".}
proc fcQQuickItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickItem_tr3".}
proc fcQQuickItem_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickItem_trUtf82".}
proc fcQQuickItem_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickItem_trUtf83".}
proc fcQQuickItem_setFlag2(self: pointer, flag: cint, enabled: bool): void {.importc: "QQuickItem_setFlag2".}
proc fcQQuickItem_grabToImage22(self: pointer, callback: pointer, targetSize: pointer): bool {.importc: "QQuickItem_grabToImage22".}
proc fcQQuickItem_nextItemInFocusChain1(self: pointer, forward: bool): pointer {.importc: "QQuickItem_nextItemInFocusChain1".}
type cQQuickItemVTable = object
  destructor*: proc(vtbl: ptr cQQuickItemVTable, self: ptr cQQuickItem) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  clipRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  isTextureProvider*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  textureProvider*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, param1: cint, param2: pointer): void {.cdecl, raises: [], gcsafe.}
  classBegin*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  componentComplete*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseUngrabEvent*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  touchUngrabEvent*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  touchEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  childMouseEventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowDeactivateEvent*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  geometryChanged*: proc(vtbl, self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl, raises: [], gcsafe.}
  updatePaintNode*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): pointer {.cdecl, raises: [], gcsafe.}
  releaseResources*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updatePolish*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickItem_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickItem_virtualbase_metaObject".}
proc fcQQuickItem_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickItem_virtualbase_metacast".}
proc fcQQuickItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickItem_virtualbase_metacall".}
proc fcQQuickItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QQuickItem_virtualbase_boundingRect".}
proc fcQQuickItem_virtualbase_clipRect(self: pointer, ): pointer {.importc: "QQuickItem_virtualbase_clipRect".}
proc fcQQuickItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QQuickItem_virtualbase_contains".}
proc fcQQuickItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QQuickItem_virtualbase_inputMethodQuery".}
proc fcQQuickItem_virtualbase_isTextureProvider(self: pointer, ): bool {.importc: "QQuickItem_virtualbase_isTextureProvider".}
proc fcQQuickItem_virtualbase_textureProvider(self: pointer, ): pointer {.importc: "QQuickItem_virtualbase_textureProvider".}
proc fcQQuickItem_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQuickItem_virtualbase_event".}
proc fcQQuickItem_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void {.importc: "QQuickItem_virtualbase_itemChange".}
proc fcQQuickItem_virtualbase_classBegin(self: pointer, ): void {.importc: "QQuickItem_virtualbase_classBegin".}
proc fcQQuickItem_virtualbase_componentComplete(self: pointer, ): void {.importc: "QQuickItem_virtualbase_componentComplete".}
proc fcQQuickItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_keyPressEvent".}
proc fcQQuickItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_keyReleaseEvent".}
proc fcQQuickItem_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QQuickItem_virtualbase_inputMethodEvent".}
proc fcQQuickItem_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QQuickItem_virtualbase_focusInEvent".}
proc fcQQuickItem_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QQuickItem_virtualbase_focusOutEvent".}
proc fcQQuickItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_mousePressEvent".}
proc fcQQuickItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_mouseMoveEvent".}
proc fcQQuickItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_mouseReleaseEvent".}
proc fcQQuickItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickItem_virtualbase_mouseUngrabEvent(self: pointer, ): void {.importc: "QQuickItem_virtualbase_mouseUngrabEvent".}
proc fcQQuickItem_virtualbase_touchUngrabEvent(self: pointer, ): void {.importc: "QQuickItem_virtualbase_touchUngrabEvent".}
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
proc fcQQuickItem_virtualbase_windowDeactivateEvent(self: pointer, ): void {.importc: "QQuickItem_virtualbase_windowDeactivateEvent".}
proc fcQQuickItem_virtualbase_geometryChanged(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.importc: "QQuickItem_virtualbase_geometryChanged".}
proc fcQQuickItem_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QQuickItem_virtualbase_updatePaintNode".}
proc fcQQuickItem_virtualbase_releaseResources(self: pointer, ): void {.importc: "QQuickItem_virtualbase_releaseResources".}
proc fcQQuickItem_virtualbase_updatePolish(self: pointer, ): void {.importc: "QQuickItem_virtualbase_updatePolish".}
proc fcQQuickItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickItem_virtualbase_eventFilter".}
proc fcQQuickItem_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_timerEvent".}
proc fcQQuickItem_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_childEvent".}
proc fcQQuickItem_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickItem_virtualbase_customEvent".}
proc fcQQuickItem_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickItem_virtualbase_connectNotify".}
proc fcQQuickItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickItem_virtualbase_disconnectNotify".}
proc fcQQuickItem_protectedbase_isComponentComplete(self: pointer, ): bool {.importc: "QQuickItem_protectedbase_isComponentComplete".}
proc fcQQuickItem_protectedbase_updateInputMethod(self: pointer, ): void {.importc: "QQuickItem_protectedbase_updateInputMethod".}
proc fcQQuickItem_protectedbase_widthValid(self: pointer, ): bool {.importc: "QQuickItem_protectedbase_widthValid".}
proc fcQQuickItem_protectedbase_heightValid(self: pointer, ): bool {.importc: "QQuickItem_protectedbase_heightValid".}
proc fcQQuickItem_protectedbase_setImplicitSize(self: pointer, param1: float64, param2: float64): void {.importc: "QQuickItem_protectedbase_setImplicitSize".}
proc fcQQuickItem_protectedbase_updateInputMethod1(self: pointer, queries: cint): void {.importc: "QQuickItem_protectedbase_updateInputMethod1".}
proc fcQQuickItem_protectedbase_sender(self: pointer, ): pointer {.importc: "QQuickItem_protectedbase_sender".}
proc fcQQuickItem_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQuickItem_protectedbase_senderSignalIndex".}
proc fcQQuickItem_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickItem_protectedbase_receivers".}
proc fcQQuickItem_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickItem_protectedbase_isSignalConnected".}
proc fcQQuickItem_new(vtbl: pointer, ): ptr cQQuickItem {.importc: "QQuickItem_new".}
proc fcQQuickItem_new2(vtbl: pointer, parent: pointer): ptr cQQuickItem {.importc: "QQuickItem_new2".}
proc fcQQuickItem_staticMetaObject(): pointer {.importc: "QQuickItem_staticMetaObject".}
proc fcQQuickItem_delete(self: pointer) {.importc: "QQuickItem_delete".}
proc fcQQuickItemItemChangeData_new(v: pointer): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new".}
proc fcQQuickItemItemChangeData_new2(v: pointer): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new2".}
proc fcQQuickItemItemChangeData_new3(v: float64): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new3".}
proc fcQQuickItemItemChangeData_new4(v: bool): ptr cQQuickItemItemChangeData {.importc: "QQuickItem__ItemChangeData_new4".}
proc fcQQuickItemItemChangeData_delete(self: pointer) {.importc: "QQuickItem__ItemChangeData_delete".}
proc fcQQuickItemUpdatePaintNodeData_delete(self: pointer) {.importc: "QQuickItem__UpdatePaintNodeData_delete".}

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
type QQuickTransformVTable* = object
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
proc QQuickTransformmetaObject*(self: gen_qquickitem_types.QQuickTransform, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTransform_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQuickTransform_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](vtbl)
  let self = QQuickTransform(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQuickTransformmetacast*(self: gen_qquickitem_types.QQuickTransform, param1: cstring): pointer =
  fcQQuickTransform_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickTransform_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](vtbl)
  let self = QQuickTransform(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickTransformmetacall*(self: gen_qquickitem_types.QQuickTransform, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTransform_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickTransform_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](vtbl)
  let self = QQuickTransform(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQQuickTransform_applyTo(vtbl: pointer, self: pointer, matrix: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](vtbl)
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix)
  vtbl[].applyTo(self, slotval1)

proc QQuickTransformevent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTransform_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQuickTransform_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](vtbl)
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickTransformeventFilter*(self: gen_qquickitem_types.QQuickTransform, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickTransform_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickTransform_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](vtbl)
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickTransformtimerEvent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickTransform_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickTransform_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](vtbl)
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQuickTransformchildEvent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickTransform_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickTransform_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](vtbl)
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQuickTransformcustomEvent*(self: gen_qquickitem_types.QQuickTransform, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickTransform_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickTransform_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](vtbl)
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQuickTransformconnectNotify*(self: gen_qquickitem_types.QQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTransform_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickTransform_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](vtbl)
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQuickTransformdisconnectNotify*(self: gen_qquickitem_types.QQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickTransform_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickTransform_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickTransformVTable](vtbl)
  let self = QQuickTransform(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc update*(self: gen_qquickitem_types.QQuickTransform, ): void =
  fcQQuickTransform_protectedbase_update(self.h)

proc sender*(self: gen_qquickitem_types.QQuickTransform, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickTransform_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qquickitem_types.QQuickTransform, ): cint =
  fcQQuickTransform_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickitem_types.QQuickTransform, signal: cstring): cint =
  fcQQuickTransform_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickitem_types.QQuickTransform, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickTransform_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickitem_types.QQuickTransform,
    vtbl: ref QQuickTransformVTable = nil): gen_qquickitem_types.QQuickTransform =
  let vtbl = if vtbl == nil: new QQuickTransformVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickTransformVTable, _: ptr cQQuickTransform) {.cdecl.} =
    let vtbl = cast[ref QQuickTransformVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickTransform_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickTransform_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickTransform_metacall
  if not isNil(vtbl.applyTo):
    vtbl[].vtbl.applyTo = miqt_exec_callback_cQQuickTransform_applyTo
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickTransform_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickTransform_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickTransform_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickTransform_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickTransform_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickTransform_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickTransform_disconnectNotify
  gen_qquickitem_types.QQuickTransform(h: fcQQuickTransform_new(addr(vtbl[]), ))

proc create*(T: type gen_qquickitem_types.QQuickTransform,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQuickTransformVTable = nil): gen_qquickitem_types.QQuickTransform =
  let vtbl = if vtbl == nil: new QQuickTransformVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickTransformVTable, _: ptr cQQuickTransform) {.cdecl.} =
    let vtbl = cast[ref QQuickTransformVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickTransform_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickTransform_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickTransform_metacall
  if not isNil(vtbl.applyTo):
    vtbl[].vtbl.applyTo = miqt_exec_callback_cQQuickTransform_applyTo
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickTransform_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickTransform_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickTransform_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickTransform_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickTransform_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickTransform_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickTransform_disconnectNotify
  gen_qquickitem_types.QQuickTransform(h: fcQQuickTransform_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qquickitem_types.QQuickTransform): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTransform_staticMetaObject())
proc delete*(self: gen_qquickitem_types.QQuickTransform) =
  fcQQuickTransform_delete(self.h)
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
proc miqt_exec_callback_cQQuickItem_childrenRectChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemchildrenRectChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_childrenRectChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemchildrenRectChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onchildrenRectChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemchildrenRectChangedSlot) =
  var tmp = new QQuickItemchildrenRectChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_childrenRectChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_childrenRectChanged, miqt_exec_callback_cQQuickItem_childrenRectChanged_release)

proc baselineOffsetChanged*(self: gen_qquickitem_types.QQuickItem, param1: float64): void =
  fcQQuickItem_baselineOffsetChanged(self.h, param1)

type QQuickItembaselineOffsetChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_cQQuickItem_baselineOffsetChanged(slot: int, param1: float64) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItembaselineOffsetChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_baselineOffsetChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItembaselineOffsetChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbaselineOffsetChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItembaselineOffsetChangedSlot) =
  var tmp = new QQuickItembaselineOffsetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_baselineOffsetChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_baselineOffsetChanged, miqt_exec_callback_cQQuickItem_baselineOffsetChanged_release)

proc stateChanged*(self: gen_qquickitem_types.QQuickItem, param1: string): void =
  fcQQuickItem_stateChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QQuickItemstateChangedSlot* = proc(param1: string)
proc miqt_exec_callback_cQQuickItem_stateChanged(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemstateChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemstateChangedSlot) =
  var tmp = new QQuickItemstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_stateChanged, miqt_exec_callback_cQQuickItem_stateChanged_release)

proc focusChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_focusChanged(self.h, param1)

type QQuickItemfocusChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQQuickItem_focusChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemfocusChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_focusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemfocusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemfocusChangedSlot) =
  var tmp = new QQuickItemfocusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_focusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_focusChanged, miqt_exec_callback_cQQuickItem_focusChanged_release)

proc activeFocusChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_activeFocusChanged(self.h, param1)

type QQuickItemactiveFocusChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQQuickItem_activeFocusChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemactiveFocusChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_activeFocusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemactiveFocusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveFocusChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemactiveFocusChangedSlot) =
  var tmp = new QQuickItemactiveFocusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_activeFocusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_activeFocusChanged, miqt_exec_callback_cQQuickItem_activeFocusChanged_release)

proc activeFocusOnTabChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_activeFocusOnTabChanged(self.h, param1)

type QQuickItemactiveFocusOnTabChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQQuickItem_activeFocusOnTabChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemactiveFocusOnTabChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_activeFocusOnTabChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemactiveFocusOnTabChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveFocusOnTabChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemactiveFocusOnTabChangedSlot) =
  var tmp = new QQuickItemactiveFocusOnTabChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_activeFocusOnTabChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_activeFocusOnTabChanged, miqt_exec_callback_cQQuickItem_activeFocusOnTabChanged_release)

proc parentChanged*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem): void =
  fcQQuickItem_parentChanged(self.h, param1.h)

type QQuickItemparentChangedSlot* = proc(param1: gen_qquickitem_types.QQuickItem)
proc miqt_exec_callback_cQQuickItem_parentChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemparentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_parentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemparentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onparentChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemparentChangedSlot) =
  var tmp = new QQuickItemparentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_parentChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_parentChanged, miqt_exec_callback_cQQuickItem_parentChanged_release)

proc transformOriginChanged*(self: gen_qquickitem_types.QQuickItem, param1: cint): void =
  fcQQuickItem_transformOriginChanged(self.h, cint(param1))

type QQuickItemtransformOriginChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQQuickItem_transformOriginChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemtransformOriginChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_transformOriginChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemtransformOriginChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontransformOriginChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemtransformOriginChangedSlot) =
  var tmp = new QQuickItemtransformOriginChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_transformOriginChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_transformOriginChanged, miqt_exec_callback_cQQuickItem_transformOriginChanged_release)

proc smoothChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_smoothChanged(self.h, param1)

type QQuickItemsmoothChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQQuickItem_smoothChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemsmoothChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_smoothChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemsmoothChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsmoothChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemsmoothChangedSlot) =
  var tmp = new QQuickItemsmoothChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_smoothChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_smoothChanged, miqt_exec_callback_cQQuickItem_smoothChanged_release)

proc antialiasingChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_antialiasingChanged(self.h, param1)

type QQuickItemantialiasingChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQQuickItem_antialiasingChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemantialiasingChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_antialiasingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemantialiasingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onantialiasingChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemantialiasingChangedSlot) =
  var tmp = new QQuickItemantialiasingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_antialiasingChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_antialiasingChanged, miqt_exec_callback_cQQuickItem_antialiasingChanged_release)

proc clipChanged*(self: gen_qquickitem_types.QQuickItem, param1: bool): void =
  fcQQuickItem_clipChanged(self.h, param1)

type QQuickItemclipChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQQuickItem_clipChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemclipChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_clipChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemclipChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclipChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemclipChangedSlot) =
  var tmp = new QQuickItemclipChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_clipChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_clipChanged, miqt_exec_callback_cQQuickItem_clipChanged_release)

proc windowChanged*(self: gen_qquickitem_types.QQuickItem, window: gen_qquickwindow_types.QQuickWindow): void =
  fcQQuickItem_windowChanged(self.h, window.h)

type QQuickItemwindowChangedSlot* = proc(window: gen_qquickwindow_types.QQuickWindow)
proc miqt_exec_callback_cQQuickItem_windowChanged(slot: int, window: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemwindowChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qquickwindow_types.QQuickWindow(h: window)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickItem_windowChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemwindowChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwindowChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemwindowChangedSlot) =
  var tmp = new QQuickItemwindowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_windowChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_windowChanged, miqt_exec_callback_cQQuickItem_windowChanged_release)

proc childrenChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_childrenChanged(self.h)

type QQuickItemchildrenChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_childrenChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemchildrenChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_childrenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemchildrenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onchildrenChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemchildrenChangedSlot) =
  var tmp = new QQuickItemchildrenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_childrenChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_childrenChanged, miqt_exec_callback_cQQuickItem_childrenChanged_release)

proc opacityChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_opacityChanged(self.h)

type QQuickItemopacityChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_opacityChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemopacityChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_opacityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemopacityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onopacityChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemopacityChangedSlot) =
  var tmp = new QQuickItemopacityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_opacityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_opacityChanged, miqt_exec_callback_cQQuickItem_opacityChanged_release)

proc enabledChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_enabledChanged(self.h)

type QQuickItemenabledChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_enabledChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemenabledChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_enabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemenabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onenabledChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemenabledChangedSlot) =
  var tmp = new QQuickItemenabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_enabledChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_enabledChanged, miqt_exec_callback_cQQuickItem_enabledChanged_release)

proc visibleChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_visibleChanged(self.h)

type QQuickItemvisibleChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_visibleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemvisibleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_visibleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemvisibleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvisibleChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemvisibleChangedSlot) =
  var tmp = new QQuickItemvisibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_visibleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_visibleChanged, miqt_exec_callback_cQQuickItem_visibleChanged_release)

proc visibleChildrenChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_visibleChildrenChanged(self.h)

type QQuickItemvisibleChildrenChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_visibleChildrenChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemvisibleChildrenChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_visibleChildrenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemvisibleChildrenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvisibleChildrenChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemvisibleChildrenChangedSlot) =
  var tmp = new QQuickItemvisibleChildrenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_visibleChildrenChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_visibleChildrenChanged, miqt_exec_callback_cQQuickItem_visibleChildrenChanged_release)

proc rotationChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_rotationChanged(self.h)

type QQuickItemrotationChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_rotationChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemrotationChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_rotationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemrotationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrotationChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemrotationChangedSlot) =
  var tmp = new QQuickItemrotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_rotationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_rotationChanged, miqt_exec_callback_cQQuickItem_rotationChanged_release)

proc scaleChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_scaleChanged(self.h)

type QQuickItemscaleChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_scaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemscaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_scaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemscaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscaleChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemscaleChangedSlot) =
  var tmp = new QQuickItemscaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_scaleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_scaleChanged, miqt_exec_callback_cQQuickItem_scaleChanged_release)

proc xChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_xChanged(self.h)

type QQuickItemxChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_xChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemxChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_xChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemxChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onxChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemxChangedSlot) =
  var tmp = new QQuickItemxChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_xChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_xChanged, miqt_exec_callback_cQQuickItem_xChanged_release)

proc yChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_yChanged(self.h)

type QQuickItemyChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_yChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemyChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_yChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onyChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemyChangedSlot) =
  var tmp = new QQuickItemyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_yChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_yChanged, miqt_exec_callback_cQQuickItem_yChanged_release)

proc widthChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_widthChanged(self.h)

type QQuickItemwidthChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_widthChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemwidthChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_widthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemwidthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwidthChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemwidthChangedSlot) =
  var tmp = new QQuickItemwidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_widthChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_widthChanged, miqt_exec_callback_cQQuickItem_widthChanged_release)

proc heightChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_heightChanged(self.h)

type QQuickItemheightChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_heightChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemheightChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_heightChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemheightChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onheightChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemheightChangedSlot) =
  var tmp = new QQuickItemheightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_heightChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_heightChanged, miqt_exec_callback_cQQuickItem_heightChanged_release)

proc zChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_zChanged(self.h)

type QQuickItemzChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_zChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemzChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_zChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemzChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onzChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemzChangedSlot) =
  var tmp = new QQuickItemzChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_zChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_zChanged, miqt_exec_callback_cQQuickItem_zChanged_release)

proc implicitWidthChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_implicitWidthChanged(self.h)

type QQuickItemimplicitWidthChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_implicitWidthChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemimplicitWidthChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_implicitWidthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemimplicitWidthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onimplicitWidthChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemimplicitWidthChangedSlot) =
  var tmp = new QQuickItemimplicitWidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_implicitWidthChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_implicitWidthChanged, miqt_exec_callback_cQQuickItem_implicitWidthChanged_release)

proc implicitHeightChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_implicitHeightChanged(self.h)

type QQuickItemimplicitHeightChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_implicitHeightChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemimplicitHeightChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_implicitHeightChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemimplicitHeightChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onimplicitHeightChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemimplicitHeightChangedSlot) =
  var tmp = new QQuickItemimplicitHeightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_implicitHeightChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_implicitHeightChanged, miqt_exec_callback_cQQuickItem_implicitHeightChanged_release)

proc containmentMaskChanged*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_containmentMaskChanged(self.h)

type QQuickItemcontainmentMaskChangedSlot* = proc()
proc miqt_exec_callback_cQQuickItem_containmentMaskChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemcontainmentMaskChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickItem_containmentMaskChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemcontainmentMaskChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontainmentMaskChanged*(self: gen_qquickitem_types.QQuickItem, slot: QQuickItemcontainmentMaskChangedSlot) =
  var tmp = new QQuickItemcontainmentMaskChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItem_connect_containmentMaskChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickItem_containmentMaskChanged, miqt_exec_callback_cQQuickItem_containmentMaskChanged_release)

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
type QQuickItemwindowDeactivateEventProc* = proc(self: QQuickItem): void {.raises: [], gcsafe.}
type QQuickItemgeometryChangedProc* = proc(self: QQuickItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QQuickItemupdatePaintNodeProc* = proc(self: QQuickItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode {.raises: [], gcsafe.}
type QQuickItemreleaseResourcesProc* = proc(self: QQuickItem): void {.raises: [], gcsafe.}
type QQuickItemupdatePolishProc* = proc(self: QQuickItem): void {.raises: [], gcsafe.}
type QQuickItemeventFilterProc* = proc(self: QQuickItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickItemtimerEventProc* = proc(self: QQuickItem, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickItemchildEventProc* = proc(self: QQuickItem, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickItemcustomEventProc* = proc(self: QQuickItem, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickItemconnectNotifyProc* = proc(self: QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickItemdisconnectNotifyProc* = proc(self: QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickItemVTable* = object
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
  windowDeactivateEvent*: QQuickItemwindowDeactivateEventProc
  geometryChanged*: QQuickItemgeometryChangedProc
  updatePaintNode*: QQuickItemupdatePaintNodeProc
  releaseResources*: QQuickItemreleaseResourcesProc
  updatePolish*: QQuickItemupdatePolishProc
  eventFilter*: QQuickItemeventFilterProc
  timerEvent*: QQuickItemtimerEventProc
  childEvent*: QQuickItemchildEventProc
  customEvent*: QQuickItemcustomEventProc
  connectNotify*: QQuickItemconnectNotifyProc
  disconnectNotify*: QQuickItemdisconnectNotifyProc
proc QQuickItemmetaObject*(self: gen_qquickitem_types.QQuickItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickItem_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQuickItem_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQuickItemmetacast*(self: gen_qquickitem_types.QQuickItem, param1: cstring): pointer =
  fcQQuickItem_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickItem_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickItemmetacall*(self: gen_qquickitem_types.QQuickItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickItem_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickItemboundingRect*(self: gen_qquickitem_types.QQuickItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQQuickItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QQuickItemclipRect*(self: gen_qquickitem_types.QQuickItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickItem_virtualbase_clipRect(self.h))

proc miqt_exec_callback_cQQuickItem_clipRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  var virtualReturn = vtbl[].clipRect(self)
  virtualReturn.h

proc QQuickItemcontains*(self: gen_qquickitem_types.QQuickItem, point: gen_qpoint_types.QPointF): bool =
  fcQQuickItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQQuickItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QQuickIteminputMethodQuery*(self: gen_qquickitem_types.QQuickItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQuickItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQQuickItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QQuickItemisTextureProvider*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_virtualbase_isTextureProvider(self.h)

proc miqt_exec_callback_cQQuickItem_isTextureProvider(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  var virtualReturn = vtbl[].isTextureProvider(self)
  virtualReturn

proc QQuickItemtextureProvider*(self: gen_qquickitem_types.QQuickItem, ): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickItem_virtualbase_textureProvider(self.h))

proc miqt_exec_callback_cQQuickItem_textureProvider(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  var virtualReturn = vtbl[].textureProvider(self)
  virtualReturn.h

proc QQuickItemevent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQuickItem_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQQuickItem_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickItemitemChange*(self: gen_qquickitem_types.QQuickItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void =
  fcQQuickItem_virtualbase_itemChange(self.h, cint(param1), param2.h)

proc miqt_exec_callback_cQQuickItem_itemChange(vtbl: pointer, self: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2)
  vtbl[].itemChange(self, slotval1, slotval2)

proc QQuickItemclassBegin*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_virtualbase_classBegin(self.h)

proc miqt_exec_callback_cQQuickItem_classBegin(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  vtbl[].classBegin(self)

proc QQuickItemcomponentComplete*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_virtualbase_componentComplete(self.h)

proc miqt_exec_callback_cQQuickItem_componentComplete(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  vtbl[].componentComplete(self)

proc QQuickItemkeyPressEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QQuickItemkeyReleaseEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QQuickIteminputMethodEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQQuickItem_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickItem_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QQuickItemfocusInEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickItem_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickItem_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusInEvent(self, slotval1)

proc QQuickItemfocusOutEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickItem_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickItem_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusOutEvent(self, slotval1)

proc QQuickItemmousePressEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QQuickItemmouseMoveEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QQuickItemmouseReleaseEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QQuickItemmouseDoubleClickEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QQuickItemmouseUngrabEvent*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_virtualbase_mouseUngrabEvent(self.h)

proc miqt_exec_callback_cQQuickItem_mouseUngrabEvent(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  vtbl[].mouseUngrabEvent(self)

proc QQuickItemtouchUngrabEvent*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_virtualbase_touchUngrabEvent(self.h)

proc miqt_exec_callback_cQQuickItem_touchUngrabEvent(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  vtbl[].touchUngrabEvent(self)

proc QQuickItemwheelEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QWheelEvent): void =
  fcQQuickItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QQuickItemtouchEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QTouchEvent): void =
  fcQQuickItem_virtualbase_touchEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_touchEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: event)
  vtbl[].touchEvent(self, slotval1)

proc QQuickItemhoverEnterEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QQuickItemhoverMoveEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QQuickItemhoverLeaveEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QQuickItemdragEnterEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQQuickItem_virtualbase_dragEnterEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickItem_dragEnterEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)
  vtbl[].dragEnterEvent(self, slotval1)

proc QQuickItemdragMoveEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQQuickItem_virtualbase_dragMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickItem_dragMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)
  vtbl[].dragMoveEvent(self, slotval1)

proc QQuickItemdragLeaveEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQQuickItem_virtualbase_dragLeaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickItem_dragLeaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QQuickItemdropEvent*(self: gen_qquickitem_types.QQuickItem, param1: gen_qevent_types.QDropEvent): void =
  fcQQuickItem_virtualbase_dropEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickItem_dropEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)
  vtbl[].dropEvent(self, slotval1)

proc QQuickItemchildMouseEventFilter*(self: gen_qquickitem_types.QQuickItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool =
  fcQQuickItem_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQQuickItem_childMouseEventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].childMouseEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickItemwindowDeactivateEvent*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_virtualbase_windowDeactivateEvent(self.h)

proc miqt_exec_callback_cQQuickItem_windowDeactivateEvent(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  vtbl[].windowDeactivateEvent(self)

proc QQuickItemgeometryChanged*(self: gen_qquickitem_types.QQuickItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void =
  fcQQuickItem_virtualbase_geometryChanged(self.h, newGeometry.h, oldGeometry.h)

proc miqt_exec_callback_cQQuickItem_geometryChanged(vtbl: pointer, self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry)
  vtbl[].geometryChanged(self, slotval1, slotval2)

proc QQuickItemupdatePaintNode*(self: gen_qquickitem_types.QQuickItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQQuickItem_virtualbase_updatePaintNode(self.h, param1.h, param2.h))

proc miqt_exec_callback_cQQuickItem_updatePaintNode(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2)
  var virtualReturn = vtbl[].updatePaintNode(self, slotval1, slotval2)
  virtualReturn.h

proc QQuickItemreleaseResources*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_virtualbase_releaseResources(self.h)

proc miqt_exec_callback_cQQuickItem_releaseResources(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  vtbl[].releaseResources(self)

proc QQuickItemupdatePolish*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_virtualbase_updatePolish(self.h)

proc miqt_exec_callback_cQQuickItem_updatePolish(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  vtbl[].updatePolish(self)

proc QQuickItemeventFilter*(self: gen_qquickitem_types.QQuickItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickItem_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickItem_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickItemtimerEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickItem_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQuickItemchildEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickItem_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQuickItemcustomEvent*(self: gen_qquickitem_types.QQuickItem, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickItem_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickItem_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQuickItemconnectNotify*(self: gen_qquickitem_types.QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickItem_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickItem_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQuickItemdisconnectNotify*(self: gen_qquickitem_types.QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickItem_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickItem_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickItemVTable](vtbl)
  let self = QQuickItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc isComponentComplete*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_protectedbase_isComponentComplete(self.h)

proc updateInputMethod*(self: gen_qquickitem_types.QQuickItem, ): void =
  fcQQuickItem_protectedbase_updateInputMethod(self.h)

proc widthValid*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_protectedbase_widthValid(self.h)

proc heightValid*(self: gen_qquickitem_types.QQuickItem, ): bool =
  fcQQuickItem_protectedbase_heightValid(self.h)

proc setImplicitSize*(self: gen_qquickitem_types.QQuickItem, param1: float64, param2: float64): void =
  fcQQuickItem_protectedbase_setImplicitSize(self.h, param1, param2)

proc updateInputMethod*(self: gen_qquickitem_types.QQuickItem, queries: cint): void =
  fcQQuickItem_protectedbase_updateInputMethod1(self.h, cint(queries))

proc sender*(self: gen_qquickitem_types.QQuickItem, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickItem_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qquickitem_types.QQuickItem, ): cint =
  fcQQuickItem_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickitem_types.QQuickItem, signal: cstring): cint =
  fcQQuickItem_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickitem_types.QQuickItem, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickItem_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickitem_types.QQuickItem,
    vtbl: ref QQuickItemVTable = nil): gen_qquickitem_types.QQuickItem =
  let vtbl = if vtbl == nil: new QQuickItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickItemVTable, _: ptr cQQuickItem) {.cdecl.} =
    let vtbl = cast[ref QQuickItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickItem_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickItem_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickItem_metacall
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQQuickItem_boundingRect
  if not isNil(vtbl.clipRect):
    vtbl[].vtbl.clipRect = miqt_exec_callback_cQQuickItem_clipRect
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQQuickItem_contains
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQQuickItem_inputMethodQuery
  if not isNil(vtbl.isTextureProvider):
    vtbl[].vtbl.isTextureProvider = miqt_exec_callback_cQQuickItem_isTextureProvider
  if not isNil(vtbl.textureProvider):
    vtbl[].vtbl.textureProvider = miqt_exec_callback_cQQuickItem_textureProvider
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickItem_event
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQQuickItem_itemChange
  if not isNil(vtbl.classBegin):
    vtbl[].vtbl.classBegin = miqt_exec_callback_cQQuickItem_classBegin
  if not isNil(vtbl.componentComplete):
    vtbl[].vtbl.componentComplete = miqt_exec_callback_cQQuickItem_componentComplete
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickItem_keyReleaseEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQQuickItem_inputMethodEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickItem_focusOutEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickItem_mouseDoubleClickEvent
  if not isNil(vtbl.mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = miqt_exec_callback_cQQuickItem_mouseUngrabEvent
  if not isNil(vtbl.touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = miqt_exec_callback_cQQuickItem_touchUngrabEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickItem_wheelEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickItem_touchEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQQuickItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQQuickItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQQuickItem_hoverLeaveEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQQuickItem_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQQuickItem_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQQuickItem_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQQuickItem_dropEvent
  if not isNil(vtbl.childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = miqt_exec_callback_cQQuickItem_childMouseEventFilter
  if not isNil(vtbl.windowDeactivateEvent):
    vtbl[].vtbl.windowDeactivateEvent = miqt_exec_callback_cQQuickItem_windowDeactivateEvent
  if not isNil(vtbl.geometryChanged):
    vtbl[].vtbl.geometryChanged = miqt_exec_callback_cQQuickItem_geometryChanged
  if not isNil(vtbl.updatePaintNode):
    vtbl[].vtbl.updatePaintNode = miqt_exec_callback_cQQuickItem_updatePaintNode
  if not isNil(vtbl.releaseResources):
    vtbl[].vtbl.releaseResources = miqt_exec_callback_cQQuickItem_releaseResources
  if not isNil(vtbl.updatePolish):
    vtbl[].vtbl.updatePolish = miqt_exec_callback_cQQuickItem_updatePolish
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickItem_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickItem_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickItem_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickItem_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickItem_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickItem_disconnectNotify
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qquickitem_types.QQuickItem,
    parent: gen_qquickitem_types.QQuickItem,
    vtbl: ref QQuickItemVTable = nil): gen_qquickitem_types.QQuickItem =
  let vtbl = if vtbl == nil: new QQuickItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickItemVTable, _: ptr cQQuickItem) {.cdecl.} =
    let vtbl = cast[ref QQuickItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickItem_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickItem_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickItem_metacall
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQQuickItem_boundingRect
  if not isNil(vtbl.clipRect):
    vtbl[].vtbl.clipRect = miqt_exec_callback_cQQuickItem_clipRect
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQQuickItem_contains
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQQuickItem_inputMethodQuery
  if not isNil(vtbl.isTextureProvider):
    vtbl[].vtbl.isTextureProvider = miqt_exec_callback_cQQuickItem_isTextureProvider
  if not isNil(vtbl.textureProvider):
    vtbl[].vtbl.textureProvider = miqt_exec_callback_cQQuickItem_textureProvider
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickItem_event
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQQuickItem_itemChange
  if not isNil(vtbl.classBegin):
    vtbl[].vtbl.classBegin = miqt_exec_callback_cQQuickItem_classBegin
  if not isNil(vtbl.componentComplete):
    vtbl[].vtbl.componentComplete = miqt_exec_callback_cQQuickItem_componentComplete
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickItem_keyReleaseEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQQuickItem_inputMethodEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickItem_focusOutEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickItem_mouseDoubleClickEvent
  if not isNil(vtbl.mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = miqt_exec_callback_cQQuickItem_mouseUngrabEvent
  if not isNil(vtbl.touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = miqt_exec_callback_cQQuickItem_touchUngrabEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickItem_wheelEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickItem_touchEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQQuickItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQQuickItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQQuickItem_hoverLeaveEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQQuickItem_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQQuickItem_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQQuickItem_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQQuickItem_dropEvent
  if not isNil(vtbl.childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = miqt_exec_callback_cQQuickItem_childMouseEventFilter
  if not isNil(vtbl.windowDeactivateEvent):
    vtbl[].vtbl.windowDeactivateEvent = miqt_exec_callback_cQQuickItem_windowDeactivateEvent
  if not isNil(vtbl.geometryChanged):
    vtbl[].vtbl.geometryChanged = miqt_exec_callback_cQQuickItem_geometryChanged
  if not isNil(vtbl.updatePaintNode):
    vtbl[].vtbl.updatePaintNode = miqt_exec_callback_cQQuickItem_updatePaintNode
  if not isNil(vtbl.releaseResources):
    vtbl[].vtbl.releaseResources = miqt_exec_callback_cQQuickItem_releaseResources
  if not isNil(vtbl.updatePolish):
    vtbl[].vtbl.updatePolish = miqt_exec_callback_cQQuickItem_updatePolish
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickItem_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickItem_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickItem_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickItem_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickItem_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickItem_disconnectNotify
  gen_qquickitem_types.QQuickItem(h: fcQQuickItem_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qquickitem_types.QQuickItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickItem_staticMetaObject())
proc delete*(self: gen_qquickitem_types.QQuickItem) =
  fcQQuickItem_delete(self.h)
proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData,
    v: gen_qquickitem_types.QQuickItem): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData(h: fcQQuickItemItemChangeData_new(v.h))

proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData,
    v: gen_qquickwindow_types.QQuickWindow): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData(h: fcQQuickItemItemChangeData_new2(v.h))

proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData,
    v: float64): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData(h: fcQQuickItemItemChangeData_new3(v))

proc create*(T: type gen_qquickitem_types.QQuickItemItemChangeData,
    v: bool): gen_qquickitem_types.QQuickItemItemChangeData =
  gen_qquickitem_types.QQuickItemItemChangeData(h: fcQQuickItemItemChangeData_new4(v))

proc delete*(self: gen_qquickitem_types.QQuickItemItemChangeData) =
  fcQQuickItemItemChangeData_delete(self.h)
proc delete*(self: gen_qquickitem_types.QQuickItemUpdatePaintNodeData) =
  fcQQuickItemUpdatePaintNodeData_delete(self.h)
