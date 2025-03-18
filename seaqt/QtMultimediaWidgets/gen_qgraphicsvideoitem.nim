import ./qtmultimediawidgets_pkg

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


{.compile("gen_qgraphicsvideoitem.cpp", QtMultimediaWidgetsCFlags).}


import ./gen_qgraphicsvideoitem_types
export gen_qgraphicsvideoitem_types

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
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpainterpath_types,
  ../QtMultimedia/gen_qabstractvideosurface_types,
  ../QtMultimedia/gen_qmediaobject_types,
  ../QtWidgets/gen_qgraphicsitem,
  ../QtWidgets/gen_qgraphicssceneevent_types,
  ../QtWidgets/gen_qstyleoption_types,
  ../QtWidgets/gen_qwidget_types
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
  gen_qpainter_types,
  gen_qpainterpath_types,
  gen_qabstractvideosurface_types,
  gen_qmediaobject_types,
  gen_qgraphicsitem,
  gen_qgraphicssceneevent_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQGraphicsVideoItem*{.exportc: "QGraphicsVideoItem", incompleteStruct.} = object

proc fcQGraphicsVideoItem_metaObject(self: pointer): pointer {.importc: "QGraphicsVideoItem_metaObject".}
proc fcQGraphicsVideoItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsVideoItem_metacast".}
proc fcQGraphicsVideoItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsVideoItem_metacall".}
proc fcQGraphicsVideoItem_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsVideoItem_tr".}
proc fcQGraphicsVideoItem_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsVideoItem_trUtf8".}
proc fcQGraphicsVideoItem_mediaObject(self: pointer): pointer {.importc: "QGraphicsVideoItem_mediaObject".}
proc fcQGraphicsVideoItem_videoSurface(self: pointer): pointer {.importc: "QGraphicsVideoItem_videoSurface".}
proc fcQGraphicsVideoItem_aspectRatioMode(self: pointer): cint {.importc: "QGraphicsVideoItem_aspectRatioMode".}
proc fcQGraphicsVideoItem_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QGraphicsVideoItem_setAspectRatioMode".}
proc fcQGraphicsVideoItem_offset(self: pointer): pointer {.importc: "QGraphicsVideoItem_offset".}
proc fcQGraphicsVideoItem_setOffset(self: pointer, offset: pointer): void {.importc: "QGraphicsVideoItem_setOffset".}
proc fcQGraphicsVideoItem_size(self: pointer): pointer {.importc: "QGraphicsVideoItem_size".}
proc fcQGraphicsVideoItem_setSize(self: pointer, size: pointer): void {.importc: "QGraphicsVideoItem_setSize".}
proc fcQGraphicsVideoItem_nativeSize(self: pointer): pointer {.importc: "QGraphicsVideoItem_nativeSize".}
proc fcQGraphicsVideoItem_boundingRect(self: pointer): pointer {.importc: "QGraphicsVideoItem_boundingRect".}
proc fcQGraphicsVideoItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsVideoItem_paint".}
proc fcQGraphicsVideoItem_nativeSizeChanged(self: pointer, size: pointer): void {.importc: "QGraphicsVideoItem_nativeSizeChanged".}
proc fcQGraphicsVideoItem_connect_nativeSizeChanged(self: pointer, slot: int, callback: proc (slot: int, size: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsVideoItem_connect_nativeSizeChanged".}
proc fcQGraphicsVideoItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsVideoItem_tr2".}
proc fcQGraphicsVideoItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsVideoItem_tr3".}
proc fcQGraphicsVideoItem_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsVideoItem_trUtf82".}
proc fcQGraphicsVideoItem_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsVideoItem_trUtf83".}
proc fcQGraphicsVideoItem_vtbl(self: pointer): pointer {.importc: "QGraphicsVideoItem_vtbl".}
proc fcQGraphicsVideoItem_vdata(self: pointer): pointer {.importc: "QGraphicsVideoItem_vdata".}

type cQGraphicsVideoItemVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  paint*: proc(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(self: pointer, objectVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, ev: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  advance*: proc(self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  shape*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsVideoItem_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsVideoItem_virtualbase_metaObject".}
proc fcQGraphicsVideoItem_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsVideoItem_virtualbase_metacast".}
proc fcQGraphicsVideoItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsVideoItem_virtualbase_metacall".}
proc fcQGraphicsVideoItem_virtualbase_mediaObject(self: pointer): pointer {.importc: "QGraphicsVideoItem_virtualbase_mediaObject".}
proc fcQGraphicsVideoItem_virtualbase_boundingRect(self: pointer): pointer {.importc: "QGraphicsVideoItem_virtualbase_boundingRect".}
proc fcQGraphicsVideoItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_paint".}
proc fcQGraphicsVideoItem_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_timerEvent".}
proc fcQGraphicsVideoItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsVideoItem_virtualbase_itemChange".}
proc fcQGraphicsVideoItem_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool {.importc: "QGraphicsVideoItem_virtualbase_setMediaObject".}
proc fcQGraphicsVideoItem_virtualbase_event(self: pointer, ev: pointer): bool {.importc: "QGraphicsVideoItem_virtualbase_event".}
proc fcQGraphicsVideoItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsVideoItem_virtualbase_eventFilter".}
proc fcQGraphicsVideoItem_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_childEvent".}
proc fcQGraphicsVideoItem_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_customEvent".}
proc fcQGraphicsVideoItem_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_connectNotify".}
proc fcQGraphicsVideoItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_disconnectNotify".}
proc fcQGraphicsVideoItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsVideoItem_virtualbase_advance".}
proc fcQGraphicsVideoItem_virtualbase_shape(self: pointer): pointer {.importc: "QGraphicsVideoItem_virtualbase_shape".}
proc fcQGraphicsVideoItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsVideoItem_virtualbase_contains".}
proc fcQGraphicsVideoItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsVideoItem_virtualbase_collidesWithItem".}
proc fcQGraphicsVideoItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsVideoItem_virtualbase_collidesWithPath".}
proc fcQGraphicsVideoItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsVideoItem_virtualbase_isObscuredBy".}
proc fcQGraphicsVideoItem_virtualbase_opaqueArea(self: pointer): pointer {.importc: "QGraphicsVideoItem_virtualbase_opaqueArea".}
proc fcQGraphicsVideoItem_virtualbase_typeX(self: pointer): cint {.importc: "QGraphicsVideoItem_virtualbase_type".}
proc fcQGraphicsVideoItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsVideoItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsVideoItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsVideoItem_virtualbase_sceneEvent".}
proc fcQGraphicsVideoItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsVideoItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsVideoItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsVideoItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsVideoItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_dropEvent".}
proc fcQGraphicsVideoItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_focusInEvent".}
proc fcQGraphicsVideoItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_focusOutEvent".}
proc fcQGraphicsVideoItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsVideoItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsVideoItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsVideoItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_keyPressEvent".}
proc fcQGraphicsVideoItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsVideoItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_mousePressEvent".}
proc fcQGraphicsVideoItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsVideoItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsVideoItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsVideoItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_wheelEvent".}
proc fcQGraphicsVideoItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsVideoItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsVideoItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsVideoItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsVideoItem_virtualbase_supportsExtension".}
proc fcQGraphicsVideoItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_setExtension".}
proc fcQGraphicsVideoItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsVideoItem_virtualbase_extension".}
proc fcQGraphicsVideoItem_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QGraphicsVideoItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsVideoItem_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsVideoItem_protectedbase_sender".}
proc fcQGraphicsVideoItem_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsVideoItem_protectedbase_senderSignalIndex".}
proc fcQGraphicsVideoItem_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsVideoItem_protectedbase_receivers".}
proc fcQGraphicsVideoItem_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsVideoItem_protectedbase_isSignalConnected".}
proc fcQGraphicsVideoItem_protectedbase_addToIndex(self: pointer): void {.importc: "QGraphicsVideoItem_protectedbase_addToIndex".}
proc fcQGraphicsVideoItem_protectedbase_removeFromIndex(self: pointer): void {.importc: "QGraphicsVideoItem_protectedbase_removeFromIndex".}
proc fcQGraphicsVideoItem_protectedbase_prepareGeometryChange(self: pointer): void {.importc: "QGraphicsVideoItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsVideoItem_new(vtbl, vdata: pointer): ptr cQGraphicsVideoItem {.importc: "QGraphicsVideoItem_new".}
proc fcQGraphicsVideoItem_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsVideoItem {.importc: "QGraphicsVideoItem_new2".}
proc fcQGraphicsVideoItem_staticMetaObject(): pointer {.importc: "QGraphicsVideoItem_staticMetaObject".}

proc metaObject*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsVideoItem_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, param1: cstring): pointer =
  fcQGraphicsVideoItem_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsVideoItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, s: cstring): string =
  let v_ms = fcQGraphicsVideoItem_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, s: cstring): string =
  let v_ms = fcQGraphicsVideoItem_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQGraphicsVideoItem_mediaObject(self.h), owned: false)

proc videoSurface*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qabstractvideosurface_types.QAbstractVideoSurface =
  gen_qabstractvideosurface_types.QAbstractVideoSurface(h: fcQGraphicsVideoItem_videoSurface(self.h), owned: false)

proc aspectRatioMode*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): cint =
  cint(fcQGraphicsVideoItem_aspectRatioMode(self.h))

proc setAspectRatioMode*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, mode: cint): void =
  fcQGraphicsVideoItem_setAspectRatioMode(self.h, cint(mode))

