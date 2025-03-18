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


{.compile("gen_qquickpainteditem.cpp", QtQuickCFlags).}


type QQuickPaintedItemRenderTargetEnum* = distinct cint
template Image*(_: type QQuickPaintedItemRenderTargetEnum): untyped = 0
template FramebufferObject*(_: type QQuickPaintedItemRenderTargetEnum): untyped = 1
template InvertedYFramebufferObject*(_: type QQuickPaintedItemRenderTargetEnum): untyped = 2


type QQuickPaintedItemPerformanceHintEnum* = distinct cint
template FastFBOResizing*(_: type QQuickPaintedItemPerformanceHintEnum): untyped = 1


import ./gen_qquickpainteditem_types
export gen_qquickpainteditem_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qquickitem,
  ./gen_qsgnode_types,
  ./gen_qsgtextureprovider_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qcolor_types,
  gen_qevent_types,
  gen_qpainter_types,
  gen_qquickitem,
  gen_qsgnode_types,
  gen_qsgtextureprovider_types

type cQQuickPaintedItem*{.exportc: "QQuickPaintedItem", incompleteStruct.} = object

proc fcQQuickPaintedItem_metaObject(self: pointer): pointer {.importc: "QQuickPaintedItem_metaObject".}
proc fcQQuickPaintedItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickPaintedItem_metacast".}
proc fcQQuickPaintedItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickPaintedItem_metacall".}
proc fcQQuickPaintedItem_tr(s: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_tr".}
proc fcQQuickPaintedItem_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_trUtf8".}
proc fcQQuickPaintedItem_update(self: pointer): void {.importc: "QQuickPaintedItem_update".}
proc fcQQuickPaintedItem_opaquePainting(self: pointer): bool {.importc: "QQuickPaintedItem_opaquePainting".}
proc fcQQuickPaintedItem_setOpaquePainting(self: pointer, opaque: bool): void {.importc: "QQuickPaintedItem_setOpaquePainting".}
proc fcQQuickPaintedItem_antialiasing(self: pointer): bool {.importc: "QQuickPaintedItem_antialiasing".}
proc fcQQuickPaintedItem_setAntialiasing(self: pointer, enable: bool): void {.importc: "QQuickPaintedItem_setAntialiasing".}
proc fcQQuickPaintedItem_mipmap(self: pointer): bool {.importc: "QQuickPaintedItem_mipmap".}
proc fcQQuickPaintedItem_setMipmap(self: pointer, enable: bool): void {.importc: "QQuickPaintedItem_setMipmap".}
proc fcQQuickPaintedItem_performanceHints(self: pointer): cint {.importc: "QQuickPaintedItem_performanceHints".}
proc fcQQuickPaintedItem_setPerformanceHint(self: pointer, hint: cint): void {.importc: "QQuickPaintedItem_setPerformanceHint".}
proc fcQQuickPaintedItem_setPerformanceHints(self: pointer, hints: cint): void {.importc: "QQuickPaintedItem_setPerformanceHints".}
proc fcQQuickPaintedItem_contentsBoundingRect(self: pointer): pointer {.importc: "QQuickPaintedItem_contentsBoundingRect".}
proc fcQQuickPaintedItem_contentsSize(self: pointer): pointer {.importc: "QQuickPaintedItem_contentsSize".}
proc fcQQuickPaintedItem_setContentsSize(self: pointer, contentsSize: pointer): void {.importc: "QQuickPaintedItem_setContentsSize".}
proc fcQQuickPaintedItem_resetContentsSize(self: pointer): void {.importc: "QQuickPaintedItem_resetContentsSize".}
proc fcQQuickPaintedItem_contentsScale(self: pointer): float64 {.importc: "QQuickPaintedItem_contentsScale".}
proc fcQQuickPaintedItem_setContentsScale(self: pointer, contentsScale: float64): void {.importc: "QQuickPaintedItem_setContentsScale".}
proc fcQQuickPaintedItem_textureSize(self: pointer): pointer {.importc: "QQuickPaintedItem_textureSize".}
proc fcQQuickPaintedItem_setTextureSize(self: pointer, size: pointer): void {.importc: "QQuickPaintedItem_setTextureSize".}
proc fcQQuickPaintedItem_fillColor(self: pointer): pointer {.importc: "QQuickPaintedItem_fillColor".}
proc fcQQuickPaintedItem_setFillColor(self: pointer, fillColor: pointer): void {.importc: "QQuickPaintedItem_setFillColor".}
proc fcQQuickPaintedItem_renderTarget(self: pointer): cint {.importc: "QQuickPaintedItem_renderTarget".}
proc fcQQuickPaintedItem_setRenderTarget(self: pointer, target: cint): void {.importc: "QQuickPaintedItem_setRenderTarget".}
proc fcQQuickPaintedItem_paint(self: pointer, painter: pointer): void {.importc: "QQuickPaintedItem_paint".}
proc fcQQuickPaintedItem_isTextureProvider(self: pointer): bool {.importc: "QQuickPaintedItem_isTextureProvider".}
proc fcQQuickPaintedItem_textureProvider(self: pointer): pointer {.importc: "QQuickPaintedItem_textureProvider".}
proc fcQQuickPaintedItem_fillColorChanged(self: pointer): void {.importc: "QQuickPaintedItem_fillColorChanged".}
proc fcQQuickPaintedItem_connect_fillColorChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickPaintedItem_connect_fillColorChanged".}
proc fcQQuickPaintedItem_contentsSizeChanged(self: pointer): void {.importc: "QQuickPaintedItem_contentsSizeChanged".}
proc fcQQuickPaintedItem_connect_contentsSizeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickPaintedItem_connect_contentsSizeChanged".}
proc fcQQuickPaintedItem_contentsScaleChanged(self: pointer): void {.importc: "QQuickPaintedItem_contentsScaleChanged".}
proc fcQQuickPaintedItem_connect_contentsScaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickPaintedItem_connect_contentsScaleChanged".}
proc fcQQuickPaintedItem_renderTargetChanged(self: pointer): void {.importc: "QQuickPaintedItem_renderTargetChanged".}
proc fcQQuickPaintedItem_connect_renderTargetChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickPaintedItem_connect_renderTargetChanged".}
proc fcQQuickPaintedItem_textureSizeChanged(self: pointer): void {.importc: "QQuickPaintedItem_textureSizeChanged".}
proc fcQQuickPaintedItem_connect_textureSizeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickPaintedItem_connect_textureSizeChanged".}
proc fcQQuickPaintedItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_tr2".}
proc fcQQuickPaintedItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickPaintedItem_tr3".}
proc fcQQuickPaintedItem_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_trUtf82".}
proc fcQQuickPaintedItem_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickPaintedItem_trUtf83".}
proc fcQQuickPaintedItem_update1(self: pointer, rect: pointer): void {.importc: "QQuickPaintedItem_update1".}
proc fcQQuickPaintedItem_setPerformanceHint2(self: pointer, hint: cint, enabled: bool): void {.importc: "QQuickPaintedItem_setPerformanceHint2".}
proc fcQQuickPaintedItem_vtbl(self: pointer): pointer {.importc: "QQuickPaintedItem_vtbl".}
proc fcQQuickPaintedItem_vdata(self: pointer): pointer {.importc: "QQuickPaintedItem_vdata".}

type cQQuickPaintedItemVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  paint*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  isTextureProvider*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  textureProvider*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  updatePaintNode*: proc(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl, raises: [], gcsafe.}
  releaseResources*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(self: pointer, param1: cint, param2: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  clipRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
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
  windowDeactivateEvent*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  geometryChanged*: proc(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl, raises: [], gcsafe.}
  updatePolish*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickPaintedItem_virtualbase_metaObject(self: pointer): pointer {.importc: "QQuickPaintedItem_virtualbase_metaObject".}
proc fcQQuickPaintedItem_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickPaintedItem_virtualbase_metacast".}
proc fcQQuickPaintedItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickPaintedItem_virtualbase_metacall".}
proc fcQQuickPaintedItem_virtualbase_isTextureProvider(self: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_isTextureProvider".}
proc fcQQuickPaintedItem_virtualbase_textureProvider(self: pointer): pointer {.importc: "QQuickPaintedItem_virtualbase_textureProvider".}
proc fcQQuickPaintedItem_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QQuickPaintedItem_virtualbase_updatePaintNode".}
proc fcQQuickPaintedItem_virtualbase_releaseResources(self: pointer): void {.importc: "QQuickPaintedItem_virtualbase_releaseResources".}
proc fcQQuickPaintedItem_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void {.importc: "QQuickPaintedItem_virtualbase_itemChange".}
proc fcQQuickPaintedItem_virtualbase_boundingRect(self: pointer): pointer {.importc: "QQuickPaintedItem_virtualbase_boundingRect".}
proc fcQQuickPaintedItem_virtualbase_clipRect(self: pointer): pointer {.importc: "QQuickPaintedItem_virtualbase_clipRect".}
proc fcQQuickPaintedItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_contains".}
proc fcQQuickPaintedItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QQuickPaintedItem_virtualbase_inputMethodQuery".}
proc fcQQuickPaintedItem_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_event".}
proc fcQQuickPaintedItem_virtualbase_classBegin(self: pointer): void {.importc: "QQuickPaintedItem_virtualbase_classBegin".}
proc fcQQuickPaintedItem_virtualbase_componentComplete(self: pointer): void {.importc: "QQuickPaintedItem_virtualbase_componentComplete".}
proc fcQQuickPaintedItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_keyPressEvent".}
proc fcQQuickPaintedItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_keyReleaseEvent".}
proc fcQQuickPaintedItem_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_inputMethodEvent".}
proc fcQQuickPaintedItem_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_focusInEvent".}
proc fcQQuickPaintedItem_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_focusOutEvent".}
proc fcQQuickPaintedItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mousePressEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mouseMoveEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mouseReleaseEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseUngrabEvent(self: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mouseUngrabEvent".}
proc fcQQuickPaintedItem_virtualbase_touchUngrabEvent(self: pointer): void {.importc: "QQuickPaintedItem_virtualbase_touchUngrabEvent".}
proc fcQQuickPaintedItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_wheelEvent".}
proc fcQQuickPaintedItem_virtualbase_touchEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_touchEvent".}
proc fcQQuickPaintedItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_hoverEnterEvent".}
proc fcQQuickPaintedItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_hoverMoveEvent".}
proc fcQQuickPaintedItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_hoverLeaveEvent".}
proc fcQQuickPaintedItem_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_dragEnterEvent".}
proc fcQQuickPaintedItem_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_dragMoveEvent".}
proc fcQQuickPaintedItem_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_dragLeaveEvent".}
proc fcQQuickPaintedItem_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_dropEvent".}
proc fcQQuickPaintedItem_virtualbase_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_childMouseEventFilter".}
proc fcQQuickPaintedItem_virtualbase_windowDeactivateEvent(self: pointer): void {.importc: "QQuickPaintedItem_virtualbase_windowDeactivateEvent".}
proc fcQQuickPaintedItem_virtualbase_geometryChanged(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.importc: "QQuickPaintedItem_virtualbase_geometryChanged".}
proc fcQQuickPaintedItem_virtualbase_updatePolish(self: pointer): void {.importc: "QQuickPaintedItem_virtualbase_updatePolish".}
proc fcQQuickPaintedItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_eventFilter".}
proc fcQQuickPaintedItem_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_timerEvent".}
proc fcQQuickPaintedItem_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_childEvent".}
proc fcQQuickPaintedItem_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_customEvent".}
proc fcQQuickPaintedItem_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickPaintedItem_virtualbase_connectNotify".}
proc fcQQuickPaintedItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickPaintedItem_virtualbase_disconnectNotify".}
proc fcQQuickPaintedItem_protectedbase_isComponentComplete(self: pointer): bool {.importc: "QQuickPaintedItem_protectedbase_isComponentComplete".}
proc fcQQuickPaintedItem_protectedbase_updateInputMethod(self: pointer): void {.importc: "QQuickPaintedItem_protectedbase_updateInputMethod".}
proc fcQQuickPaintedItem_protectedbase_widthValid(self: pointer): bool {.importc: "QQuickPaintedItem_protectedbase_widthValid".}
proc fcQQuickPaintedItem_protectedbase_heightValid(self: pointer): bool {.importc: "QQuickPaintedItem_protectedbase_heightValid".}
proc fcQQuickPaintedItem_protectedbase_setImplicitSize(self: pointer, param1: float64, param2: float64): void {.importc: "QQuickPaintedItem_protectedbase_setImplicitSize".}
proc fcQQuickPaintedItem_protectedbase_sender(self: pointer): pointer {.importc: "QQuickPaintedItem_protectedbase_sender".}
proc fcQQuickPaintedItem_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickPaintedItem_protectedbase_senderSignalIndex".}
proc fcQQuickPaintedItem_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickPaintedItem_protectedbase_receivers".}
proc fcQQuickPaintedItem_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickPaintedItem_protectedbase_isSignalConnected".}
proc fcQQuickPaintedItem_new(vtbl, vdata: pointer): ptr cQQuickPaintedItem {.importc: "QQuickPaintedItem_new".}
proc fcQQuickPaintedItem_new2(vtbl, vdata: pointer, parent: pointer): ptr cQQuickPaintedItem {.importc: "QQuickPaintedItem_new2".}
proc fcQQuickPaintedItem_staticMetaObject(): pointer {.importc: "QQuickPaintedItem_staticMetaObject".}

proc metaObject*(self: gen_qquickpainteditem_types.QQuickPaintedItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickPaintedItem_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cstring): pointer =
  fcQQuickPaintedItem_metacast(self.h, param1)

proc metacall*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickPaintedItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring): string =
  let v_ms = fcQQuickPaintedItem_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring): string =
  let v_ms = fcQQuickPaintedItem_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc update*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_update(self.h)

proc opaquePainting*(self: gen_qquickpainteditem_types.QQuickPaintedItem): bool =
  fcQQuickPaintedItem_opaquePainting(self.h)

proc setOpaquePainting*(self: gen_qquickpainteditem_types.QQuickPaintedItem, opaque: bool): void =
  fcQQuickPaintedItem_setOpaquePainting(self.h, opaque)

proc antialiasing*(self: gen_qquickpainteditem_types.QQuickPaintedItem): bool =
  fcQQuickPaintedItem_antialiasing(self.h)

proc setAntialiasing*(self: gen_qquickpainteditem_types.QQuickPaintedItem, enable: bool): void =
  fcQQuickPaintedItem_setAntialiasing(self.h, enable)

proc mipmap*(self: gen_qquickpainteditem_types.QQuickPaintedItem): bool =
  fcQQuickPaintedItem_mipmap(self.h)

proc setMipmap*(self: gen_qquickpainteditem_types.QQuickPaintedItem, enable: bool): void =
  fcQQuickPaintedItem_setMipmap(self.h, enable)

proc performanceHints*(self: gen_qquickpainteditem_types.QQuickPaintedItem): cint =
  cint(fcQQuickPaintedItem_performanceHints(self.h))

proc setPerformanceHint*(self: gen_qquickpainteditem_types.QQuickPaintedItem, hint: cint): void =
  fcQQuickPaintedItem_setPerformanceHint(self.h, cint(hint))

proc setPerformanceHints*(self: gen_qquickpainteditem_types.QQuickPaintedItem, hints: cint): void =
  fcQQuickPaintedItem_setPerformanceHints(self.h, cint(hints))

proc contentsBoundingRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickPaintedItem_contentsBoundingRect(self.h), owned: true)

proc contentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickPaintedItem_contentsSize(self.h), owned: true)

