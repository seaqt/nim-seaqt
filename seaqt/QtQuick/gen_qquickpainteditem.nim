import ./Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick") & " -fPIC"
{.compile("gen_qquickpainteditem.cpp", cflags).}


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

proc fcQQuickPaintedItem_metaObject(self: pointer, ): pointer {.importc: "QQuickPaintedItem_metaObject".}
proc fcQQuickPaintedItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickPaintedItem_metacast".}
proc fcQQuickPaintedItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickPaintedItem_metacall".}
proc fcQQuickPaintedItem_tr(s: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_tr".}
proc fcQQuickPaintedItem_update(self: pointer, ): void {.importc: "QQuickPaintedItem_update".}
proc fcQQuickPaintedItem_opaquePainting(self: pointer, ): bool {.importc: "QQuickPaintedItem_opaquePainting".}
proc fcQQuickPaintedItem_setOpaquePainting(self: pointer, opaque: bool): void {.importc: "QQuickPaintedItem_setOpaquePainting".}
proc fcQQuickPaintedItem_antialiasing(self: pointer, ): bool {.importc: "QQuickPaintedItem_antialiasing".}
proc fcQQuickPaintedItem_setAntialiasing(self: pointer, enable: bool): void {.importc: "QQuickPaintedItem_setAntialiasing".}
proc fcQQuickPaintedItem_mipmap(self: pointer, ): bool {.importc: "QQuickPaintedItem_mipmap".}
proc fcQQuickPaintedItem_setMipmap(self: pointer, enable: bool): void {.importc: "QQuickPaintedItem_setMipmap".}
proc fcQQuickPaintedItem_performanceHints(self: pointer, ): cint {.importc: "QQuickPaintedItem_performanceHints".}
proc fcQQuickPaintedItem_setPerformanceHint(self: pointer, hint: cint): void {.importc: "QQuickPaintedItem_setPerformanceHint".}
proc fcQQuickPaintedItem_setPerformanceHints(self: pointer, hints: cint): void {.importc: "QQuickPaintedItem_setPerformanceHints".}
proc fcQQuickPaintedItem_contentsBoundingRect(self: pointer, ): pointer {.importc: "QQuickPaintedItem_contentsBoundingRect".}
proc fcQQuickPaintedItem_contentsSize(self: pointer, ): pointer {.importc: "QQuickPaintedItem_contentsSize".}
proc fcQQuickPaintedItem_setContentsSize(self: pointer, contentsSize: pointer): void {.importc: "QQuickPaintedItem_setContentsSize".}
proc fcQQuickPaintedItem_resetContentsSize(self: pointer, ): void {.importc: "QQuickPaintedItem_resetContentsSize".}
proc fcQQuickPaintedItem_contentsScale(self: pointer, ): float64 {.importc: "QQuickPaintedItem_contentsScale".}
proc fcQQuickPaintedItem_setContentsScale(self: pointer, contentsScale: float64): void {.importc: "QQuickPaintedItem_setContentsScale".}
proc fcQQuickPaintedItem_textureSize(self: pointer, ): pointer {.importc: "QQuickPaintedItem_textureSize".}
proc fcQQuickPaintedItem_setTextureSize(self: pointer, size: pointer): void {.importc: "QQuickPaintedItem_setTextureSize".}
proc fcQQuickPaintedItem_fillColor(self: pointer, ): pointer {.importc: "QQuickPaintedItem_fillColor".}
proc fcQQuickPaintedItem_setFillColor(self: pointer, fillColor: pointer): void {.importc: "QQuickPaintedItem_setFillColor".}
proc fcQQuickPaintedItem_renderTarget(self: pointer, ): cint {.importc: "QQuickPaintedItem_renderTarget".}
proc fcQQuickPaintedItem_setRenderTarget(self: pointer, target: cint): void {.importc: "QQuickPaintedItem_setRenderTarget".}
proc fcQQuickPaintedItem_paint(self: pointer, painter: pointer): void {.importc: "QQuickPaintedItem_paint".}
proc fcQQuickPaintedItem_isTextureProvider(self: pointer, ): bool {.importc: "QQuickPaintedItem_isTextureProvider".}
proc fcQQuickPaintedItem_textureProvider(self: pointer, ): pointer {.importc: "QQuickPaintedItem_textureProvider".}
proc fcQQuickPaintedItem_fillColorChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_fillColorChanged".}
proc fcQQuickPaintedItem_connect_fillColorChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickPaintedItem_connect_fillColorChanged".}
proc fcQQuickPaintedItem_contentsSizeChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_contentsSizeChanged".}
proc fcQQuickPaintedItem_connect_contentsSizeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickPaintedItem_connect_contentsSizeChanged".}
proc fcQQuickPaintedItem_contentsScaleChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_contentsScaleChanged".}
proc fcQQuickPaintedItem_connect_contentsScaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickPaintedItem_connect_contentsScaleChanged".}
proc fcQQuickPaintedItem_renderTargetChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_renderTargetChanged".}
proc fcQQuickPaintedItem_connect_renderTargetChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickPaintedItem_connect_renderTargetChanged".}
proc fcQQuickPaintedItem_textureSizeChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_textureSizeChanged".}
proc fcQQuickPaintedItem_connect_textureSizeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickPaintedItem_connect_textureSizeChanged".}
proc fcQQuickPaintedItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_tr2".}
proc fcQQuickPaintedItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickPaintedItem_tr3".}
proc fcQQuickPaintedItem_update1(self: pointer, rect: pointer): void {.importc: "QQuickPaintedItem_update1".}
proc fcQQuickPaintedItem_setPerformanceHint2(self: pointer, hint: cint, enabled: bool): void {.importc: "QQuickPaintedItem_setPerformanceHint2".}
type cQQuickPaintedItemVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQQuickPaintedItemVTable, self: ptr cQQuickPaintedItem) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  isTextureProvider*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  textureProvider*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  updatePaintNode*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): pointer {.cdecl, raises: [], gcsafe.}
  releaseResources*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, param1: cint, param2: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  clipRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  geometryChange*: proc(vtbl, self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl, raises: [], gcsafe.}
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
  updatePolish*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickPaintedItem_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickPaintedItem_virtualbase_metaObject".}
