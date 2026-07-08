import ./qtquick_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QQuickRhiItemTextureFormatEnum* = distinct cint
template RGBA8*(_: type QQuickRhiItemTextureFormatEnum): untyped = 0
template RGBA16F*(_: type QQuickRhiItemTextureFormatEnum): untyped = 1
template RGBA32F*(_: type QQuickRhiItemTextureFormatEnum): untyped = 2
template RGB10A2*(_: type QQuickRhiItemTextureFormatEnum): untyped = 3


import ./gen_qquickrhiitem_types
export gen_qquickrhiitem_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
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
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qquickitem,
  gen_qsgnode_types,
  gen_qsgtextureprovider_types

type cQQuickRhiItemRenderer*{.exportc: "QQuickRhiItemRenderer", incompleteStruct.} = object
type cQQuickRhiItem*{.exportc: "QQuickRhiItem", incompleteStruct.} = object

proc fcQQuickRhiItemRenderer_protectedbase_update(self: pointer): void {.importc: "QQuickRhiItemRenderer_protectedbase_update".}
proc fcQQuickRhiItem_metaObject(self: pointer): pointer {.importc: "QQuickRhiItem_metaObject".}
proc fcQQuickRhiItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickRhiItem_metacast".}
proc fcQQuickRhiItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickRhiItem_metacall".}
proc fcQQuickRhiItem_trS(s: cstring): struct_seaqt_string {.importc: "QQuickRhiItem_tr_s".}
proc fcQQuickRhiItem_sampleCount(self: pointer): cint {.importc: "QQuickRhiItem_sampleCount".}
proc fcQQuickRhiItem_setSampleCount(self: pointer, samples: cint): void {.importc: "QQuickRhiItem_setSampleCount".}
proc fcQQuickRhiItem_colorBufferFormat(self: pointer): cint {.importc: "QQuickRhiItem_colorBufferFormat".}
proc fcQQuickRhiItem_setColorBufferFormat(self: pointer, format: cint): void {.importc: "QQuickRhiItem_setColorBufferFormat".}
proc fcQQuickRhiItem_isMirrorVerticallyEnabled(self: pointer): bool {.importc: "QQuickRhiItem_isMirrorVerticallyEnabled".}
proc fcQQuickRhiItem_setMirrorVertically(self: pointer, enable: bool): void {.importc: "QQuickRhiItem_setMirrorVertically".}
proc fcQQuickRhiItem_alphaBlending(self: pointer): bool {.importc: "QQuickRhiItem_alphaBlending".}
proc fcQQuickRhiItem_setAlphaBlending(self: pointer, enable: bool): void {.importc: "QQuickRhiItem_setAlphaBlending".}
proc fcQQuickRhiItem_fixedColorBufferWidth(self: pointer): cint {.importc: "QQuickRhiItem_fixedColorBufferWidth".}
proc fcQQuickRhiItem_setFixedColorBufferWidth(self: pointer, width: cint): void {.importc: "QQuickRhiItem_setFixedColorBufferWidth".}
proc fcQQuickRhiItem_fixedColorBufferHeight(self: pointer): cint {.importc: "QQuickRhiItem_fixedColorBufferHeight".}
proc fcQQuickRhiItem_setFixedColorBufferHeight(self: pointer, height: cint): void {.importc: "QQuickRhiItem_setFixedColorBufferHeight".}
proc fcQQuickRhiItem_effectiveColorBufferSize(self: pointer): pointer {.importc: "QQuickRhiItem_effectiveColorBufferSize".}
proc fcQQuickRhiItem_isTextureProvider(self: pointer): bool {.importc: "QQuickRhiItem_isTextureProvider".}
proc fcQQuickRhiItem_textureProvider(self: pointer): pointer {.importc: "QQuickRhiItem_textureProvider".}
proc fcQQuickRhiItem_sampleCountChanged(self: pointer): void {.importc: "QQuickRhiItem_sampleCountChanged".}
proc fcQQuickRhiItem_connect_sampleCountChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickRhiItem_connect_sampleCountChanged".}
proc fcQQuickRhiItem_colorBufferFormatChanged(self: pointer): void {.importc: "QQuickRhiItem_colorBufferFormatChanged".}
proc fcQQuickRhiItem_connect_colorBufferFormatChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickRhiItem_connect_colorBufferFormatChanged".}
proc fcQQuickRhiItem_autoRenderTargetChanged(self: pointer): void {.importc: "QQuickRhiItem_autoRenderTargetChanged".}
proc fcQQuickRhiItem_connect_autoRenderTargetChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickRhiItem_connect_autoRenderTargetChanged".}
proc fcQQuickRhiItem_mirrorVerticallyChanged(self: pointer): void {.importc: "QQuickRhiItem_mirrorVerticallyChanged".}
proc fcQQuickRhiItem_connect_mirrorVerticallyChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickRhiItem_connect_mirrorVerticallyChanged".}
proc fcQQuickRhiItem_alphaBlendingChanged(self: pointer): void {.importc: "QQuickRhiItem_alphaBlendingChanged".}
proc fcQQuickRhiItem_connect_alphaBlendingChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickRhiItem_connect_alphaBlendingChanged".}
proc fcQQuickRhiItem_fixedColorBufferWidthChanged(self: pointer): void {.importc: "QQuickRhiItem_fixedColorBufferWidthChanged".}
proc fcQQuickRhiItem_connect_fixedColorBufferWidthChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickRhiItem_connect_fixedColorBufferWidthChanged".}
proc fcQQuickRhiItem_fixedColorBufferHeightChanged(self: pointer): void {.importc: "QQuickRhiItem_fixedColorBufferHeightChanged".}
proc fcQQuickRhiItem_connect_fixedColorBufferHeightChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickRhiItem_connect_fixedColorBufferHeightChanged".}
proc fcQQuickRhiItem_effectiveColorBufferSizeChanged(self: pointer): void {.importc: "QQuickRhiItem_effectiveColorBufferSizeChanged".}
proc fcQQuickRhiItem_connect_effectiveColorBufferSizeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickRhiItem_connect_effectiveColorBufferSizeChanged".}
proc fcQQuickRhiItem_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QQuickRhiItem_tr_s_c".}
proc fcQQuickRhiItem_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QQuickRhiItem_tr_s_c_n".}
proc fcQQuickRhiItem_vdata(self: pointer): ptr pointer {.importc: "QQuickRhiItem_vdata".}
proc fvdata_cQQuickRhiItem(self: pointer): pointer {.importc: "vdata_QQuickRhiItem".}

type cQQuickRhiItemVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  isTextureProvider*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  textureProvider*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  createRenderer*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  updatePaintNode*: proc(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  geometryChange*: proc(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl, raises: [], gcsafe.}
  releaseResources*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  clipRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
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
proc fcQQuickRhiItem_virtualbase_metaObject(self: pointer): pointer {.importc: "QQuickRhiItem_virtualbase_metaObject".}
proc fcQQuickRhiItem_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickRhiItem_virtualbase_metacast".}
proc fcQQuickRhiItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickRhiItem_virtualbase_metacall".}
proc fcQQuickRhiItem_virtualbase_isTextureProvider(self: pointer): bool {.importc: "QQuickRhiItem_virtualbase_isTextureProvider".}
proc fcQQuickRhiItem_virtualbase_textureProvider(self: pointer): pointer {.importc: "QQuickRhiItem_virtualbase_textureProvider".}
proc fcQQuickRhiItem_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QQuickRhiItem_virtualbase_updatePaintNode".}
proc fcQQuickRhiItem_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQuickRhiItem_virtualbase_event".}
proc fcQQuickRhiItem_virtualbase_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.importc: "QQuickRhiItem_virtualbase_geometryChange".}
proc fcQQuickRhiItem_virtualbase_releaseResources(self: pointer): void {.importc: "QQuickRhiItem_virtualbase_releaseResources".}
proc fcQQuickRhiItem_virtualbase_boundingRect(self: pointer): pointer {.importc: "QQuickRhiItem_virtualbase_boundingRect".}
proc fcQQuickRhiItem_virtualbase_clipRect(self: pointer): pointer {.importc: "QQuickRhiItem_virtualbase_clipRect".}
proc fcQQuickRhiItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QQuickRhiItem_virtualbase_contains".}
proc fcQQuickRhiItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QQuickRhiItem_virtualbase_inputMethodQuery".}
proc fcQQuickRhiItem_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void {.importc: "QQuickRhiItem_virtualbase_itemChange".}
proc fcQQuickRhiItem_virtualbase_classBegin(self: pointer): void {.importc: "QQuickRhiItem_virtualbase_classBegin".}
proc fcQQuickRhiItem_virtualbase_componentComplete(self: pointer): void {.importc: "QQuickRhiItem_virtualbase_componentComplete".}
proc fcQQuickRhiItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_keyPressEvent".}
proc fcQQuickRhiItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_keyReleaseEvent".}
proc fcQQuickRhiItem_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QQuickRhiItem_virtualbase_inputMethodEvent".}
proc fcQQuickRhiItem_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QQuickRhiItem_virtualbase_focusInEvent".}
proc fcQQuickRhiItem_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QQuickRhiItem_virtualbase_focusOutEvent".}
proc fcQQuickRhiItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_mousePressEvent".}
proc fcQQuickRhiItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_mouseMoveEvent".}
proc fcQQuickRhiItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_mouseReleaseEvent".}
proc fcQQuickRhiItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickRhiItem_virtualbase_mouseUngrabEvent(self: pointer): void {.importc: "QQuickRhiItem_virtualbase_mouseUngrabEvent".}
proc fcQQuickRhiItem_virtualbase_touchUngrabEvent(self: pointer): void {.importc: "QQuickRhiItem_virtualbase_touchUngrabEvent".}
proc fcQQuickRhiItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_wheelEvent".}
proc fcQQuickRhiItem_virtualbase_touchEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_touchEvent".}
proc fcQQuickRhiItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_hoverEnterEvent".}
proc fcQQuickRhiItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_hoverMoveEvent".}
proc fcQQuickRhiItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_hoverLeaveEvent".}
proc fcQQuickRhiItem_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QQuickRhiItem_virtualbase_dragEnterEvent".}
proc fcQQuickRhiItem_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QQuickRhiItem_virtualbase_dragMoveEvent".}
proc fcQQuickRhiItem_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QQuickRhiItem_virtualbase_dragLeaveEvent".}
proc fcQQuickRhiItem_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QQuickRhiItem_virtualbase_dropEvent".}
proc fcQQuickRhiItem_virtualbase_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QQuickRhiItem_virtualbase_childMouseEventFilter".}
proc fcQQuickRhiItem_virtualbase_updatePolish(self: pointer): void {.importc: "QQuickRhiItem_virtualbase_updatePolish".}
proc fcQQuickRhiItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickRhiItem_virtualbase_eventFilter".}
proc fcQQuickRhiItem_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_timerEvent".}
proc fcQQuickRhiItem_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_childEvent".}
proc fcQQuickRhiItem_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickRhiItem_virtualbase_customEvent".}
proc fcQQuickRhiItem_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickRhiItem_virtualbase_connectNotify".}
proc fcQQuickRhiItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickRhiItem_virtualbase_disconnectNotify".}
proc fcQQuickRhiItem_protectedbase_isAutoRenderTargetEnabled(self: pointer): bool {.importc: "QQuickRhiItem_protectedbase_isAutoRenderTargetEnabled".}
proc fcQQuickRhiItem_protectedbase_setAutoRenderTarget(self: pointer, enabled: bool): void {.importc: "QQuickRhiItem_protectedbase_setAutoRenderTarget".}
proc fcQQuickRhiItem_protectedbase_isComponentComplete(self: pointer): bool {.importc: "QQuickRhiItem_protectedbase_isComponentComplete".}
proc fcQQuickRhiItem_protectedbase_updateInputMethod(self: pointer): void {.importc: "QQuickRhiItem_protectedbase_updateInputMethod".}
proc fcQQuickRhiItem_protectedbase_widthValid(self: pointer): bool {.importc: "QQuickRhiItem_protectedbase_widthValid".}
proc fcQQuickRhiItem_protectedbase_heightValid(self: pointer): bool {.importc: "QQuickRhiItem_protectedbase_heightValid".}
proc fcQQuickRhiItem_protectedbase_setImplicitSize(self: pointer, param1: float64, param2: float64): void {.importc: "QQuickRhiItem_protectedbase_setImplicitSize".}
proc fcQQuickRhiItem_protectedbase_sender(self: pointer): pointer {.importc: "QQuickRhiItem_protectedbase_sender".}
proc fcQQuickRhiItem_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickRhiItem_protectedbase_senderSignalIndex".}
proc fcQQuickRhiItem_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickRhiItem_protectedbase_receivers".}
proc fcQQuickRhiItem_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickRhiItem_protectedbase_isSignalConnected".}
proc fcQQuickRhiItem_new(vtbl: pointer, vdata: csize_t): ptr cQQuickRhiItem {.importc: "QQuickRhiItem_new".}
proc fcQQuickRhiItem_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQQuickRhiItem {.importc: "QQuickRhiItem_new_parent".}
proc fcQQuickRhiItem_staticMetaObject(): pointer {.importc: "QQuickRhiItem_staticMetaObject".}

proc update*(self: gen_qquickrhiitem_types.QQuickRhiItemRenderer): void =
  fcQQuickRhiItemRenderer_protectedbase_update(self.h)

proc metaObject*(self: gen_qquickrhiitem_types.QQuickRhiItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickRhiItem_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: cstring): pointer =
  fcQQuickRhiItem_metacast(self.h, param1)

proc metacall*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickRhiItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickrhiitem_types.QQuickRhiItem, s: cstring): string =
  let v_ms = fcQQuickRhiItem_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sampleCount*(self: gen_qquickrhiitem_types.QQuickRhiItem): cint =
  fcQQuickRhiItem_sampleCount(self.h)

proc setSampleCount*(self: gen_qquickrhiitem_types.QQuickRhiItem, samples: cint): void =
  fcQQuickRhiItem_setSampleCount(self.h, samples)

proc colorBufferFormat*(self: gen_qquickrhiitem_types.QQuickRhiItem): cint =
  cint(fcQQuickRhiItem_colorBufferFormat(self.h))

proc setColorBufferFormat*(self: gen_qquickrhiitem_types.QQuickRhiItem, format: cint): void =
  fcQQuickRhiItem_setColorBufferFormat(self.h, cint(format))

proc isMirrorVerticallyEnabled*(self: gen_qquickrhiitem_types.QQuickRhiItem): bool =
  fcQQuickRhiItem_isMirrorVerticallyEnabled(self.h)