proc setContentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, contentsSize: gen_qsize_types.QSize): void =
  fcQQuickPaintedItem_setContentsSize(self.h, contentsSize.h)

proc resetContentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_resetContentsSize(self.h)

proc contentsScale*(self: gen_qquickpainteditem_types.QQuickPaintedItem): float64 =
  fcQQuickPaintedItem_contentsScale(self.h)

proc setContentsScale*(self: gen_qquickpainteditem_types.QQuickPaintedItem, contentsScale: float64): void =
  fcQQuickPaintedItem_setContentsScale(self.h, contentsScale)

proc textureSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickPaintedItem_textureSize(self.h), owned: true)

proc setTextureSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, size: gen_qsize_types.QSize): void =
  fcQQuickPaintedItem_setTextureSize(self.h, size.h)

proc fillColor*(self: gen_qquickpainteditem_types.QQuickPaintedItem): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQQuickPaintedItem_fillColor(self.h), owned: true)

proc setFillColor*(self: gen_qquickpainteditem_types.QQuickPaintedItem, fillColor: gen_qcolor_types.QColor): void =
  fcQQuickPaintedItem_setFillColor(self.h, fillColor.h)

proc renderTarget*(self: gen_qquickpainteditem_types.QQuickPaintedItem): cint =
  cint(fcQQuickPaintedItem_renderTarget(self.h))

