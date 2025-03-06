import ./Qt6MultimediaWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6MultimediaWidgets")  & " -fPIC"
{.compile("gen_qgraphicsvideoitem.cpp", cflags).}


type QGraphicsVideoItemEnumEnum* = distinct cint
template Type*(_: type QGraphicsVideoItemEnumEnum): untyped = 14


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
  ../QtMultimedia/gen_qvideosink_types,
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
  gen_qvideosink_types,
  gen_qgraphicsitem,
  gen_qgraphicssceneevent_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQGraphicsVideoItem*{.exportc: "QGraphicsVideoItem", incompleteStruct.} = object

proc fcQGraphicsVideoItem_metaObject(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_metaObject".}
proc fcQGraphicsVideoItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsVideoItem_metacast".}
proc fcQGraphicsVideoItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsVideoItem_metacall".}
proc fcQGraphicsVideoItem_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsVideoItem_tr".}
proc fcQGraphicsVideoItem_videoSink(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_videoSink".}
proc fcQGraphicsVideoItem_aspectRatioMode(self: pointer, ): cint {.importc: "QGraphicsVideoItem_aspectRatioMode".}
proc fcQGraphicsVideoItem_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QGraphicsVideoItem_setAspectRatioMode".}
proc fcQGraphicsVideoItem_offset(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_offset".}
proc fcQGraphicsVideoItem_setOffset(self: pointer, offset: pointer): void {.importc: "QGraphicsVideoItem_setOffset".}
proc fcQGraphicsVideoItem_size(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_size".}
proc fcQGraphicsVideoItem_setSize(self: pointer, size: pointer): void {.importc: "QGraphicsVideoItem_setSize".}
proc fcQGraphicsVideoItem_nativeSize(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_nativeSize".}
proc fcQGraphicsVideoItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_boundingRect".}
proc fcQGraphicsVideoItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsVideoItem_paint".}
proc fcQGraphicsVideoItem_typeX(self: pointer, ): cint {.importc: "QGraphicsVideoItem_type".}
proc fcQGraphicsVideoItem_nativeSizeChanged(self: pointer, size: pointer): void {.importc: "QGraphicsVideoItem_nativeSizeChanged".}
proc fcQGraphicsVideoItem_connect_nativeSizeChanged(self: pointer, slot: int, callback: proc (slot: int, size: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsVideoItem_connect_nativeSizeChanged".}
proc fcQGraphicsVideoItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsVideoItem_tr2".}
proc fcQGraphicsVideoItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsVideoItem_tr3".}
type cQGraphicsVideoItemVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsVideoItemVTable, self: ptr cQGraphicsVideoItem) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, ev: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsVideoItem_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_virtualbase_metaObject".}
proc fcQGraphicsVideoItem_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsVideoItem_virtualbase_metacast".}
proc fcQGraphicsVideoItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsVideoItem_virtualbase_metacall".}
proc fcQGraphicsVideoItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_virtualbase_boundingRect".}
proc fcQGraphicsVideoItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_paint".}
proc fcQGraphicsVideoItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsVideoItem_virtualbase_type".}
proc fcQGraphicsVideoItem_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_timerEvent".}
proc fcQGraphicsVideoItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsVideoItem_virtualbase_itemChange".}
proc fcQGraphicsVideoItem_virtualbase_event(self: pointer, ev: pointer): bool {.importc: "QGraphicsVideoItem_virtualbase_event".}
proc fcQGraphicsVideoItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsVideoItem_virtualbase_eventFilter".}
proc fcQGraphicsVideoItem_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_childEvent".}
proc fcQGraphicsVideoItem_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_customEvent".}
proc fcQGraphicsVideoItem_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_connectNotify".}
proc fcQGraphicsVideoItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsVideoItem_virtualbase_disconnectNotify".}
proc fcQGraphicsVideoItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsVideoItem_virtualbase_advance".}
proc fcQGraphicsVideoItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_virtualbase_shape".}
proc fcQGraphicsVideoItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsVideoItem_virtualbase_contains".}
proc fcQGraphicsVideoItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsVideoItem_virtualbase_collidesWithItem".}
proc fcQGraphicsVideoItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsVideoItem_virtualbase_collidesWithPath".}
proc fcQGraphicsVideoItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsVideoItem_virtualbase_isObscuredBy".}
proc fcQGraphicsVideoItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_virtualbase_opaqueArea".}
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
proc fcQGraphicsVideoItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsVideoItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsVideoItem_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_protectedbase_sender".}
proc fcQGraphicsVideoItem_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsVideoItem_protectedbase_senderSignalIndex".}
proc fcQGraphicsVideoItem_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsVideoItem_protectedbase_receivers".}
proc fcQGraphicsVideoItem_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsVideoItem_protectedbase_isSignalConnected".}
proc fcQGraphicsVideoItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsVideoItem_protectedbase_addToIndex".}
proc fcQGraphicsVideoItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsVideoItem_protectedbase_removeFromIndex".}
proc fcQGraphicsVideoItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsVideoItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsVideoItem_new(vtbl: pointer, ): ptr cQGraphicsVideoItem {.importc: "QGraphicsVideoItem_new".}
proc fcQGraphicsVideoItem_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsVideoItem {.importc: "QGraphicsVideoItem_new2".}
proc fcQGraphicsVideoItem_staticMetaObject(): pointer {.importc: "QGraphicsVideoItem_staticMetaObject".}
proc fcQGraphicsVideoItem_delete(self: pointer) {.importc: "QGraphicsVideoItem_delete".}

proc metaObject*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsVideoItem_metaObject(self.h))

proc metacast*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, param1: cstring): pointer =
  fcQGraphicsVideoItem_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsVideoItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, s: cstring): string =
  let v_ms = fcQGraphicsVideoItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoSink*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qvideosink_types.QVideoSink =
  gen_qvideosink_types.QVideoSink(h: fcQGraphicsVideoItem_videoSink(self.h))

proc aspectRatioMode*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): cint =
  cint(fcQGraphicsVideoItem_aspectRatioMode(self.h))

proc setAspectRatioMode*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, mode: cint): void =
  fcQGraphicsVideoItem_setAspectRatioMode(self.h, cint(mode))

proc offset*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsVideoItem_offset(self.h))