proc setMirrorVertically*(self: gen_qquickrhiitem_types.QQuickRhiItem, enable: bool): void =
  fcQQuickRhiItem_setMirrorVertically(self.h, enable)

proc alphaBlending*(self: gen_qquickrhiitem_types.QQuickRhiItem): bool =
  fcQQuickRhiItem_alphaBlending(self.h)

proc setAlphaBlending*(self: gen_qquickrhiitem_types.QQuickRhiItem, enable: bool): void =
  fcQQuickRhiItem_setAlphaBlending(self.h, enable)

proc fixedColorBufferWidth*(self: gen_qquickrhiitem_types.QQuickRhiItem): cint =
  fcQQuickRhiItem_fixedColorBufferWidth(self.h)

proc setFixedColorBufferWidth*(self: gen_qquickrhiitem_types.QQuickRhiItem, width: cint): void =
  fcQQuickRhiItem_setFixedColorBufferWidth(self.h, width)

proc fixedColorBufferHeight*(self: gen_qquickrhiitem_types.QQuickRhiItem): cint =
  fcQQuickRhiItem_fixedColorBufferHeight(self.h)

proc setFixedColorBufferHeight*(self: gen_qquickrhiitem_types.QQuickRhiItem, height: cint): void =
  fcQQuickRhiItem_setFixedColorBufferHeight(self.h, height)

proc effectiveColorBufferSize*(self: gen_qquickrhiitem_types.QQuickRhiItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickRhiItem_effectiveColorBufferSize(self.h), owned: true)

proc isTextureProvider*(self: gen_qquickrhiitem_types.QQuickRhiItem): bool =
  fcQQuickRhiItem_isTextureProvider(self.h)

proc textureProvider*(self: gen_qquickrhiitem_types.QQuickRhiItem): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickRhiItem_textureProvider(self.h), owned: false)

proc sampleCountChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_sampleCountChanged(self.h)

type QQuickRhiItemsampleCountChangedSlot* = proc()
proc fcQQuickRhiItem_slot_callback_sampleCountChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickRhiItemsampleCountChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickRhiItem_slot_callback_sampleCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickRhiItemsampleCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSampleCountChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem, slot: QQuickRhiItemsampleCountChangedSlot) =
  var tmp = new QQuickRhiItemsampleCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRhiItem_connect_sampleCountChanged(self.h, cast[int](addr tmp[]), fcQQuickRhiItem_slot_callback_sampleCountChanged, fcQQuickRhiItem_slot_callback_sampleCountChanged_release)

proc colorBufferFormatChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_colorBufferFormatChanged(self.h)

type QQuickRhiItemcolorBufferFormatChangedSlot* = proc()
proc fcQQuickRhiItem_slot_callback_colorBufferFormatChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickRhiItemcolorBufferFormatChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickRhiItem_slot_callback_colorBufferFormatChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickRhiItemcolorBufferFormatChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onColorBufferFormatChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem, slot: QQuickRhiItemcolorBufferFormatChangedSlot) =
  var tmp = new QQuickRhiItemcolorBufferFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRhiItem_connect_colorBufferFormatChanged(self.h, cast[int](addr tmp[]), fcQQuickRhiItem_slot_callback_colorBufferFormatChanged, fcQQuickRhiItem_slot_callback_colorBufferFormatChanged_release)

proc autoRenderTargetChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_autoRenderTargetChanged(self.h)

type QQuickRhiItemautoRenderTargetChangedSlot* = proc()
proc fcQQuickRhiItem_slot_callback_autoRenderTargetChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickRhiItemautoRenderTargetChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickRhiItem_slot_callback_autoRenderTargetChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickRhiItemautoRenderTargetChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAutoRenderTargetChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem, slot: QQuickRhiItemautoRenderTargetChangedSlot) =
  var tmp = new QQuickRhiItemautoRenderTargetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRhiItem_connect_autoRenderTargetChanged(self.h, cast[int](addr tmp[]), fcQQuickRhiItem_slot_callback_autoRenderTargetChanged, fcQQuickRhiItem_slot_callback_autoRenderTargetChanged_release)

proc mirrorVerticallyChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_mirrorVerticallyChanged(self.h)

type QQuickRhiItemmirrorVerticallyChangedSlot* = proc()
proc fcQQuickRhiItem_slot_callback_mirrorVerticallyChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickRhiItemmirrorVerticallyChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickRhiItem_slot_callback_mirrorVerticallyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickRhiItemmirrorVerticallyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMirrorVerticallyChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem, slot: QQuickRhiItemmirrorVerticallyChangedSlot) =
  var tmp = new QQuickRhiItemmirrorVerticallyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRhiItem_connect_mirrorVerticallyChanged(self.h, cast[int](addr tmp[]), fcQQuickRhiItem_slot_callback_mirrorVerticallyChanged, fcQQuickRhiItem_slot_callback_mirrorVerticallyChanged_release)

proc alphaBlendingChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_alphaBlendingChanged(self.h)

type QQuickRhiItemalphaBlendingChangedSlot* = proc()
proc fcQQuickRhiItem_slot_callback_alphaBlendingChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickRhiItemalphaBlendingChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickRhiItem_slot_callback_alphaBlendingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickRhiItemalphaBlendingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAlphaBlendingChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem, slot: QQuickRhiItemalphaBlendingChangedSlot) =
  var tmp = new QQuickRhiItemalphaBlendingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRhiItem_connect_alphaBlendingChanged(self.h, cast[int](addr tmp[]), fcQQuickRhiItem_slot_callback_alphaBlendingChanged, fcQQuickRhiItem_slot_callback_alphaBlendingChanged_release)

proc fixedColorBufferWidthChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_fixedColorBufferWidthChanged(self.h)

type QQuickRhiItemfixedColorBufferWidthChangedSlot* = proc()
proc fcQQuickRhiItem_slot_callback_fixedColorBufferWidthChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickRhiItemfixedColorBufferWidthChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickRhiItem_slot_callback_fixedColorBufferWidthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickRhiItemfixedColorBufferWidthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFixedColorBufferWidthChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem, slot: QQuickRhiItemfixedColorBufferWidthChangedSlot) =
  var tmp = new QQuickRhiItemfixedColorBufferWidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRhiItem_connect_fixedColorBufferWidthChanged(self.h, cast[int](addr tmp[]), fcQQuickRhiItem_slot_callback_fixedColorBufferWidthChanged, fcQQuickRhiItem_slot_callback_fixedColorBufferWidthChanged_release)

proc fixedColorBufferHeightChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_fixedColorBufferHeightChanged(self.h)

type QQuickRhiItemfixedColorBufferHeightChangedSlot* = proc()
proc fcQQuickRhiItem_slot_callback_fixedColorBufferHeightChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickRhiItemfixedColorBufferHeightChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickRhiItem_slot_callback_fixedColorBufferHeightChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickRhiItemfixedColorBufferHeightChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFixedColorBufferHeightChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem, slot: QQuickRhiItemfixedColorBufferHeightChangedSlot) =
  var tmp = new QQuickRhiItemfixedColorBufferHeightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRhiItem_connect_fixedColorBufferHeightChanged(self.h, cast[int](addr tmp[]), fcQQuickRhiItem_slot_callback_fixedColorBufferHeightChanged, fcQQuickRhiItem_slot_callback_fixedColorBufferHeightChanged_release)

proc effectiveColorBufferSizeChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_effectiveColorBufferSizeChanged(self.h)