proc setRenderTarget*(self: gen_qquickpainteditem_types.QQuickPaintedItem, target: cint): void =
  fcQQuickPaintedItem_setRenderTarget(self.h, cint(target))

proc paint*(self: gen_qquickpainteditem_types.QQuickPaintedItem, painter: gen_qpainter_types.QPainter): void =
  fcQQuickPaintedItem_paint(self.h, painter.h)

proc isTextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem): bool =
  fcQQuickPaintedItem_isTextureProvider(self.h)

proc textureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickPaintedItem_textureProvider(self.h), owned: false)

proc fillColorChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_fillColorChanged(self.h)

type QQuickPaintedItemfillColorChangedSlot* = proc()
proc fcQQuickPaintedItem_slot_callback_fillColorChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickPaintedItemfillColorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickPaintedItem_slot_callback_fillColorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickPaintedItemfillColorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFillColorChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemfillColorChangedSlot) =
  var tmp = new QQuickPaintedItemfillColorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_fillColorChanged(self.h, cast[int](addr tmp[]), fcQQuickPaintedItem_slot_callback_fillColorChanged, fcQQuickPaintedItem_slot_callback_fillColorChanged_release)

proc contentsSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_contentsSizeChanged(self.h)

type QQuickPaintedItemcontentsSizeChangedSlot* = proc()
proc fcQQuickPaintedItem_slot_callback_contentsSizeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickPaintedItemcontentsSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickPaintedItem_slot_callback_contentsSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickPaintedItemcontentsSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onContentsSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemcontentsSizeChangedSlot) =
  var tmp = new QQuickPaintedItemcontentsSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_contentsSizeChanged(self.h, cast[int](addr tmp[]), fcQQuickPaintedItem_slot_callback_contentsSizeChanged, fcQQuickPaintedItem_slot_callback_contentsSizeChanged_release)

proc contentsScaleChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_contentsScaleChanged(self.h)

type QQuickPaintedItemcontentsScaleChangedSlot* = proc()
proc fcQQuickPaintedItem_slot_callback_contentsScaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickPaintedItemcontentsScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickPaintedItem_slot_callback_contentsScaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickPaintedItemcontentsScaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onContentsScaleChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemcontentsScaleChangedSlot) =
  var tmp = new QQuickPaintedItemcontentsScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_contentsScaleChanged(self.h, cast[int](addr tmp[]), fcQQuickPaintedItem_slot_callback_contentsScaleChanged, fcQQuickPaintedItem_slot_callback_contentsScaleChanged_release)

proc renderTargetChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_renderTargetChanged(self.h)

type QQuickPaintedItemrenderTargetChangedSlot* = proc()
proc fcQQuickPaintedItem_slot_callback_renderTargetChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickPaintedItemrenderTargetChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickPaintedItem_slot_callback_renderTargetChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickPaintedItemrenderTargetChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRenderTargetChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemrenderTargetChangedSlot) =
  var tmp = new QQuickPaintedItemrenderTargetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_renderTargetChanged(self.h, cast[int](addr tmp[]), fcQQuickPaintedItem_slot_callback_renderTargetChanged, fcQQuickPaintedItem_slot_callback_renderTargetChanged_release)

proc textureSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_textureSizeChanged(self.h)

