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


{.compile("gen_qquickframebufferobject.cpp", QtQuickCFlags).}


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

proc fcQQuickFramebufferObject_metaObject(self: pointer): pointer {.importc: "QQuickFramebufferObject_metaObject".}
proc fcQQuickFramebufferObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickFramebufferObject_metacast".}
proc fcQQuickFramebufferObject_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickFramebufferObject_metacall".}
proc fcQQuickFramebufferObject_tr(s: cstring): struct_miqt_string {.importc: "QQuickFramebufferObject_tr".}
proc fcQQuickFramebufferObject_textureFollowsItemSize(self: pointer): bool {.importc: "QQuickFramebufferObject_textureFollowsItemSize".}
proc fcQQuickFramebufferObject_setTextureFollowsItemSize(self: pointer, follows: bool): void {.importc: "QQuickFramebufferObject_setTextureFollowsItemSize".}
proc fcQQuickFramebufferObject_mirrorVertically(self: pointer): bool {.importc: "QQuickFramebufferObject_mirrorVertically".}
proc fcQQuickFramebufferObject_setMirrorVertically(self: pointer, enable: bool): void {.importc: "QQuickFramebufferObject_setMirrorVertically".}
proc fcQQuickFramebufferObject_createRenderer(self: pointer): pointer {.importc: "QQuickFramebufferObject_createRenderer".}
proc fcQQuickFramebufferObject_isTextureProvider(self: pointer): bool {.importc: "QQuickFramebufferObject_isTextureProvider".}
proc fcQQuickFramebufferObject_textureProvider(self: pointer): pointer {.importc: "QQuickFramebufferObject_textureProvider".}
proc fcQQuickFramebufferObject_releaseResources(self: pointer): void {.importc: "QQuickFramebufferObject_releaseResources".}
proc fcQQuickFramebufferObject_textureFollowsItemSizeChanged(self: pointer, param1: bool): void {.importc: "QQuickFramebufferObject_textureFollowsItemSizeChanged".}
proc fcQQuickFramebufferObject_connect_textureFollowsItemSizeChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickFramebufferObject_connect_textureFollowsItemSizeChanged".}
proc fcQQuickFramebufferObject_mirrorVerticallyChanged(self: pointer, param1: bool): void {.importc: "QQuickFramebufferObject_mirrorVerticallyChanged".}
proc fcQQuickFramebufferObject_connect_mirrorVerticallyChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickFramebufferObject_connect_mirrorVerticallyChanged".}
proc fcQQuickFramebufferObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickFramebufferObject_tr2".}
proc fcQQuickFramebufferObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickFramebufferObject_tr3".}
proc fcQQuickFramebufferObject_vtbl(self: pointer): pointer {.importc: "QQuickFramebufferObject_vtbl".}
proc fcQQuickFramebufferObject_vdata(self: pointer): pointer {.importc: "QQuickFramebufferObject_vdata".}
type cQQuickFramebufferObjectVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  createRenderer*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isTextureProvider*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  textureProvider*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  releaseResources*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  geometryChange*: proc(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl, raises: [], gcsafe.}
  updatePaintNode*: proc(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  clipRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(self: pointer, param1: cint, param2: pointer): void {.cdecl, raises: [], gcsafe.}
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
  updatePolish*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickFramebufferObject_virtualbase_metaObject(self: pointer): pointer {.importc: "QQuickFramebufferObject_virtualbase_metaObject".}
proc fcQQuickFramebufferObject_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickFramebufferObject_virtualbase_metacast".}
proc fcQQuickFramebufferObject_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickFramebufferObject_virtualbase_metacall".}
proc fcQQuickFramebufferObject_virtualbase_isTextureProvider(self: pointer): bool {.importc: "QQuickFramebufferObject_virtualbase_isTextureProvider".}
proc fcQQuickFramebufferObject_virtualbase_textureProvider(self: pointer): pointer {.importc: "QQuickFramebufferObject_virtualbase_textureProvider".}
proc fcQQuickFramebufferObject_virtualbase_releaseResources(self: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_releaseResources".}
proc fcQQuickFramebufferObject_virtualbase_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_geometryChange".}
proc fcQQuickFramebufferObject_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QQuickFramebufferObject_virtualbase_updatePaintNode".}
proc fcQQuickFramebufferObject_virtualbase_boundingRect(self: pointer): pointer {.importc: "QQuickFramebufferObject_virtualbase_boundingRect".}
proc fcQQuickFramebufferObject_virtualbase_clipRect(self: pointer): pointer {.importc: "QQuickFramebufferObject_virtualbase_clipRect".}
proc fcQQuickFramebufferObject_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QQuickFramebufferObject_virtualbase_contains".}
proc fcQQuickFramebufferObject_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QQuickFramebufferObject_virtualbase_inputMethodQuery".}
proc fcQQuickFramebufferObject_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQuickFramebufferObject_virtualbase_event".}
proc fcQQuickFramebufferObject_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_itemChange".}
proc fcQQuickFramebufferObject_virtualbase_classBegin(self: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_classBegin".}
proc fcQQuickFramebufferObject_virtualbase_componentComplete(self: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_componentComplete".}
proc fcQQuickFramebufferObject_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_keyPressEvent".}
proc fcQQuickFramebufferObject_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_keyReleaseEvent".}
proc fcQQuickFramebufferObject_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_inputMethodEvent".}
proc fcQQuickFramebufferObject_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_focusInEvent".}
proc fcQQuickFramebufferObject_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_focusOutEvent".}
proc fcQQuickFramebufferObject_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_mousePressEvent".}
proc fcQQuickFramebufferObject_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_mouseMoveEvent".}
proc fcQQuickFramebufferObject_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_mouseReleaseEvent".}
proc fcQQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickFramebufferObject_virtualbase_mouseUngrabEvent(self: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_mouseUngrabEvent".}
proc fcQQuickFramebufferObject_virtualbase_touchUngrabEvent(self: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_touchUngrabEvent".}
proc fcQQuickFramebufferObject_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_wheelEvent".}
proc fcQQuickFramebufferObject_virtualbase_touchEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_touchEvent".}
proc fcQQuickFramebufferObject_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_hoverEnterEvent".}
proc fcQQuickFramebufferObject_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_hoverMoveEvent".}
proc fcQQuickFramebufferObject_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_hoverLeaveEvent".}
proc fcQQuickFramebufferObject_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_dragEnterEvent".}
proc fcQQuickFramebufferObject_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_dragMoveEvent".}
proc fcQQuickFramebufferObject_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_dragLeaveEvent".}
proc fcQQuickFramebufferObject_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_dropEvent".}
proc fcQQuickFramebufferObject_virtualbase_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QQuickFramebufferObject_virtualbase_childMouseEventFilter".}
proc fcQQuickFramebufferObject_virtualbase_updatePolish(self: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_updatePolish".}
proc fcQQuickFramebufferObject_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickFramebufferObject_virtualbase_eventFilter".}
proc fcQQuickFramebufferObject_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_timerEvent".}
proc fcQQuickFramebufferObject_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_childEvent".}
proc fcQQuickFramebufferObject_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_customEvent".}
proc fcQQuickFramebufferObject_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_connectNotify".}
proc fcQQuickFramebufferObject_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickFramebufferObject_virtualbase_disconnectNotify".}
proc fcQQuickFramebufferObject_protectedbase_isComponentComplete(self: pointer): bool {.importc: "QQuickFramebufferObject_protectedbase_isComponentComplete".}
proc fcQQuickFramebufferObject_protectedbase_updateInputMethod(self: pointer): void {.importc: "QQuickFramebufferObject_protectedbase_updateInputMethod".}
proc fcQQuickFramebufferObject_protectedbase_widthValid(self: pointer): bool {.importc: "QQuickFramebufferObject_protectedbase_widthValid".}
proc fcQQuickFramebufferObject_protectedbase_heightValid(self: pointer): bool {.importc: "QQuickFramebufferObject_protectedbase_heightValid".}
proc fcQQuickFramebufferObject_protectedbase_setImplicitSize(self: pointer, param1: float64, param2: float64): void {.importc: "QQuickFramebufferObject_protectedbase_setImplicitSize".}
proc fcQQuickFramebufferObject_protectedbase_sender(self: pointer): pointer {.importc: "QQuickFramebufferObject_protectedbase_sender".}
proc fcQQuickFramebufferObject_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickFramebufferObject_protectedbase_senderSignalIndex".}
proc fcQQuickFramebufferObject_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickFramebufferObject_protectedbase_receivers".}
proc fcQQuickFramebufferObject_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickFramebufferObject_protectedbase_isSignalConnected".}
proc fcQQuickFramebufferObject_new(vtbl, vdata: pointer): ptr cQQuickFramebufferObject {.importc: "QQuickFramebufferObject_new".}
proc fcQQuickFramebufferObject_new2(vtbl, vdata: pointer, parent: pointer): ptr cQQuickFramebufferObject {.importc: "QQuickFramebufferObject_new2".}
proc fcQQuickFramebufferObject_staticMetaObject(): pointer {.importc: "QQuickFramebufferObject_staticMetaObject".}
proc fcQQuickFramebufferObjectRenderer_protectedbase_update(self: pointer): void {.importc: "QQuickFramebufferObject__Renderer_protectedbase_update".}
proc fcQQuickFramebufferObjectRenderer_protectedbase_invalidateFramebufferObject(self: pointer): void {.importc: "QQuickFramebufferObject__Renderer_protectedbase_invalidateFramebufferObject".}

proc metaObject*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickFramebufferObject_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: cstring): pointer =
  fcQQuickFramebufferObject_metacast(self.h, param1)

proc metacall*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickFramebufferObject_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickframebufferobject_types.QQuickFramebufferObject, s: cstring): string =
  let v_ms = fcQQuickFramebufferObject_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc textureFollowsItemSize*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): bool =
  fcQQuickFramebufferObject_textureFollowsItemSize(self.h)

proc setTextureFollowsItemSize*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, follows: bool): void =
  fcQQuickFramebufferObject_setTextureFollowsItemSize(self.h, follows)

proc mirrorVertically*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): bool =
  fcQQuickFramebufferObject_mirrorVertically(self.h)

proc setMirrorVertically*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, enable: bool): void =
  fcQQuickFramebufferObject_setMirrorVertically(self.h, enable)

proc createRenderer*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): gen_qquickframebufferobject_types.QQuickFramebufferObjectRenderer =
  gen_qquickframebufferobject_types.QQuickFramebufferObjectRenderer(h: fcQQuickFramebufferObject_createRenderer(self.h), owned: false)