proc fcQQuickPaintedItem_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickPaintedItem_virtualbase_metacast".}
proc fcQQuickPaintedItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickPaintedItem_virtualbase_metacall".}
proc fcQQuickPaintedItem_virtualbase_isTextureProvider(self: pointer, ): bool {.importc: "QQuickPaintedItem_virtualbase_isTextureProvider".}
proc fcQQuickPaintedItem_virtualbase_textureProvider(self: pointer, ): pointer {.importc: "QQuickPaintedItem_virtualbase_textureProvider".}
proc fcQQuickPaintedItem_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QQuickPaintedItem_virtualbase_updatePaintNode".}
proc fcQQuickPaintedItem_virtualbase_releaseResources(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_releaseResources".}
proc fcQQuickPaintedItem_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void {.importc: "QQuickPaintedItem_virtualbase_itemChange".}
proc fcQQuickPaintedItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QQuickPaintedItem_virtualbase_boundingRect".}
proc fcQQuickPaintedItem_virtualbase_clipRect(self: pointer, ): pointer {.importc: "QQuickPaintedItem_virtualbase_clipRect".}
proc fcQQuickPaintedItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_contains".}
proc fcQQuickPaintedItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QQuickPaintedItem_virtualbase_inputMethodQuery".}
proc fcQQuickPaintedItem_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_event".}
proc fcQQuickPaintedItem_virtualbase_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.importc: "QQuickPaintedItem_virtualbase_geometryChange".}
proc fcQQuickPaintedItem_virtualbase_classBegin(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_classBegin".}
proc fcQQuickPaintedItem_virtualbase_componentComplete(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_componentComplete".}
proc fcQQuickPaintedItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_keyPressEvent".}
proc fcQQuickPaintedItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_keyReleaseEvent".}
proc fcQQuickPaintedItem_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_inputMethodEvent".}
proc fcQQuickPaintedItem_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_focusInEvent".}
proc fcQQuickPaintedItem_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_focusOutEvent".}
proc fcQQuickPaintedItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mousePressEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mouseMoveEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mouseReleaseEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseUngrabEvent(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_mouseUngrabEvent".}
proc fcQQuickPaintedItem_virtualbase_touchUngrabEvent(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_touchUngrabEvent".}
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
proc fcQQuickPaintedItem_virtualbase_updatePolish(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_updatePolish".}
proc fcQQuickPaintedItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_eventFilter".}
proc fcQQuickPaintedItem_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_timerEvent".}
proc fcQQuickPaintedItem_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_childEvent".}
proc fcQQuickPaintedItem_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_customEvent".}
proc fcQQuickPaintedItem_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickPaintedItem_virtualbase_connectNotify".}
proc fcQQuickPaintedItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickPaintedItem_virtualbase_disconnectNotify".}
proc fcQQuickPaintedItem_protectedbase_isComponentComplete(self: pointer, ): bool {.importc: "QQuickPaintedItem_protectedbase_isComponentComplete".}
proc fcQQuickPaintedItem_protectedbase_updateInputMethod(self: pointer, ): void {.importc: "QQuickPaintedItem_protectedbase_updateInputMethod".}
proc fcQQuickPaintedItem_protectedbase_widthValid(self: pointer, ): bool {.importc: "QQuickPaintedItem_protectedbase_widthValid".}
proc fcQQuickPaintedItem_protectedbase_heightValid(self: pointer, ): bool {.importc: "QQuickPaintedItem_protectedbase_heightValid".}
proc fcQQuickPaintedItem_protectedbase_setImplicitSize(self: pointer, param1: float64, param2: float64): void {.importc: "QQuickPaintedItem_protectedbase_setImplicitSize".}
proc fcQQuickPaintedItem_protectedbase_sender(self: pointer, ): pointer {.importc: "QQuickPaintedItem_protectedbase_sender".}
proc fcQQuickPaintedItem_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQuickPaintedItem_protectedbase_senderSignalIndex".}
proc fcQQuickPaintedItem_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickPaintedItem_protectedbase_receivers".}
proc fcQQuickPaintedItem_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickPaintedItem_protectedbase_isSignalConnected".}
proc fcQQuickPaintedItem_new(vtbl: pointer, ): ptr cQQuickPaintedItem {.importc: "QQuickPaintedItem_new".}
proc fcQQuickPaintedItem_new2(vtbl: pointer, parent: pointer): ptr cQQuickPaintedItem {.importc: "QQuickPaintedItem_new2".}
proc fcQQuickPaintedItem_staticMetaObject(): pointer {.importc: "QQuickPaintedItem_staticMetaObject".}

proc metaObject*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickPaintedItem_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cstring): pointer =
  fcQQuickPaintedItem_metacast(self.h, param1)

proc metacall*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickPaintedItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring): string =
  let v_ms = fcQQuickPaintedItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc update*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_update(self.h)

proc opaquePainting*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_opaquePainting(self.h)

proc setOpaquePainting*(self: gen_qquickpainteditem_types.QQuickPaintedItem, opaque: bool): void =
  fcQQuickPaintedItem_setOpaquePainting(self.h, opaque)

proc antialiasing*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_antialiasing(self.h)

proc setAntialiasing*(self: gen_qquickpainteditem_types.QQuickPaintedItem, enable: bool): void =
  fcQQuickPaintedItem_setAntialiasing(self.h, enable)

proc mipmap*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_mipmap(self.h)

proc setMipmap*(self: gen_qquickpainteditem_types.QQuickPaintedItem, enable: bool): void =
  fcQQuickPaintedItem_setMipmap(self.h, enable)

proc performanceHints*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): cint =
  cint(fcQQuickPaintedItem_performanceHints(self.h))

proc setPerformanceHint*(self: gen_qquickpainteditem_types.QQuickPaintedItem, hint: cint): void =
  fcQQuickPaintedItem_setPerformanceHint(self.h, cint(hint))

proc setPerformanceHints*(self: gen_qquickpainteditem_types.QQuickPaintedItem, hints: cint): void =
  fcQQuickPaintedItem_setPerformanceHints(self.h, cint(hints))

proc contentsBoundingRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickPaintedItem_contentsBoundingRect(self.h), owned: true)

proc contentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickPaintedItem_contentsSize(self.h), owned: true)