type QQuickPaintedItemtextureSizeChangedSlot* = proc()
proc fcQQuickPaintedItem_slot_callback_textureSizeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickPaintedItemtextureSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickPaintedItem_slot_callback_textureSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickPaintedItemtextureSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTextureSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemtextureSizeChangedSlot) =
  var tmp = new QQuickPaintedItemtextureSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_textureSizeChanged(self.h, cast[int](addr tmp[]), fcQQuickPaintedItem_slot_callback_textureSizeChanged, fcQQuickPaintedItem_slot_callback_textureSizeChanged_release)

proc tr*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring, c: cstring): string =
  let v_ms = fcQQuickPaintedItem_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickPaintedItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring, c: cstring): string =
  let v_ms = fcQQuickPaintedItem_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickPaintedItem_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc update*(self: gen_qquickpainteditem_types.QQuickPaintedItem, rect: gen_qrect_types.QRect): void =
  fcQQuickPaintedItem_update1(self.h, rect.h)

proc setPerformanceHint*(self: gen_qquickpainteditem_types.QQuickPaintedItem, hint: cint, enabled: bool): void =
  fcQQuickPaintedItem_setPerformanceHint2(self.h, cint(hint), enabled)

type QQuickPaintedItemmetaObjectProc* = proc(self: QQuickPaintedItem): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickPaintedItemmetacastProc* = proc(self: QQuickPaintedItem, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickPaintedItemmetacallProc* = proc(self: QQuickPaintedItem, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickPaintedItempaintProc* = proc(self: QQuickPaintedItem, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QQuickPaintedItemisTextureProviderProc* = proc(self: QQuickPaintedItem): bool {.raises: [], gcsafe.}
type QQuickPaintedItemtextureProviderProc* = proc(self: QQuickPaintedItem): gen_qsgtextureprovider_types.QSGTextureProvider {.raises: [], gcsafe.}
type QQuickPaintedItemupdatePaintNodeProc* = proc(self: QQuickPaintedItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode {.raises: [], gcsafe.}
type QQuickPaintedItemreleaseResourcesProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemitemChangeProc* = proc(self: QQuickPaintedItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void {.raises: [], gcsafe.}
type QQuickPaintedItemboundingRectProc* = proc(self: QQuickPaintedItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QQuickPaintedItemclipRectProc* = proc(self: QQuickPaintedItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QQuickPaintedItemcontainsProc* = proc(self: QQuickPaintedItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QQuickPaintedIteminputMethodQueryProc* = proc(self: QQuickPaintedItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QQuickPaintedItemeventProc* = proc(self: QQuickPaintedItem, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickPaintedItemclassBeginProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemcomponentCompleteProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemkeyPressEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemkeyReleaseEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickPaintedIteminputMethodEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemfocusInEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemfocusOutEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemmousePressEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemmouseMoveEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemmouseReleaseEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemmouseDoubleClickEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemmouseUngrabEventProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemtouchUngrabEventProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemwheelEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemtouchEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QTouchEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemhoverEnterEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemhoverMoveEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemhoverLeaveEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemdragEnterEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemdragMoveEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemdragLeaveEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemdropEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemchildMouseEventFilterProc* = proc(self: QQuickPaintedItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickPaintedItemwindowDeactivateEventProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemgeometryChangedProc* = proc(self: QQuickPaintedItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QQuickPaintedItemupdatePolishProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemeventFilterProc* = proc(self: QQuickPaintedItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickPaintedItemtimerEventProc* = proc(self: QQuickPaintedItem, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemchildEventProc* = proc(self: QQuickPaintedItem, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemcustomEventProc* = proc(self: QQuickPaintedItem, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemconnectNotifyProc* = proc(self: QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickPaintedItemdisconnectNotifyProc* = proc(self: QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QQuickPaintedItemVTable* {.inheritable, pure.} = object
  vtbl: cQQuickPaintedItemVTable
  metaObject*: QQuickPaintedItemmetaObjectProc
  metacast*: QQuickPaintedItemmetacastProc
  metacall*: QQuickPaintedItemmetacallProc
  paint*: QQuickPaintedItempaintProc
  isTextureProvider*: QQuickPaintedItemisTextureProviderProc
  textureProvider*: QQuickPaintedItemtextureProviderProc
  updatePaintNode*: QQuickPaintedItemupdatePaintNodeProc
  releaseResources*: QQuickPaintedItemreleaseResourcesProc
  itemChange*: QQuickPaintedItemitemChangeProc
  boundingRect*: QQuickPaintedItemboundingRectProc
  clipRect*: QQuickPaintedItemclipRectProc
  contains*: QQuickPaintedItemcontainsProc
  inputMethodQuery*: QQuickPaintedIteminputMethodQueryProc
  event*: QQuickPaintedItemeventProc
  classBegin*: QQuickPaintedItemclassBeginProc
  componentComplete*: QQuickPaintedItemcomponentCompleteProc
  keyPressEvent*: QQuickPaintedItemkeyPressEventProc
  keyReleaseEvent*: QQuickPaintedItemkeyReleaseEventProc
  inputMethodEvent*: QQuickPaintedIteminputMethodEventProc
  focusInEvent*: QQuickPaintedItemfocusInEventProc
  focusOutEvent*: QQuickPaintedItemfocusOutEventProc
  mousePressEvent*: QQuickPaintedItemmousePressEventProc
  mouseMoveEvent*: QQuickPaintedItemmouseMoveEventProc
  mouseReleaseEvent*: QQuickPaintedItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QQuickPaintedItemmouseDoubleClickEventProc
  mouseUngrabEvent*: QQuickPaintedItemmouseUngrabEventProc
  touchUngrabEvent*: QQuickPaintedItemtouchUngrabEventProc
  wheelEvent*: QQuickPaintedItemwheelEventProc
  touchEvent*: QQuickPaintedItemtouchEventProc
  hoverEnterEvent*: QQuickPaintedItemhoverEnterEventProc
  hoverMoveEvent*: QQuickPaintedItemhoverMoveEventProc
  hoverLeaveEvent*: QQuickPaintedItemhoverLeaveEventProc
  dragEnterEvent*: QQuickPaintedItemdragEnterEventProc
  dragMoveEvent*: QQuickPaintedItemdragMoveEventProc
  dragLeaveEvent*: QQuickPaintedItemdragLeaveEventProc
  dropEvent*: QQuickPaintedItemdropEventProc
  childMouseEventFilter*: QQuickPaintedItemchildMouseEventFilterProc
  windowDeactivateEvent*: QQuickPaintedItemwindowDeactivateEventProc
  geometryChanged*: QQuickPaintedItemgeometryChangedProc
  updatePolish*: QQuickPaintedItemupdatePolishProc
  eventFilter*: QQuickPaintedItemeventFilterProc
  timerEvent*: QQuickPaintedItemtimerEventProc
  childEvent*: QQuickPaintedItemchildEventProc
  customEvent*: QQuickPaintedItemcustomEventProc
  connectNotify*: QQuickPaintedItemconnectNotifyProc
  disconnectNotify*: QQuickPaintedItemdisconnectNotifyProc

proc QQuickPaintedItemmetaObject*(self: gen_qquickpainteditem_types.QQuickPaintedItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickPaintedItem_virtualbase_metaObject(self.h), owned: false)

proc QQuickPaintedItemmetacast*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cstring): pointer =
  fcQQuickPaintedItem_virtualbase_metacast(self.h, param1)

proc QQuickPaintedItemmetacall*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickPaintedItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQuickPaintedItemisTextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem): bool =
  fcQQuickPaintedItem_virtualbase_isTextureProvider(self.h)

proc QQuickPaintedItemtextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickPaintedItem_virtualbase_textureProvider(self.h), owned: false)

proc QQuickPaintedItemupdatePaintNode*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQQuickPaintedItem_virtualbase_updatePaintNode(self.h, param1.h, param2.h), owned: false)

proc QQuickPaintedItemreleaseResources*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_virtualbase_releaseResources(self.h)

proc QQuickPaintedItemitemChange*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void =
  fcQQuickPaintedItem_virtualbase_itemChange(self.h, cint(param1), param2.h)

proc QQuickPaintedItemboundingRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickPaintedItem_virtualbase_boundingRect(self.h), owned: true)

proc QQuickPaintedItemclipRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickPaintedItem_virtualbase_clipRect(self.h), owned: true)

proc QQuickPaintedItemcontains*(self: gen_qquickpainteditem_types.QQuickPaintedItem, point: gen_qpoint_types.QPointF): bool =
  fcQQuickPaintedItem_virtualbase_contains(self.h, point.h)

proc QQuickPaintedIteminputMethodQuery*(self: gen_qquickpainteditem_types.QQuickPaintedItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQuickPaintedItem_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc QQuickPaintedItemevent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQuickPaintedItem_virtualbase_event(self.h, param1.h)

proc QQuickPaintedItemclassBegin*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_virtualbase_classBegin(self.h)

proc QQuickPaintedItemcomponentComplete*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_virtualbase_componentComplete(self.h)

proc QQuickPaintedItemkeyPressEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickPaintedItem_virtualbase_keyPressEvent(self.h, event.h)

proc QQuickPaintedItemkeyReleaseEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickPaintedItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc QQuickPaintedIteminputMethodEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQQuickPaintedItem_virtualbase_inputMethodEvent(self.h, param1.h)

proc QQuickPaintedItemfocusInEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickPaintedItem_virtualbase_focusInEvent(self.h, param1.h)

proc QQuickPaintedItemfocusOutEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickPaintedItem_virtualbase_focusOutEvent(self.h, param1.h)

proc QQuickPaintedItemmousePressEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mousePressEvent(self.h, event.h)

proc QQuickPaintedItemmouseMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc QQuickPaintedItemmouseReleaseEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QQuickPaintedItemmouseDoubleClickEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QQuickPaintedItemmouseUngrabEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_virtualbase_mouseUngrabEvent(self.h)

proc QQuickPaintedItemtouchUngrabEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_virtualbase_touchUngrabEvent(self.h)

proc QQuickPaintedItemwheelEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QWheelEvent): void =
  fcQQuickPaintedItem_virtualbase_wheelEvent(self.h, event.h)

proc QQuickPaintedItemtouchEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QTouchEvent): void =
  fcQQuickPaintedItem_virtualbase_touchEvent(self.h, event.h)

proc QQuickPaintedItemhoverEnterEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickPaintedItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc QQuickPaintedItemhoverMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickPaintedItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc QQuickPaintedItemhoverLeaveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickPaintedItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc QQuickPaintedItemdragEnterEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQQuickPaintedItem_virtualbase_dragEnterEvent(self.h, param1.h)

proc QQuickPaintedItemdragMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQQuickPaintedItem_virtualbase_dragMoveEvent(self.h, param1.h)

proc QQuickPaintedItemdragLeaveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQQuickPaintedItem_virtualbase_dragLeaveEvent(self.h, param1.h)

proc QQuickPaintedItemdropEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDropEvent): void =
  fcQQuickPaintedItem_virtualbase_dropEvent(self.h, param1.h)

proc QQuickPaintedItemchildMouseEventFilter*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool =
  fcQQuickPaintedItem_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

proc QQuickPaintedItemwindowDeactivateEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_virtualbase_windowDeactivateEvent(self.h)

proc QQuickPaintedItemgeometryChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void =
  fcQQuickPaintedItem_virtualbase_geometryChanged(self.h, newGeometry.h, oldGeometry.h)

proc QQuickPaintedItemupdatePolish*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_virtualbase_updatePolish(self.h)

proc QQuickPaintedItemeventFilter*(self: gen_qquickpainteditem_types.QQuickPaintedItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickPaintedItem_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQuickPaintedItemtimerEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickPaintedItem_virtualbase_timerEvent(self.h, event.h)

proc QQuickPaintedItemchildEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickPaintedItem_virtualbase_childEvent(self.h, event.h)

proc QQuickPaintedItemcustomEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickPaintedItem_virtualbase_customEvent(self.h, event.h)

proc QQuickPaintedItemconnectNotify*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickPaintedItem_virtualbase_connectNotify(self.h, signal.h)

proc QQuickPaintedItemdisconnectNotify*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickPaintedItem_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQuickPaintedItem_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQuickPaintedItem_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickPaintedItem_vtable_callback_paint(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].paint(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_isTextureProvider(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  var virtualReturn = vtbl[].isTextureProvider(self)
  virtualReturn

proc fcQQuickPaintedItem_vtable_callback_textureProvider(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  var virtualReturn = vtbl[].textureProvider(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_vtable_callback_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1, owned: false)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2, owned: false)
  var virtualReturn = vtbl[].updatePaintNode(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_vtable_callback_releaseResources(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  vtbl[].releaseResources(self)

proc fcQQuickPaintedItem_vtable_callback_itemChange(self: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2, owned: false)
  vtbl[].itemChange(self, slotval1, slotval2)

proc fcQQuickPaintedItem_vtable_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_vtable_callback_clipRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  var virtualReturn = vtbl[].clipRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_vtable_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc fcQQuickPaintedItem_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQuickPaintedItem_vtable_callback_classBegin(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  vtbl[].classBegin(self)

proc fcQQuickPaintedItem_vtable_callback_componentComplete(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  vtbl[].componentComplete(self)

proc fcQQuickPaintedItem_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_mouseUngrabEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  vtbl[].mouseUngrabEvent(self)

proc fcQQuickPaintedItem_vtable_callback_touchUngrabEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  vtbl[].touchUngrabEvent(self)

proc fcQQuickPaintedItem_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_touchEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: event, owned: false)
  vtbl[].touchEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverEnterEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverMoveEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].childMouseEventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQuickPaintedItem_vtable_callback_windowDeactivateEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  vtbl[].windowDeactivateEvent(self)

proc fcQQuickPaintedItem_vtable_callback_geometryChanged(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry, owned: false)
  vtbl[].geometryChanged(self, slotval1, slotval2)

proc fcQQuickPaintedItem_vtable_callback_updatePolish(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  vtbl[].updatePolish(self)

proc fcQQuickPaintedItem_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQuickPaintedItem_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQuickPaintedItem_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickPaintedItem* {.inheritable.} = ref object of QQuickPaintedItem
  vtbl*: cQQuickPaintedItemVTable

method metaObject*(self: VirtualQQuickPaintedItem): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickPaintedItemmetaObject(self[])
method metacast*(self: VirtualQQuickPaintedItem, param1: cstring): pointer {.base.} =
  QQuickPaintedItemmetacast(self[], param1)
method metacall*(self: VirtualQQuickPaintedItem, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickPaintedItemmetacall(self[], param1, param2, param3)
method paint*(self: VirtualQQuickPaintedItem, painter: gen_qpainter_types.QPainter): void {.base.} =
  raiseAssert("missing implementation of QQuickPaintedItem.paint")
method isTextureProvider*(self: VirtualQQuickPaintedItem): bool {.base.} =
  QQuickPaintedItemisTextureProvider(self[])
method textureProvider*(self: VirtualQQuickPaintedItem): gen_qsgtextureprovider_types.QSGTextureProvider {.base.} =
  QQuickPaintedItemtextureProvider(self[])
method updatePaintNode*(self: VirtualQQuickPaintedItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode {.base.} =
  QQuickPaintedItemupdatePaintNode(self[], param1, param2)
method releaseResources*(self: VirtualQQuickPaintedItem): void {.base.} =
  QQuickPaintedItemreleaseResources(self[])
method itemChange*(self: VirtualQQuickPaintedItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void {.base.} =
  QQuickPaintedItemitemChange(self[], param1, param2)
method boundingRect*(self: VirtualQQuickPaintedItem): gen_qrect_types.QRectF {.base.} =
  QQuickPaintedItemboundingRect(self[])
method clipRect*(self: VirtualQQuickPaintedItem): gen_qrect_types.QRectF {.base.} =
  QQuickPaintedItemclipRect(self[])
method contains*(self: VirtualQQuickPaintedItem, point: gen_qpoint_types.QPointF): bool {.base.} =
  QQuickPaintedItemcontains(self[], point)
method inputMethodQuery*(self: VirtualQQuickPaintedItem, query: cint): gen_qvariant_types.QVariant {.base.} =
  QQuickPaintedIteminputMethodQuery(self[], query)
method event*(self: VirtualQQuickPaintedItem, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickPaintedItemevent(self[], param1)
method classBegin*(self: VirtualQQuickPaintedItem): void {.base.} =
  QQuickPaintedItemclassBegin(self[])
method componentComplete*(self: VirtualQQuickPaintedItem): void {.base.} =
  QQuickPaintedItemcomponentComplete(self[])
method keyPressEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickPaintedItemkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickPaintedItemkeyReleaseEvent(self[], event)
method inputMethodEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QQuickPaintedIteminputMethodEvent(self[], param1)
method focusInEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickPaintedItemfocusInEvent(self[], param1)
method focusOutEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickPaintedItemfocusOutEvent(self[], param1)
method mousePressEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickPaintedItemmousePressEvent(self[], event)
method mouseMoveEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickPaintedItemmouseMoveEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickPaintedItemmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickPaintedItemmouseDoubleClickEvent(self[], event)
method mouseUngrabEvent*(self: VirtualQQuickPaintedItem): void {.base.} =
  QQuickPaintedItemmouseUngrabEvent(self[])
method touchUngrabEvent*(self: VirtualQQuickPaintedItem): void {.base.} =
  QQuickPaintedItemtouchUngrabEvent(self[])
method wheelEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QQuickPaintedItemwheelEvent(self[], event)
method touchEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QTouchEvent): void {.base.} =
  QQuickPaintedItemtouchEvent(self[], event)
method hoverEnterEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickPaintedItemhoverEnterEvent(self[], event)
method hoverMoveEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickPaintedItemhoverMoveEvent(self[], event)
method hoverLeaveEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickPaintedItemhoverLeaveEvent(self[], event)
method dragEnterEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QQuickPaintedItemdragEnterEvent(self[], param1)
method dragMoveEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QQuickPaintedItemdragMoveEvent(self[], param1)
method dragLeaveEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QQuickPaintedItemdragLeaveEvent(self[], param1)
method dropEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QDropEvent): void {.base.} =
  QQuickPaintedItemdropEvent(self[], param1)
method childMouseEventFilter*(self: VirtualQQuickPaintedItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickPaintedItemchildMouseEventFilter(self[], param1, param2)
method windowDeactivateEvent*(self: VirtualQQuickPaintedItem): void {.base.} =
  QQuickPaintedItemwindowDeactivateEvent(self[])
method geometryChanged*(self: VirtualQQuickPaintedItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.base.} =
  QQuickPaintedItemgeometryChanged(self[], newGeometry, oldGeometry)
method updatePolish*(self: VirtualQQuickPaintedItem): void {.base.} =
  QQuickPaintedItemupdatePolish(self[])
method eventFilter*(self: VirtualQQuickPaintedItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickPaintedItemeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQQuickPaintedItem, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickPaintedItemtimerEvent(self[], event)
method childEvent*(self: VirtualQQuickPaintedItem, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickPaintedItemchildEvent(self[], event)
method customEvent*(self: VirtualQQuickPaintedItem, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickPaintedItemcustomEvent(self[], event)
method connectNotify*(self: VirtualQQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickPaintedItemconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickPaintedItemdisconnectNotify(self[], signal)

proc fcQQuickPaintedItem_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQuickPaintedItem_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickPaintedItem_method_callback_paint(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.paint(slotval1)

proc fcQQuickPaintedItem_method_callback_isTextureProvider(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  var virtualReturn = inst.isTextureProvider()
  virtualReturn

proc fcQQuickPaintedItem_method_callback_textureProvider(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  var virtualReturn = inst.textureProvider()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_method_callback_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1, owned: false)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2, owned: false)
  var virtualReturn = inst.updatePaintNode(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_method_callback_releaseResources(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  inst.releaseResources()

proc fcQQuickPaintedItem_method_callback_itemChange(self: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2, owned: false)
  inst.itemChange(slotval1, slotval2)

proc fcQQuickPaintedItem_method_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  var virtualReturn = inst.boundingRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_method_callback_clipRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  var virtualReturn = inst.clipRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_method_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = inst.contains(slotval1)
  virtualReturn

proc fcQQuickPaintedItem_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickPaintedItem_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQuickPaintedItem_method_callback_classBegin(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  inst.classBegin()

proc fcQQuickPaintedItem_method_callback_componentComplete(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  inst.componentComplete()

proc fcQQuickPaintedItem_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_mouseUngrabEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  inst.mouseUngrabEvent()

proc fcQQuickPaintedItem_method_callback_touchUngrabEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  inst.touchUngrabEvent()

proc fcQQuickPaintedItem_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_touchEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QTouchEvent(h: event, owned: false)
  inst.touchEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverEnterEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverMoveEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverLeaveEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  inst.dropEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.childMouseEventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQuickPaintedItem_method_callback_windowDeactivateEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  inst.windowDeactivateEvent()

proc fcQQuickPaintedItem_method_callback_geometryChanged(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry, owned: false)
  inst.geometryChanged(slotval1, slotval2)

proc fcQQuickPaintedItem_method_callback_updatePolish(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  inst.updatePolish()

proc fcQQuickPaintedItem_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQuickPaintedItem_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQuickPaintedItem_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQuickPaintedItem_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickPaintedItem](fcQQuickPaintedItem_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc isComponentComplete*(self: gen_qquickpainteditem_types.QQuickPaintedItem): bool =
  fcQQuickPaintedItem_protectedbase_isComponentComplete(self.h)

proc updateInputMethod*(self: gen_qquickpainteditem_types.QQuickPaintedItem): void =
  fcQQuickPaintedItem_protectedbase_updateInputMethod(self.h)

proc widthValid*(self: gen_qquickpainteditem_types.QQuickPaintedItem): bool =
  fcQQuickPaintedItem_protectedbase_widthValid(self.h)

proc heightValid*(self: gen_qquickpainteditem_types.QQuickPaintedItem): bool =
  fcQQuickPaintedItem_protectedbase_heightValid(self.h)

proc setImplicitSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: float64, param2: float64): void =
  fcQQuickPaintedItem_protectedbase_setImplicitSize(self.h, param1, param2)

proc sender*(self: gen_qquickpainteditem_types.QQuickPaintedItem): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickPaintedItem_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickpainteditem_types.QQuickPaintedItem): cint =
  fcQQuickPaintedItem_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: cstring): cint =
  fcQQuickPaintedItem_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickPaintedItem_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem,
    vtbl: ref QQuickPaintedItemVTable = nil): gen_qquickpainteditem_types.QQuickPaintedItem =
  let vtbl = if vtbl == nil: new QQuickPaintedItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickPaintedItem_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickPaintedItem_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickPaintedItem_vtable_callback_metacall
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = fcQQuickPaintedItem_vtable_callback_paint
  if not isNil(vtbl[].isTextureProvider):
    vtbl[].vtbl.isTextureProvider = fcQQuickPaintedItem_vtable_callback_isTextureProvider
  if not isNil(vtbl[].textureProvider):
    vtbl[].vtbl.textureProvider = fcQQuickPaintedItem_vtable_callback_textureProvider
  if not isNil(vtbl[].updatePaintNode):
    vtbl[].vtbl.updatePaintNode = fcQQuickPaintedItem_vtable_callback_updatePaintNode
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = fcQQuickPaintedItem_vtable_callback_releaseResources
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = fcQQuickPaintedItem_vtable_callback_itemChange
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = fcQQuickPaintedItem_vtable_callback_boundingRect
  if not isNil(vtbl[].clipRect):
    vtbl[].vtbl.clipRect = fcQQuickPaintedItem_vtable_callback_clipRect
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = fcQQuickPaintedItem_vtable_callback_contains
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQQuickPaintedItem_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickPaintedItem_vtable_callback_event
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = fcQQuickPaintedItem_vtable_callback_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = fcQQuickPaintedItem_vtable_callback_componentComplete
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQQuickPaintedItem_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQQuickPaintedItem_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQQuickPaintedItem_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQQuickPaintedItem_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQQuickPaintedItem_vtable_callback_focusOutEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQQuickPaintedItem_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQQuickPaintedItem_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQQuickPaintedItem_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQQuickPaintedItem_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = fcQQuickPaintedItem_vtable_callback_mouseUngrabEvent
  if not isNil(vtbl[].touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = fcQQuickPaintedItem_vtable_callback_touchUngrabEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQQuickPaintedItem_vtable_callback_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQQuickPaintedItem_vtable_callback_touchEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = fcQQuickPaintedItem_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = fcQQuickPaintedItem_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = fcQQuickPaintedItem_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQQuickPaintedItem_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQQuickPaintedItem_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQQuickPaintedItem_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQQuickPaintedItem_vtable_callback_dropEvent
  if not isNil(vtbl[].childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = fcQQuickPaintedItem_vtable_callback_childMouseEventFilter
  if not isNil(vtbl[].windowDeactivateEvent):
    vtbl[].vtbl.windowDeactivateEvent = fcQQuickPaintedItem_vtable_callback_windowDeactivateEvent
  if not isNil(vtbl[].geometryChanged):
    vtbl[].vtbl.geometryChanged = fcQQuickPaintedItem_vtable_callback_geometryChanged
  if not isNil(vtbl[].updatePolish):
    vtbl[].vtbl.updatePolish = fcQQuickPaintedItem_vtable_callback_updatePolish
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickPaintedItem_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickPaintedItem_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickPaintedItem_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickPaintedItem_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickPaintedItem_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickPaintedItem_vtable_callback_disconnectNotify
  gen_qquickpainteditem_types.QQuickPaintedItem(h: fcQQuickPaintedItem_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem,
    parent: gen_qquickitem_types.QQuickItem,
    vtbl: ref QQuickPaintedItemVTable = nil): gen_qquickpainteditem_types.QQuickPaintedItem =
  let vtbl = if vtbl == nil: new QQuickPaintedItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickPaintedItemVTable](fcQQuickPaintedItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickPaintedItem_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickPaintedItem_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickPaintedItem_vtable_callback_metacall
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = fcQQuickPaintedItem_vtable_callback_paint
  if not isNil(vtbl[].isTextureProvider):
    vtbl[].vtbl.isTextureProvider = fcQQuickPaintedItem_vtable_callback_isTextureProvider
  if not isNil(vtbl[].textureProvider):
    vtbl[].vtbl.textureProvider = fcQQuickPaintedItem_vtable_callback_textureProvider
  if not isNil(vtbl[].updatePaintNode):
    vtbl[].vtbl.updatePaintNode = fcQQuickPaintedItem_vtable_callback_updatePaintNode
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = fcQQuickPaintedItem_vtable_callback_releaseResources
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = fcQQuickPaintedItem_vtable_callback_itemChange
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = fcQQuickPaintedItem_vtable_callback_boundingRect
  if not isNil(vtbl[].clipRect):
    vtbl[].vtbl.clipRect = fcQQuickPaintedItem_vtable_callback_clipRect
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = fcQQuickPaintedItem_vtable_callback_contains
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQQuickPaintedItem_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickPaintedItem_vtable_callback_event
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = fcQQuickPaintedItem_vtable_callback_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = fcQQuickPaintedItem_vtable_callback_componentComplete
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQQuickPaintedItem_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQQuickPaintedItem_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQQuickPaintedItem_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQQuickPaintedItem_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQQuickPaintedItem_vtable_callback_focusOutEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQQuickPaintedItem_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQQuickPaintedItem_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQQuickPaintedItem_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQQuickPaintedItem_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = fcQQuickPaintedItem_vtable_callback_mouseUngrabEvent
  if not isNil(vtbl[].touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = fcQQuickPaintedItem_vtable_callback_touchUngrabEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQQuickPaintedItem_vtable_callback_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQQuickPaintedItem_vtable_callback_touchEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = fcQQuickPaintedItem_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = fcQQuickPaintedItem_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = fcQQuickPaintedItem_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQQuickPaintedItem_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQQuickPaintedItem_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQQuickPaintedItem_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQQuickPaintedItem_vtable_callback_dropEvent
  if not isNil(vtbl[].childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = fcQQuickPaintedItem_vtable_callback_childMouseEventFilter
  if not isNil(vtbl[].windowDeactivateEvent):
    vtbl[].vtbl.windowDeactivateEvent = fcQQuickPaintedItem_vtable_callback_windowDeactivateEvent
  if not isNil(vtbl[].geometryChanged):
    vtbl[].vtbl.geometryChanged = fcQQuickPaintedItem_vtable_callback_geometryChanged
  if not isNil(vtbl[].updatePolish):
    vtbl[].vtbl.updatePolish = fcQQuickPaintedItem_vtable_callback_updatePolish
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickPaintedItem_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickPaintedItem_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickPaintedItem_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickPaintedItem_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickPaintedItem_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickPaintedItem_vtable_callback_disconnectNotify
  gen_qquickpainteditem_types.QQuickPaintedItem(h: fcQQuickPaintedItem_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQQuickPaintedItem_mvtbl = cQQuickPaintedItemVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickPaintedItem()[])](self.fcQQuickPaintedItem_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQuickPaintedItem_method_callback_metaObject,
  metacast: fcQQuickPaintedItem_method_callback_metacast,
  metacall: fcQQuickPaintedItem_method_callback_metacall,
  paint: fcQQuickPaintedItem_method_callback_paint,
  isTextureProvider: fcQQuickPaintedItem_method_callback_isTextureProvider,
  textureProvider: fcQQuickPaintedItem_method_callback_textureProvider,
  updatePaintNode: fcQQuickPaintedItem_method_callback_updatePaintNode,
  releaseResources: fcQQuickPaintedItem_method_callback_releaseResources,
  itemChange: fcQQuickPaintedItem_method_callback_itemChange,
  boundingRect: fcQQuickPaintedItem_method_callback_boundingRect,
  clipRect: fcQQuickPaintedItem_method_callback_clipRect,
  contains: fcQQuickPaintedItem_method_callback_contains,
  inputMethodQuery: fcQQuickPaintedItem_method_callback_inputMethodQuery,
  event: fcQQuickPaintedItem_method_callback_event,
  classBegin: fcQQuickPaintedItem_method_callback_classBegin,
  componentComplete: fcQQuickPaintedItem_method_callback_componentComplete,
  keyPressEvent: fcQQuickPaintedItem_method_callback_keyPressEvent,
  keyReleaseEvent: fcQQuickPaintedItem_method_callback_keyReleaseEvent,
  inputMethodEvent: fcQQuickPaintedItem_method_callback_inputMethodEvent,
  focusInEvent: fcQQuickPaintedItem_method_callback_focusInEvent,
  focusOutEvent: fcQQuickPaintedItem_method_callback_focusOutEvent,
  mousePressEvent: fcQQuickPaintedItem_method_callback_mousePressEvent,
  mouseMoveEvent: fcQQuickPaintedItem_method_callback_mouseMoveEvent,
  mouseReleaseEvent: fcQQuickPaintedItem_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQQuickPaintedItem_method_callback_mouseDoubleClickEvent,
  mouseUngrabEvent: fcQQuickPaintedItem_method_callback_mouseUngrabEvent,
  touchUngrabEvent: fcQQuickPaintedItem_method_callback_touchUngrabEvent,
  wheelEvent: fcQQuickPaintedItem_method_callback_wheelEvent,
  touchEvent: fcQQuickPaintedItem_method_callback_touchEvent,
  hoverEnterEvent: fcQQuickPaintedItem_method_callback_hoverEnterEvent,
  hoverMoveEvent: fcQQuickPaintedItem_method_callback_hoverMoveEvent,
  hoverLeaveEvent: fcQQuickPaintedItem_method_callback_hoverLeaveEvent,
  dragEnterEvent: fcQQuickPaintedItem_method_callback_dragEnterEvent,
  dragMoveEvent: fcQQuickPaintedItem_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQQuickPaintedItem_method_callback_dragLeaveEvent,
  dropEvent: fcQQuickPaintedItem_method_callback_dropEvent,
  childMouseEventFilter: fcQQuickPaintedItem_method_callback_childMouseEventFilter,
  windowDeactivateEvent: fcQQuickPaintedItem_method_callback_windowDeactivateEvent,
  geometryChanged: fcQQuickPaintedItem_method_callback_geometryChanged,
  updatePolish: fcQQuickPaintedItem_method_callback_updatePolish,
  eventFilter: fcQQuickPaintedItem_method_callback_eventFilter,
  timerEvent: fcQQuickPaintedItem_method_callback_timerEvent,
  childEvent: fcQQuickPaintedItem_method_callback_childEvent,
  customEvent: fcQQuickPaintedItem_method_callback_customEvent,
  connectNotify: fcQQuickPaintedItem_method_callback_connectNotify,
  disconnectNotify: fcQQuickPaintedItem_method_callback_disconnectNotify,
)
proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem,
    inst: VirtualQQuickPaintedItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickPaintedItem_new(addr(cQQuickPaintedItem_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem,
    parent: gen_qquickitem_types.QQuickItem,
    inst: VirtualQQuickPaintedItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickPaintedItem_new2(addr(cQQuickPaintedItem_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qquickpainteditem_types.QQuickPaintedItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickPaintedItem_staticMetaObject())
