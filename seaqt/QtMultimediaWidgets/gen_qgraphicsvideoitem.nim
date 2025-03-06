import ./Qt6MultimediaWidgets_libs

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

proc fcQGraphicsVideoItem_new(): ptr cQGraphicsVideoItem {.importc: "QGraphicsVideoItem_new".}
proc fcQGraphicsVideoItem_new2(parent: pointer): ptr cQGraphicsVideoItem {.importc: "QGraphicsVideoItem_new2".}
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
proc fcQGraphicsVideoItem_connect_nativeSizeChanged(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_connect_nativeSizeChanged".}
proc fcQGraphicsVideoItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsVideoItem_tr2".}
proc fcQGraphicsVideoItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsVideoItem_tr3".}
proc fQGraphicsVideoItem_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsVideoItem_virtualbase_metaObject".}
proc fcQGraphicsVideoItem_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_metaObject".}
proc fQGraphicsVideoItem_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsVideoItem_virtualbase_metacast".}
proc fcQGraphicsVideoItem_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_metacast".}
proc fQGraphicsVideoItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsVideoItem_virtualbase_metacall".}
proc fcQGraphicsVideoItem_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_metacall".}
proc fQGraphicsVideoItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsVideoItem_virtualbase_boundingRect".}
proc fcQGraphicsVideoItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_boundingRect".}
proc fQGraphicsVideoItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_paint".}
proc fcQGraphicsVideoItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_paint".}
proc fQGraphicsVideoItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsVideoItem_virtualbase_type".}
proc fcQGraphicsVideoItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_type".}
proc fQGraphicsVideoItem_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_timerEvent".}
proc fcQGraphicsVideoItem_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_timerEvent".}
proc fQGraphicsVideoItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsVideoItem_virtualbase_itemChange".}
proc fcQGraphicsVideoItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_itemChange".}
proc fQGraphicsVideoItem_virtualbase_event(self: pointer, ev: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_event".}
proc fcQGraphicsVideoItem_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_event".}
proc fQGraphicsVideoItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_eventFilter".}
proc fcQGraphicsVideoItem_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_eventFilter".}
proc fQGraphicsVideoItem_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_childEvent".}
proc fcQGraphicsVideoItem_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_childEvent".}
proc fQGraphicsVideoItem_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_customEvent".}
proc fcQGraphicsVideoItem_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_customEvent".}
proc fQGraphicsVideoItem_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_connectNotify".}
proc fcQGraphicsVideoItem_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_connectNotify".}
proc fQGraphicsVideoItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_disconnectNotify".}
proc fcQGraphicsVideoItem_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_disconnectNotify".}
proc fQGraphicsVideoItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsVideoItem_virtualbase_advance".}
proc fcQGraphicsVideoItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_advance".}
proc fQGraphicsVideoItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsVideoItem_virtualbase_shape".}
proc fcQGraphicsVideoItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_shape".}
proc fQGraphicsVideoItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_contains".}
proc fcQGraphicsVideoItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_contains".}
proc fQGraphicsVideoItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsVideoItem_virtualbase_collidesWithItem".}
proc fcQGraphicsVideoItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_collidesWithItem".}
proc fQGraphicsVideoItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsVideoItem_virtualbase_collidesWithPath".}
proc fcQGraphicsVideoItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_collidesWithPath".}
proc fQGraphicsVideoItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_isObscuredBy".}
proc fcQGraphicsVideoItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_isObscuredBy".}
proc fQGraphicsVideoItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsVideoItem_virtualbase_opaqueArea".}
proc fcQGraphicsVideoItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_opaqueArea".}
proc fQGraphicsVideoItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsVideoItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_sceneEventFilter".}
proc fQGraphicsVideoItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_sceneEvent".}
proc fcQGraphicsVideoItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_sceneEvent".}
proc fQGraphicsVideoItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsVideoItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_contextMenuEvent".}
proc fQGraphicsVideoItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsVideoItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_dragEnterEvent".}
proc fQGraphicsVideoItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsVideoItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsVideoItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsVideoItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_dragMoveEvent".}
proc fQGraphicsVideoItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_dropEvent".}
proc fcQGraphicsVideoItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_dropEvent".}
proc fQGraphicsVideoItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_focusInEvent".}
proc fcQGraphicsVideoItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_focusInEvent".}
proc fQGraphicsVideoItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_focusOutEvent".}
proc fcQGraphicsVideoItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_focusOutEvent".}
proc fQGraphicsVideoItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsVideoItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsVideoItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsVideoItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsVideoItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsVideoItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsVideoItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_keyPressEvent".}
proc fcQGraphicsVideoItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_keyPressEvent".}
proc fQGraphicsVideoItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsVideoItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsVideoItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_mousePressEvent".}
proc fcQGraphicsVideoItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_mousePressEvent".}
proc fQGraphicsVideoItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsVideoItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsVideoItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsVideoItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsVideoItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsVideoItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsVideoItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_wheelEvent".}
proc fcQGraphicsVideoItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_wheelEvent".}
proc fQGraphicsVideoItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsVideoItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_inputMethodEvent".}
proc fQGraphicsVideoItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsVideoItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsVideoItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_inputMethodQuery".}
proc fQGraphicsVideoItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsVideoItem_virtualbase_supportsExtension".}
proc fcQGraphicsVideoItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_supportsExtension".}
proc fQGraphicsVideoItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_setExtension".}
proc fcQGraphicsVideoItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_setExtension".}
proc fQGraphicsVideoItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsVideoItem_virtualbase_extension".}
proc fcQGraphicsVideoItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_extension".}
proc fcQGraphicsVideoItem_staticMetaObject(): pointer {.importc: "QGraphicsVideoItem_staticMetaObject".}
proc fcQGraphicsVideoItem_delete(self: pointer) {.importc: "QGraphicsVideoItem_delete".}


func init*(T: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, h: ptr cQGraphicsVideoItem): gen_qgraphicsvideoitem_types.QGraphicsVideoItem =
  T(h: h)
proc create*(T: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qgraphicsvideoitem_types.QGraphicsVideoItem =
  gen_qgraphicsvideoitem_types.QGraphicsVideoItem.init(fcQGraphicsVideoItem_new())

proc create*(T: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsvideoitem_types.QGraphicsVideoItem =
  gen_qgraphicsvideoitem_types.QGraphicsVideoItem.init(fcQGraphicsVideoItem_new2(parent.h))

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
proc miqt_exec_callback_QGraphicsVideoItem_nativeSizeChanged(slot: int, size: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsVideoItemnativeSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSizeF(h: size)

  nimfunc[](slotval1)

proc onnativeSizeChanged*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemnativeSizeChangedSlot) =
  var tmp = new QGraphicsVideoItemnativeSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_connect_nativeSizeChanged(self.h, cast[int](addr tmp[]))

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

proc QGraphicsVideoItemmetaObject*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQGraphicsVideoItem_virtualbase_metaObject(self.h))

type QGraphicsVideoItemmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemmetaObjectProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_metaObject(self: ptr cQGraphicsVideoItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_metaObject ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsVideoItemmetacast*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, param1: cstring): pointer =
  fQGraphicsVideoItem_virtualbase_metacast(self.h, param1)

type QGraphicsVideoItemmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemmetacastProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_metacast(self: ptr cQGraphicsVideoItem, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_metacast ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsVideoItemmetacall*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, param1: cint, param2: cint, param3: pointer): cint =
  fQGraphicsVideoItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsVideoItemmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemmetacallProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_metacall(self: ptr cQGraphicsVideoItem, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsVideoItem_metacall ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QGraphicsVideoItemboundingRect*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsVideoItem_virtualbase_boundingRect(self.h))

type QGraphicsVideoItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_boundingRect(self: ptr cQGraphicsVideoItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsVideoItempaint*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsVideoItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsVideoItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItempaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_paint(self: ptr cQGraphicsVideoItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_paint ".} =
  var nimfunc = cast[ptr QGraphicsVideoItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsVideoItemtypeX*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): cint =
  fQGraphicsVideoItem_virtualbase_type(self.h)

type QGraphicsVideoItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_type(self: ptr cQGraphicsVideoItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsVideoItem_type ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsVideoItemtimerEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsVideoItem_virtualbase_timerEvent(self.h, event.h)

type QGraphicsVideoItemtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemtimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_timerEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemitemChange*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsVideoItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsVideoItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_itemChange(self: ptr cQGraphicsVideoItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsVideoItemevent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ev: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsVideoItem_virtualbase_event(self.h, ev.h)

type QGraphicsVideoItemeventProc* = proc(ev: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemeventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_event(self: ptr cQGraphicsVideoItem, slot: int, ev: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_event ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: ev)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsVideoItemeventFilter*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsVideoItem_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsVideoItemeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemeventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_eventFilter(self: ptr cQGraphicsVideoItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsVideoItemchildEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsVideoItem_virtualbase_childEvent(self.h, event.h)

type QGraphicsVideoItemchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_childEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemcustomEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsVideoItem_virtualbase_customEvent(self.h, event.h)

type QGraphicsVideoItemcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_customEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemconnectNotify*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsVideoItem_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsVideoItemconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_connectNotify(self: ptr cQGraphicsVideoItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsVideoItemdisconnectNotify*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsVideoItem_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsVideoItemdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_disconnectNotify(self: ptr cQGraphicsVideoItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsVideoItemadvance*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, phase: cint): void =
  fQGraphicsVideoItem_virtualbase_advance(self.h, phase)

type QGraphicsVideoItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_advance(self: ptr cQGraphicsVideoItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_advance ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsVideoItemshape*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsVideoItem_virtualbase_shape(self.h))

type QGraphicsVideoItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_shape(self: ptr cQGraphicsVideoItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_shape ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsVideoItemcontains*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsVideoItem_virtualbase_contains(self.h, point.h)

type QGraphicsVideoItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_contains(self: ptr cQGraphicsVideoItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_contains ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsVideoItemcollidesWithItem*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsVideoItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsVideoItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_collidesWithItem(self: ptr cQGraphicsVideoItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsVideoItemcollidesWithPath*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsVideoItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsVideoItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_collidesWithPath(self: ptr cQGraphicsVideoItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsVideoItemisObscuredBy*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsVideoItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsVideoItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_isObscuredBy(self: ptr cQGraphicsVideoItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsVideoItemopaqueArea*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsVideoItem_virtualbase_opaqueArea(self.h))

type QGraphicsVideoItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_opaqueArea(self: ptr cQGraphicsVideoItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsVideoItemsceneEventFilter*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsVideoItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsVideoItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_sceneEventFilter(self: ptr cQGraphicsVideoItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsVideoItemsceneEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsVideoItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsVideoItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_sceneEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsVideoItemcontextMenuEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsVideoItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsVideoItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_contextMenuEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemdragEnterEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsVideoItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsVideoItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_dragEnterEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemdragLeaveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsVideoItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsVideoItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_dragLeaveEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemdragMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsVideoItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsVideoItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_dragMoveEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemdropEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsVideoItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsVideoItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_dropEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemfocusInEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsVideoItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsVideoItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_focusInEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemfocusOutEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsVideoItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsVideoItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_focusOutEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemhoverEnterEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsVideoItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsVideoItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_hoverEnterEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemhoverMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsVideoItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsVideoItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_hoverMoveEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemhoverLeaveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsVideoItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsVideoItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_hoverLeaveEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemkeyPressEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsVideoItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsVideoItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_keyPressEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemkeyReleaseEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsVideoItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsVideoItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_keyReleaseEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemmousePressEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsVideoItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsVideoItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_mousePressEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemmouseMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsVideoItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsVideoItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_mouseMoveEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemmouseReleaseEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsVideoItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsVideoItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_mouseReleaseEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemmouseDoubleClickEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsVideoItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsVideoItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_mouseDoubleClickEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoItemwheelEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsVideoItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsVideoItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_wheelEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoIteminputMethodEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsVideoItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsVideoIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_inputMethodEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsVideoIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsVideoIteminputMethodQuery*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsVideoItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsVideoIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_inputMethodQuery(self: ptr cQGraphicsVideoItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsVideoIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsVideoItemsupportsExtension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, extension: cint): bool =
  fQGraphicsVideoItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsVideoItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_supportsExtension(self: ptr cQGraphicsVideoItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsVideoItemsetExtension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsVideoItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsVideoItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_setExtension(self: ptr cQGraphicsVideoItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsVideoItemextension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsVideoItem_virtualbase_extension(self.h, variant.h))

type QGraphicsVideoItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem, slot: QGraphicsVideoItemextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsVideoItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_extension(self: ptr cQGraphicsVideoItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_extension ".} =
  var nimfunc = cast[ptr QGraphicsVideoItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc staticMetaObject*(_: type gen_qgraphicsvideoitem_types.QGraphicsVideoItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsVideoItem_staticMetaObject())
proc delete*(self: gen_qgraphicsvideoitem_types.QGraphicsVideoItem) =
  fcQGraphicsVideoItem_delete(self.h)
