import ./Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick")  & " -fPIC"
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

proc fcQQuickPaintedItem_new(): ptr cQQuickPaintedItem {.importc: "QQuickPaintedItem_new".}
proc fcQQuickPaintedItem_new2(parent: pointer): ptr cQQuickPaintedItem {.importc: "QQuickPaintedItem_new2".}
proc fcQQuickPaintedItem_metaObject(self: pointer, ): pointer {.importc: "QQuickPaintedItem_metaObject".}
proc fcQQuickPaintedItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickPaintedItem_metacast".}
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
proc fcQQuickPaintedItem_connect_fillColorChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_fillColorChanged".}
proc fcQQuickPaintedItem_contentsSizeChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_contentsSizeChanged".}
proc fcQQuickPaintedItem_connect_contentsSizeChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_contentsSizeChanged".}
proc fcQQuickPaintedItem_contentsScaleChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_contentsScaleChanged".}
proc fcQQuickPaintedItem_connect_contentsScaleChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_contentsScaleChanged".}
proc fcQQuickPaintedItem_renderTargetChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_renderTargetChanged".}
proc fcQQuickPaintedItem_connect_renderTargetChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_renderTargetChanged".}
proc fcQQuickPaintedItem_textureSizeChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_textureSizeChanged".}
proc fcQQuickPaintedItem_connect_textureSizeChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_textureSizeChanged".}
proc fcQQuickPaintedItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_tr2".}
proc fcQQuickPaintedItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickPaintedItem_tr3".}
proc fcQQuickPaintedItem_update1(self: pointer, rect: pointer): void {.importc: "QQuickPaintedItem_update1".}
proc fcQQuickPaintedItem_setPerformanceHint2(self: pointer, hint: cint, enabled: bool): void {.importc: "QQuickPaintedItem_setPerformanceHint2".}
proc fcQQuickPaintedItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_paint".}
proc fQQuickPaintedItem_virtualbase_isTextureProvider(self: pointer, ): bool{.importc: "QQuickPaintedItem_virtualbase_isTextureProvider".}
proc fcQQuickPaintedItem_override_virtual_isTextureProvider(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_isTextureProvider".}
proc fQQuickPaintedItem_virtualbase_textureProvider(self: pointer, ): pointer{.importc: "QQuickPaintedItem_virtualbase_textureProvider".}
proc fcQQuickPaintedItem_override_virtual_textureProvider(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_textureProvider".}
proc fQQuickPaintedItem_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer{.importc: "QQuickPaintedItem_virtualbase_updatePaintNode".}
proc fcQQuickPaintedItem_override_virtual_updatePaintNode(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_updatePaintNode".}
proc fQQuickPaintedItem_virtualbase_releaseResources(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_releaseResources".}
proc fcQQuickPaintedItem_override_virtual_releaseResources(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_releaseResources".}
proc fQQuickPaintedItem_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void{.importc: "QQuickPaintedItem_virtualbase_itemChange".}
proc fcQQuickPaintedItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_itemChange".}
proc fQQuickPaintedItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QQuickPaintedItem_virtualbase_boundingRect".}
proc fcQQuickPaintedItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_boundingRect".}
proc fQQuickPaintedItem_virtualbase_clipRect(self: pointer, ): pointer{.importc: "QQuickPaintedItem_virtualbase_clipRect".}
proc fcQQuickPaintedItem_override_virtual_clipRect(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_clipRect".}
proc fQQuickPaintedItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QQuickPaintedItem_virtualbase_contains".}
proc fcQQuickPaintedItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_contains".}
proc fQQuickPaintedItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QQuickPaintedItem_virtualbase_inputMethodQuery".}
proc fcQQuickPaintedItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_inputMethodQuery".}
proc fQQuickPaintedItem_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQuickPaintedItem_virtualbase_event".}
proc fcQQuickPaintedItem_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_event".}
proc fQQuickPaintedItem_virtualbase_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void{.importc: "QQuickPaintedItem_virtualbase_geometryChange".}
proc fcQQuickPaintedItem_override_virtual_geometryChange(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_geometryChange".}
proc fQQuickPaintedItem_virtualbase_classBegin(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_classBegin".}
proc fcQQuickPaintedItem_override_virtual_classBegin(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_classBegin".}
proc fQQuickPaintedItem_virtualbase_componentComplete(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_componentComplete".}
proc fcQQuickPaintedItem_override_virtual_componentComplete(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_componentComplete".}
proc fQQuickPaintedItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_keyPressEvent".}
proc fcQQuickPaintedItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_keyPressEvent".}
proc fQQuickPaintedItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_keyReleaseEvent".}
proc fcQQuickPaintedItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_keyReleaseEvent".}
proc fQQuickPaintedItem_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_inputMethodEvent".}
proc fcQQuickPaintedItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_inputMethodEvent".}
proc fQQuickPaintedItem_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_focusInEvent".}
proc fcQQuickPaintedItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_focusInEvent".}
proc fQQuickPaintedItem_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_focusOutEvent".}
proc fcQQuickPaintedItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_focusOutEvent".}
proc fQQuickPaintedItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_mousePressEvent".}
proc fcQQuickPaintedItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_mousePressEvent".}
proc fQQuickPaintedItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_mouseMoveEvent".}
proc fcQQuickPaintedItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_mouseMoveEvent".}
proc fQQuickPaintedItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_mouseReleaseEvent".}
proc fcQQuickPaintedItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_mouseReleaseEvent".}
proc fQQuickPaintedItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickPaintedItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_mouseDoubleClickEvent".}
proc fQQuickPaintedItem_virtualbase_mouseUngrabEvent(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_mouseUngrabEvent".}
proc fcQQuickPaintedItem_override_virtual_mouseUngrabEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_mouseUngrabEvent".}
proc fQQuickPaintedItem_virtualbase_touchUngrabEvent(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_touchUngrabEvent".}
proc fcQQuickPaintedItem_override_virtual_touchUngrabEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_touchUngrabEvent".}
proc fQQuickPaintedItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_wheelEvent".}
proc fcQQuickPaintedItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_wheelEvent".}
proc fQQuickPaintedItem_virtualbase_touchEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_touchEvent".}
proc fcQQuickPaintedItem_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_touchEvent".}
proc fQQuickPaintedItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_hoverEnterEvent".}
proc fcQQuickPaintedItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_hoverEnterEvent".}
proc fQQuickPaintedItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_hoverMoveEvent".}
proc fcQQuickPaintedItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_hoverMoveEvent".}
proc fQQuickPaintedItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_hoverLeaveEvent".}
proc fcQQuickPaintedItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_hoverLeaveEvent".}
proc fQQuickPaintedItem_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_dragEnterEvent".}
proc fcQQuickPaintedItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_dragEnterEvent".}
proc fQQuickPaintedItem_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_dragMoveEvent".}
proc fcQQuickPaintedItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_dragMoveEvent".}
proc fQQuickPaintedItem_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_dragLeaveEvent".}
proc fcQQuickPaintedItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_dragLeaveEvent".}
proc fQQuickPaintedItem_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_dropEvent".}
proc fcQQuickPaintedItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_dropEvent".}
proc fQQuickPaintedItem_virtualbase_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QQuickPaintedItem_virtualbase_childMouseEventFilter".}
proc fcQQuickPaintedItem_override_virtual_childMouseEventFilter(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_childMouseEventFilter".}
proc fQQuickPaintedItem_virtualbase_updatePolish(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_updatePolish".}
proc fcQQuickPaintedItem_override_virtual_updatePolish(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_updatePolish".}
proc fQQuickPaintedItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickPaintedItem_virtualbase_eventFilter".}
proc fcQQuickPaintedItem_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_eventFilter".}
proc fQQuickPaintedItem_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_timerEvent".}
proc fcQQuickPaintedItem_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_timerEvent".}
proc fQQuickPaintedItem_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_childEvent".}
proc fcQQuickPaintedItem_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_childEvent".}
proc fQQuickPaintedItem_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_customEvent".}
proc fcQQuickPaintedItem_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_customEvent".}
proc fQQuickPaintedItem_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickPaintedItem_virtualbase_connectNotify".}
proc fcQQuickPaintedItem_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_connectNotify".}
proc fQQuickPaintedItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickPaintedItem_virtualbase_disconnectNotify".}
proc fcQQuickPaintedItem_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_disconnectNotify".}
proc fcQQuickPaintedItem_delete(self: pointer) {.importc: "QQuickPaintedItem_delete".}


func init*(T: type gen_qquickpainteditem_types.QQuickPaintedItem, h: ptr cQQuickPaintedItem): gen_qquickpainteditem_types.QQuickPaintedItem =
  T(h: h)
proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qquickpainteditem_types.QQuickPaintedItem =
  gen_qquickpainteditem_types.QQuickPaintedItem.init(fcQQuickPaintedItem_new())

proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem, parent: gen_qquickitem_types.QQuickItem): gen_qquickpainteditem_types.QQuickPaintedItem =
  gen_qquickpainteditem_types.QQuickPaintedItem.init(fcQQuickPaintedItem_new2(parent.h))

proc metaObject*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickPaintedItem_metaObject(self.h))

proc metacast*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cstring): pointer =
  fcQQuickPaintedItem_metacast(self.h, param1)

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
  gen_qrect_types.QRectF(h: fcQQuickPaintedItem_contentsBoundingRect(self.h))

proc contentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickPaintedItem_contentsSize(self.h))

proc setContentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, contentsSize: gen_qsize_types.QSize): void =
  fcQQuickPaintedItem_setContentsSize(self.h, contentsSize.h)

proc resetContentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_resetContentsSize(self.h)

proc contentsScale*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): float64 =
  fcQQuickPaintedItem_contentsScale(self.h)

proc setContentsScale*(self: gen_qquickpainteditem_types.QQuickPaintedItem, contentsScale: float64): void =
  fcQQuickPaintedItem_setContentsScale(self.h, contentsScale)

proc textureSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickPaintedItem_textureSize(self.h))

proc setTextureSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, size: gen_qsize_types.QSize): void =
  fcQQuickPaintedItem_setTextureSize(self.h, size.h)

proc fillColor*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQQuickPaintedItem_fillColor(self.h))

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
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickPaintedItem_textureProvider(self.h))

proc fillColorChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_fillColorChanged(self.h)

type QQuickPaintedItemfillColorChangedSlot* = proc()
proc miqt_exec_callback_QQuickPaintedItem_fillColorChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickPaintedItemfillColorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfillColorChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemfillColorChangedSlot) =
  var tmp = new QQuickPaintedItemfillColorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_fillColorChanged(self.h, cast[int](addr tmp[]))

proc contentsSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_contentsSizeChanged(self.h)

type QQuickPaintedItemcontentsSizeChangedSlot* = proc()
proc miqt_exec_callback_QQuickPaintedItem_contentsSizeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickPaintedItemcontentsSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncontentsSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemcontentsSizeChangedSlot) =
  var tmp = new QQuickPaintedItemcontentsSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_contentsSizeChanged(self.h, cast[int](addr tmp[]))

proc contentsScaleChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_contentsScaleChanged(self.h)

type QQuickPaintedItemcontentsScaleChangedSlot* = proc()
proc miqt_exec_callback_QQuickPaintedItem_contentsScaleChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickPaintedItemcontentsScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncontentsScaleChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemcontentsScaleChangedSlot) =
  var tmp = new QQuickPaintedItemcontentsScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_contentsScaleChanged(self.h, cast[int](addr tmp[]))

proc renderTargetChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_renderTargetChanged(self.h)

type QQuickPaintedItemrenderTargetChangedSlot* = proc()
proc miqt_exec_callback_QQuickPaintedItem_renderTargetChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickPaintedItemrenderTargetChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onrenderTargetChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemrenderTargetChangedSlot) =
  var tmp = new QQuickPaintedItemrenderTargetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_renderTargetChanged(self.h, cast[int](addr tmp[]))

proc textureSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_textureSizeChanged(self.h)

type QQuickPaintedItemtextureSizeChangedSlot* = proc()
proc miqt_exec_callback_QQuickPaintedItem_textureSizeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickPaintedItemtextureSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ontextureSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemtextureSizeChangedSlot) =
  var tmp = new QQuickPaintedItemtextureSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_textureSizeChanged(self.h, cast[int](addr tmp[]))

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

type QQuickPaintedItempaintProc* = proc(painter: gen_qpainter_types.QPainter): void
proc onpaint*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItempaintProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_paint(self: ptr cQQuickPaintedItem, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_paint ".} =
  var nimfunc = cast[ptr QQuickPaintedItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QQuickPaintedItemisTextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fQQuickPaintedItem_virtualbase_isTextureProvider(self.h)

type QQuickPaintedItemisTextureProviderProc* = proc(): bool
proc onisTextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemisTextureProviderProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemisTextureProviderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_isTextureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_isTextureProvider(self: ptr cQQuickPaintedItem, slot: int): bool {.exportc: "miqt_exec_callback_QQuickPaintedItem_isTextureProvider ".} =
  var nimfunc = cast[ptr QQuickPaintedItemisTextureProviderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QQuickPaintedItemtextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fQQuickPaintedItem_virtualbase_textureProvider(self.h))

type QQuickPaintedItemtextureProviderProc* = proc(): gen_qsgtextureprovider_types.QSGTextureProvider
proc ontextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemtextureProviderProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemtextureProviderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_textureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_textureProvider(self: ptr cQQuickPaintedItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickPaintedItem_textureProvider ".} =
  var nimfunc = cast[ptr QQuickPaintedItemtextureProviderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickPaintedItemupdatePaintNode*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fQQuickPaintedItem_virtualbase_updatePaintNode(self.h, param1.h, param2.h))

type QQuickPaintedItemupdatePaintNodeProc* = proc(param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode
proc onupdatePaintNode*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemupdatePaintNodeProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemupdatePaintNodeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_updatePaintNode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_updatePaintNode(self: ptr cQQuickPaintedItem, slot: int, param1: pointer, param2: pointer): pointer {.exportc: "miqt_exec_callback_QQuickPaintedItem_updatePaintNode ".} =
  var nimfunc = cast[ptr QQuickPaintedItemupdatePaintNodeProc](cast[pointer](slot))
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1)

  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QQuickPaintedItemreleaseResources*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fQQuickPaintedItem_virtualbase_releaseResources(self.h)

type QQuickPaintedItemreleaseResourcesProc* = proc(): void
proc onreleaseResources*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemreleaseResourcesProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemreleaseResourcesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_releaseResources(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_releaseResources(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_releaseResources ".} =
  var nimfunc = cast[ptr QQuickPaintedItemreleaseResourcesProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickPaintedItemitemChange*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void =
  fQQuickPaintedItem_virtualbase_itemChange(self.h, cint(param1), param2.h)

type QQuickPaintedItemitemChangeProc* = proc(param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void
proc onitemChange*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_itemChange(self: ptr cQQuickPaintedItem, slot: int, param1: cint, param2: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_itemChange ".} =
  var nimfunc = cast[ptr QQuickPaintedItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2)


  nimfunc[](slotval1, slotval2)
proc QQuickPaintedItemboundingRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQQuickPaintedItem_virtualbase_boundingRect(self.h))

type QQuickPaintedItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_boundingRect(self: ptr cQQuickPaintedItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickPaintedItem_boundingRect ".} =
  var nimfunc = cast[ptr QQuickPaintedItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickPaintedItemclipRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQQuickPaintedItem_virtualbase_clipRect(self.h))

type QQuickPaintedItemclipRectProc* = proc(): gen_qrect_types.QRectF
proc onclipRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemclipRectProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemclipRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_clipRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_clipRect(self: ptr cQQuickPaintedItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickPaintedItem_clipRect ".} =
  var nimfunc = cast[ptr QQuickPaintedItemclipRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickPaintedItemcontains*(self: gen_qquickpainteditem_types.QQuickPaintedItem, point: gen_qpoint_types.QPointF): bool =
  fQQuickPaintedItem_virtualbase_contains(self.h, point.h)

type QQuickPaintedItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemcontainsProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_contains(self: ptr cQQuickPaintedItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QQuickPaintedItem_contains ".} =
  var nimfunc = cast[ptr QQuickPaintedItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickPaintedIteminputMethodQuery*(self: gen_qquickpainteditem_types.QQuickPaintedItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQQuickPaintedItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QQuickPaintedIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_inputMethodQuery(self: ptr cQQuickPaintedItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QQuickPaintedItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QQuickPaintedIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QQuickPaintedItemevent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qcoreevent_types.QEvent): bool =
  fQQuickPaintedItem_virtualbase_event(self.h, param1.h)

type QQuickPaintedItemeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemeventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_event(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQuickPaintedItem_event ".} =
  var nimfunc = cast[ptr QQuickPaintedItemeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickPaintedItemgeometryChange*(self: gen_qquickpainteditem_types.QQuickPaintedItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void =
  fQQuickPaintedItem_virtualbase_geometryChange(self.h, newGeometry.h, oldGeometry.h)

type QQuickPaintedItemgeometryChangeProc* = proc(newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void
proc ongeometryChange*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemgeometryChangeProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemgeometryChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_geometryChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_geometryChange(self: ptr cQQuickPaintedItem, slot: int, newGeometry: pointer, oldGeometry: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_geometryChange ".} =
  var nimfunc = cast[ptr QQuickPaintedItemgeometryChangeProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry)

  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry)


  nimfunc[](slotval1, slotval2)
proc QQuickPaintedItemclassBegin*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fQQuickPaintedItem_virtualbase_classBegin(self.h)

type QQuickPaintedItemclassBeginProc* = proc(): void
proc onclassBegin*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemclassBeginProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemclassBeginProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_classBegin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_classBegin(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_classBegin ".} =
  var nimfunc = cast[ptr QQuickPaintedItemclassBeginProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickPaintedItemcomponentComplete*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fQQuickPaintedItem_virtualbase_componentComplete(self.h)

type QQuickPaintedItemcomponentCompleteProc* = proc(): void
proc oncomponentComplete*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemcomponentCompleteProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemcomponentCompleteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_componentComplete(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_componentComplete(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_componentComplete ".} =
  var nimfunc = cast[ptr QQuickPaintedItemcomponentCompleteProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickPaintedItemkeyPressEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void =
  fQQuickPaintedItem_virtualbase_keyPressEvent(self.h, event.h)

type QQuickPaintedItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_keyPressEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemkeyReleaseEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void =
  fQQuickPaintedItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QQuickPaintedItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_keyReleaseEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedIteminputMethodEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QInputMethodEvent): void =
  fQQuickPaintedItem_virtualbase_inputMethodEvent(self.h, param1.h)

type QQuickPaintedIteminputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_inputMethodEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickPaintedItemfocusInEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void =
  fQQuickPaintedItem_virtualbase_focusInEvent(self.h, param1.h)

type QQuickPaintedItemfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_focusInEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_focusInEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickPaintedItemfocusOutEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void =
  fQQuickPaintedItem_virtualbase_focusOutEvent(self.h, param1.h)

type QQuickPaintedItemfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_focusOutEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickPaintedItemmousePressEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fQQuickPaintedItem_virtualbase_mousePressEvent(self.h, event.h)

type QQuickPaintedItemmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_mousePressEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemmouseMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fQQuickPaintedItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QQuickPaintedItemmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_mouseMoveEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemmouseReleaseEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fQQuickPaintedItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QQuickPaintedItemmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_mouseReleaseEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemmouseDoubleClickEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fQQuickPaintedItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QQuickPaintedItemmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_mouseDoubleClickEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemmouseUngrabEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fQQuickPaintedItem_virtualbase_mouseUngrabEvent(self.h)

type QQuickPaintedItemmouseUngrabEventProc* = proc(): void
proc onmouseUngrabEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemmouseUngrabEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemmouseUngrabEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_mouseUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_mouseUngrabEvent(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_mouseUngrabEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemmouseUngrabEventProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickPaintedItemtouchUngrabEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fQQuickPaintedItem_virtualbase_touchUngrabEvent(self.h)

type QQuickPaintedItemtouchUngrabEventProc* = proc(): void
proc ontouchUngrabEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemtouchUngrabEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemtouchUngrabEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_touchUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_touchUngrabEvent(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_touchUngrabEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemtouchUngrabEventProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickPaintedItemwheelEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QWheelEvent): void =
  fQQuickPaintedItem_virtualbase_wheelEvent(self.h, event.h)

type QQuickPaintedItemwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_wheelEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_wheelEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemtouchEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QTouchEvent): void =
  fQQuickPaintedItem_virtualbase_touchEvent(self.h, event.h)

type QQuickPaintedItemtouchEventProc* = proc(event: gen_qevent_types.QTouchEvent): void
proc ontouchEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemtouchEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemtouchEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_touchEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_touchEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemtouchEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTouchEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemhoverEnterEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fQQuickPaintedItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QQuickPaintedItemhoverEnterEventProc* = proc(event: gen_qevent_types.QHoverEvent): void
proc onhoverEnterEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_hoverEnterEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemhoverMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fQQuickPaintedItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QQuickPaintedItemhoverMoveEventProc* = proc(event: gen_qevent_types.QHoverEvent): void
proc onhoverMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_hoverMoveEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemhoverLeaveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fQQuickPaintedItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QQuickPaintedItemhoverLeaveEventProc* = proc(event: gen_qevent_types.QHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_hoverLeaveEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemdragEnterEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragEnterEvent): void =
  fQQuickPaintedItem_virtualbase_dragEnterEvent(self.h, param1.h)

type QQuickPaintedItemdragEnterEventProc* = proc(param1: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_dragEnterEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickPaintedItemdragMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragMoveEvent): void =
  fQQuickPaintedItem_virtualbase_dragMoveEvent(self.h, param1.h)

type QQuickPaintedItemdragMoveEventProc* = proc(param1: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_dragMoveEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickPaintedItemdragLeaveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragLeaveEvent): void =
  fQQuickPaintedItem_virtualbase_dragLeaveEvent(self.h, param1.h)

type QQuickPaintedItemdragLeaveEventProc* = proc(param1: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_dragLeaveEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickPaintedItemdropEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDropEvent): void =
  fQQuickPaintedItem_virtualbase_dropEvent(self.h, param1.h)

type QQuickPaintedItemdropEventProc* = proc(param1: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemdropEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_dropEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_dropEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickPaintedItemchildMouseEventFilter*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool =
  fQQuickPaintedItem_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

type QQuickPaintedItemchildMouseEventFilterProc* = proc(param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool
proc onchildMouseEventFilter*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemchildMouseEventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemchildMouseEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_childMouseEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_childMouseEventFilter(self: ptr cQQuickPaintedItem, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QQuickPaintedItem_childMouseEventFilter ".} =
  var nimfunc = cast[ptr QQuickPaintedItemchildMouseEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickPaintedItemupdatePolish*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fQQuickPaintedItem_virtualbase_updatePolish(self.h)

type QQuickPaintedItemupdatePolishProc* = proc(): void
proc onupdatePolish*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemupdatePolishProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemupdatePolishProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_updatePolish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_updatePolish(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_updatePolish ".} =
  var nimfunc = cast[ptr QQuickPaintedItemupdatePolishProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickPaintedItemeventFilter*(self: gen_qquickpainteditem_types.QQuickPaintedItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickPaintedItem_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickPaintedItemeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemeventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_eventFilter(self: ptr cQQuickPaintedItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickPaintedItem_eventFilter ".} =
  var nimfunc = cast[ptr QQuickPaintedItemeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickPaintedItemtimerEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickPaintedItem_virtualbase_timerEvent(self.h, event.h)

type QQuickPaintedItemtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemtimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_timerEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_timerEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemchildEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickPaintedItem_virtualbase_childEvent(self.h, event.h)

type QQuickPaintedItemchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemchildEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_childEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_childEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemcustomEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QEvent): void =
  fQQuickPaintedItem_virtualbase_customEvent(self.h, event.h)

type QQuickPaintedItemcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemcustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_customEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_customEvent ".} =
  var nimfunc = cast[ptr QQuickPaintedItemcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickPaintedItemconnectNotify*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickPaintedItem_virtualbase_connectNotify(self.h, signal.h)

type QQuickPaintedItemconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_connectNotify(self: ptr cQQuickPaintedItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_connectNotify ".} =
  var nimfunc = cast[ptr QQuickPaintedItemconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickPaintedItemdisconnectNotify*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickPaintedItem_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickPaintedItemdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickPaintedItemdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_disconnectNotify(self: ptr cQQuickPaintedItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickPaintedItemdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qquickpainteditem_types.QQuickPaintedItem) =
  fcQQuickPaintedItem_delete(self.h)