proc setContentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, contentsSize: gen_qsize_types.QSize): void =
  fcQQuickPaintedItem_setContentsSize(self.h, contentsSize.h)

proc resetContentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_resetContentsSize(self.h)

proc contentsScale*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): float64 =
  fcQQuickPaintedItem_contentsScale(self.h)

proc setContentsScale*(self: gen_qquickpainteditem_types.QQuickPaintedItem, contentsScale: float64): void =
  fcQQuickPaintedItem_setContentsScale(self.h, contentsScale)

proc textureSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickPaintedItem_textureSize(self.h), owned: true)

proc setTextureSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, size: gen_qsize_types.QSize): void =
  fcQQuickPaintedItem_setTextureSize(self.h, size.h)

proc fillColor*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQQuickPaintedItem_fillColor(self.h), owned: true)

proc setFillColor*(self: gen_qquickpainteditem_types.QQuickPaintedItem, fillColor: gen_qcolor_types.QColor): void =
  fcQQuickPaintedItem_setFillColor(self.h, fillColor.h)

proc renderTarget*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): cint =
  cint(fcQQuickPaintedItem_renderTarget(self.h))

proc setRenderTarget*(self: gen_qquickpainteditem_types.QQuickPaintedItem, target: cint): void =
  fcQQuickPaintedItem_setRenderTarget(self.h, cint(target))

proc paint*(self: gen_qquickpainteditem_types.QQuickPaintedItem, painter: gen_qpainter_types.QPainter): void =
  fcQQuickPaintedItem_paint(self.h, painter.h)

proc isTextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_isTextureProvider(self.h)

proc textureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickPaintedItem_textureProvider(self.h), owned: false)

proc fillColorChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_fillColorChanged(self.h)

type QQuickPaintedItemfillColorChangedSlot* = proc()
proc miqt_exec_callback_cQQuickPaintedItem_fillColorChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickPaintedItemfillColorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickPaintedItem_fillColorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickPaintedItemfillColorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfillColorChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemfillColorChangedSlot) =
  var tmp = new QQuickPaintedItemfillColorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_fillColorChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickPaintedItem_fillColorChanged, miqt_exec_callback_cQQuickPaintedItem_fillColorChanged_release)

proc contentsSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_contentsSizeChanged(self.h)

type QQuickPaintedItemcontentsSizeChangedSlot* = proc()
proc miqt_exec_callback_cQQuickPaintedItem_contentsSizeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickPaintedItemcontentsSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickPaintedItem_contentsSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickPaintedItemcontentsSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontentsSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemcontentsSizeChangedSlot) =
  var tmp = new QQuickPaintedItemcontentsSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_contentsSizeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickPaintedItem_contentsSizeChanged, miqt_exec_callback_cQQuickPaintedItem_contentsSizeChanged_release)

proc contentsScaleChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_contentsScaleChanged(self.h)

type QQuickPaintedItemcontentsScaleChangedSlot* = proc()
proc miqt_exec_callback_cQQuickPaintedItem_contentsScaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickPaintedItemcontentsScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickPaintedItem_contentsScaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickPaintedItemcontentsScaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontentsScaleChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemcontentsScaleChangedSlot) =
  var tmp = new QQuickPaintedItemcontentsScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_contentsScaleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickPaintedItem_contentsScaleChanged, miqt_exec_callback_cQQuickPaintedItem_contentsScaleChanged_release)

proc renderTargetChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_renderTargetChanged(self.h)

type QQuickPaintedItemrenderTargetChangedSlot* = proc()
proc miqt_exec_callback_cQQuickPaintedItem_renderTargetChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickPaintedItemrenderTargetChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickPaintedItem_renderTargetChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickPaintedItemrenderTargetChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrenderTargetChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemrenderTargetChangedSlot) =
  var tmp = new QQuickPaintedItemrenderTargetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_renderTargetChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickPaintedItem_renderTargetChanged, miqt_exec_callback_cQQuickPaintedItem_renderTargetChanged_release)

proc textureSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_textureSizeChanged(self.h)

type QQuickPaintedItemtextureSizeChangedSlot* = proc()
proc miqt_exec_callback_cQQuickPaintedItem_textureSizeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickPaintedItemtextureSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickPaintedItem_textureSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickPaintedItemtextureSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontextureSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemtextureSizeChangedSlot) =
  var tmp = new QQuickPaintedItemtextureSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_textureSizeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickPaintedItem_textureSizeChanged, miqt_exec_callback_cQQuickPaintedItem_textureSizeChanged_release)