proc isTextureProvider*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): bool =
  fcQQuickFramebufferObject_isTextureProvider(self.h)

proc textureProvider*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickFramebufferObject_textureProvider(self.h), owned: false)

proc releaseResources*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): void =
  fcQQuickFramebufferObject_releaseResources(self.h)

proc textureFollowsItemSizeChanged*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: bool): void =
  fcQQuickFramebufferObject_textureFollowsItemSizeChanged(self.h, param1)

type QQuickFramebufferObjecttextureFollowsItemSizeChangedSlot* = proc(param1: bool)
proc cQQuickFramebufferObject_slot_callback_textureFollowsItemSizeChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickFramebufferObjecttextureFollowsItemSizeChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQQuickFramebufferObject_slot_callback_textureFollowsItemSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickFramebufferObjecttextureFollowsItemSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontextureFollowsItemSizeChanged*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjecttextureFollowsItemSizeChangedSlot) =
  var tmp = new QQuickFramebufferObjecttextureFollowsItemSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_connect_textureFollowsItemSizeChanged(self.h, cast[int](addr tmp[]), cQQuickFramebufferObject_slot_callback_textureFollowsItemSizeChanged, cQQuickFramebufferObject_slot_callback_textureFollowsItemSizeChanged_release)

proc mirrorVerticallyChanged*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: bool): void =
  fcQQuickFramebufferObject_mirrorVerticallyChanged(self.h, param1)

type QQuickFramebufferObjectmirrorVerticallyChangedSlot* = proc(param1: bool)
proc cQQuickFramebufferObject_slot_callback_mirrorVerticallyChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QQuickFramebufferObjectmirrorVerticallyChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQQuickFramebufferObject_slot_callback_mirrorVerticallyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickFramebufferObjectmirrorVerticallyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmirrorVerticallyChanged*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, slot: QQuickFramebufferObjectmirrorVerticallyChangedSlot) =
  var tmp = new QQuickFramebufferObjectmirrorVerticallyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_connect_mirrorVerticallyChanged(self.h, cast[int](addr tmp[]), cQQuickFramebufferObject_slot_callback_mirrorVerticallyChanged, cQQuickFramebufferObject_slot_callback_mirrorVerticallyChanged_release)

