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
{.compile("gen_qquickframebufferobject.cpp", cflags).}


import ./gen_qquickframebufferobject_types
export gen_qquickframebufferobject_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
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
  gen_qvariant_types,
  gen_qevent_types,
  gen_qquickitem,
  gen_qsgnode_types,
  gen_qsgtextureprovider_types

type cQQuickFramebufferObject*{.exportc: "QQuickFramebufferObject", incompleteStruct.} = object
type cQQuickFramebufferObjectRenderer*{.exportc: "QQuickFramebufferObject__Renderer", incompleteStruct.} = object

proc fcQQuickFramebufferObject_new(): ptr cQQuickFramebufferObject {.importc: "QQuickFramebufferObject_new".}
proc fcQQuickFramebufferObject_new2(parent: pointer): ptr cQQuickFramebufferObject {.importc: "QQuickFramebufferObject_new2".}
proc fcQQuickFramebufferObject_metaObject(self: pointer, ): pointer {.importc: "QQuickFramebufferObject_metaObject".}
proc fcQQuickFramebufferObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickFramebufferObject_metacast".}
proc fcQQuickFramebufferObject_tr(s: cstring): struct_miqt_string {.importc: "QQuickFramebufferObject_tr".}
proc fcQQuickFramebufferObject_textureFollowsItemSize(self: pointer, ): bool {.importc: "QQuickFramebufferObject_textureFollowsItemSize".}
proc fcQQuickFramebufferObject_setTextureFollowsItemSize(self: pointer, follows: bool): void {.importc: "QQuickFramebufferObject_setTextureFollowsItemSize".}
proc fcQQuickFramebufferObject_mirrorVertically(self: pointer, ): bool {.importc: "QQuickFramebufferObject_mirrorVertically".}
proc fcQQuickFramebufferObject_setMirrorVertically(self: pointer, enable: bool): void {.importc: "QQuickFramebufferObject_setMirrorVertically".}
proc fcQQuickFramebufferObject_createRenderer(self: pointer, ): pointer {.importc: "QQuickFramebufferObject_createRenderer".}
proc fcQQuickFramebufferObject_isTextureProvider(self: pointer, ): bool {.importc: "QQuickFramebufferObject_isTextureProvider".}
proc fcQQuickFramebufferObject_textureProvider(self: pointer, ): pointer {.importc: "QQuickFramebufferObject_textureProvider".}
proc fcQQuickFramebufferObject_releaseResources(self: pointer, ): void {.importc: "QQuickFramebufferObject_releaseResources".}
proc fcQQuickFramebufferObject_textureFollowsItemSizeChanged(self: pointer, param1: bool): void {.importc: "QQuickFramebufferObject_textureFollowsItemSizeChanged".}
proc fcQQuickFramebufferObject_connect_textureFollowsItemSizeChanged(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_connect_textureFollowsItemSizeChanged".}
proc fcQQuickFramebufferObject_mirrorVerticallyChanged(self: pointer, param1: bool): void {.importc: "QQuickFramebufferObject_mirrorVerticallyChanged".}
proc fcQQuickFramebufferObject_connect_mirrorVerticallyChanged(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_connect_mirrorVerticallyChanged".}
proc fcQQuickFramebufferObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickFramebufferObject_tr2".}
proc fcQQuickFramebufferObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickFramebufferObject_tr3".}
proc fcQQuickFramebufferObject_override_virtual_createRenderer(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_createRenderer".}
proc fQQuickFramebufferObject_virtualbase_isTextureProvider(self: pointer, ): bool{.importc: "QQuickFramebufferObject_virtualbase_isTextureProvider".}
proc fcQQuickFramebufferObject_override_virtual_isTextureProvider(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_isTextureProvider".}
proc fQQuickFramebufferObject_virtualbase_textureProvider(self: pointer, ): pointer{.importc: "QQuickFramebufferObject_virtualbase_textureProvider".}
proc fcQQuickFramebufferObject_override_virtual_textureProvider(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_textureProvider".}
proc fQQuickFramebufferObject_virtualbase_releaseResources(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_releaseResources".}
proc fcQQuickFramebufferObject_override_virtual_releaseResources(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_releaseResources".}
proc fQQuickFramebufferObject_virtualbase_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_geometryChange".}
proc fcQQuickFramebufferObject_override_virtual_geometryChange(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_geometryChange".}
proc fQQuickFramebufferObject_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer{.importc: "QQuickFramebufferObject_virtualbase_updatePaintNode".}
proc fcQQuickFramebufferObject_override_virtual_updatePaintNode(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_updatePaintNode".}
proc fQQuickFramebufferObject_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QQuickFramebufferObject_virtualbase_boundingRect".}
proc fcQQuickFramebufferObject_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_boundingRect".}
proc fQQuickFramebufferObject_virtualbase_clipRect(self: pointer, ): pointer{.importc: "QQuickFramebufferObject_virtualbase_clipRect".}
proc fcQQuickFramebufferObject_override_virtual_clipRect(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_clipRect".}
proc fQQuickFramebufferObject_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QQuickFramebufferObject_virtualbase_contains".}
proc fcQQuickFramebufferObject_override_virtual_contains(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_contains".}
proc fQQuickFramebufferObject_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QQuickFramebufferObject_virtualbase_inputMethodQuery".}
proc fcQQuickFramebufferObject_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_inputMethodQuery".}
proc fQQuickFramebufferObject_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQuickFramebufferObject_virtualbase_event".}
proc fcQQuickFramebufferObject_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_event".}
proc fQQuickFramebufferObject_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_itemChange".}
proc fcQQuickFramebufferObject_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_itemChange".}
proc fQQuickFramebufferObject_virtualbase_classBegin(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_classBegin".}
proc fcQQuickFramebufferObject_override_virtual_classBegin(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_classBegin".}
proc fQQuickFramebufferObject_virtualbase_componentComplete(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_componentComplete".}
proc fcQQuickFramebufferObject_override_virtual_componentComplete(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_componentComplete".}
proc fQQuickFramebufferObject_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_keyPressEvent".}
proc fcQQuickFramebufferObject_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_keyPressEvent".}
proc fQQuickFramebufferObject_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_keyReleaseEvent".}
proc fcQQuickFramebufferObject_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_keyReleaseEvent".}
proc fQQuickFramebufferObject_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_inputMethodEvent".}
proc fcQQuickFramebufferObject_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_inputMethodEvent".}
proc fQQuickFramebufferObject_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_focusInEvent".}
proc fcQQuickFramebufferObject_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_focusInEvent".}
proc fQQuickFramebufferObject_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_focusOutEvent".}
proc fcQQuickFramebufferObject_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_focusOutEvent".}
proc fQQuickFramebufferObject_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_mousePressEvent".}
proc fcQQuickFramebufferObject_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_mousePressEvent".}
proc fQQuickFramebufferObject_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_mouseMoveEvent".}
proc fcQQuickFramebufferObject_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_mouseMoveEvent".}
proc fQQuickFramebufferObject_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_mouseReleaseEvent".}
proc fcQQuickFramebufferObject_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_mouseReleaseEvent".}
proc fQQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickFramebufferObject_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_mouseDoubleClickEvent".}
proc fQQuickFramebufferObject_virtualbase_mouseUngrabEvent(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_mouseUngrabEvent".}
proc fcQQuickFramebufferObject_override_virtual_mouseUngrabEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_mouseUngrabEvent".}
proc fQQuickFramebufferObject_virtualbase_touchUngrabEvent(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_touchUngrabEvent".}
proc fcQQuickFramebufferObject_override_virtual_touchUngrabEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_touchUngrabEvent".}
proc fQQuickFramebufferObject_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_wheelEvent".}
proc fcQQuickFramebufferObject_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_wheelEvent".}
proc fQQuickFramebufferObject_virtualbase_touchEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_touchEvent".}
proc fcQQuickFramebufferObject_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_touchEvent".}
proc fQQuickFramebufferObject_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_hoverEnterEvent".}
proc fcQQuickFramebufferObject_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_hoverEnterEvent".}
proc fQQuickFramebufferObject_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_hoverMoveEvent".}
proc fcQQuickFramebufferObject_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_hoverMoveEvent".}
proc fQQuickFramebufferObject_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_hoverLeaveEvent".}
proc fcQQuickFramebufferObject_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_hoverLeaveEvent".}
proc fQQuickFramebufferObject_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_dragEnterEvent".}
proc fcQQuickFramebufferObject_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_dragEnterEvent".}
proc fQQuickFramebufferObject_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_dragMoveEvent".}
proc fcQQuickFramebufferObject_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_dragMoveEvent".}
proc fQQuickFramebufferObject_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_dragLeaveEvent".}
proc fcQQuickFramebufferObject_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_dragLeaveEvent".}
proc fQQuickFramebufferObject_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_dropEvent".}
proc fcQQuickFramebufferObject_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_dropEvent".}
proc fQQuickFramebufferObject_virtualbase_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QQuickFramebufferObject_virtualbase_childMouseEventFilter".}
proc fcQQuickFramebufferObject_override_virtual_childMouseEventFilter(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_childMouseEventFilter".}
proc fQQuickFramebufferObject_virtualbase_updatePolish(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_updatePolish".}
proc fcQQuickFramebufferObject_override_virtual_updatePolish(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_updatePolish".}
proc fQQuickFramebufferObject_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickFramebufferObject_virtualbase_eventFilter".}
proc fcQQuickFramebufferObject_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_eventFilter".}
proc fQQuickFramebufferObject_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_timerEvent".}
proc fcQQuickFramebufferObject_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_timerEvent".}
proc fQQuickFramebufferObject_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_childEvent".}
proc fcQQuickFramebufferObject_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_childEvent".}
proc fQQuickFramebufferObject_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_customEvent".}
proc fcQQuickFramebufferObject_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_customEvent".}
proc fQQuickFramebufferObject_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_connectNotify".}
proc fcQQuickFramebufferObject_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_connectNotify".}
proc fQQuickFramebufferObject_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_disconnectNotify".}
proc fcQQuickFramebufferObject_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_disconnectNotify".}
proc fcQQuickFramebufferObject_delete(self: pointer) {.importc: "QQuickFramebufferObject_delete".}


func init*(T: type gen_qquickframebufferobject_types.QQuickFramebufferObject, h: ptr cQQuickFramebufferObject): gen_qquickframebufferobject_types.QQuickFramebufferObject =
  T(h: h)
proc create*(T: type gen_qquickframebufferobject_types.QQuickFramebufferObject, ): gen_qquickframebufferobject_types.QQuickFramebufferObject =
  gen_qquickframebufferobject_types.QQuickFramebufferObject.init(fcQQuickFramebufferObject_new())

proc create*(T: type gen_qquickframebufferobject_types.QQuickFramebufferObject, parent: gen_qquickitem_types.QQuickItem): gen_qquickframebufferobject_types.QQuickFramebufferObject =
  gen_qquickframebufferobject_types.QQuickFramebufferObject.init(fcQQuickFramebufferObject_new2(parent.h))

proc metaObject*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickFramebufferObject_metaObject(self.h))

proc metacast*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: cstring): pointer =
  fcQQuickFramebufferObject_metacast(self.h, param1)

proc tr*(_: type gen_qquickframebufferobject_types.QQuickFramebufferObject, s: cstring): string =
  let v_ms = fcQQuickFramebufferObject_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textureFollowsItemSize*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): bool =
  fcQQuickFramebufferObject_textureFollowsItemSize(self.h)

proc setTextureFollowsItemSize*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, follows: bool): void =
  fcQQuickFramebufferObject_setTextureFollowsItemSize(self.h, follows)

proc mirrorVertically*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): bool =
  fcQQuickFramebufferObject_mirrorVertically(self.h)

proc setMirrorVertically*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, enable: bool): void =
  fcQQuickFramebufferObject_setMirrorVertically(self.h, enable)

proc createRenderer*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): gen_qquickframebufferobject_types.QQuickFramebufferObjectRenderer =
  gen_qquickframebufferobject_types.QQuickFramebufferObjectRenderer(h: fcQQuickFramebufferObject_createRenderer(self.h))

proc isTextureProvider*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): bool =
  fcQQuickFramebufferObject_isTextureProvider(self.h)

proc textureProvider*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickFramebufferObject_textureProvider(self.h))

proc releaseResources*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): void =
  fcQQuickFramebufferObject_releaseResources(self.h)

proc textureFollowsItemSizeChanged*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: bool): void =
  fcQQuickFramebufferObject_textureFollowsItemSizeChanged(self.h, param1)

type QQuickFramebufferObjecttextureFollowsItemSizeChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_QQuickFramebufferObject_textureFollowsItemSizeChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QQuickFramebufferObjecttextureFollowsItemSizeChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc ontextureFollowsItemSizeChanged*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjecttextureFollowsItemSizeChangedSlot) =
  var tmp = new QQuickFramebufferObjecttextureFollowsItemSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_connect_textureFollowsItemSizeChanged(self.h, cast[int](addr tmp[]))

proc mirrorVerticallyChanged*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: bool): void =
  fcQQuickFramebufferObject_mirrorVerticallyChanged(self.h, param1)

type QQuickFramebufferObjectmirrorVerticallyChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_QQuickFramebufferObject_mirrorVerticallyChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QQuickFramebufferObjectmirrorVerticallyChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onmirrorVerticallyChanged*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectmirrorVerticallyChangedSlot) =
  var tmp = new QQuickFramebufferObjectmirrorVerticallyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_connect_mirrorVerticallyChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qquickframebufferobject_types.QQuickFramebufferObject, s: cstring, c: cstring): string =
  let v_ms = fcQQuickFramebufferObject_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickframebufferobject_types.QQuickFramebufferObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickFramebufferObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QQuickFramebufferObjectcreateRendererProc* = proc(): gen_qquickframebufferobject_types.QQuickFramebufferObjectRenderer
proc oncreateRenderer*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectcreateRendererProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectcreateRendererProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_createRenderer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_createRenderer(self: ptr cQQuickFramebufferObject, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_createRenderer ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectcreateRendererProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickFramebufferObjectisTextureProvider*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): bool =
  fQQuickFramebufferObject_virtualbase_isTextureProvider(self.h)

type QQuickFramebufferObjectisTextureProviderProc* = proc(): bool
proc onisTextureProvider*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectisTextureProviderProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectisTextureProviderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_isTextureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_isTextureProvider(self: ptr cQQuickFramebufferObject, slot: int): bool {.exportc: "miqt_exec_callback_QQuickFramebufferObject_isTextureProvider ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectisTextureProviderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QQuickFramebufferObjecttextureProvider*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fQQuickFramebufferObject_virtualbase_textureProvider(self.h))

type QQuickFramebufferObjecttextureProviderProc* = proc(): gen_qsgtextureprovider_types.QSGTextureProvider
proc ontextureProvider*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjecttextureProviderProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjecttextureProviderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_textureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_textureProvider(self: ptr cQQuickFramebufferObject, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_textureProvider ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjecttextureProviderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickFramebufferObjectreleaseResources*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): void =
  fQQuickFramebufferObject_virtualbase_releaseResources(self.h)

type QQuickFramebufferObjectreleaseResourcesProc* = proc(): void
proc onreleaseResources*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectreleaseResourcesProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectreleaseResourcesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_releaseResources(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_releaseResources(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_releaseResources ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectreleaseResourcesProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickFramebufferObjectgeometryChange*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void =
  fQQuickFramebufferObject_virtualbase_geometryChange(self.h, newGeometry.h, oldGeometry.h)

type QQuickFramebufferObjectgeometryChangeProc* = proc(newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void
proc ongeometryChange*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectgeometryChangeProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectgeometryChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_geometryChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_geometryChange(self: ptr cQQuickFramebufferObject, slot: int, newGeometry: pointer, oldGeometry: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_geometryChange ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectgeometryChangeProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry)

  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry)


  nimfunc[](slotval1, slotval2)
proc QQuickFramebufferObjectupdatePaintNode*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fQQuickFramebufferObject_virtualbase_updatePaintNode(self.h, param1.h, param2.h))

type QQuickFramebufferObjectupdatePaintNodeProc* = proc(param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode
proc onupdatePaintNode*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectupdatePaintNodeProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectupdatePaintNodeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_updatePaintNode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_updatePaintNode(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer, param2: pointer): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_updatePaintNode ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectupdatePaintNodeProc](cast[pointer](slot))
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1)

  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QQuickFramebufferObjectboundingRect*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQQuickFramebufferObject_virtualbase_boundingRect(self.h))

type QQuickFramebufferObjectboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectboundingRectProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_boundingRect(self: ptr cQQuickFramebufferObject, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_boundingRect ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickFramebufferObjectclipRect*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQQuickFramebufferObject_virtualbase_clipRect(self.h))

type QQuickFramebufferObjectclipRectProc* = proc(): gen_qrect_types.QRectF
proc onclipRect*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectclipRectProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectclipRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_clipRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_clipRect(self: ptr cQQuickFramebufferObject, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_clipRect ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectclipRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickFramebufferObjectcontains*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, point: gen_qpoint_types.QPointF): bool =
  fQQuickFramebufferObject_virtualbase_contains(self.h, point.h)

type QQuickFramebufferObjectcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectcontainsProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_contains(self: ptr cQQuickFramebufferObject, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QQuickFramebufferObject_contains ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickFramebufferObjectinputMethodQuery*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQQuickFramebufferObject_virtualbase_inputMethodQuery(self.h, cint(query)))

type QQuickFramebufferObjectinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_inputMethodQuery(self: ptr cQQuickFramebufferObject, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_inputMethodQuery ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QQuickFramebufferObjectevent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qcoreevent_types.QEvent): bool =
  fQQuickFramebufferObject_virtualbase_event(self.h, param1.h)

type QQuickFramebufferObjecteventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjecteventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjecteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_event(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQuickFramebufferObject_event ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjecteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickFramebufferObjectitemChange*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void =
  fQQuickFramebufferObject_virtualbase_itemChange(self.h, cint(param1), param2.h)

type QQuickFramebufferObjectitemChangeProc* = proc(param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void
proc onitemChange*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectitemChangeProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_itemChange(self: ptr cQQuickFramebufferObject, slot: int, param1: cint, param2: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_itemChange ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2)


  nimfunc[](slotval1, slotval2)
proc QQuickFramebufferObjectclassBegin*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): void =
  fQQuickFramebufferObject_virtualbase_classBegin(self.h)

type QQuickFramebufferObjectclassBeginProc* = proc(): void
proc onclassBegin*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectclassBeginProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectclassBeginProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_classBegin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_classBegin(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_classBegin ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectclassBeginProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickFramebufferObjectcomponentComplete*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): void =
  fQQuickFramebufferObject_virtualbase_componentComplete(self.h)

type QQuickFramebufferObjectcomponentCompleteProc* = proc(): void
proc oncomponentComplete*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectcomponentCompleteProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectcomponentCompleteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_componentComplete(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_componentComplete(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_componentComplete ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectcomponentCompleteProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickFramebufferObjectkeyPressEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QKeyEvent): void =
  fQQuickFramebufferObject_virtualbase_keyPressEvent(self.h, event.h)

type QQuickFramebufferObjectkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_keyPressEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_keyPressEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectkeyReleaseEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QKeyEvent): void =
  fQQuickFramebufferObject_virtualbase_keyReleaseEvent(self.h, event.h)

type QQuickFramebufferObjectkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_keyReleaseEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectinputMethodEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QInputMethodEvent): void =
  fQQuickFramebufferObject_virtualbase_inputMethodEvent(self.h, param1.h)

type QQuickFramebufferObjectinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_inputMethodEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_inputMethodEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectfocusInEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QFocusEvent): void =
  fQQuickFramebufferObject_virtualbase_focusInEvent(self.h, param1.h)

type QQuickFramebufferObjectfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectfocusInEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_focusInEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_focusInEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectfocusOutEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QFocusEvent): void =
  fQQuickFramebufferObject_virtualbase_focusOutEvent(self.h, param1.h)

type QQuickFramebufferObjectfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_focusOutEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_focusOutEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectmousePressEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void =
  fQQuickFramebufferObject_virtualbase_mousePressEvent(self.h, event.h)

type QQuickFramebufferObjectmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectmousePressEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_mousePressEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_mousePressEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectmouseMoveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void =
  fQQuickFramebufferObject_virtualbase_mouseMoveEvent(self.h, event.h)

type QQuickFramebufferObjectmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_mouseMoveEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectmouseReleaseEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void =
  fQQuickFramebufferObject_virtualbase_mouseReleaseEvent(self.h, event.h)

type QQuickFramebufferObjectmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_mouseReleaseEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectmouseDoubleClickEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void =
  fQQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QQuickFramebufferObjectmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_mouseDoubleClickEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectmouseUngrabEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): void =
  fQQuickFramebufferObject_virtualbase_mouseUngrabEvent(self.h)

type QQuickFramebufferObjectmouseUngrabEventProc* = proc(): void
proc onmouseUngrabEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectmouseUngrabEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectmouseUngrabEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_mouseUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_mouseUngrabEvent(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_mouseUngrabEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectmouseUngrabEventProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickFramebufferObjecttouchUngrabEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): void =
  fQQuickFramebufferObject_virtualbase_touchUngrabEvent(self.h)

type QQuickFramebufferObjecttouchUngrabEventProc* = proc(): void
proc ontouchUngrabEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjecttouchUngrabEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjecttouchUngrabEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_touchUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_touchUngrabEvent(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_touchUngrabEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjecttouchUngrabEventProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickFramebufferObjectwheelEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QWheelEvent): void =
  fQQuickFramebufferObject_virtualbase_wheelEvent(self.h, event.h)

type QQuickFramebufferObjectwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectwheelEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_wheelEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_wheelEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjecttouchEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QTouchEvent): void =
  fQQuickFramebufferObject_virtualbase_touchEvent(self.h, event.h)

type QQuickFramebufferObjecttouchEventProc* = proc(event: gen_qevent_types.QTouchEvent): void
proc ontouchEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjecttouchEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjecttouchEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_touchEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_touchEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjecttouchEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTouchEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjecthoverEnterEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void =
  fQQuickFramebufferObject_virtualbase_hoverEnterEvent(self.h, event.h)

type QQuickFramebufferObjecthoverEnterEventProc* = proc(event: gen_qevent_types.QHoverEvent): void
proc onhoverEnterEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjecthoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjecthoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_hoverEnterEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjecthoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjecthoverMoveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void =
  fQQuickFramebufferObject_virtualbase_hoverMoveEvent(self.h, event.h)

type QQuickFramebufferObjecthoverMoveEventProc* = proc(event: gen_qevent_types.QHoverEvent): void
proc onhoverMoveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjecthoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjecthoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_hoverMoveEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjecthoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjecthoverLeaveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void =
  fQQuickFramebufferObject_virtualbase_hoverLeaveEvent(self.h, event.h)

type QQuickFramebufferObjecthoverLeaveEventProc* = proc(event: gen_qevent_types.QHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjecthoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjecthoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_hoverLeaveEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjecthoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectdragEnterEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QDragEnterEvent): void =
  fQQuickFramebufferObject_virtualbase_dragEnterEvent(self.h, param1.h)

type QQuickFramebufferObjectdragEnterEventProc* = proc(param1: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_dragEnterEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_dragEnterEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectdragMoveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QDragMoveEvent): void =
  fQQuickFramebufferObject_virtualbase_dragMoveEvent(self.h, param1.h)

type QQuickFramebufferObjectdragMoveEventProc* = proc(param1: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_dragMoveEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_dragMoveEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectdragLeaveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QDragLeaveEvent): void =
  fQQuickFramebufferObject_virtualbase_dragLeaveEvent(self.h, param1.h)

type QQuickFramebufferObjectdragLeaveEventProc* = proc(param1: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_dragLeaveEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectdropEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QDropEvent): void =
  fQQuickFramebufferObject_virtualbase_dropEvent(self.h, param1.h)

type QQuickFramebufferObjectdropEventProc* = proc(param1: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectdropEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_dropEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_dropEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectchildMouseEventFilter*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool =
  fQQuickFramebufferObject_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

type QQuickFramebufferObjectchildMouseEventFilterProc* = proc(param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool
proc onchildMouseEventFilter*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectchildMouseEventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectchildMouseEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_childMouseEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_childMouseEventFilter(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QQuickFramebufferObject_childMouseEventFilter ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectchildMouseEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickFramebufferObjectupdatePolish*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, ): void =
  fQQuickFramebufferObject_virtualbase_updatePolish(self.h)

type QQuickFramebufferObjectupdatePolishProc* = proc(): void
proc onupdatePolish*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectupdatePolishProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectupdatePolishProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_updatePolish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_updatePolish(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_updatePolish ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectupdatePolishProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickFramebufferObjecteventFilter*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickFramebufferObject_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickFramebufferObjecteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjecteventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjecteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_eventFilter(self: ptr cQQuickFramebufferObject, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickFramebufferObject_eventFilter ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjecteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickFramebufferObjecttimerEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickFramebufferObject_virtualbase_timerEvent(self.h, event.h)

type QQuickFramebufferObjecttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjecttimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjecttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_timerEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_timerEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjecttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectchildEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickFramebufferObject_virtualbase_childEvent(self.h, event.h)

type QQuickFramebufferObjectchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectchildEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_childEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_childEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectcustomEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qcoreevent_types.QEvent): void =
  fQQuickFramebufferObject_virtualbase_customEvent(self.h, event.h)

type QQuickFramebufferObjectcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectcustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_customEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_customEvent ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectconnectNotify*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickFramebufferObject_virtualbase_connectNotify(self.h, signal.h)

type QQuickFramebufferObjectconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_connectNotify(self: ptr cQQuickFramebufferObject, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_connectNotify ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickFramebufferObjectdisconnectNotify*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickFramebufferObject_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickFramebufferObjectdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickFramebufferObjectdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_disconnectNotify(self: ptr cQQuickFramebufferObject, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickFramebufferObjectdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject) =
  fcQQuickFramebufferObject_delete(self.h)

func init*(T: type gen_qquickframebufferobject_types.QQuickFramebufferObjectRenderer, h: ptr cQQuickFramebufferObjectRenderer): gen_qquickframebufferobject_types.QQuickFramebufferObjectRenderer =
  T(h: h)