proc offset*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsVideoItem_offset(self.h), owned: true)

proc setOffset*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, offset: gen_qpoint_types.QPointF): void =
  fcQGraphicsVideoItem_setOffset(self.h, offset.h)

proc size*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsVideoItem_size(self.h), owned: true)

proc setSize*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsVideoItem_setSize(self.h, size.h)

proc nativeSize*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsVideoItem_nativeSize(self.h), owned: true)

proc boundingRect*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsVideoItem_boundingRect(self.h), owned: true)

proc paint*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsVideoItem_paint(self.h, painter.h, option.h, widget.h)

proc nativeSizeChanged*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsVideoItem_nativeSizeChanged(self.h, size.h)

type QGraphicsVideoItemnativeSizeChangedSlot* = proc(size: gen_qsize_types.QSizeF)
proc fcQGraphicsVideoItem_slot_callback_nativeSizeChanged(slot: int, size: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsVideoItemnativeSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSizeF(h: size, owned: false)

  nimfunc[](slotval1)

proc fcQGraphicsVideoItem_slot_callback_nativeSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsVideoItemnativeSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNativeSizeChanged*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemnativeSizeChangedSlot) =
  var tmp = new QGraphicsVideoItemnativeSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_connect_nativeSizeChanged(self.h, cast[int](addr tmp[]), fcQGraphicsVideoItem_slot_callback_nativeSizeChanged, fcQGraphicsVideoItem_slot_callback_nativeSizeChanged_release)