proc setOffset*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, offset: gen_qpoint_types.QPointF): void =
  fcQGraphicsVideoItem_setOffset(self.h, offset.h)

proc size*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsVideoItem_size(self.h))

proc setSize*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsVideoItem_setSize(self.h, size.h)

proc nativeSize*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsVideoItem_nativeSize(self.h))

proc boundingRect*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsVideoItem_boundingRect(self.h))

proc paint*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsVideoItem_paint(self.h, painter.h, option.h, widget.h)

proc typeX*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): cint =
  fcQGraphicsVideoItem_typeX(self.h)

proc nativeSizeChanged*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsVideoItem_nativeSizeChanged(self.h, size.h)

type QGraphicsVideoItemnativeSizeChangedSlot* = proc(size: gen_qsize_types.QSizeF)
proc miqt_exec_callback_cQGraphicsVideoItem_nativeSizeChanged(slot: int, size: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsVideoItemnativeSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSizeF(h: size)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsVideoItem_nativeSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsVideoItemnativeSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnativeSizeChanged*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemnativeSizeChangedSlot) =
  var tmp = new QGraphicsVideoItemnativeSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_connect_nativeSizeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsVideoItem_nativeSizeChanged, miqt_exec_callback_cQGraphicsVideoItem_nativeSizeChanged_release)

proc tr*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsVideoItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsVideoItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QGraphicsVideoItemmetaObjectProc* = proc(self: QGraphicsVideoItem): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsVideoItemmetacastProc* = proc(self: QGraphicsVideoItem, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsVideoItemmetacallProc* = proc(self: QGraphicsVideoItem, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsVideoItemboundingRectProc* = proc(self: QGraphicsVideoItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsVideoItempaintProc* = proc(self: QGraphicsVideoItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsVideoItemtypeXProc* = proc(self: QGraphicsVideoItem): cint {.raises: [], gcsafe.}
type QGraphicsVideoItemtimerEventProc* = proc(self: QGraphicsVideoItem, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsVideoItemitemChangeProc* = proc(self: QGraphicsVideoItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
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
type QGraphicsVideoItemVTable* = object
  vtbl: cQGraphicsVideoItemVTable
  metaObject*: QGraphicsVideoItemmetaObjectProc
  metacast*: QGraphicsVideoItemmetacastProc
  metacall*: QGraphicsVideoItemmetacallProc
  boundingRect*: QGraphicsVideoItemboundingRectProc
  paint*: QGraphicsVideoItempaintProc
  typeX*: QGraphicsVideoItemtypeXProc
  timerEvent*: QGraphicsVideoItemtimerEventProc
  itemChange*: QGraphicsVideoItemitemChangeProc
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
proc QGraphicsVideoItemmetaObject*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsVideoItem_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsVideoItem_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsVideoItemmetacast*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, param1: cstring): pointer =
  fcQGraphicsVideoItem_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsVideoItem_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsVideoItemmetacall*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsVideoItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsVideoItem_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsVideoItemboundingRect*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsVideoItem_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsVideoItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsVideoItempaint*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsVideoItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsVideoItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsVideoItemtypeX*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): cint =
  fcQGraphicsVideoItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsVideoItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsVideoItemtimerEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsVideoItem_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsVideoItemitemChange*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsVideoItem_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsVideoItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc QGraphicsVideoItemevent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ev: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsVideoItem_virtualbase_event(self.h, ev.h)

proc miqt_exec_callback_cQGraphicsVideoItem_event(vtbl: pointer, self: pointer, ev: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: ev)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsVideoItemeventFilter*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsVideoItem_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsVideoItemchildEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsVideoItem_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsVideoItemcustomEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsVideoItem_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsVideoItemconnectNotify*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsVideoItem_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsVideoItem_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsVideoItemdisconnectNotify*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsVideoItem_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsVideoItem_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc QGraphicsVideoItemadvance*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, phase: cint): void =
  fcQGraphicsVideoItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsVideoItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsVideoItemshape*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsVideoItem_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsVideoItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsVideoItemcontains*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsVideoItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsVideoItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsVideoItemcollidesWithItem*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsVideoItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsVideoItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsVideoItemcollidesWithPath*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsVideoItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsVideoItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsVideoItemisObscuredBy*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsVideoItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsVideoItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsVideoItemopaqueArea*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsVideoItem_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsVideoItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsVideoItemsceneEventFilter*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsVideoItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsVideoItemsceneEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsVideoItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsVideoItemcontextMenuEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsVideoItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsVideoItemdragEnterEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsVideoItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsVideoItemdragLeaveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsVideoItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsVideoItemdragMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsVideoItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsVideoItemdropEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsVideoItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsVideoItemfocusInEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsVideoItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsVideoItemfocusOutEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsVideoItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsVideoItemhoverEnterEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsVideoItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsVideoItemhoverMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsVideoItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsVideoItemhoverLeaveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsVideoItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsVideoItemkeyPressEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsVideoItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsVideoItemkeyReleaseEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsVideoItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsVideoItemmousePressEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsVideoItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsVideoItemmouseMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsVideoItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsVideoItemmouseReleaseEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsVideoItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsVideoItemmouseDoubleClickEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsVideoItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsVideoItemwheelEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsVideoItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsVideoIteminputMethodEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsVideoItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsVideoItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsVideoIteminputMethodQuery*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsVideoItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsVideoItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsVideoItemsupportsExtension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, extension: cint): bool =
  fcQGraphicsVideoItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsVideoItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsVideoItemsetExtension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsVideoItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsVideoItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsVideoItemextension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsVideoItem_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsVideoItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsVideoItemVTable](vtbl)
  let self = QGraphicsVideoItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc updateMicroFocus*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): void =
  fcQGraphicsVideoItem_protectedbase_updateMicroFocus(self.h)