proc tr*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring, c: cstring): string =
  let v_ms = fcQQuickPaintedItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickPaintedItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QQuickPaintedItemgeometryChangeProc* = proc(self: QQuickPaintedItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
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
  geometryChange*: QQuickPaintedItemgeometryChangeProc
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
  updatePolish*: QQuickPaintedItemupdatePolishProc
  eventFilter*: QQuickPaintedItemeventFilterProc
  timerEvent*: QQuickPaintedItemtimerEventProc
  childEvent*: QQuickPaintedItemchildEventProc
  customEvent*: QQuickPaintedItemcustomEventProc
  connectNotify*: QQuickPaintedItemconnectNotifyProc
  disconnectNotify*: QQuickPaintedItemdisconnectNotifyProc
proc QQuickPaintedItemmetaObject*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickPaintedItem_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQQuickPaintedItem_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickPaintedItemmetacast*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cstring): pointer =
  fcQQuickPaintedItem_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickPaintedItem_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickPaintedItemmetacall*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickPaintedItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickPaintedItem_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQQuickPaintedItem_paint(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].paint(self, slotval1)

proc QQuickPaintedItemisTextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_virtualbase_isTextureProvider(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_isTextureProvider(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  var virtualReturn = vtbl[].isTextureProvider(self)
  virtualReturn

proc QQuickPaintedItemtextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickPaintedItem_virtualbase_textureProvider(self.h), owned: false)

proc miqt_exec_callback_cQQuickPaintedItem_textureProvider(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  var virtualReturn = vtbl[].textureProvider(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickPaintedItemupdatePaintNode*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQQuickPaintedItem_virtualbase_updatePaintNode(self.h, param1.h, param2.h), owned: false)

proc miqt_exec_callback_cQQuickPaintedItem_updatePaintNode(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1, owned: false)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2, owned: false)
  var virtualReturn = vtbl[].updatePaintNode(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickPaintedItemreleaseResources*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_releaseResources(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_releaseResources(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].releaseResources(self)

proc QQuickPaintedItemitemChange*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void =
  fcQQuickPaintedItem_virtualbase_itemChange(self.h, cint(param1), param2.h)

proc miqt_exec_callback_cQQuickPaintedItem_itemChange(vtbl: pointer, self: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2, owned: false)
  vtbl[].itemChange(self, slotval1, slotval2)

proc QQuickPaintedItemboundingRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickPaintedItem_virtualbase_boundingRect(self.h), owned: true)

proc miqt_exec_callback_cQQuickPaintedItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickPaintedItemclipRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickPaintedItem_virtualbase_clipRect(self.h), owned: true)

proc miqt_exec_callback_cQQuickPaintedItem_clipRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  var virtualReturn = vtbl[].clipRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickPaintedItemcontains*(self: gen_qquickpainteditem_types.QQuickPaintedItem, point: gen_qpoint_types.QPointF): bool =
  fcQQuickPaintedItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQQuickPaintedItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QQuickPaintedIteminputMethodQuery*(self: gen_qquickpainteditem_types.QQuickPaintedItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQuickPaintedItem_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc miqt_exec_callback_cQQuickPaintedItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickPaintedItemevent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQuickPaintedItem_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickPaintedItemgeometryChange*(self: gen_qquickpainteditem_types.QQuickPaintedItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void =
  fcQQuickPaintedItem_virtualbase_geometryChange(self.h, newGeometry.h, oldGeometry.h)

proc miqt_exec_callback_cQQuickPaintedItem_geometryChange(vtbl: pointer, self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry, owned: false)
  vtbl[].geometryChange(self, slotval1, slotval2)

proc QQuickPaintedItemclassBegin*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_classBegin(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_classBegin(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].classBegin(self)

proc QQuickPaintedItemcomponentComplete*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_componentComplete(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_componentComplete(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].componentComplete(self)

proc QQuickPaintedItemkeyPressEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickPaintedItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QQuickPaintedItemkeyReleaseEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickPaintedItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QQuickPaintedIteminputMethodEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQQuickPaintedItem_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QQuickPaintedItemfocusInEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickPaintedItem_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QQuickPaintedItemfocusOutEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickPaintedItem_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QQuickPaintedItemmousePressEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QQuickPaintedItemmouseMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QQuickPaintedItemmouseReleaseEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QQuickPaintedItemmouseDoubleClickEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QQuickPaintedItemmouseUngrabEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_mouseUngrabEvent(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_mouseUngrabEvent(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].mouseUngrabEvent(self)

proc QQuickPaintedItemtouchUngrabEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_touchUngrabEvent(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_touchUngrabEvent(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].touchUngrabEvent(self)

proc QQuickPaintedItemwheelEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QWheelEvent): void =
  fcQQuickPaintedItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QQuickPaintedItemtouchEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QTouchEvent): void =
  fcQQuickPaintedItem_virtualbase_touchEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_touchEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: event, owned: false)
  vtbl[].touchEvent(self, slotval1)

proc QQuickPaintedItemhoverEnterEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickPaintedItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QQuickPaintedItemhoverMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickPaintedItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QQuickPaintedItemhoverLeaveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickPaintedItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QQuickPaintedItemdragEnterEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQQuickPaintedItem_virtualbase_dragEnterEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_dragEnterEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QQuickPaintedItemdragMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQQuickPaintedItem_virtualbase_dragMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_dragMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QQuickPaintedItemdragLeaveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQQuickPaintedItem_virtualbase_dragLeaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_dragLeaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QQuickPaintedItemdropEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDropEvent): void =
  fcQQuickPaintedItem_virtualbase_dropEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_dropEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QQuickPaintedItemchildMouseEventFilter*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool =
  fcQQuickPaintedItem_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQQuickPaintedItem_childMouseEventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].childMouseEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickPaintedItemupdatePolish*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_updatePolish(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_updatePolish(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].updatePolish(self)

proc QQuickPaintedItemeventFilter*(self: gen_qquickpainteditem_types.QQuickPaintedItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickPaintedItem_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickPaintedItemtimerEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickPaintedItem_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQuickPaintedItemchildEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickPaintedItem_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQuickPaintedItemcustomEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickPaintedItem_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQuickPaintedItemconnectNotify*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickPaintedItem_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickPaintedItem_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQuickPaintedItemdisconnectNotify*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickPaintedItem_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickPaintedItem_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickPaintedItem* {.inheritable.} = ref object of QQuickPaintedItem
  vtbl*: cQQuickPaintedItemVTable
method metaObject*(self: VirtualQQuickPaintedItem, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickPaintedItemmetaObject(self[])
proc miqt_exec_method_cQQuickPaintedItem_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQuickPaintedItem, param1: cstring): pointer {.base.} =
  QQuickPaintedItemmetacast(self[], param1)
proc miqt_exec_method_cQQuickPaintedItem_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQuickPaintedItem, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickPaintedItemmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQQuickPaintedItem_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method paint*(self: VirtualQQuickPaintedItem, painter: gen_qpainter_types.QPainter): void {.base.} =
  raiseAssert("missing implementation of QQuickPaintedItem_virtualbase_paint")
proc miqt_exec_method_cQQuickPaintedItem_paint(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.paint(slotval1)

method isTextureProvider*(self: VirtualQQuickPaintedItem, ): bool {.base.} =
  QQuickPaintedItemisTextureProvider(self[])
proc miqt_exec_method_cQQuickPaintedItem_isTextureProvider(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  var virtualReturn = vtbl.isTextureProvider()
  virtualReturn

method textureProvider*(self: VirtualQQuickPaintedItem, ): gen_qsgtextureprovider_types.QSGTextureProvider {.base.} =
  QQuickPaintedItemtextureProvider(self[])
proc miqt_exec_method_cQQuickPaintedItem_textureProvider(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  var virtualReturn = vtbl.textureProvider()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method updatePaintNode*(self: VirtualQQuickPaintedItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode {.base.} =
  QQuickPaintedItemupdatePaintNode(self[], param1, param2)
proc miqt_exec_method_cQQuickPaintedItem_updatePaintNode(vtbl: pointer, inst: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1, owned: false)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2, owned: false)
  var virtualReturn = vtbl.updatePaintNode(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method releaseResources*(self: VirtualQQuickPaintedItem, ): void {.base.} =
  QQuickPaintedItemreleaseResources(self[])
proc miqt_exec_method_cQQuickPaintedItem_releaseResources(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  vtbl.releaseResources()

method itemChange*(self: VirtualQQuickPaintedItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void {.base.} =
  QQuickPaintedItemitemChange(self[], param1, param2)
proc miqt_exec_method_cQQuickPaintedItem_itemChange(vtbl: pointer, inst: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2, owned: false)
  vtbl.itemChange(slotval1, slotval2)

method boundingRect*(self: VirtualQQuickPaintedItem, ): gen_qrect_types.QRectF {.base.} =
  QQuickPaintedItemboundingRect(self[])
proc miqt_exec_method_cQQuickPaintedItem_boundingRect(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  var virtualReturn = vtbl.boundingRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method clipRect*(self: VirtualQQuickPaintedItem, ): gen_qrect_types.QRectF {.base.} =
  QQuickPaintedItemclipRect(self[])
proc miqt_exec_method_cQQuickPaintedItem_clipRect(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  var virtualReturn = vtbl.clipRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method contains*(self: VirtualQQuickPaintedItem, point: gen_qpoint_types.QPointF): bool {.base.} =
  QQuickPaintedItemcontains(self[], point)
proc miqt_exec_method_cQQuickPaintedItem_contains(vtbl: pointer, inst: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl.contains(slotval1)
  virtualReturn

method inputMethodQuery*(self: VirtualQQuickPaintedItem, query: cint): gen_qvariant_types.QVariant {.base.} =
  QQuickPaintedIteminputMethodQuery(self[], query)
proc miqt_exec_method_cQQuickPaintedItem_inputMethodQuery(vtbl: pointer, inst: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = cint(query)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQQuickPaintedItem, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickPaintedItemevent(self[], param1)
proc miqt_exec_method_cQQuickPaintedItem_event(vtbl: pointer, inst: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method geometryChange*(self: VirtualQQuickPaintedItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.base.} =
  QQuickPaintedItemgeometryChange(self[], newGeometry, oldGeometry)
proc miqt_exec_method_cQQuickPaintedItem_geometryChange(vtbl: pointer, inst: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry, owned: false)
  vtbl.geometryChange(slotval1, slotval2)

method classBegin*(self: VirtualQQuickPaintedItem, ): void {.base.} =
  QQuickPaintedItemclassBegin(self[])
proc miqt_exec_method_cQQuickPaintedItem_classBegin(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  vtbl.classBegin()

method componentComplete*(self: VirtualQQuickPaintedItem, ): void {.base.} =
  QQuickPaintedItemcomponentComplete(self[])
proc miqt_exec_method_cQQuickPaintedItem_componentComplete(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  vtbl.componentComplete()

method keyPressEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickPaintedItemkeyPressEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickPaintedItemkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method inputMethodEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QQuickPaintedIteminputMethodEvent(self[], param1)
proc miqt_exec_method_cQQuickPaintedItem_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method focusInEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickPaintedItemfocusInEvent(self[], param1)
proc miqt_exec_method_cQQuickPaintedItem_focusInEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickPaintedItemfocusOutEvent(self[], param1)
proc miqt_exec_method_cQQuickPaintedItem_focusOutEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl.focusOutEvent(slotval1)

method mousePressEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickPaintedItemmousePressEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickPaintedItemmouseMoveEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickPaintedItemmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickPaintedItemmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method mouseUngrabEvent*(self: VirtualQQuickPaintedItem, ): void {.base.} =
  QQuickPaintedItemmouseUngrabEvent(self[])
proc miqt_exec_method_cQQuickPaintedItem_mouseUngrabEvent(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  vtbl.mouseUngrabEvent()

method touchUngrabEvent*(self: VirtualQQuickPaintedItem, ): void {.base.} =
  QQuickPaintedItemtouchUngrabEvent(self[])
proc miqt_exec_method_cQQuickPaintedItem_touchUngrabEvent(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  vtbl.touchUngrabEvent()

method wheelEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QQuickPaintedItemwheelEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method touchEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QTouchEvent): void {.base.} =
  QQuickPaintedItemtouchEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_touchEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QTouchEvent(h: event, owned: false)
  vtbl.touchEvent(slotval1)

method hoverEnterEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickPaintedItemhoverEnterEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_hoverEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl.hoverEnterEvent(slotval1)

method hoverMoveEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickPaintedItemhoverMoveEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_hoverMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl.hoverMoveEvent(slotval1)

method hoverLeaveEvent*(self: VirtualQQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickPaintedItemhoverLeaveEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_hoverLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl.hoverLeaveEvent(slotval1)

method dragEnterEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QQuickPaintedItemdragEnterEvent(self[], param1)
proc miqt_exec_method_cQQuickPaintedItem_dragEnterEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QQuickPaintedItemdragMoveEvent(self[], param1)
proc miqt_exec_method_cQQuickPaintedItem_dragMoveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QQuickPaintedItemdragLeaveEvent(self[], param1)
proc miqt_exec_method_cQQuickPaintedItem_dragLeaveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQQuickPaintedItem, param1: gen_qevent_types.QDropEvent): void {.base.} =
  QQuickPaintedItemdropEvent(self[], param1)
proc miqt_exec_method_cQQuickPaintedItem_dropEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  vtbl.dropEvent(slotval1)

method childMouseEventFilter*(self: VirtualQQuickPaintedItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickPaintedItemchildMouseEventFilter(self[], param1, param2)
proc miqt_exec_method_cQQuickPaintedItem_childMouseEventFilter(vtbl: pointer, inst: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl.childMouseEventFilter(slotval1, slotval2)
  virtualReturn

method updatePolish*(self: VirtualQQuickPaintedItem, ): void {.base.} =
  QQuickPaintedItemupdatePolish(self[])
proc miqt_exec_method_cQQuickPaintedItem_updatePolish(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  vtbl.updatePolish()

method eventFilter*(self: VirtualQQuickPaintedItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickPaintedItemeventFilter(self[], watched, event)
proc miqt_exec_method_cQQuickPaintedItem_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQuickPaintedItem, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickPaintedItemtimerEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQQuickPaintedItem, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickPaintedItemchildEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQQuickPaintedItem, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickPaintedItemcustomEvent(self[], event)
proc miqt_exec_method_cQQuickPaintedItem_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickPaintedItemconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickPaintedItem_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickPaintedItemdisconnectNotify(self[], signal)
proc miqt_exec_method_cQQuickPaintedItem_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQuickPaintedItem](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc isComponentComplete*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_protectedbase_isComponentComplete(self.h)

proc updateInputMethod*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_protectedbase_updateInputMethod(self.h)

proc widthValid*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_protectedbase_widthValid(self.h)

proc heightValid*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_protectedbase_heightValid(self.h)

proc setImplicitSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: float64, param2: float64): void =
  fcQQuickPaintedItem_protectedbase_setImplicitSize(self.h, param1, param2)

proc sender*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickPaintedItem_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): cint =
  fcQQuickPaintedItem_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: cstring): cint =
  fcQQuickPaintedItem_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickPaintedItem_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem,
    vtbl: ref QQuickPaintedItemVTable = nil): gen_qquickpainteditem_types.QQuickPaintedItem =
  let vtbl = if vtbl == nil: new QQuickPaintedItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickPaintedItemVTable, _: ptr cQQuickPaintedItem) {.cdecl.} =
    let vtbl = cast[ref QQuickPaintedItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickPaintedItem_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickPaintedItem_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickPaintedItem_metacall
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQQuickPaintedItem_paint
  if not isNil(vtbl[].isTextureProvider):
    vtbl[].vtbl.isTextureProvider = miqt_exec_callback_cQQuickPaintedItem_isTextureProvider
  if not isNil(vtbl[].textureProvider):
    vtbl[].vtbl.textureProvider = miqt_exec_callback_cQQuickPaintedItem_textureProvider
  if not isNil(vtbl[].updatePaintNode):
    vtbl[].vtbl.updatePaintNode = miqt_exec_callback_cQQuickPaintedItem_updatePaintNode
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = miqt_exec_callback_cQQuickPaintedItem_releaseResources
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQQuickPaintedItem_itemChange
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQQuickPaintedItem_boundingRect
  if not isNil(vtbl[].clipRect):
    vtbl[].vtbl.clipRect = miqt_exec_callback_cQQuickPaintedItem_clipRect
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQQuickPaintedItem_contains
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQQuickPaintedItem_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickPaintedItem_event
  if not isNil(vtbl[].geometryChange):
    vtbl[].vtbl.geometryChange = miqt_exec_callback_cQQuickPaintedItem_geometryChange
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = miqt_exec_callback_cQQuickPaintedItem_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = miqt_exec_callback_cQQuickPaintedItem_componentComplete
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickPaintedItem_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickPaintedItem_keyReleaseEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQQuickPaintedItem_inputMethodEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickPaintedItem_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickPaintedItem_focusOutEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickPaintedItem_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickPaintedItem_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickPaintedItem_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickPaintedItem_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = miqt_exec_callback_cQQuickPaintedItem_mouseUngrabEvent
  if not isNil(vtbl[].touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = miqt_exec_callback_cQQuickPaintedItem_touchUngrabEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickPaintedItem_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickPaintedItem_touchEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQQuickPaintedItem_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQQuickPaintedItem_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQQuickPaintedItem_hoverLeaveEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQQuickPaintedItem_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQQuickPaintedItem_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQQuickPaintedItem_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQQuickPaintedItem_dropEvent
  if not isNil(vtbl[].childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = miqt_exec_callback_cQQuickPaintedItem_childMouseEventFilter
  if not isNil(vtbl[].updatePolish):
    vtbl[].vtbl.updatePolish = miqt_exec_callback_cQQuickPaintedItem_updatePolish
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickPaintedItem_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickPaintedItem_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickPaintedItem_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickPaintedItem_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickPaintedItem_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickPaintedItem_disconnectNotify
  gen_qquickpainteditem_types.QQuickPaintedItem(h: fcQQuickPaintedItem_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem,
    parent: gen_qquickitem_types.QQuickItem,
    vtbl: ref QQuickPaintedItemVTable = nil): gen_qquickpainteditem_types.QQuickPaintedItem =
  let vtbl = if vtbl == nil: new QQuickPaintedItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickPaintedItemVTable, _: ptr cQQuickPaintedItem) {.cdecl.} =
    let vtbl = cast[ref QQuickPaintedItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickPaintedItem_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickPaintedItem_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickPaintedItem_metacall
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQQuickPaintedItem_paint
  if not isNil(vtbl[].isTextureProvider):
    vtbl[].vtbl.isTextureProvider = miqt_exec_callback_cQQuickPaintedItem_isTextureProvider
  if not isNil(vtbl[].textureProvider):
    vtbl[].vtbl.textureProvider = miqt_exec_callback_cQQuickPaintedItem_textureProvider
  if not isNil(vtbl[].updatePaintNode):
    vtbl[].vtbl.updatePaintNode = miqt_exec_callback_cQQuickPaintedItem_updatePaintNode
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = miqt_exec_callback_cQQuickPaintedItem_releaseResources
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQQuickPaintedItem_itemChange
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQQuickPaintedItem_boundingRect
  if not isNil(vtbl[].clipRect):
    vtbl[].vtbl.clipRect = miqt_exec_callback_cQQuickPaintedItem_clipRect
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQQuickPaintedItem_contains
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQQuickPaintedItem_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickPaintedItem_event
  if not isNil(vtbl[].geometryChange):
    vtbl[].vtbl.geometryChange = miqt_exec_callback_cQQuickPaintedItem_geometryChange
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = miqt_exec_callback_cQQuickPaintedItem_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = miqt_exec_callback_cQQuickPaintedItem_componentComplete
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickPaintedItem_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickPaintedItem_keyReleaseEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQQuickPaintedItem_inputMethodEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickPaintedItem_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickPaintedItem_focusOutEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickPaintedItem_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickPaintedItem_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickPaintedItem_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickPaintedItem_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = miqt_exec_callback_cQQuickPaintedItem_mouseUngrabEvent
  if not isNil(vtbl[].touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = miqt_exec_callback_cQQuickPaintedItem_touchUngrabEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickPaintedItem_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickPaintedItem_touchEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQQuickPaintedItem_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQQuickPaintedItem_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQQuickPaintedItem_hoverLeaveEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQQuickPaintedItem_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQQuickPaintedItem_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQQuickPaintedItem_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQQuickPaintedItem_dropEvent
  if not isNil(vtbl[].childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = miqt_exec_callback_cQQuickPaintedItem_childMouseEventFilter
  if not isNil(vtbl[].updatePolish):
    vtbl[].vtbl.updatePolish = miqt_exec_callback_cQQuickPaintedItem_updatePolish
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickPaintedItem_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickPaintedItem_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickPaintedItem_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickPaintedItem_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickPaintedItem_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickPaintedItem_disconnectNotify
  gen_qquickpainteditem_types.QQuickPaintedItem(h: fcQQuickPaintedItem_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem,
    vtbl: VirtualQQuickPaintedItem) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickPaintedItemVTable, _: ptr cQQuickPaintedItem) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQuickPaintedItem()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQuickPaintedItem_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQuickPaintedItem_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQuickPaintedItem_metacall
  vtbl[].vtbl.paint = miqt_exec_method_cQQuickPaintedItem_paint
  vtbl[].vtbl.isTextureProvider = miqt_exec_method_cQQuickPaintedItem_isTextureProvider
  vtbl[].vtbl.textureProvider = miqt_exec_method_cQQuickPaintedItem_textureProvider
  vtbl[].vtbl.updatePaintNode = miqt_exec_method_cQQuickPaintedItem_updatePaintNode
  vtbl[].vtbl.releaseResources = miqt_exec_method_cQQuickPaintedItem_releaseResources
  vtbl[].vtbl.itemChange = miqt_exec_method_cQQuickPaintedItem_itemChange
  vtbl[].vtbl.boundingRect = miqt_exec_method_cQQuickPaintedItem_boundingRect
  vtbl[].vtbl.clipRect = miqt_exec_method_cQQuickPaintedItem_clipRect
  vtbl[].vtbl.contains = miqt_exec_method_cQQuickPaintedItem_contains
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQQuickPaintedItem_inputMethodQuery
  vtbl[].vtbl.event = miqt_exec_method_cQQuickPaintedItem_event
  vtbl[].vtbl.geometryChange = miqt_exec_method_cQQuickPaintedItem_geometryChange
  vtbl[].vtbl.classBegin = miqt_exec_method_cQQuickPaintedItem_classBegin
  vtbl[].vtbl.componentComplete = miqt_exec_method_cQQuickPaintedItem_componentComplete
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQQuickPaintedItem_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQQuickPaintedItem_keyReleaseEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQQuickPaintedItem_inputMethodEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQQuickPaintedItem_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQQuickPaintedItem_focusOutEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQQuickPaintedItem_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQQuickPaintedItem_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQQuickPaintedItem_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQQuickPaintedItem_mouseDoubleClickEvent
  vtbl[].vtbl.mouseUngrabEvent = miqt_exec_method_cQQuickPaintedItem_mouseUngrabEvent
  vtbl[].vtbl.touchUngrabEvent = miqt_exec_method_cQQuickPaintedItem_touchUngrabEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQQuickPaintedItem_wheelEvent
  vtbl[].vtbl.touchEvent = miqt_exec_method_cQQuickPaintedItem_touchEvent
  vtbl[].vtbl.hoverEnterEvent = miqt_exec_method_cQQuickPaintedItem_hoverEnterEvent
  vtbl[].vtbl.hoverMoveEvent = miqt_exec_method_cQQuickPaintedItem_hoverMoveEvent
  vtbl[].vtbl.hoverLeaveEvent = miqt_exec_method_cQQuickPaintedItem_hoverLeaveEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQQuickPaintedItem_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQQuickPaintedItem_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQQuickPaintedItem_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQQuickPaintedItem_dropEvent
  vtbl[].vtbl.childMouseEventFilter = miqt_exec_method_cQQuickPaintedItem_childMouseEventFilter
  vtbl[].vtbl.updatePolish = miqt_exec_method_cQQuickPaintedItem_updatePolish
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQuickPaintedItem_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQuickPaintedItem_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQuickPaintedItem_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQuickPaintedItem_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQuickPaintedItem_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQuickPaintedItem_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQuickPaintedItem_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem,
    parent: gen_qquickitem_types.QQuickItem,
    vtbl: VirtualQQuickPaintedItem) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQuickPaintedItemVTable, _: ptr cQQuickPaintedItem) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQuickPaintedItem()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQuickPaintedItem, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQuickPaintedItem_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQuickPaintedItem_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQuickPaintedItem_metacall
  vtbl[].vtbl.paint = miqt_exec_method_cQQuickPaintedItem_paint
  vtbl[].vtbl.isTextureProvider = miqt_exec_method_cQQuickPaintedItem_isTextureProvider
  vtbl[].vtbl.textureProvider = miqt_exec_method_cQQuickPaintedItem_textureProvider
  vtbl[].vtbl.updatePaintNode = miqt_exec_method_cQQuickPaintedItem_updatePaintNode
  vtbl[].vtbl.releaseResources = miqt_exec_method_cQQuickPaintedItem_releaseResources
  vtbl[].vtbl.itemChange = miqt_exec_method_cQQuickPaintedItem_itemChange
  vtbl[].vtbl.boundingRect = miqt_exec_method_cQQuickPaintedItem_boundingRect
  vtbl[].vtbl.clipRect = miqt_exec_method_cQQuickPaintedItem_clipRect
  vtbl[].vtbl.contains = miqt_exec_method_cQQuickPaintedItem_contains
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQQuickPaintedItem_inputMethodQuery
  vtbl[].vtbl.event = miqt_exec_method_cQQuickPaintedItem_event
  vtbl[].vtbl.geometryChange = miqt_exec_method_cQQuickPaintedItem_geometryChange
  vtbl[].vtbl.classBegin = miqt_exec_method_cQQuickPaintedItem_classBegin
  vtbl[].vtbl.componentComplete = miqt_exec_method_cQQuickPaintedItem_componentComplete
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQQuickPaintedItem_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQQuickPaintedItem_keyReleaseEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQQuickPaintedItem_inputMethodEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQQuickPaintedItem_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQQuickPaintedItem_focusOutEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQQuickPaintedItem_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQQuickPaintedItem_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQQuickPaintedItem_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQQuickPaintedItem_mouseDoubleClickEvent
  vtbl[].vtbl.mouseUngrabEvent = miqt_exec_method_cQQuickPaintedItem_mouseUngrabEvent
  vtbl[].vtbl.touchUngrabEvent = miqt_exec_method_cQQuickPaintedItem_touchUngrabEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQQuickPaintedItem_wheelEvent
  vtbl[].vtbl.touchEvent = miqt_exec_method_cQQuickPaintedItem_touchEvent
  vtbl[].vtbl.hoverEnterEvent = miqt_exec_method_cQQuickPaintedItem_hoverEnterEvent
  vtbl[].vtbl.hoverMoveEvent = miqt_exec_method_cQQuickPaintedItem_hoverMoveEvent
  vtbl[].vtbl.hoverLeaveEvent = miqt_exec_method_cQQuickPaintedItem_hoverLeaveEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQQuickPaintedItem_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQQuickPaintedItem_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQQuickPaintedItem_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQQuickPaintedItem_dropEvent
  vtbl[].vtbl.childMouseEventFilter = miqt_exec_method_cQQuickPaintedItem_childMouseEventFilter
  vtbl[].vtbl.updatePolish = miqt_exec_method_cQQuickPaintedItem_updatePolish
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQuickPaintedItem_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQuickPaintedItem_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQuickPaintedItem_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQuickPaintedItem_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQuickPaintedItem_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQuickPaintedItem_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQuickPaintedItem_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qquickpainteditem_types.QQuickPaintedItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickPaintedItem_staticMetaObject())