proc tr*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsVideoItem_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsVideoItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsVideoItem_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsVideoItem_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGraphicsVideoItemmetaObjectProc* = proc(self: QGraphicsVideoItem): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsVideoItemmetacastProc* = proc(self: QGraphicsVideoItem, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsVideoItemmetacallProc* = proc(self: QGraphicsVideoItem, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsVideoItemmediaObjectProc* = proc(self: QGraphicsVideoItem): gen_qmediaobject_types.QMediaObject {.raises: [], gcsafe.}
type QGraphicsVideoItemboundingRectProc* = proc(self: QGraphicsVideoItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsVideoItempaintProc* = proc(self: QGraphicsVideoItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsVideoItemtimerEventProc* = proc(self: QGraphicsVideoItem, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemitemChangeProc* = proc(self: QGraphicsVideoItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsVideoItemsetMediaObjectProc* = proc(self: QGraphicsVideoItem, objectVal: gen_qmediaobject_types.QMediaObject): bool {.raises: [], gcsafe.}
type QGraphicsVideoItemeventProc* = proc(self: QGraphicsVideoItem, ev: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsVideoItemeventFilterProc* = proc(self: QGraphicsVideoItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsVideoItemchildEventProc* = proc(self: QGraphicsVideoItem, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemcustomEventProc* = proc(self: QGraphicsVideoItem, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemconnectNotifyProc* = proc(self: QGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsVideoItemdisconnectNotifyProc* = proc(self: QGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsVideoItemadvanceProc* = proc(self: QGraphicsVideoItem, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsVideoItemshapeProc* = proc(self: QGraphicsVideoItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsVideoItemcontainsProc* = proc(self: QGraphicsVideoItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsVideoItemcollidesWithItemProc* = proc(self: QGraphicsVideoItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsVideoItemcollidesWithPathProc* = proc(self: QGraphicsVideoItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsVideoItemisObscuredByProc* = proc(self: QGraphicsVideoItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsVideoItemopaqueAreaProc* = proc(self: QGraphicsVideoItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsVideoItemtypeXProc* = proc(self: QGraphicsVideoItem): cint {.raises: [], gcsafe.}
type QGraphicsVideoItemsceneEventFilterProc* = proc(self: QGraphicsVideoItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsVideoItemsceneEventProc* = proc(self: QGraphicsVideoItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsVideoItemcontextMenuEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemdragEnterEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemdragLeaveEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemdragMoveEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemdropEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemfocusInEventProc* = proc(self: QGraphicsVideoItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemfocusOutEventProc* = proc(self: QGraphicsVideoItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemhoverEnterEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemhoverMoveEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemhoverLeaveEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemkeyPressEventProc* = proc(self: QGraphicsVideoItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemkeyReleaseEventProc* = proc(self: QGraphicsVideoItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemmousePressEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemmouseMoveEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemmouseReleaseEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemmouseDoubleClickEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemwheelEventProc* = proc(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoIteminputMethodEventProc* = proc(self: QGraphicsVideoItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoIteminputMethodQueryProc* = proc(self: QGraphicsVideoItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsVideoItemsupportsExtensionProc* = proc(self: QGraphicsVideoItem, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsVideoItemsetExtensionProc* = proc(self: QGraphicsVideoItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsVideoItemextensionProc* = proc(self: QGraphicsVideoItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}

type QGraphicsVideoItemVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsVideoItemVTable
  metaObject*: QGraphicsVideoItemmetaObjectProc
  metacast*: QGraphicsVideoItemmetacastProc
  metacall*: QGraphicsVideoItemmetacallProc
  mediaObject*: QGraphicsVideoItemmediaObjectProc
  boundingRect*: QGraphicsVideoItemboundingRectProc
  paint*: QGraphicsVideoItempaintProc
  timerEvent*: QGraphicsVideoItemtimerEventProc
  itemChange*: QGraphicsVideoItemitemChangeProc
  setMediaObject*: QGraphicsVideoItemsetMediaObjectProc
  event*: QGraphicsVideoItemeventProc
  eventFilter*: QGraphicsVideoItemeventFilterProc
  childEvent*: QGraphicsVideoItemchildEventProc
  customEvent*: QGraphicsVideoItemcustomEventProc
  connectNotify*: QGraphicsVideoItemconnectNotifyProc
  disconnectNotify*: QGraphicsVideoItemdisconnectNotifyProc
  advance*: QGraphicsVideoItemadvanceProc
  shape*: QGraphicsVideoItemshapeProc
  contains*: QGraphicsVideoItemcontainsProc
  collidesWithItem*: QGraphicsVideoItemcollidesWithItemProc
  collidesWithPath*: QGraphicsVideoItemcollidesWithPathProc
  isObscuredBy*: QGraphicsVideoItemisObscuredByProc
  opaqueArea*: QGraphicsVideoItemopaqueAreaProc
  typeX*: QGraphicsVideoItemtypeXProc
  sceneEventFilter*: QGraphicsVideoItemsceneEventFilterProc
  sceneEvent*: QGraphicsVideoItemsceneEventProc
  contextMenuEvent*: QGraphicsVideoItemcontextMenuEventProc
  dragEnterEvent*: QGraphicsVideoItemdragEnterEventProc
  dragLeaveEvent*: QGraphicsVideoItemdragLeaveEventProc
  dragMoveEvent*: QGraphicsVideoItemdragMoveEventProc
  dropEvent*: QGraphicsVideoItemdropEventProc
  focusInEvent*: QGraphicsVideoItemfocusInEventProc
  focusOutEvent*: QGraphicsVideoItemfocusOutEventProc
  hoverEnterEvent*: QGraphicsVideoItemhoverEnterEventProc
  hoverMoveEvent*: QGraphicsVideoItemhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsVideoItemhoverLeaveEventProc
  keyPressEvent*: QGraphicsVideoItemkeyPressEventProc
  keyReleaseEvent*: QGraphicsVideoItemkeyReleaseEventProc
  mousePressEvent*: QGraphicsVideoItemmousePressEventProc
  mouseMoveEvent*: QGraphicsVideoItemmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsVideoItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsVideoItemmouseDoubleClickEventProc
  wheelEvent*: QGraphicsVideoItemwheelEventProc
  inputMethodEvent*: QGraphicsVideoIteminputMethodEventProc
  inputMethodQuery*: QGraphicsVideoIteminputMethodQueryProc
  supportsExtension*: QGraphicsVideoItemsupportsExtensionProc
  setExtension*: QGraphicsVideoItemsetExtensionProc
  extension*: QGraphicsVideoItemextensionProc

proc QGraphicsVideoItemmetaObject*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsVideoItem_virtualbase_metaObject(self.h), owned: false)

proc QGraphicsVideoItemmetacast*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, param1: cstring): pointer =
  fcQGraphicsVideoItem_virtualbase_metacast(self.h, param1)

proc QGraphicsVideoItemmetacall*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsVideoItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QGraphicsVideoItemmediaObject*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQGraphicsVideoItem_virtualbase_mediaObject(self.h), owned: false)

proc QGraphicsVideoItemboundingRect*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsVideoItem_virtualbase_boundingRect(self.h), owned: true)

proc QGraphicsVideoItempaint*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsVideoItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc QGraphicsVideoItemtimerEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsVideoItem_virtualbase_timerEvent(self.h, event.h)

proc QGraphicsVideoItemitemChange*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsVideoItem_virtualbase_itemChange(self.h, cint(change), value.h), owned: true)

proc QGraphicsVideoItemsetMediaObject*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fcQGraphicsVideoItem_virtualbase_setMediaObject(self.h, objectVal.h)

proc QGraphicsVideoItemevent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ev: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsVideoItem_virtualbase_event(self.h, ev.h)

proc QGraphicsVideoItemeventFilter*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsVideoItem_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QGraphicsVideoItemchildEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsVideoItem_virtualbase_childEvent(self.h, event.h)

proc QGraphicsVideoItemcustomEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsVideoItem_virtualbase_customEvent(self.h, event.h)

proc QGraphicsVideoItemconnectNotify*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsVideoItem_virtualbase_connectNotify(self.h, signal.h)

proc QGraphicsVideoItemdisconnectNotify*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsVideoItem_virtualbase_disconnectNotify(self.h, signal.h)

proc QGraphicsVideoItemadvance*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, phase: cint): void =
  fcQGraphicsVideoItem_virtualbase_advance(self.h, phase)

proc QGraphicsVideoItemshape*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsVideoItem_virtualbase_shape(self.h), owned: true)

proc QGraphicsVideoItemcontains*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsVideoItem_virtualbase_contains(self.h, point.h)

proc QGraphicsVideoItemcollidesWithItem*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsVideoItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc QGraphicsVideoItemcollidesWithPath*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsVideoItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc QGraphicsVideoItemisObscuredBy*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsVideoItem_virtualbase_isObscuredBy(self.h, item.h)

proc QGraphicsVideoItemopaqueArea*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsVideoItem_virtualbase_opaqueArea(self.h), owned: true)

proc QGraphicsVideoItemtypeX*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): cint =
  fcQGraphicsVideoItem_virtualbase_typeX(self.h)

proc QGraphicsVideoItemsceneEventFilter*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsVideoItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc QGraphicsVideoItemsceneEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsVideoItem_virtualbase_sceneEvent(self.h, event.h)

proc QGraphicsVideoItemcontextMenuEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsVideoItem_virtualbase_contextMenuEvent(self.h, event.h)

proc QGraphicsVideoItemdragEnterEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsVideoItem_virtualbase_dragEnterEvent(self.h, event.h)

proc QGraphicsVideoItemdragLeaveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsVideoItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc QGraphicsVideoItemdragMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsVideoItem_virtualbase_dragMoveEvent(self.h, event.h)

proc QGraphicsVideoItemdropEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsVideoItem_virtualbase_dropEvent(self.h, event.h)

proc QGraphicsVideoItemfocusInEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsVideoItem_virtualbase_focusInEvent(self.h, event.h)

proc QGraphicsVideoItemfocusOutEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsVideoItem_virtualbase_focusOutEvent(self.h, event.h)

proc QGraphicsVideoItemhoverEnterEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsVideoItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc QGraphicsVideoItemhoverMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsVideoItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc QGraphicsVideoItemhoverLeaveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsVideoItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc QGraphicsVideoItemkeyPressEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsVideoItem_virtualbase_keyPressEvent(self.h, event.h)

proc QGraphicsVideoItemkeyReleaseEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsVideoItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc QGraphicsVideoItemmousePressEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsVideoItem_virtualbase_mousePressEvent(self.h, event.h)

proc QGraphicsVideoItemmouseMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsVideoItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc QGraphicsVideoItemmouseReleaseEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsVideoItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QGraphicsVideoItemmouseDoubleClickEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsVideoItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QGraphicsVideoItemwheelEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsVideoItem_virtualbase_wheelEvent(self.h, event.h)

proc QGraphicsVideoIteminputMethodEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsVideoItem_virtualbase_inputMethodEvent(self.h, event.h)

proc QGraphicsVideoIteminputMethodQuery*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsVideoItem_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc QGraphicsVideoItemsupportsExtension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, extension: cint): bool =
  fcQGraphicsVideoItem_virtualbase_supportsExtension(self.h, cint(extension))

proc QGraphicsVideoItemsetExtension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsVideoItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc QGraphicsVideoItemextension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsVideoItem_virtualbase_extension(self.h, variant.h), owned: true)


proc fcQGraphicsVideoItem_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  var virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_vtable_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_vtable_callback_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc fcQGraphicsVideoItem_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_itemChange(self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_vtable_callback_setMediaObject(self: pointer, objectVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal, owned: false)
  var virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_event(self: pointer, ev: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: ev, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_advance(self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_shape(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_vtable_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_isObscuredBy(self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_opaqueArea(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_vtable_callback_typeX(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_sceneEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverEnterEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverMoveEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQGraphicsVideoItem_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_vtable_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_vtable_callback_setExtension(self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  vtbl[].setExtension(self, slotval1, slotval2)

proc fcQGraphicsVideoItem_vtable_callback_extension(self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsVideoItem* {.inheritable.} = ref object of QGraphicsVideoItem
  vtbl*: cQGraphicsVideoItemVTable

method metaObject*(self: VirtualQGraphicsVideoItem): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsVideoItemmetaObject(self[])
method metacast*(self: VirtualQGraphicsVideoItem, param1: cstring): pointer {.base.} =
  QGraphicsVideoItemmetacast(self[], param1)
method metacall*(self: VirtualQGraphicsVideoItem, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsVideoItemmetacall(self[], param1, param2, param3)
method mediaObject*(self: VirtualQGraphicsVideoItem): gen_qmediaobject_types.QMediaObject {.base.} =
  QGraphicsVideoItemmediaObject(self[])
method boundingRect*(self: VirtualQGraphicsVideoItem): gen_qrect_types.QRectF {.base.} =
  QGraphicsVideoItemboundingRect(self[])
method paint*(self: VirtualQGraphicsVideoItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.base.} =
  QGraphicsVideoItempaint(self[], painter, option, widget)
method timerEvent*(self: VirtualQGraphicsVideoItem, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsVideoItemtimerEvent(self[], event)
method itemChange*(self: VirtualQGraphicsVideoItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsVideoItemitemChange(self[], change, value)
method setMediaObject*(self: VirtualQGraphicsVideoItem, objectVal: gen_qmediaobject_types.QMediaObject): bool {.base.} =
  QGraphicsVideoItemsetMediaObject(self[], objectVal)
method event*(self: VirtualQGraphicsVideoItem, ev: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsVideoItemevent(self[], ev)
method eventFilter*(self: VirtualQGraphicsVideoItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsVideoItemeventFilter(self[], watched, event)
method childEvent*(self: VirtualQGraphicsVideoItem, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsVideoItemchildEvent(self[], event)
method customEvent*(self: VirtualQGraphicsVideoItem, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsVideoItemcustomEvent(self[], event)
method connectNotify*(self: VirtualQGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsVideoItemconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsVideoItemdisconnectNotify(self[], signal)
method advance*(self: VirtualQGraphicsVideoItem, phase: cint): void {.base.} =
  QGraphicsVideoItemadvance(self[], phase)
method shape*(self: VirtualQGraphicsVideoItem): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsVideoItemshape(self[])
method contains*(self: VirtualQGraphicsVideoItem, point: gen_qpoint_types.QPointF): bool {.base.} =
  QGraphicsVideoItemcontains(self[], point)
method collidesWithItem*(self: VirtualQGraphicsVideoItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.base.} =
  QGraphicsVideoItemcollidesWithItem(self[], other, mode)
method collidesWithPath*(self: VirtualQGraphicsVideoItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.base.} =
  QGraphicsVideoItemcollidesWithPath(self[], path, mode)
method isObscuredBy*(self: VirtualQGraphicsVideoItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.base.} =
  QGraphicsVideoItemisObscuredBy(self[], item)
method opaqueArea*(self: VirtualQGraphicsVideoItem): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsVideoItemopaqueArea(self[])
method typeX*(self: VirtualQGraphicsVideoItem): cint {.base.} =
  QGraphicsVideoItemtypeX(self[])
method sceneEventFilter*(self: VirtualQGraphicsVideoItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsVideoItemsceneEventFilter(self[], watched, event)
method sceneEvent*(self: VirtualQGraphicsVideoItem, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsVideoItemsceneEvent(self[], event)
method contextMenuEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.base.} =
  QGraphicsVideoItemcontextMenuEvent(self[], event)
method dragEnterEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsVideoItemdragEnterEvent(self[], event)
method dragLeaveEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsVideoItemdragLeaveEvent(self[], event)
method dragMoveEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsVideoItemdragMoveEvent(self[], event)
method dropEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsVideoItemdropEvent(self[], event)
method focusInEvent*(self: VirtualQGraphicsVideoItem, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsVideoItemfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQGraphicsVideoItem, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsVideoItemfocusOutEvent(self[], event)
method hoverEnterEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsVideoItemhoverEnterEvent(self[], event)
method hoverMoveEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsVideoItemhoverMoveEvent(self[], event)
method hoverLeaveEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsVideoItemhoverLeaveEvent(self[], event)
method keyPressEvent*(self: VirtualQGraphicsVideoItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsVideoItemkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQGraphicsVideoItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsVideoItemkeyReleaseEvent(self[], event)
method mousePressEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsVideoItemmousePressEvent(self[], event)
method mouseMoveEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsVideoItemmouseMoveEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsVideoItemmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsVideoItemmouseDoubleClickEvent(self[], event)
method wheelEvent*(self: VirtualQGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.base.} =
  QGraphicsVideoItemwheelEvent(self[], event)
method inputMethodEvent*(self: VirtualQGraphicsVideoItem, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QGraphicsVideoIteminputMethodEvent(self[], event)
method inputMethodQuery*(self: VirtualQGraphicsVideoItem, query: cint): gen_qvariant_types.QVariant {.base.} =
  QGraphicsVideoIteminputMethodQuery(self[], query)
method supportsExtension*(self: VirtualQGraphicsVideoItem, extension: cint): bool {.base.} =
  QGraphicsVideoItemsupportsExtension(self[], extension)
method setExtension*(self: VirtualQGraphicsVideoItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.base.} =
  QGraphicsVideoItemsetExtension(self[], extension, variant)
method extension*(self: VirtualQGraphicsVideoItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsVideoItemextension(self[], variant)

proc fcQGraphicsVideoItem_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  var virtualReturn = inst.mediaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_method_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  var virtualReturn = inst.boundingRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_method_callback_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.paint(slotval1, slotval2, slotval3)

proc fcQGraphicsVideoItem_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_itemChange(self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = inst.itemChange(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_method_callback_setMediaObject(self: pointer, objectVal: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal, owned: false)
  var virtualReturn = inst.setMediaObject(slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_event(self: pointer, ev: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: ev, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQGraphicsVideoItem_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc fcQGraphicsVideoItem_method_callback_advance(self: pointer, phase: cint): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = phase
  inst.advance(slotval1)

proc fcQGraphicsVideoItem_method_callback_shape(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  var virtualReturn = inst.shape()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_method_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = inst.contains(slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = inst.collidesWithItem(slotval1, slotval2)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = inst.collidesWithPath(slotval1, slotval2)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_isObscuredBy(self: pointer, item: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = inst.isObscuredBy(slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_opaqueArea(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  var virtualReturn = inst.opaqueArea()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_method_callback_typeX(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  var virtualReturn = inst.typeX()
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.sceneEventFilter(slotval1, slotval2)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_sceneEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.sceneEvent(slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  inst.hoverEnterEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  inst.hoverMoveEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  inst.hoverLeaveEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQGraphicsVideoItem_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsVideoItem_method_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = cint(extension)
  var virtualReturn = inst.supportsExtension(slotval1)
  virtualReturn

proc fcQGraphicsVideoItem_method_callback_setExtension(self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  inst.setExtension(slotval1, slotval2)

proc fcQGraphicsVideoItem_method_callback_extension(self: pointer, variant: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsVideoItem](fcQGraphicsVideoItem_vdata(self))
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = inst.extension(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc updateMicroFocus*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): void =
  fcQGraphicsVideoItem_protectedbase_updateMicroFocus(self.h)

proc sender*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsVideoItem_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): cint =
  fcQGraphicsVideoItem_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, signal: cstring): cint =
  fcQGraphicsVideoItem_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsVideoItem_protectedbase_isSignalConnected(self.h, signal.h)

proc addToIndex*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): void =
  fcQGraphicsVideoItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): void =
  fcQGraphicsVideoItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem): void =
  fcQGraphicsVideoItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem,
    vtbl: ref QGraphicsVideoItemVTable = nil): gen_qgraphicsvideoitem_types.QGraphicsVideoItem =
  let vtbl = if vtbl == nil: new QGraphicsVideoItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGraphicsVideoItem_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGraphicsVideoItem_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGraphicsVideoItem_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = fcQGraphicsVideoItem_vtable_callback_mediaObject
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = fcQGraphicsVideoItem_vtable_callback_boundingRect
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = fcQGraphicsVideoItem_vtable_callback_paint
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGraphicsVideoItem_vtable_callback_timerEvent
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = fcQGraphicsVideoItem_vtable_callback_itemChange
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = fcQGraphicsVideoItem_vtable_callback_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGraphicsVideoItem_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGraphicsVideoItem_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGraphicsVideoItem_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGraphicsVideoItem_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGraphicsVideoItem_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGraphicsVideoItem_vtable_callback_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = fcQGraphicsVideoItem_vtable_callback_advance
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = fcQGraphicsVideoItem_vtable_callback_shape
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = fcQGraphicsVideoItem_vtable_callback_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = fcQGraphicsVideoItem_vtable_callback_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = fcQGraphicsVideoItem_vtable_callback_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = fcQGraphicsVideoItem_vtable_callback_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = fcQGraphicsVideoItem_vtable_callback_opaqueArea
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQGraphicsVideoItem_vtable_callback_typeX
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = fcQGraphicsVideoItem_vtable_callback_sceneEventFilter
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = fcQGraphicsVideoItem_vtable_callback_sceneEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQGraphicsVideoItem_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQGraphicsVideoItem_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQGraphicsVideoItem_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQGraphicsVideoItem_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQGraphicsVideoItem_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQGraphicsVideoItem_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQGraphicsVideoItem_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = fcQGraphicsVideoItem_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = fcQGraphicsVideoItem_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = fcQGraphicsVideoItem_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQGraphicsVideoItem_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQGraphicsVideoItem_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQGraphicsVideoItem_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQGraphicsVideoItem_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQGraphicsVideoItem_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQGraphicsVideoItem_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQGraphicsVideoItem_vtable_callback_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQGraphicsVideoItem_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQGraphicsVideoItem_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = fcQGraphicsVideoItem_vtable_callback_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = fcQGraphicsVideoItem_vtable_callback_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQGraphicsVideoItem_vtable_callback_extension
  gen_qgraphicsvideoitem_types.QGraphicsVideoItem(h: fcQGraphicsVideoItem_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsVideoItemVTable = nil): gen_qgraphicsvideoitem_types.QGraphicsVideoItem =
  let vtbl = if vtbl == nil: new QGraphicsVideoItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsVideoItemVTable](fcQGraphicsVideoItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGraphicsVideoItem_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGraphicsVideoItem_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGraphicsVideoItem_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = fcQGraphicsVideoItem_vtable_callback_mediaObject
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = fcQGraphicsVideoItem_vtable_callback_boundingRect
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = fcQGraphicsVideoItem_vtable_callback_paint
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGraphicsVideoItem_vtable_callback_timerEvent
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = fcQGraphicsVideoItem_vtable_callback_itemChange
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = fcQGraphicsVideoItem_vtable_callback_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGraphicsVideoItem_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGraphicsVideoItem_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGraphicsVideoItem_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGraphicsVideoItem_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGraphicsVideoItem_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGraphicsVideoItem_vtable_callback_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = fcQGraphicsVideoItem_vtable_callback_advance
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = fcQGraphicsVideoItem_vtable_callback_shape
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = fcQGraphicsVideoItem_vtable_callback_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = fcQGraphicsVideoItem_vtable_callback_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = fcQGraphicsVideoItem_vtable_callback_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = fcQGraphicsVideoItem_vtable_callback_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = fcQGraphicsVideoItem_vtable_callback_opaqueArea
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQGraphicsVideoItem_vtable_callback_typeX
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = fcQGraphicsVideoItem_vtable_callback_sceneEventFilter
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = fcQGraphicsVideoItem_vtable_callback_sceneEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQGraphicsVideoItem_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQGraphicsVideoItem_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQGraphicsVideoItem_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQGraphicsVideoItem_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQGraphicsVideoItem_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQGraphicsVideoItem_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQGraphicsVideoItem_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = fcQGraphicsVideoItem_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = fcQGraphicsVideoItem_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = fcQGraphicsVideoItem_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQGraphicsVideoItem_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQGraphicsVideoItem_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQGraphicsVideoItem_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQGraphicsVideoItem_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQGraphicsVideoItem_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQGraphicsVideoItem_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQGraphicsVideoItem_vtable_callback_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQGraphicsVideoItem_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQGraphicsVideoItem_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = fcQGraphicsVideoItem_vtable_callback_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = fcQGraphicsVideoItem_vtable_callback_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQGraphicsVideoItem_vtable_callback_extension
  gen_qgraphicsvideoitem_types.QGraphicsVideoItem(h: fcQGraphicsVideoItem_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGraphicsVideoItem_mvtbl = cQGraphicsVideoItemVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsVideoItem()[])](self.fcQGraphicsVideoItem_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQGraphicsVideoItem_method_callback_metaObject,
  metacast: fcQGraphicsVideoItem_method_callback_metacast,
  metacall: fcQGraphicsVideoItem_method_callback_metacall,
  mediaObject: fcQGraphicsVideoItem_method_callback_mediaObject,
  boundingRect: fcQGraphicsVideoItem_method_callback_boundingRect,
  paint: fcQGraphicsVideoItem_method_callback_paint,
  timerEvent: fcQGraphicsVideoItem_method_callback_timerEvent,
  itemChange: fcQGraphicsVideoItem_method_callback_itemChange,
  setMediaObject: fcQGraphicsVideoItem_method_callback_setMediaObject,
  event: fcQGraphicsVideoItem_method_callback_event,
  eventFilter: fcQGraphicsVideoItem_method_callback_eventFilter,
  childEvent: fcQGraphicsVideoItem_method_callback_childEvent,
  customEvent: fcQGraphicsVideoItem_method_callback_customEvent,
  connectNotify: fcQGraphicsVideoItem_method_callback_connectNotify,
  disconnectNotify: fcQGraphicsVideoItem_method_callback_disconnectNotify,
  advance: fcQGraphicsVideoItem_method_callback_advance,
  shape: fcQGraphicsVideoItem_method_callback_shape,
  contains: fcQGraphicsVideoItem_method_callback_contains,
  collidesWithItem: fcQGraphicsVideoItem_method_callback_collidesWithItem,
  collidesWithPath: fcQGraphicsVideoItem_method_callback_collidesWithPath,
  isObscuredBy: fcQGraphicsVideoItem_method_callback_isObscuredBy,
  opaqueArea: fcQGraphicsVideoItem_method_callback_opaqueArea,
  typeX: fcQGraphicsVideoItem_method_callback_typeX,
  sceneEventFilter: fcQGraphicsVideoItem_method_callback_sceneEventFilter,
  sceneEvent: fcQGraphicsVideoItem_method_callback_sceneEvent,
  contextMenuEvent: fcQGraphicsVideoItem_method_callback_contextMenuEvent,
  dragEnterEvent: fcQGraphicsVideoItem_method_callback_dragEnterEvent,
  dragLeaveEvent: fcQGraphicsVideoItem_method_callback_dragLeaveEvent,
  dragMoveEvent: fcQGraphicsVideoItem_method_callback_dragMoveEvent,
  dropEvent: fcQGraphicsVideoItem_method_callback_dropEvent,
  focusInEvent: fcQGraphicsVideoItem_method_callback_focusInEvent,
  focusOutEvent: fcQGraphicsVideoItem_method_callback_focusOutEvent,
  hoverEnterEvent: fcQGraphicsVideoItem_method_callback_hoverEnterEvent,
  hoverMoveEvent: fcQGraphicsVideoItem_method_callback_hoverMoveEvent,
  hoverLeaveEvent: fcQGraphicsVideoItem_method_callback_hoverLeaveEvent,
  keyPressEvent: fcQGraphicsVideoItem_method_callback_keyPressEvent,
  keyReleaseEvent: fcQGraphicsVideoItem_method_callback_keyReleaseEvent,
  mousePressEvent: fcQGraphicsVideoItem_method_callback_mousePressEvent,
  mouseMoveEvent: fcQGraphicsVideoItem_method_callback_mouseMoveEvent,
  mouseReleaseEvent: fcQGraphicsVideoItem_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQGraphicsVideoItem_method_callback_mouseDoubleClickEvent,
  wheelEvent: fcQGraphicsVideoItem_method_callback_wheelEvent,
  inputMethodEvent: fcQGraphicsVideoItem_method_callback_inputMethodEvent,
  inputMethodQuery: fcQGraphicsVideoItem_method_callback_inputMethodQuery,
  supportsExtension: fcQGraphicsVideoItem_method_callback_supportsExtension,
  setExtension: fcQGraphicsVideoItem_method_callback_setExtension,
  extension: fcQGraphicsVideoItem_method_callback_extension,
)
proc create*(T: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem,
    inst: VirtualQGraphicsVideoItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsVideoItem_new(addr(cQGraphicsVideoItem_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    inst: VirtualQGraphicsVideoItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsVideoItem_new2(addr(cQGraphicsVideoItem_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsVideoItem_staticMetaObject())