type QQuickRhiItemeffectiveColorBufferSizeChangedSlot* = proc()
proc fcQQuickRhiItem_slot_callback_effectiveColorBufferSizeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickRhiItemeffectiveColorBufferSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickRhiItem_slot_callback_effectiveColorBufferSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickRhiItemeffectiveColorBufferSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onEffectiveColorBufferSizeChanged*(self: gen_qquickrhiitem_types.QQuickRhiItem, slot: QQuickRhiItemeffectiveColorBufferSizeChangedSlot) =
  var tmp = new QQuickRhiItemeffectiveColorBufferSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRhiItem_connect_effectiveColorBufferSizeChanged(self.h, cast[int](addr tmp[]), fcQQuickRhiItem_slot_callback_effectiveColorBufferSizeChanged, fcQQuickRhiItem_slot_callback_effectiveColorBufferSizeChanged_release)

proc tr*(_: type gen_qquickrhiitem_types.QQuickRhiItem, s: cstring, c: cstring): string =
  let v_ms = fcQQuickRhiItem_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickrhiitem_types.QQuickRhiItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickRhiItem_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQuickRhiItemmetaObjectProc* = proc(self: QQuickRhiItem): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickRhiItemmetacastProc* = proc(self: QQuickRhiItem, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickRhiItemmetacallProc* = proc(self: QQuickRhiItem, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickRhiItemisTextureProviderProc* = proc(self: QQuickRhiItem): bool {.raises: [], gcsafe.}
type QQuickRhiItemtextureProviderProc* = proc(self: QQuickRhiItem): gen_qsgtextureprovider_types.QSGTextureProvider {.raises: [], gcsafe.}
type QQuickRhiItemcreateRendererProc* = proc(self: QQuickRhiItem): gen_qquickrhiitem_types.QQuickRhiItemRenderer {.raises: [], gcsafe.}
type QQuickRhiItemupdatePaintNodeProc* = proc(self: QQuickRhiItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode {.raises: [], gcsafe.}
type QQuickRhiItemeventProc* = proc(self: QQuickRhiItem, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickRhiItemgeometryChangeProc* = proc(self: QQuickRhiItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QQuickRhiItemreleaseResourcesProc* = proc(self: QQuickRhiItem): void {.raises: [], gcsafe.}
type QQuickRhiItemboundingRectProc* = proc(self: QQuickRhiItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QQuickRhiItemclipRectProc* = proc(self: QQuickRhiItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QQuickRhiItemcontainsProc* = proc(self: QQuickRhiItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QQuickRhiIteminputMethodQueryProc* = proc(self: QQuickRhiItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QQuickRhiItemitemChangeProc* = proc(self: QQuickRhiItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void {.raises: [], gcsafe.}
type QQuickRhiItemclassBeginProc* = proc(self: QQuickRhiItem): void {.raises: [], gcsafe.}
type QQuickRhiItemcomponentCompleteProc* = proc(self: QQuickRhiItem): void {.raises: [], gcsafe.}
type QQuickRhiItemkeyPressEventProc* = proc(self: QQuickRhiItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemkeyReleaseEventProc* = proc(self: QQuickRhiItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickRhiIteminputMethodEventProc* = proc(self: QQuickRhiItem, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemfocusInEventProc* = proc(self: QQuickRhiItem, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemfocusOutEventProc* = proc(self: QQuickRhiItem, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemmousePressEventProc* = proc(self: QQuickRhiItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemmouseMoveEventProc* = proc(self: QQuickRhiItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemmouseReleaseEventProc* = proc(self: QQuickRhiItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemmouseDoubleClickEventProc* = proc(self: QQuickRhiItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemmouseUngrabEventProc* = proc(self: QQuickRhiItem): void {.raises: [], gcsafe.}
type QQuickRhiItemtouchUngrabEventProc* = proc(self: QQuickRhiItem): void {.raises: [], gcsafe.}
type QQuickRhiItemwheelEventProc* = proc(self: QQuickRhiItem, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemtouchEventProc* = proc(self: QQuickRhiItem, event: gen_qevent_types.QTouchEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemhoverEnterEventProc* = proc(self: QQuickRhiItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemhoverMoveEventProc* = proc(self: QQuickRhiItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemhoverLeaveEventProc* = proc(self: QQuickRhiItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemdragEnterEventProc* = proc(self: QQuickRhiItem, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemdragMoveEventProc* = proc(self: QQuickRhiItem, param1: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemdragLeaveEventProc* = proc(self: QQuickRhiItem, param1: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemdropEventProc* = proc(self: QQuickRhiItem, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemchildMouseEventFilterProc* = proc(self: QQuickRhiItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickRhiItemupdatePolishProc* = proc(self: QQuickRhiItem): void {.raises: [], gcsafe.}
type QQuickRhiItemeventFilterProc* = proc(self: QQuickRhiItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickRhiItemtimerEventProc* = proc(self: QQuickRhiItem, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemchildEventProc* = proc(self: QQuickRhiItem, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemcustomEventProc* = proc(self: QQuickRhiItem, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickRhiItemconnectNotifyProc* = proc(self: QQuickRhiItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickRhiItemdisconnectNotifyProc* = proc(self: QQuickRhiItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QQuickRhiItemVTable* {.inheritable, pure.} = object
  vtbl: cQQuickRhiItemVTable
  metaObject*: QQuickRhiItemmetaObjectProc
  metacast*: QQuickRhiItemmetacastProc
  metacall*: QQuickRhiItemmetacallProc
  isTextureProvider*: QQuickRhiItemisTextureProviderProc
  textureProvider*: QQuickRhiItemtextureProviderProc
  createRenderer*: QQuickRhiItemcreateRendererProc
  updatePaintNode*: QQuickRhiItemupdatePaintNodeProc
  event*: QQuickRhiItemeventProc
  geometryChange*: QQuickRhiItemgeometryChangeProc
  releaseResources*: QQuickRhiItemreleaseResourcesProc
  boundingRect*: QQuickRhiItemboundingRectProc
  clipRect*: QQuickRhiItemclipRectProc
  contains*: QQuickRhiItemcontainsProc
  inputMethodQuery*: QQuickRhiIteminputMethodQueryProc
  itemChange*: QQuickRhiItemitemChangeProc
  classBegin*: QQuickRhiItemclassBeginProc
  componentComplete*: QQuickRhiItemcomponentCompleteProc
  keyPressEvent*: QQuickRhiItemkeyPressEventProc
  keyReleaseEvent*: QQuickRhiItemkeyReleaseEventProc
  inputMethodEvent*: QQuickRhiIteminputMethodEventProc
  focusInEvent*: QQuickRhiItemfocusInEventProc
  focusOutEvent*: QQuickRhiItemfocusOutEventProc
  mousePressEvent*: QQuickRhiItemmousePressEventProc
  mouseMoveEvent*: QQuickRhiItemmouseMoveEventProc
  mouseReleaseEvent*: QQuickRhiItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QQuickRhiItemmouseDoubleClickEventProc
  mouseUngrabEvent*: QQuickRhiItemmouseUngrabEventProc
  touchUngrabEvent*: QQuickRhiItemtouchUngrabEventProc
  wheelEvent*: QQuickRhiItemwheelEventProc
  touchEvent*: QQuickRhiItemtouchEventProc
  hoverEnterEvent*: QQuickRhiItemhoverEnterEventProc
  hoverMoveEvent*: QQuickRhiItemhoverMoveEventProc
  hoverLeaveEvent*: QQuickRhiItemhoverLeaveEventProc
  dragEnterEvent*: QQuickRhiItemdragEnterEventProc
  dragMoveEvent*: QQuickRhiItemdragMoveEventProc
  dragLeaveEvent*: QQuickRhiItemdragLeaveEventProc
  dropEvent*: QQuickRhiItemdropEventProc
  childMouseEventFilter*: QQuickRhiItemchildMouseEventFilterProc
  updatePolish*: QQuickRhiItemupdatePolishProc
  eventFilter*: QQuickRhiItemeventFilterProc
  timerEvent*: QQuickRhiItemtimerEventProc
  childEvent*: QQuickRhiItemchildEventProc
  customEvent*: QQuickRhiItemcustomEventProc
  connectNotify*: QQuickRhiItemconnectNotifyProc
  disconnectNotify*: QQuickRhiItemdisconnectNotifyProc

proc QQuickRhiItemmetaObject*(self: gen_qquickrhiitem_types.QQuickRhiItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickRhiItem_virtualbase_metaObject(self.h), owned: false)

proc QQuickRhiItemmetacast*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: cstring): pointer =
  fcQQuickRhiItem_virtualbase_metacast(self.h, param1)

proc QQuickRhiItemmetacall*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickRhiItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQuickRhiItemisTextureProvider*(self: gen_qquickrhiitem_types.QQuickRhiItem): bool =
  fcQQuickRhiItem_virtualbase_isTextureProvider(self.h)

proc QQuickRhiItemtextureProvider*(self: gen_qquickrhiitem_types.QQuickRhiItem): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickRhiItem_virtualbase_textureProvider(self.h), owned: false)

proc QQuickRhiItemupdatePaintNode*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQQuickRhiItem_virtualbase_updatePaintNode(self.h, param1.h, param2.h), owned: false)

proc QQuickRhiItemevent*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQuickRhiItem_virtualbase_event(self.h, param1.h)

proc QQuickRhiItemgeometryChange*(self: gen_qquickrhiitem_types.QQuickRhiItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void =
  fcQQuickRhiItem_virtualbase_geometryChange(self.h, newGeometry.h, oldGeometry.h)

proc QQuickRhiItemreleaseResources*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_virtualbase_releaseResources(self.h)

proc QQuickRhiItemboundingRect*(self: gen_qquickrhiitem_types.QQuickRhiItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickRhiItem_virtualbase_boundingRect(self.h), owned: true)

proc QQuickRhiItemclipRect*(self: gen_qquickrhiitem_types.QQuickRhiItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickRhiItem_virtualbase_clipRect(self.h), owned: true)

proc QQuickRhiItemcontains*(self: gen_qquickrhiitem_types.QQuickRhiItem, point: gen_qpoint_types.QPointF): bool =
  fcQQuickRhiItem_virtualbase_contains(self.h, point.h)

proc QQuickRhiIteminputMethodQuery*(self: gen_qquickrhiitem_types.QQuickRhiItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQuickRhiItem_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc QQuickRhiItemitemChange*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void =
  fcQQuickRhiItem_virtualbase_itemChange(self.h, cint(param1), param2.h)

proc QQuickRhiItemclassBegin*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_virtualbase_classBegin(self.h)

proc QQuickRhiItemcomponentComplete*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_virtualbase_componentComplete(self.h)

proc QQuickRhiItemkeyPressEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickRhiItem_virtualbase_keyPressEvent(self.h, event.h)

proc QQuickRhiItemkeyReleaseEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickRhiItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc QQuickRhiIteminputMethodEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQQuickRhiItem_virtualbase_inputMethodEvent(self.h, param1.h)

proc QQuickRhiItemfocusInEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickRhiItem_virtualbase_focusInEvent(self.h, param1.h)

proc QQuickRhiItemfocusOutEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickRhiItem_virtualbase_focusOutEvent(self.h, param1.h)

proc QQuickRhiItemmousePressEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickRhiItem_virtualbase_mousePressEvent(self.h, event.h)

proc QQuickRhiItemmouseMoveEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickRhiItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc QQuickRhiItemmouseReleaseEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickRhiItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QQuickRhiItemmouseDoubleClickEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickRhiItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QQuickRhiItemmouseUngrabEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_virtualbase_mouseUngrabEvent(self.h)

proc QQuickRhiItemtouchUngrabEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_virtualbase_touchUngrabEvent(self.h)

proc QQuickRhiItemwheelEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qevent_types.QWheelEvent): void =
  fcQQuickRhiItem_virtualbase_wheelEvent(self.h, event.h)

proc QQuickRhiItemtouchEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qevent_types.QTouchEvent): void =
  fcQQuickRhiItem_virtualbase_touchEvent(self.h, event.h)

proc QQuickRhiItemhoverEnterEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickRhiItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc QQuickRhiItemhoverMoveEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickRhiItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc QQuickRhiItemhoverLeaveEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickRhiItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc QQuickRhiItemdragEnterEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQQuickRhiItem_virtualbase_dragEnterEvent(self.h, param1.h)

proc QQuickRhiItemdragMoveEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQQuickRhiItem_virtualbase_dragMoveEvent(self.h, param1.h)

proc QQuickRhiItemdragLeaveEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQQuickRhiItem_virtualbase_dragLeaveEvent(self.h, param1.h)

proc QQuickRhiItemdropEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: gen_qevent_types.QDropEvent): void =
  fcQQuickRhiItem_virtualbase_dropEvent(self.h, param1.h)

proc QQuickRhiItemchildMouseEventFilter*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool =
  fcQQuickRhiItem_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

proc QQuickRhiItemupdatePolish*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_virtualbase_updatePolish(self.h)

proc QQuickRhiItemeventFilter*(self: gen_qquickrhiitem_types.QQuickRhiItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickRhiItem_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQuickRhiItemtimerEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickRhiItem_virtualbase_timerEvent(self.h, event.h)

proc QQuickRhiItemchildEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickRhiItem_virtualbase_childEvent(self.h, event.h)

proc QQuickRhiItemcustomEvent*(self: gen_qquickrhiitem_types.QQuickRhiItem, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickRhiItem_virtualbase_customEvent(self.h, event.h)

proc QQuickRhiItemconnectNotify*(self: gen_qquickrhiitem_types.QQuickRhiItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickRhiItem_virtualbase_connectNotify(self.h, signal.h)

proc QQuickRhiItemdisconnectNotify*(self: gen_qquickrhiitem_types.QQuickRhiItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickRhiItem_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQuickRhiItem_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQuickRhiItem_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickRhiItem_vtable_callback_isTextureProvider(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  var virtualReturn = vtbl[].isTextureProvider(self)
  virtualReturn

proc fcQQuickRhiItem_vtable_callback_textureProvider(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  var virtualReturn = vtbl[].textureProvider(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_vtable_callback_createRenderer(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  var virtualReturn = vtbl[].createRenderer(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_vtable_callback_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1, owned: false)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2, owned: false)
  var virtualReturn = vtbl[].updatePaintNode(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQuickRhiItem_vtable_callback_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry, owned: false)
  vtbl[].geometryChange(self, slotval1, slotval2)

proc fcQQuickRhiItem_vtable_callback_releaseResources(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  vtbl[].releaseResources(self)

proc fcQQuickRhiItem_vtable_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_vtable_callback_clipRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  var virtualReturn = vtbl[].clipRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_vtable_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc fcQQuickRhiItem_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_vtable_callback_itemChange(self: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2, owned: false)
  vtbl[].itemChange(self, slotval1, slotval2)

proc fcQQuickRhiItem_vtable_callback_classBegin(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  vtbl[].classBegin(self)

proc fcQQuickRhiItem_vtable_callback_componentComplete(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  vtbl[].componentComplete(self)

proc fcQQuickRhiItem_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_mouseUngrabEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  vtbl[].mouseUngrabEvent(self)

proc fcQQuickRhiItem_vtable_callback_touchUngrabEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  vtbl[].touchUngrabEvent(self)

proc fcQQuickRhiItem_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_touchEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: event, owned: false)
  vtbl[].touchEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverEnterEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverMoveEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].childMouseEventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQuickRhiItem_vtable_callback_updatePolish(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  vtbl[].updatePolish(self)

proc fcQQuickRhiItem_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQuickRhiItem_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQuickRhiItem_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
  let self = QQuickRhiItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickRhiItem* {.inheritable.} = ref object of QQuickRhiItem
  vtbl*: cQQuickRhiItemVTable

method metaObject*(self: VirtualQQuickRhiItem): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickRhiItemmetaObject(self[])
method metacast*(self: VirtualQQuickRhiItem, param1: cstring): pointer {.base.} =
  QQuickRhiItemmetacast(self[], param1)
method metacall*(self: VirtualQQuickRhiItem, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickRhiItemmetacall(self[], param1, param2, param3)
method isTextureProvider*(self: VirtualQQuickRhiItem): bool {.base.} =
  QQuickRhiItemisTextureProvider(self[])
method textureProvider*(self: VirtualQQuickRhiItem): gen_qsgtextureprovider_types.QSGTextureProvider {.base.} =
  QQuickRhiItemtextureProvider(self[])
method createRenderer*(self: VirtualQQuickRhiItem): gen_qquickrhiitem_types.QQuickRhiItemRenderer {.base.} =
  raiseAssert("missing implementation of QQuickRhiItem.createRenderer")
method updatePaintNode*(self: VirtualQQuickRhiItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode {.base.} =
  QQuickRhiItemupdatePaintNode(self[], param1, param2)
method event*(self: VirtualQQuickRhiItem, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickRhiItemevent(self[], param1)
method geometryChange*(self: VirtualQQuickRhiItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.base.} =
  QQuickRhiItemgeometryChange(self[], newGeometry, oldGeometry)
method releaseResources*(self: VirtualQQuickRhiItem): void {.base.} =
  QQuickRhiItemreleaseResources(self[])
method boundingRect*(self: VirtualQQuickRhiItem): gen_qrect_types.QRectF {.base.} =
  QQuickRhiItemboundingRect(self[])
method clipRect*(self: VirtualQQuickRhiItem): gen_qrect_types.QRectF {.base.} =
  QQuickRhiItemclipRect(self[])
method contains*(self: VirtualQQuickRhiItem, point: gen_qpoint_types.QPointF): bool {.base.} =
  QQuickRhiItemcontains(self[], point)
method inputMethodQuery*(self: VirtualQQuickRhiItem, query: cint): gen_qvariant_types.QVariant {.base.} =
  QQuickRhiIteminputMethodQuery(self[], query)
method itemChange*(self: VirtualQQuickRhiItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void {.base.} =
  QQuickRhiItemitemChange(self[], param1, param2)
method classBegin*(self: VirtualQQuickRhiItem): void {.base.} =
  QQuickRhiItemclassBegin(self[])
method componentComplete*(self: VirtualQQuickRhiItem): void {.base.} =
  QQuickRhiItemcomponentComplete(self[])
method keyPressEvent*(self: VirtualQQuickRhiItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickRhiItemkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQQuickRhiItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QQuickRhiItemkeyReleaseEvent(self[], event)
method inputMethodEvent*(self: VirtualQQuickRhiItem, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QQuickRhiIteminputMethodEvent(self[], param1)
method focusInEvent*(self: VirtualQQuickRhiItem, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickRhiItemfocusInEvent(self[], param1)
method focusOutEvent*(self: VirtualQQuickRhiItem, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QQuickRhiItemfocusOutEvent(self[], param1)
method mousePressEvent*(self: VirtualQQuickRhiItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickRhiItemmousePressEvent(self[], event)
method mouseMoveEvent*(self: VirtualQQuickRhiItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickRhiItemmouseMoveEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQQuickRhiItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickRhiItemmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQQuickRhiItem, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QQuickRhiItemmouseDoubleClickEvent(self[], event)
method mouseUngrabEvent*(self: VirtualQQuickRhiItem): void {.base.} =
  QQuickRhiItemmouseUngrabEvent(self[])
method touchUngrabEvent*(self: VirtualQQuickRhiItem): void {.base.} =
  QQuickRhiItemtouchUngrabEvent(self[])
method wheelEvent*(self: VirtualQQuickRhiItem, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QQuickRhiItemwheelEvent(self[], event)
method touchEvent*(self: VirtualQQuickRhiItem, event: gen_qevent_types.QTouchEvent): void {.base.} =
  QQuickRhiItemtouchEvent(self[], event)
method hoverEnterEvent*(self: VirtualQQuickRhiItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickRhiItemhoverEnterEvent(self[], event)
method hoverMoveEvent*(self: VirtualQQuickRhiItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickRhiItemhoverMoveEvent(self[], event)
method hoverLeaveEvent*(self: VirtualQQuickRhiItem, event: gen_qevent_types.QHoverEvent): void {.base.} =
  QQuickRhiItemhoverLeaveEvent(self[], event)
method dragEnterEvent*(self: VirtualQQuickRhiItem, param1: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QQuickRhiItemdragEnterEvent(self[], param1)
method dragMoveEvent*(self: VirtualQQuickRhiItem, param1: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QQuickRhiItemdragMoveEvent(self[], param1)
method dragLeaveEvent*(self: VirtualQQuickRhiItem, param1: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QQuickRhiItemdragLeaveEvent(self[], param1)
method dropEvent*(self: VirtualQQuickRhiItem, param1: gen_qevent_types.QDropEvent): void {.base.} =
  QQuickRhiItemdropEvent(self[], param1)
method childMouseEventFilter*(self: VirtualQQuickRhiItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickRhiItemchildMouseEventFilter(self[], param1, param2)
method updatePolish*(self: VirtualQQuickRhiItem): void {.base.} =
  QQuickRhiItemupdatePolish(self[])
method eventFilter*(self: VirtualQQuickRhiItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickRhiItemeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQQuickRhiItem, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickRhiItemtimerEvent(self[], event)
method childEvent*(self: VirtualQQuickRhiItem, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickRhiItemchildEvent(self[], event)
method customEvent*(self: VirtualQQuickRhiItem, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickRhiItemcustomEvent(self[], event)
method connectNotify*(self: VirtualQQuickRhiItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickRhiItemconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQuickRhiItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickRhiItemdisconnectNotify(self[], signal)

proc fcQQuickRhiItem_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQuickRhiItem_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickRhiItem_method_callback_isTextureProvider(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  var virtualReturn = inst.isTextureProvider()
  virtualReturn

proc fcQQuickRhiItem_method_callback_textureProvider(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  var virtualReturn = inst.textureProvider()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_method_callback_createRenderer(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  var virtualReturn = inst.createRenderer()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_method_callback_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1, owned: false)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2, owned: false)
  var virtualReturn = inst.updatePaintNode(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQuickRhiItem_method_callback_geometryChange(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry, owned: false)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry, owned: false)
  inst.geometryChange(slotval1, slotval2)

proc fcQQuickRhiItem_method_callback_releaseResources(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  inst.releaseResources()

proc fcQQuickRhiItem_method_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  var virtualReturn = inst.boundingRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_method_callback_clipRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  var virtualReturn = inst.clipRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_method_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = inst.contains(slotval1)
  virtualReturn

proc fcQQuickRhiItem_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRhiItem_method_callback_itemChange(self: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2, owned: false)
  inst.itemChange(slotval1, slotval2)

proc fcQQuickRhiItem_method_callback_classBegin(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  inst.classBegin()

proc fcQQuickRhiItem_method_callback_componentComplete(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  inst.componentComplete()

proc fcQQuickRhiItem_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQQuickRhiItem_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQQuickRhiItem_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQQuickRhiItem_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

proc fcQQuickRhiItem_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQQuickRhiItem_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQQuickRhiItem_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQQuickRhiItem_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQQuickRhiItem_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQQuickRhiItem_method_callback_mouseUngrabEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  inst.mouseUngrabEvent()

proc fcQQuickRhiItem_method_callback_touchUngrabEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  inst.touchUngrabEvent()

proc fcQQuickRhiItem_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQQuickRhiItem_method_callback_touchEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QTouchEvent(h: event, owned: false)
  inst.touchEvent(slotval1)

proc fcQQuickRhiItem_method_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverEnterEvent(slotval1)

proc fcQQuickRhiItem_method_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverMoveEvent(slotval1)

proc fcQQuickRhiItem_method_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QHoverEvent(h: event, owned: false)
  inst.hoverLeaveEvent(slotval1)

proc fcQQuickRhiItem_method_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQQuickRhiItem_method_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQQuickRhiItem_method_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQQuickRhiItem_method_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  inst.dropEvent(slotval1)

proc fcQQuickRhiItem_method_callback_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.childMouseEventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQuickRhiItem_method_callback_updatePolish(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  inst.updatePolish()

proc fcQQuickRhiItem_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQuickRhiItem_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQQuickRhiItem_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQuickRhiItem_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQuickRhiItem_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQuickRhiItem_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRhiItem](fcQQuickRhiItem_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc isAutoRenderTargetEnabled*(self: gen_qquickrhiitem_types.QQuickRhiItem): bool =
  fcQQuickRhiItem_protectedbase_isAutoRenderTargetEnabled(self.h)

proc setAutoRenderTarget*(self: gen_qquickrhiitem_types.QQuickRhiItem, enabled: bool): void =
  fcQQuickRhiItem_protectedbase_setAutoRenderTarget(self.h, enabled)

proc isComponentComplete*(self: gen_qquickrhiitem_types.QQuickRhiItem): bool =
  fcQQuickRhiItem_protectedbase_isComponentComplete(self.h)

proc updateInputMethod*(self: gen_qquickrhiitem_types.QQuickRhiItem): void =
  fcQQuickRhiItem_protectedbase_updateInputMethod(self.h)

proc widthValid*(self: gen_qquickrhiitem_types.QQuickRhiItem): bool =
  fcQQuickRhiItem_protectedbase_widthValid(self.h)

proc heightValid*(self: gen_qquickrhiitem_types.QQuickRhiItem): bool =
  fcQQuickRhiItem_protectedbase_heightValid(self.h)

proc setImplicitSize*(self: gen_qquickrhiitem_types.QQuickRhiItem, param1: float64, param2: float64): void =
  fcQQuickRhiItem_protectedbase_setImplicitSize(self.h, param1, param2)

proc sender*(self: gen_qquickrhiitem_types.QQuickRhiItem): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickRhiItem_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickrhiitem_types.QQuickRhiItem): cint =
  fcQQuickRhiItem_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickrhiitem_types.QQuickRhiItem, signal: cstring): cint =
  fcQQuickRhiItem_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickrhiitem_types.QQuickRhiItem, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickRhiItem_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickrhiitem_types.QQuickRhiItem,
    vtbl: ref QQuickRhiItemVTable = nil): gen_qquickrhiitem_types.QQuickRhiItem =
  let vtbl = if vtbl == nil: new QQuickRhiItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickRhiItem_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickRhiItem_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickRhiItem_vtable_callback_metacall
  if not isNil(vtbl[].isTextureProvider):
    vtbl[].vtbl.isTextureProvider = fcQQuickRhiItem_vtable_callback_isTextureProvider
  if not isNil(vtbl[].textureProvider):
    vtbl[].vtbl.textureProvider = fcQQuickRhiItem_vtable_callback_textureProvider
  if not isNil(vtbl[].createRenderer):
    vtbl[].vtbl.createRenderer = fcQQuickRhiItem_vtable_callback_createRenderer
  if not isNil(vtbl[].updatePaintNode):
    vtbl[].vtbl.updatePaintNode = fcQQuickRhiItem_vtable_callback_updatePaintNode
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickRhiItem_vtable_callback_event
  if not isNil(vtbl[].geometryChange):
    vtbl[].vtbl.geometryChange = fcQQuickRhiItem_vtable_callback_geometryChange
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = fcQQuickRhiItem_vtable_callback_releaseResources
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = fcQQuickRhiItem_vtable_callback_boundingRect
  if not isNil(vtbl[].clipRect):
    vtbl[].vtbl.clipRect = fcQQuickRhiItem_vtable_callback_clipRect
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = fcQQuickRhiItem_vtable_callback_contains
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQQuickRhiItem_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = fcQQuickRhiItem_vtable_callback_itemChange
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = fcQQuickRhiItem_vtable_callback_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = fcQQuickRhiItem_vtable_callback_componentComplete
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQQuickRhiItem_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQQuickRhiItem_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQQuickRhiItem_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQQuickRhiItem_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQQuickRhiItem_vtable_callback_focusOutEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQQuickRhiItem_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQQuickRhiItem_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQQuickRhiItem_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQQuickRhiItem_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = fcQQuickRhiItem_vtable_callback_mouseUngrabEvent
  if not isNil(vtbl[].touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = fcQQuickRhiItem_vtable_callback_touchUngrabEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQQuickRhiItem_vtable_callback_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQQuickRhiItem_vtable_callback_touchEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = fcQQuickRhiItem_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = fcQQuickRhiItem_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = fcQQuickRhiItem_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQQuickRhiItem_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQQuickRhiItem_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQQuickRhiItem_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQQuickRhiItem_vtable_callback_dropEvent
  if not isNil(vtbl[].childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = fcQQuickRhiItem_vtable_callback_childMouseEventFilter
  if not isNil(vtbl[].updatePolish):
    vtbl[].vtbl.updatePolish = fcQQuickRhiItem_vtable_callback_updatePolish
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickRhiItem_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickRhiItem_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickRhiItem_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickRhiItem_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickRhiItem_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickRhiItem_vtable_callback_disconnectNotify
  let tmp = gen_qquickrhiitem_types.QQuickRhiItem(h: fcQQuickRhiItem_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQQuickRhiItem_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qquickrhiitem_types.QQuickRhiItem,
    parent: gen_qquickitem_types.QQuickItem,
    vtbl: ref QQuickRhiItemVTable = nil): gen_qquickrhiitem_types.QQuickRhiItem =
  let vtbl = if vtbl == nil: new QQuickRhiItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickRhiItemVTable](fcQQuickRhiItem_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickRhiItem_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickRhiItem_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickRhiItem_vtable_callback_metacall
  if not isNil(vtbl[].isTextureProvider):
    vtbl[].vtbl.isTextureProvider = fcQQuickRhiItem_vtable_callback_isTextureProvider
  if not isNil(vtbl[].textureProvider):
    vtbl[].vtbl.textureProvider = fcQQuickRhiItem_vtable_callback_textureProvider
  if not isNil(vtbl[].createRenderer):
    vtbl[].vtbl.createRenderer = fcQQuickRhiItem_vtable_callback_createRenderer
  if not isNil(vtbl[].updatePaintNode):
    vtbl[].vtbl.updatePaintNode = fcQQuickRhiItem_vtable_callback_updatePaintNode
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickRhiItem_vtable_callback_event
  if not isNil(vtbl[].geometryChange):
    vtbl[].vtbl.geometryChange = fcQQuickRhiItem_vtable_callback_geometryChange
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = fcQQuickRhiItem_vtable_callback_releaseResources
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = fcQQuickRhiItem_vtable_callback_boundingRect
  if not isNil(vtbl[].clipRect):
    vtbl[].vtbl.clipRect = fcQQuickRhiItem_vtable_callback_clipRect
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = fcQQuickRhiItem_vtable_callback_contains
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQQuickRhiItem_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = fcQQuickRhiItem_vtable_callback_itemChange
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = fcQQuickRhiItem_vtable_callback_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = fcQQuickRhiItem_vtable_callback_componentComplete
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQQuickRhiItem_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQQuickRhiItem_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQQuickRhiItem_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQQuickRhiItem_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQQuickRhiItem_vtable_callback_focusOutEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQQuickRhiItem_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQQuickRhiItem_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQQuickRhiItem_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQQuickRhiItem_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = fcQQuickRhiItem_vtable_callback_mouseUngrabEvent
  if not isNil(vtbl[].touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = fcQQuickRhiItem_vtable_callback_touchUngrabEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQQuickRhiItem_vtable_callback_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQQuickRhiItem_vtable_callback_touchEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = fcQQuickRhiItem_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = fcQQuickRhiItem_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = fcQQuickRhiItem_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQQuickRhiItem_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQQuickRhiItem_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQQuickRhiItem_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQQuickRhiItem_vtable_callback_dropEvent
  if not isNil(vtbl[].childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = fcQQuickRhiItem_vtable_callback_childMouseEventFilter
  if not isNil(vtbl[].updatePolish):
    vtbl[].vtbl.updatePolish = fcQQuickRhiItem_vtable_callback_updatePolish
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickRhiItem_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickRhiItem_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickRhiItem_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickRhiItem_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickRhiItem_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickRhiItem_vtable_callback_disconnectNotify
  let tmp = gen_qquickrhiitem_types.QQuickRhiItem(h: fcQQuickRhiItem_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQQuickRhiItem_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQQuickRhiItem_mvtbl = cQQuickRhiItemVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickRhiItem()[])](self.fcQQuickRhiItem_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQuickRhiItem_method_callback_metaObject,
  metacast: fcQQuickRhiItem_method_callback_metacast,
  metacall: fcQQuickRhiItem_method_callback_metacall,
  isTextureProvider: fcQQuickRhiItem_method_callback_isTextureProvider,
  textureProvider: fcQQuickRhiItem_method_callback_textureProvider,
  createRenderer: fcQQuickRhiItem_method_callback_createRenderer,
  updatePaintNode: fcQQuickRhiItem_method_callback_updatePaintNode,
  event: fcQQuickRhiItem_method_callback_event,
  geometryChange: fcQQuickRhiItem_method_callback_geometryChange,
  releaseResources: fcQQuickRhiItem_method_callback_releaseResources,
  boundingRect: fcQQuickRhiItem_method_callback_boundingRect,
  clipRect: fcQQuickRhiItem_method_callback_clipRect,
  contains: fcQQuickRhiItem_method_callback_contains,
  inputMethodQuery: fcQQuickRhiItem_method_callback_inputMethodQuery,
  itemChange: fcQQuickRhiItem_method_callback_itemChange,
  classBegin: fcQQuickRhiItem_method_callback_classBegin,
  componentComplete: fcQQuickRhiItem_method_callback_componentComplete,
  keyPressEvent: fcQQuickRhiItem_method_callback_keyPressEvent,
  keyReleaseEvent: fcQQuickRhiItem_method_callback_keyReleaseEvent,
  inputMethodEvent: fcQQuickRhiItem_method_callback_inputMethodEvent,
  focusInEvent: fcQQuickRhiItem_method_callback_focusInEvent,
  focusOutEvent: fcQQuickRhiItem_method_callback_focusOutEvent,
  mousePressEvent: fcQQuickRhiItem_method_callback_mousePressEvent,
  mouseMoveEvent: fcQQuickRhiItem_method_callback_mouseMoveEvent,
  mouseReleaseEvent: fcQQuickRhiItem_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQQuickRhiItem_method_callback_mouseDoubleClickEvent,
  mouseUngrabEvent: fcQQuickRhiItem_method_callback_mouseUngrabEvent,
  touchUngrabEvent: fcQQuickRhiItem_method_callback_touchUngrabEvent,
  wheelEvent: fcQQuickRhiItem_method_callback_wheelEvent,
  touchEvent: fcQQuickRhiItem_method_callback_touchEvent,
  hoverEnterEvent: fcQQuickRhiItem_method_callback_hoverEnterEvent,
  hoverMoveEvent: fcQQuickRhiItem_method_callback_hoverMoveEvent,
  hoverLeaveEvent: fcQQuickRhiItem_method_callback_hoverLeaveEvent,
  dragEnterEvent: fcQQuickRhiItem_method_callback_dragEnterEvent,
  dragMoveEvent: fcQQuickRhiItem_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQQuickRhiItem_method_callback_dragLeaveEvent,
  dropEvent: fcQQuickRhiItem_method_callback_dropEvent,
  childMouseEventFilter: fcQQuickRhiItem_method_callback_childMouseEventFilter,
  updatePolish: fcQQuickRhiItem_method_callback_updatePolish,
  eventFilter: fcQQuickRhiItem_method_callback_eventFilter,
  timerEvent: fcQQuickRhiItem_method_callback_timerEvent,
  childEvent: fcQQuickRhiItem_method_callback_childEvent,
  customEvent: fcQQuickRhiItem_method_callback_customEvent,
  connectNotify: fcQQuickRhiItem_method_callback_connectNotify,
  disconnectNotify: fcQQuickRhiItem_method_callback_disconnectNotify,
)
proc create*(T: type gen_qquickrhiitem_types.QQuickRhiItem,
    inst: VirtualQQuickRhiItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickRhiItem_new(addr(cQQuickRhiItem_mvtbl), csize_t(sizeof(pointer)))
  fcQQuickRhiItem_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qquickrhiitem_types.QQuickRhiItem,
    parent: gen_qquickitem_types.QQuickItem,
    inst: VirtualQQuickRhiItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickRhiItem_new2(addr(cQQuickRhiItem_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQQuickRhiItem_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qquickrhiitem_types.QQuickRhiItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickRhiItem_staticMetaObject())