proc tr*(_: type gen_qquickframebufferobject_types.QQuickFramebufferObject, s: cstring, c: cstring): string =
  let v_ms = fcQQuickFramebufferObject_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickframebufferobject_types.QQuickFramebufferObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickFramebufferObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQuickFramebufferObjectmetaObjectProc* = proc(self: QQuickFramebufferObject): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickFramebufferObjectmetacastProc* = proc(self: QQuickFramebufferObject, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickFramebufferObjectmetacallProc* = proc(self: QQuickFramebufferObject, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickFramebufferObjectcreateRendererProc* = proc(self: QQuickFramebufferObject): gen_qquickframebufferobject_types.QQuickFramebufferObjectRenderer {.raises: [], gcsafe.}
type QQuickFramebufferObjectisTextureProviderProc* = proc(self: QQuickFramebufferObject): bool {.raises: [], gcsafe.}
type QQuickFramebufferObjecttextureProviderProc* = proc(self: QQuickFramebufferObject): gen_qsgtextureprovider_types.QSGTextureProvider {.raises: [], gcsafe.}
type QQuickFramebufferObjectreleaseResourcesProc* = proc(self: QQuickFramebufferObject): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectgeometryChangeProc* = proc(self: QQuickFramebufferObject, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectupdatePaintNodeProc* = proc(self: QQuickFramebufferObject, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode {.raises: [], gcsafe.}
type QQuickFramebufferObjectboundingRectProc* = proc(self: QQuickFramebufferObject): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QQuickFramebufferObjectclipRectProc* = proc(self: QQuickFramebufferObject): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QQuickFramebufferObjectcontainsProc* = proc(self: QQuickFramebufferObject, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QQuickFramebufferObjectinputMethodQueryProc* = proc(self: QQuickFramebufferObject, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QQuickFramebufferObjecteventProc* = proc(self: QQuickFramebufferObject, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickFramebufferObjectitemChangeProc* = proc(self: QQuickFramebufferObject, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectclassBeginProc* = proc(self: QQuickFramebufferObject): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectcomponentCompleteProc* = proc(self: QQuickFramebufferObject): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectkeyPressEventProc* = proc(self: QQuickFramebufferObject, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectkeyReleaseEventProc* = proc(self: QQuickFramebufferObject, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectinputMethodEventProc* = proc(self: QQuickFramebufferObject, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectfocusInEventProc* = proc(self: QQuickFramebufferObject, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectfocusOutEventProc* = proc(self: QQuickFramebufferObject, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectmousePressEventProc* = proc(self: QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectmouseMoveEventProc* = proc(self: QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectmouseReleaseEventProc* = proc(self: QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectmouseDoubleClickEventProc* = proc(self: QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectmouseUngrabEventProc* = proc(self: QQuickFramebufferObject): void {.raises: [], gcsafe.}
type QQuickFramebufferObjecttouchUngrabEventProc* = proc(self: QQuickFramebufferObject): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectwheelEventProc* = proc(self: QQuickFramebufferObject, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjecttouchEventProc* = proc(self: QQuickFramebufferObject, event: gen_qevent_types.QTouchEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjecthoverEnterEventProc* = proc(self: QQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjecthoverMoveEventProc* = proc(self: QQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjecthoverLeaveEventProc* = proc(self: QQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectdragEnterEventProc* = proc(self: QQuickFramebufferObject, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectdragMoveEventProc* = proc(self: QQuickFramebufferObject, param1: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectdragLeaveEventProc* = proc(self: QQuickFramebufferObject, param1: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectdropEventProc* = proc(self: QQuickFramebufferObject, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectchildMouseEventFilterProc* = proc(self: QQuickFramebufferObject, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickFramebufferObjectupdatePolishProc* = proc(self: QQuickFramebufferObject): void {.raises: [], gcsafe.}
type QQuickFramebufferObjecteventFilterProc* = proc(self: QQuickFramebufferObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickFramebufferObjecttimerEventProc* = proc(self: QQuickFramebufferObject, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectchildEventProc* = proc(self: QQuickFramebufferObject, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectcustomEventProc* = proc(self: QQuickFramebufferObject, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectconnectNotifyProc* = proc(self: QQuickFramebufferObject, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectdisconnectNotifyProc* = proc(self: QQuickFramebufferObject, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickFramebufferObjectVTable* {.inheritable, pure.} = object
  vtbl: cQQuickFramebufferObjectVTable
  metaObject*: QQuickFramebufferObjectmetaObjectProc
  metacast*: QQuickFramebufferObjectmetacastProc
  metacall*: QQuickFramebufferObjectmetacallProc
  createRenderer*: QQuickFramebufferObjectcreateRendererProc
  isTextureProvider*: QQuickFramebufferObjectisTextureProviderProc
  textureProvider*: QQuickFramebufferObjecttextureProviderProc
  releaseResources*: QQuickFramebufferObjectreleaseResourcesProc
  geometryChange*: QQuickFramebufferObjectgeometryChangeProc
  updatePaintNode*: QQuickFramebufferObjectupdatePaintNodeProc
  boundingRect*: QQuickFramebufferObjectboundingRectProc
  clipRect*: QQuickFramebufferObjectclipRectProc
  contains*: QQuickFramebufferObjectcontainsProc
  inputMethodQuery*: QQuickFramebufferObjectinputMethodQueryProc
  event*: QQuickFramebufferObjecteventProc
  itemChange*: QQuickFramebufferObjectitemChangeProc
  classBegin*: QQuickFramebufferObjectclassBeginProc
  componentComplete*: QQuickFramebufferObjectcomponentCompleteProc
  keyPressEvent*: QQuickFramebufferObjectkeyPressEventProc
  keyReleaseEvent*: QQuickFramebufferObjectkeyReleaseEventProc
  inputMethodEvent*: QQuickFramebufferObjectinputMethodEventProc
  focusInEvent*: QQuickFramebufferObjectfocusInEventProc
  focusOutEvent*: QQuickFramebufferObjectfocusOutEventProc
  mousePressEvent*: QQuickFramebufferObjectmousePressEventProc
  mouseMoveEvent*: QQuickFramebufferObjectmouseMoveEventProc
  mouseReleaseEvent*: QQuickFramebufferObjectmouseReleaseEventProc
  mouseDoubleClickEvent*: QQuickFramebufferObjectmouseDoubleClickEventProc
  mouseUngrabEvent*: QQuickFramebufferObjectmouseUngrabEventProc
  touchUngrabEvent*: QQuickFramebufferObjecttouchUngrabEventProc
  wheelEvent*: QQuickFramebufferObjectwheelEventProc
  touchEvent*: QQuickFramebufferObjecttouchEventProc
  hoverEnterEvent*: QQuickFramebufferObjecthoverEnterEventProc
  hoverMoveEvent*: QQuickFramebufferObjecthoverMoveEventProc
  hoverLeaveEvent*: QQuickFramebufferObjecthoverLeaveEventProc
  dragEnterEvent*: QQuickFramebufferObjectdragEnterEventProc
  dragMoveEvent*: QQuickFramebufferObjectdragMoveEventProc
  dragLeaveEvent*: QQuickFramebufferObjectdragLeaveEventProc
  dropEvent*: QQuickFramebufferObjectdropEventProc
  childMouseEventFilter*: QQuickFramebufferObjectchildMouseEventFilterProc
  updatePolish*: QQuickFramebufferObjectupdatePolishProc
  eventFilter*: QQuickFramebufferObjecteventFilterProc
  timerEvent*: QQuickFramebufferObjecttimerEventProc
  childEvent*: QQuickFramebufferObjectchildEventProc
  customEvent*: QQuickFramebufferObjectcustomEventProc
  connectNotify*: QQuickFramebufferObjectconnectNotifyProc
  disconnectNotify*: QQuickFramebufferObjectdisconnectNotifyProc
proc QQuickFramebufferObjectmetaObject*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickFramebufferObject_virtualbase_metaObject(self.h), owned: false)

proc cQQuickFramebufferObject_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickFramebufferObjectmetacast*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: cstring): pointer =
  fcQQuickFramebufferObject_virtualbase_metacast(self.h, param1)

proc cQQuickFramebufferObject_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickFramebufferObjectmetacall*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickFramebufferObject_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQQuickFramebufferObject_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQQuickFramebufferObject_vtable_callback_createRenderer(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  var virtualReturn = vtbl[].createRenderer(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickFramebufferObjectisTextureProvider*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): bool =
  fcQQuickFramebufferObject_virtualbase_isTextureProvider(self.h)

proc cQQuickFramebufferObject_vtable_callback_isTextureProvider(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  var virtualReturn = vtbl[].isTextureProvider(self)
  virtualReturn

proc QQuickFramebufferObjecttextureProvider*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickFramebufferObject_virtualbase_textureProvider(self.h), owned: false)

proc cQQuickFramebufferObject_vtable_callback_textureProvider(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  var virtualReturn = vtbl[].textureProvider(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickFramebufferObjectreleaseResources*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): void =
  fcQQuickFramebufferObject_virtualbase_releaseResources(self.h)

proc cQQuickFramebufferObject_vtable_callback_releaseResources(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  vtbl[].releaseResources(self)

proc QQuickFramebufferObjectgeometryChange*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void =
  fcQQuickFramebufferObject_virtualbase_geometryChange(self.h, newGeometry.h, oldGeometry.h)

proc cQQuickFramebufferObject_vtable_callback_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry, owned: false)
  vtbl[].geometryChange(self, slotval1, slotval2)

proc QQuickFramebufferObjectupdatePaintNode*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQQuickFramebufferObject_virtualbase_updatePaintNode(self.h, param1.h, param2.h), owned: false)

proc cQQuickFramebufferObject_vtable_callback_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1, owned: false)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2, owned: false)
  var virtualReturn = vtbl[].updatePaintNode(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickFramebufferObjectboundingRect*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickFramebufferObject_virtualbase_boundingRect(self.h), owned: true)

proc cQQuickFramebufferObject_vtable_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickFramebufferObjectclipRect*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickFramebufferObject_virtualbase_clipRect(self.h), owned: true)

proc cQQuickFramebufferObject_vtable_callback_clipRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  var virtualReturn = vtbl[].clipRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickFramebufferObjectcontains*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, point: gen_qpoint_types.QPointF): bool =
  fcQQuickFramebufferObject_virtualbase_contains(self.h, point.h)

proc cQQuickFramebufferObject_vtable_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QQuickFramebufferObjectinputMethodQuery*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQuickFramebufferObject_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc cQQuickFramebufferObject_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickFramebufferObjectevent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQuickFramebufferObject_virtualbase_event(self.h, param1.h)

proc cQQuickFramebufferObject_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickFramebufferObjectitemChange*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void =
  fcQQuickFramebufferObject_virtualbase_itemChange(self.h, cint(param1), param2.h)

proc cQQuickFramebufferObject_vtable_callback_itemChange(self: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2, owned: false)
  vtbl[].itemChange(self, slotval1, slotval2)

proc QQuickFramebufferObjectclassBegin*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): void =
  fcQQuickFramebufferObject_virtualbase_classBegin(self.h)

proc cQQuickFramebufferObject_vtable_callback_classBegin(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  vtbl[].classBegin(self)

proc QQuickFramebufferObjectcomponentComplete*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): void =
  fcQQuickFramebufferObject_virtualbase_componentComplete(self.h)

proc cQQuickFramebufferObject_vtable_callback_componentComplete(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  vtbl[].componentComplete(self)

proc QQuickFramebufferObjectkeyPressEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickFramebufferObject_virtualbase_keyPressEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QQuickFramebufferObjectkeyReleaseEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickFramebufferObject_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QQuickFramebufferObjectinputMethodEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQQuickFramebufferObject_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQQuickFramebufferObject_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QQuickFramebufferObjectfocusInEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickFramebufferObject_virtualbase_focusInEvent(self.h, param1.h)

proc cQQuickFramebufferObject_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QQuickFramebufferObjectfocusOutEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickFramebufferObject_virtualbase_focusOutEvent(self.h, param1.h)

proc cQQuickFramebufferObject_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QQuickFramebufferObjectmousePressEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickFramebufferObject_virtualbase_mousePressEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QQuickFramebufferObjectmouseMoveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickFramebufferObject_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QQuickFramebufferObjectmouseReleaseEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickFramebufferObject_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QQuickFramebufferObjectmouseDoubleClickEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QQuickFramebufferObjectmouseUngrabEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): void =
  fcQQuickFramebufferObject_virtualbase_mouseUngrabEvent(self.h)

proc cQQuickFramebufferObject_vtable_callback_mouseUngrabEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  vtbl[].mouseUngrabEvent(self)

proc QQuickFramebufferObjecttouchUngrabEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): void =
  fcQQuickFramebufferObject_virtualbase_touchUngrabEvent(self.h)

proc cQQuickFramebufferObject_vtable_callback_touchUngrabEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  vtbl[].touchUngrabEvent(self)

proc QQuickFramebufferObjectwheelEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QWheelEvent): void =
  fcQQuickFramebufferObject_virtualbase_wheelEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QQuickFramebufferObjecttouchEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QTouchEvent): void =
  fcQQuickFramebufferObject_virtualbase_touchEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_touchEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: event, owned: false)
  vtbl[].touchEvent(self, slotval1)

proc QQuickFramebufferObjecthoverEnterEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickFramebufferObject_virtualbase_hoverEnterEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QQuickFramebufferObjecthoverMoveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickFramebufferObject_virtualbase_hoverMoveEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QQuickFramebufferObjecthoverLeaveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickFramebufferObject_virtualbase_hoverLeaveEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QQuickFramebufferObjectdragEnterEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQQuickFramebufferObject_virtualbase_dragEnterEvent(self.h, param1.h)

proc cQQuickFramebufferObject_vtable_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QQuickFramebufferObjectdragMoveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQQuickFramebufferObject_virtualbase_dragMoveEvent(self.h, param1.h)

proc cQQuickFramebufferObject_vtable_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QQuickFramebufferObjectdragLeaveEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQQuickFramebufferObject_virtualbase_dragLeaveEvent(self.h, param1.h)

proc cQQuickFramebufferObject_vtable_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QQuickFramebufferObjectdropEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qevent_types.QDropEvent): void =
  fcQQuickFramebufferObject_virtualbase_dropEvent(self.h, param1.h)

proc cQQuickFramebufferObject_vtable_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QQuickFramebufferObjectchildMouseEventFilter*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool =
  fcQQuickFramebufferObject_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

proc cQQuickFramebufferObject_vtable_callback_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].childMouseEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickFramebufferObjectupdatePolish*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): void =
  fcQQuickFramebufferObject_virtualbase_updatePolish(self.h)

proc cQQuickFramebufferObject_vtable_callback_updatePolish(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  vtbl[].updatePolish(self)

proc QQuickFramebufferObjecteventFilter*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickFramebufferObject_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickFramebufferObjecttimerEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickFramebufferObject_virtualbase_timerEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQuickFramebufferObjectchildEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickFramebufferObject_virtualbase_childEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQuickFramebufferObjectcustomEvent*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickFramebufferObject_virtualbase_customEvent(self.h, event.h)

proc cQQuickFramebufferObject_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQuickFramebufferObjectconnectNotify*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickFramebufferObject_virtualbase_connectNotify(self.h, signal.h)

proc cQQuickFramebufferObject_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQuickFramebufferObjectdisconnectNotify*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickFramebufferObject_virtualbase_disconnectNotify(self.h, signal.h)

proc cQQuickFramebufferObject_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
  let self = QQuickFramebufferObject(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickFramebufferObject* {.inheritable.} = ref object of QQuickFramebufferObject
  vtbl*: cQQuickFramebufferObjectVTable
method metaObject*(self: VirtualQQuickFramebufferObject): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickFramebufferObjectmetaObject(self[])
proc cQQuickFramebufferObject_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQuickFramebufferObject, param1: cstring): pointer {.base.} =
  QQuickFramebufferObjectmetacast(self[], param1)
proc cQQuickFramebufferObject_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQuickFramebufferObject, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickFramebufferObjectmetacall(self[], param1, param2, param3)
proc cQQuickFramebufferObject_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method createRenderer*(self: VirtualQQuickFramebufferObject): gen_qquickframebufferobject_types.QQuickFramebufferObjectRenderer {.base.} =
  raiseAssert("missing implementation of QQuickFramebufferObject_virtualbase_createRenderer")
proc cQQuickFramebufferObject_method_callback_createRenderer(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  var virtualReturn = inst.createRenderer()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method isTextureProvider*(self: VirtualQQuickFramebufferObject): bool {.base.} =
  QQuickFramebufferObjectisTextureProvider(self[])
proc cQQuickFramebufferObject_method_callback_isTextureProvider(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  var virtualReturn = inst.isTextureProvider()
  virtualReturn

method textureProvider*(self: VirtualQQuickFramebufferObject): gen_qsgtextureprovider_types.QSGTextureProvider {.base.} =
  QQuickFramebufferObjecttextureProvider(self[])
proc cQQuickFramebufferObject_method_callback_textureProvider(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  var virtualReturn = inst.textureProvider()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method releaseResources*(self: VirtualQQuickFramebufferObject): void {.base.} =
  QQuickFramebufferObjectreleaseResources(self[])
proc cQQuickFramebufferObject_method_callback_releaseResources(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  inst.releaseResources()

method geometryChange*(self: VirtualQQuickFramebufferObject, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.base.} =
  QQuickFramebufferObjectgeometryChange(self[], newGeometry, oldGeometry)
proc cQQuickFramebufferObject_method_callback_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry, owned: false)
  inst.geometryChange(slotval1, slotval2)

method updatePaintNode*(self: VirtualQQuickFramebufferObject, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode {.base.} =
  QQuickFramebufferObjectupdatePaintNode(self[], param1, param2)
proc cQQuickFramebufferObject_method_callback_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1, owned: false)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2, owned: false)
  var virtualReturn = inst.updatePaintNode(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method boundingRect*(self: VirtualQQuickFramebufferObject): gen_qrect_types.QRectF {.base.} =
  QQuickFramebufferObjectboundingRect(self[])
proc cQQuickFramebufferObject_method_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  var virtualReturn = inst.boundingRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method clipRect*(self: VirtualQQuickFramebufferObject): gen_qrect_types.QRectF {.base.} =
  QQuickFramebufferObjectclipRect(self[])
proc cQQuickFramebufferObject_method_callback_clipRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  var virtualReturn = inst.clipRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method contains*(self: VirtualQQuickFramebufferObject, point: gen_qpoint_types.QPointF): bool {.base.} =
  QQuickFramebufferObjectcontains(self[], point)
proc cQQuickFramebufferObject_method_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = inst.contains(slotval1)
  virtualReturn

method inputMethodQuery*(self: VirtualQQuickFramebufferObject, query: cint): gen_qvariant_types.QVariant {.base.} =
  QQuickFramebufferObjectinputMethodQuery(self[], query)
proc cQQuickFramebufferObject_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQQuickFramebufferObject, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickFramebufferObjectevent(self[], param1)
proc cQQuickFramebufferObject_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method itemChange*(self: VirtualQQuickFramebufferObject, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void {.base.} =
  QQuickFramebufferObjectitemChange(self[], param1, param2)
proc cQQuickFramebufferObject_method_callback_itemChange(self: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2, owned: false)
  inst.itemChange(slotval1, slotval2)

method classBegin*(self: VirtualQQuickFramebufferObject): void {.base.} =
  QQuickFramebufferObjectclassBegin(self[])
proc cQQuickFramebufferObject_method_callback_classBegin(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  inst.classBegin()

method componentComplete*(self: VirtualQQuickFramebufferObject): void {.base.} =
  QQuickFramebufferObjectcomponentComplete(self[])
proc cQQuickFramebufferObject_method_callback_componentComplete(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  inst.componentComplete()

method keyPressEvent*(self: VirtualQQuickFramebufferObject, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickFramebufferObjectkeyPressEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQQuickFramebufferObject, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickFramebufferObjectkeyReleaseEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method inputMethodEvent*(self: VirtualQQuickFramebufferObject, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QQuickFramebufferObjectinputMethodEvent(self[], param1)
proc cQQuickFramebufferObject_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method focusInEvent*(self: VirtualQQuickFramebufferObject, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickFramebufferObjectfocusInEvent(self[], param1)
proc cQQuickFramebufferObject_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQQuickFramebufferObject, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickFramebufferObjectfocusOutEvent(self[], param1)
proc cQQuickFramebufferObject_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

method mousePressEvent*(self: VirtualQQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickFramebufferObjectmousePressEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickFramebufferObjectmouseMoveEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickFramebufferObjectmouseReleaseEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQQuickFramebufferObject, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickFramebufferObjectmouseDoubleClickEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseUngrabEvent*(self: VirtualQQuickFramebufferObject): void {.base.} =
  QQuickFramebufferObjectmouseUngrabEvent(self[])
proc cQQuickFramebufferObject_method_callback_mouseUngrabEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  inst.mouseUngrabEvent()

method touchUngrabEvent*(self: VirtualQQuickFramebufferObject): void {.base.} =
  QQuickFramebufferObjecttouchUngrabEvent(self[])
proc cQQuickFramebufferObject_method_callback_touchUngrabEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  inst.touchUngrabEvent()

method wheelEvent*(self: VirtualQQuickFramebufferObject, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QQuickFramebufferObjectwheelEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method touchEvent*(self: VirtualQQuickFramebufferObject, event: gen_qevent_types.QTouchEvent): void {.base.} =
  QQuickFramebufferObjecttouchEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_touchEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QTouchEvent(h: event, owned: false)
  inst.touchEvent(slotval1)

method hoverEnterEvent*(self: VirtualQQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickFramebufferObjecthoverEnterEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverEnterEvent(slotval1)

method hoverMoveEvent*(self: VirtualQQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickFramebufferObjecthoverMoveEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverMoveEvent(slotval1)

method hoverLeaveEvent*(self: VirtualQQuickFramebufferObject, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickFramebufferObjecthoverLeaveEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverLeaveEvent(slotval1)

method dragEnterEvent*(self: VirtualQQuickFramebufferObject, param1: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QQuickFramebufferObjectdragEnterEvent(self[], param1)
proc cQQuickFramebufferObject_method_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQQuickFramebufferObject, param1: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QQuickFramebufferObjectdragMoveEvent(self[], param1)
proc cQQuickFramebufferObject_method_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQQuickFramebufferObject, param1: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QQuickFramebufferObjectdragLeaveEvent(self[], param1)
proc cQQuickFramebufferObject_method_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQQuickFramebufferObject, param1: gen_qevent_types.QDropEvent): void {.base.} =
  QQuickFramebufferObjectdropEvent(self[], param1)
proc cQQuickFramebufferObject_method_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  inst.dropEvent(slotval1)

method childMouseEventFilter*(self: VirtualQQuickFramebufferObject, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickFramebufferObjectchildMouseEventFilter(self[], param1, param2)
proc cQQuickFramebufferObject_method_callback_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.childMouseEventFilter(slotval1, slotval2)
  virtualReturn

method updatePolish*(self: VirtualQQuickFramebufferObject): void {.base.} =
  QQuickFramebufferObjectupdatePolish(self[])
proc cQQuickFramebufferObject_method_callback_updatePolish(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  inst.updatePolish()

method eventFilter*(self: VirtualQQuickFramebufferObject, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickFramebufferObjecteventFilter(self[], watched, event)
proc cQQuickFramebufferObject_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQuickFramebufferObject, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickFramebufferObjecttimerEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQQuickFramebufferObject, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickFramebufferObjectchildEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQQuickFramebufferObject, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickFramebufferObjectcustomEvent(self[], event)
proc cQQuickFramebufferObject_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQQuickFramebufferObject, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickFramebufferObjectconnectNotify(self[], signal)
proc cQQuickFramebufferObject_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQuickFramebufferObject, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickFramebufferObjectdisconnectNotify(self[], signal)
proc cQQuickFramebufferObject_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickFramebufferObject](fcQQuickFramebufferObject_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc isComponentComplete*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): bool =
  fcQQuickFramebufferObject_protectedbase_isComponentComplete(self.h)

proc updateInputMethod*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): void =
  fcQQuickFramebufferObject_protectedbase_updateInputMethod(self.h)

proc widthValid*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): bool =
  fcQQuickFramebufferObject_protectedbase_widthValid(self.h)

proc heightValid*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): bool =
  fcQQuickFramebufferObject_protectedbase_heightValid(self.h)

proc setImplicitSize*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, param1: float64, param2: float64): void =
  fcQQuickFramebufferObject_protectedbase_setImplicitSize(self.h, param1, param2)

proc sender*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickFramebufferObject_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject): cint =
  fcQQuickFramebufferObject_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, signal: cstring): cint =
  fcQQuickFramebufferObject_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickframebufferobject_types.QQuickFramebufferObject, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickFramebufferObject_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickframebufferobject_types.QQuickFramebufferObject,
    vtbl: ref QQuickFramebufferObjectVTable = nil): gen_qquickframebufferobject_types.QQuickFramebufferObject =
  let vtbl = if vtbl == nil: new QQuickFramebufferObjectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQuickFramebufferObject_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQuickFramebufferObject_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQuickFramebufferObject_vtable_callback_metacall
  if not isNil(vtbl[].createRenderer):
    vtbl[].vtbl.createRenderer = cQQuickFramebufferObject_vtable_callback_createRenderer
  if not isNil(vtbl[].isTextureProvider):
    vtbl[].vtbl.isTextureProvider = cQQuickFramebufferObject_vtable_callback_isTextureProvider
  if not isNil(vtbl[].textureProvider):
    vtbl[].vtbl.textureProvider = cQQuickFramebufferObject_vtable_callback_textureProvider
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = cQQuickFramebufferObject_vtable_callback_releaseResources
  if not isNil(vtbl[].geometryChange):
    vtbl[].vtbl.geometryChange = cQQuickFramebufferObject_vtable_callback_geometryChange
  if not isNil(vtbl[].updatePaintNode):
    vtbl[].vtbl.updatePaintNode = cQQuickFramebufferObject_vtable_callback_updatePaintNode
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = cQQuickFramebufferObject_vtable_callback_boundingRect
  if not isNil(vtbl[].clipRect):
    vtbl[].vtbl.clipRect = cQQuickFramebufferObject_vtable_callback_clipRect
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = cQQuickFramebufferObject_vtable_callback_contains
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQQuickFramebufferObject_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQuickFramebufferObject_vtable_callback_event
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = cQQuickFramebufferObject_vtable_callback_itemChange
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = cQQuickFramebufferObject_vtable_callback_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = cQQuickFramebufferObject_vtable_callback_componentComplete
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQQuickFramebufferObject_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQQuickFramebufferObject_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQQuickFramebufferObject_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQQuickFramebufferObject_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQQuickFramebufferObject_vtable_callback_focusOutEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQQuickFramebufferObject_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQQuickFramebufferObject_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQQuickFramebufferObject_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQQuickFramebufferObject_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = cQQuickFramebufferObject_vtable_callback_mouseUngrabEvent
  if not isNil(vtbl[].touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = cQQuickFramebufferObject_vtable_callback_touchUngrabEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQQuickFramebufferObject_vtable_callback_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = cQQuickFramebufferObject_vtable_callback_touchEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = cQQuickFramebufferObject_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = cQQuickFramebufferObject_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = cQQuickFramebufferObject_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQQuickFramebufferObject_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQQuickFramebufferObject_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQQuickFramebufferObject_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQQuickFramebufferObject_vtable_callback_dropEvent
  if not isNil(vtbl[].childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = cQQuickFramebufferObject_vtable_callback_childMouseEventFilter
  if not isNil(vtbl[].updatePolish):
    vtbl[].vtbl.updatePolish = cQQuickFramebufferObject_vtable_callback_updatePolish
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQuickFramebufferObject_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQuickFramebufferObject_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQuickFramebufferObject_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQuickFramebufferObject_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQuickFramebufferObject_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQuickFramebufferObject_vtable_callback_disconnectNotify
  gen_qquickframebufferobject_types.QQuickFramebufferObject(h: fcQQuickFramebufferObject_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qquickframebufferobject_types.QQuickFramebufferObject,
    parent: gen_qquickitem_types.QQuickItem,
    vtbl: ref QQuickFramebufferObjectVTable = nil): gen_qquickframebufferobject_types.QQuickFramebufferObject =
  let vtbl = if vtbl == nil: new QQuickFramebufferObjectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickFramebufferObjectVTable](fcQQuickFramebufferObject_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQuickFramebufferObject_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQuickFramebufferObject_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQuickFramebufferObject_vtable_callback_metacall
  if not isNil(vtbl[].createRenderer):
    vtbl[].vtbl.createRenderer = cQQuickFramebufferObject_vtable_callback_createRenderer
  if not isNil(vtbl[].isTextureProvider):
    vtbl[].vtbl.isTextureProvider = cQQuickFramebufferObject_vtable_callback_isTextureProvider
  if not isNil(vtbl[].textureProvider):
    vtbl[].vtbl.textureProvider = cQQuickFramebufferObject_vtable_callback_textureProvider
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = cQQuickFramebufferObject_vtable_callback_releaseResources
  if not isNil(vtbl[].geometryChange):
    vtbl[].vtbl.geometryChange = cQQuickFramebufferObject_vtable_callback_geometryChange
  if not isNil(vtbl[].updatePaintNode):
    vtbl[].vtbl.updatePaintNode = cQQuickFramebufferObject_vtable_callback_updatePaintNode
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = cQQuickFramebufferObject_vtable_callback_boundingRect
  if not isNil(vtbl[].clipRect):
    vtbl[].vtbl.clipRect = cQQuickFramebufferObject_vtable_callback_clipRect
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = cQQuickFramebufferObject_vtable_callback_contains
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQQuickFramebufferObject_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQuickFramebufferObject_vtable_callback_event
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = cQQuickFramebufferObject_vtable_callback_itemChange
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = cQQuickFramebufferObject_vtable_callback_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = cQQuickFramebufferObject_vtable_callback_componentComplete
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQQuickFramebufferObject_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQQuickFramebufferObject_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQQuickFramebufferObject_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQQuickFramebufferObject_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQQuickFramebufferObject_vtable_callback_focusOutEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQQuickFramebufferObject_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQQuickFramebufferObject_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQQuickFramebufferObject_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQQuickFramebufferObject_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = cQQuickFramebufferObject_vtable_callback_mouseUngrabEvent
  if not isNil(vtbl[].touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = cQQuickFramebufferObject_vtable_callback_touchUngrabEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQQuickFramebufferObject_vtable_callback_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = cQQuickFramebufferObject_vtable_callback_touchEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = cQQuickFramebufferObject_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = cQQuickFramebufferObject_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = cQQuickFramebufferObject_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQQuickFramebufferObject_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQQuickFramebufferObject_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQQuickFramebufferObject_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQQuickFramebufferObject_vtable_callback_dropEvent
  if not isNil(vtbl[].childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = cQQuickFramebufferObject_vtable_callback_childMouseEventFilter
  if not isNil(vtbl[].updatePolish):
    vtbl[].vtbl.updatePolish = cQQuickFramebufferObject_vtable_callback_updatePolish
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQuickFramebufferObject_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQuickFramebufferObject_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQuickFramebufferObject_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQuickFramebufferObject_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQuickFramebufferObject_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQuickFramebufferObject_vtable_callback_disconnectNotify
  gen_qquickframebufferobject_types.QQuickFramebufferObject(h: fcQQuickFramebufferObject_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQQuickFramebufferObject_mvtbl = cQQuickFramebufferObjectVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickFramebufferObject()[])](self.fcQQuickFramebufferObject_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQQuickFramebufferObject_method_callback_metaObject,
  metacast: cQQuickFramebufferObject_method_callback_metacast,
  metacall: cQQuickFramebufferObject_method_callback_metacall,
  createRenderer: cQQuickFramebufferObject_method_callback_createRenderer,
  isTextureProvider: cQQuickFramebufferObject_method_callback_isTextureProvider,
  textureProvider: cQQuickFramebufferObject_method_callback_textureProvider,
  releaseResources: cQQuickFramebufferObject_method_callback_releaseResources,
  geometryChange: cQQuickFramebufferObject_method_callback_geometryChange,
  updatePaintNode: cQQuickFramebufferObject_method_callback_updatePaintNode,
  boundingRect: cQQuickFramebufferObject_method_callback_boundingRect,
  clipRect: cQQuickFramebufferObject_method_callback_clipRect,
  contains: cQQuickFramebufferObject_method_callback_contains,
  inputMethodQuery: cQQuickFramebufferObject_method_callback_inputMethodQuery,
  event: cQQuickFramebufferObject_method_callback_event,
  itemChange: cQQuickFramebufferObject_method_callback_itemChange,
  classBegin: cQQuickFramebufferObject_method_callback_classBegin,
  componentComplete: cQQuickFramebufferObject_method_callback_componentComplete,
  keyPressEvent: cQQuickFramebufferObject_method_callback_keyPressEvent,
  keyReleaseEvent: cQQuickFramebufferObject_method_callback_keyReleaseEvent,
  inputMethodEvent: cQQuickFramebufferObject_method_callback_inputMethodEvent,
  focusInEvent: cQQuickFramebufferObject_method_callback_focusInEvent,
  focusOutEvent: cQQuickFramebufferObject_method_callback_focusOutEvent,
  mousePressEvent: cQQuickFramebufferObject_method_callback_mousePressEvent,
  mouseMoveEvent: cQQuickFramebufferObject_method_callback_mouseMoveEvent,
  mouseReleaseEvent: cQQuickFramebufferObject_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQQuickFramebufferObject_method_callback_mouseDoubleClickEvent,
  mouseUngrabEvent: cQQuickFramebufferObject_method_callback_mouseUngrabEvent,
  touchUngrabEvent: cQQuickFramebufferObject_method_callback_touchUngrabEvent,
  wheelEvent: cQQuickFramebufferObject_method_callback_wheelEvent,
  touchEvent: cQQuickFramebufferObject_method_callback_touchEvent,
  hoverEnterEvent: cQQuickFramebufferObject_method_callback_hoverEnterEvent,
  hoverMoveEvent: cQQuickFramebufferObject_method_callback_hoverMoveEvent,
  hoverLeaveEvent: cQQuickFramebufferObject_method_callback_hoverLeaveEvent,
  dragEnterEvent: cQQuickFramebufferObject_method_callback_dragEnterEvent,
  dragMoveEvent: cQQuickFramebufferObject_method_callback_dragMoveEvent,
  dragLeaveEvent: cQQuickFramebufferObject_method_callback_dragLeaveEvent,
  dropEvent: cQQuickFramebufferObject_method_callback_dropEvent,
  childMouseEventFilter: cQQuickFramebufferObject_method_callback_childMouseEventFilter,
  updatePolish: cQQuickFramebufferObject_method_callback_updatePolish,
  eventFilter: cQQuickFramebufferObject_method_callback_eventFilter,
  timerEvent: cQQuickFramebufferObject_method_callback_timerEvent,
  childEvent: cQQuickFramebufferObject_method_callback_childEvent,
  customEvent: cQQuickFramebufferObject_method_callback_customEvent,
  connectNotify: cQQuickFramebufferObject_method_callback_connectNotify,
  disconnectNotify: cQQuickFramebufferObject_method_callback_disconnectNotify,
)
proc create*(T: type gen_qquickframebufferobject_types.QQuickFramebufferObject,
    inst: VirtualQQuickFramebufferObject) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickFramebufferObject_new(addr(cQQuickFramebufferObject_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qquickframebufferobject_types.QQuickFramebufferObject,
    parent: gen_qquickitem_types.QQuickItem,
    inst: VirtualQQuickFramebufferObject) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickFramebufferObject_new2(addr(cQQuickFramebufferObject_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qquickframebufferobject_types.QQuickFramebufferObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickFramebufferObject_staticMetaObject())
proc update*(self: gen_qquickframebufferobject_types.QQuickFramebufferObjectRenderer): void =
  fcQQuickFramebufferObjectRenderer_protectedbase_update(self.h)

proc invalidateFramebufferObject*(self: gen_qquickframebufferobject_types.QQuickFramebufferObjectRenderer): void =
  fcQQuickFramebufferObjectRenderer_protectedbase_invalidateFramebufferObject(self.h)