proc sender*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsVideoItem_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): cint =
  fcQGraphicsVideoItem_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, signal: cstring): cint =
  fcQGraphicsVideoItem_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsVideoItem_protectedbase_isSignalConnected(self.h, signal.h)

proc addToIndex*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): void =
  fcQGraphicsVideoItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): void =
  fcQGraphicsVideoItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): void =
  fcQGraphicsVideoItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem,
    vtbl: ref QGraphicsVideoItemVTable = nil): gen_qgraphicsvideoitem_types.QGraphicsVideoItem =
  let vtbl = if vtbl == nil: new QGraphicsVideoItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsVideoItemVTable, _: ptr cQGraphicsVideoItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsVideoItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsVideoItem_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsVideoItem_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsVideoItem_metacall
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsVideoItem_boundingRect
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsVideoItem_paint
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsVideoItem_typeX
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsVideoItem_timerEvent
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsVideoItem_itemChange
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsVideoItem_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsVideoItem_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsVideoItem_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsVideoItem_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsVideoItem_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsVideoItem_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsVideoItem_advance
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsVideoItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsVideoItem_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsVideoItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsVideoItem_collidesWithPath
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsVideoItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsVideoItem_opaqueArea
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsVideoItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsVideoItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsVideoItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsVideoItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsVideoItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsVideoItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsVideoItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsVideoItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsVideoItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsVideoItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsVideoItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsVideoItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsVideoItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsVideoItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsVideoItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsVideoItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsVideoItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsVideoItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsVideoItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsVideoItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsVideoItem_inputMethodQuery
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsVideoItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsVideoItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsVideoItem_extension
  gen_qgraphicsvideoitem_types.QGraphicsVideoItem(h: fcQGraphicsVideoItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsVideoItemVTable = nil): gen_qgraphicsvideoitem_types.QGraphicsVideoItem =
  let vtbl = if vtbl == nil: new QGraphicsVideoItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsVideoItemVTable, _: ptr cQGraphicsVideoItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsVideoItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsVideoItem_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsVideoItem_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsVideoItem_metacall
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsVideoItem_boundingRect
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsVideoItem_paint
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsVideoItem_typeX
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsVideoItem_timerEvent
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsVideoItem_itemChange
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsVideoItem_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsVideoItem_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsVideoItem_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsVideoItem_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsVideoItem_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsVideoItem_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsVideoItem_advance
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsVideoItem_shape
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsVideoItem_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsVideoItem_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsVideoItem_collidesWithPath
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsVideoItem_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsVideoItem_opaqueArea
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsVideoItem_sceneEventFilter
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsVideoItem_sceneEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsVideoItem_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsVideoItem_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsVideoItem_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsVideoItem_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsVideoItem_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsVideoItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsVideoItem_focusOutEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsVideoItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsVideoItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsVideoItem_hoverLeaveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsVideoItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsVideoItem_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsVideoItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsVideoItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsVideoItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsVideoItem_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsVideoItem_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsVideoItem_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsVideoItem_inputMethodQuery
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsVideoItem_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsVideoItem_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsVideoItem_extension
  gen_qgraphicsvideoitem_types.QGraphicsVideoItem(h: fcQGraphicsVideoItem_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsVideoItem_staticMetaObject())
proc delete*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem) =
  fcQGraphicsVideoItem_delete(self.h)
