import ./Qt6SvgWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6SvgWidgets")  & " -fPIC"
{.compile("gen_qgraphicssvgitem.cpp", cflags).}


type QGraphicsSvgItemEnumEnum* = distinct cint
template Type*(_: type QGraphicsSvgItemEnumEnum): untyped = 13


import ./gen_qgraphicssvgitem_types
export gen_qgraphicssvgitem_types

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
  ../QtSvg/gen_qsvgrenderer_types,
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
  gen_qsvgrenderer_types,
  gen_qgraphicsitem,
  gen_qgraphicssceneevent_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQGraphicsSvgItem*{.exportc: "QGraphicsSvgItem", incompleteStruct.} = object

proc fcQGraphicsSvgItem_new(): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new".}
proc fcQGraphicsSvgItem_new2(fileName: struct_miqt_string): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new2".}
proc fcQGraphicsSvgItem_new3(parentItem: pointer): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new3".}
proc fcQGraphicsSvgItem_new4(fileName: struct_miqt_string, parentItem: pointer): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new4".}
proc fcQGraphicsSvgItem_metaObject(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_metaObject".}
proc fcQGraphicsSvgItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsSvgItem_metacast".}
proc fcQGraphicsSvgItem_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsSvgItem_tr".}
proc fcQGraphicsSvgItem_setSharedRenderer(self: pointer, renderer: pointer): void {.importc: "QGraphicsSvgItem_setSharedRenderer".}
proc fcQGraphicsSvgItem_renderer(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_renderer".}
proc fcQGraphicsSvgItem_setElementId(self: pointer, id: struct_miqt_string): void {.importc: "QGraphicsSvgItem_setElementId".}
proc fcQGraphicsSvgItem_elementId(self: pointer, ): struct_miqt_string {.importc: "QGraphicsSvgItem_elementId".}
proc fcQGraphicsSvgItem_setCachingEnabled(self: pointer, cachingEnabled: bool): void {.importc: "QGraphicsSvgItem_setCachingEnabled".}
proc fcQGraphicsSvgItem_isCachingEnabled(self: pointer, ): bool {.importc: "QGraphicsSvgItem_isCachingEnabled".}
proc fcQGraphicsSvgItem_setMaximumCacheSize(self: pointer, size: pointer): void {.importc: "QGraphicsSvgItem_setMaximumCacheSize".}
proc fcQGraphicsSvgItem_maximumCacheSize(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_maximumCacheSize".}
proc fcQGraphicsSvgItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_boundingRect".}
proc fcQGraphicsSvgItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsSvgItem_paint".}
proc fcQGraphicsSvgItem_typeX(self: pointer, ): cint {.importc: "QGraphicsSvgItem_type".}
proc fcQGraphicsSvgItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsSvgItem_tr2".}
proc fcQGraphicsSvgItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsSvgItem_tr3".}
proc fQGraphicsSvgItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsSvgItem_virtualbase_boundingRect".}
proc fcQGraphicsSvgItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_boundingRect".}
proc fQGraphicsSvgItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_paint".}
proc fcQGraphicsSvgItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_paint".}
proc fQGraphicsSvgItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsSvgItem_virtualbase_type".}
proc fcQGraphicsSvgItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_type".}
proc fQGraphicsSvgItem_virtualbase_event(self: pointer, ev: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_event".}
proc fcQGraphicsSvgItem_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_event".}
proc fQGraphicsSvgItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_eventFilter".}
proc fcQGraphicsSvgItem_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_eventFilter".}
proc fQGraphicsSvgItem_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_timerEvent".}
proc fcQGraphicsSvgItem_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_timerEvent".}
proc fQGraphicsSvgItem_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_childEvent".}
proc fcQGraphicsSvgItem_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_childEvent".}
proc fQGraphicsSvgItem_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_customEvent".}
proc fcQGraphicsSvgItem_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_customEvent".}
proc fQGraphicsSvgItem_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_connectNotify".}
proc fcQGraphicsSvgItem_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_connectNotify".}
proc fQGraphicsSvgItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_disconnectNotify".}
proc fcQGraphicsSvgItem_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_disconnectNotify".}
proc fQGraphicsSvgItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsSvgItem_virtualbase_advance".}
proc fcQGraphicsSvgItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_advance".}
proc fQGraphicsSvgItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsSvgItem_virtualbase_shape".}
proc fcQGraphicsSvgItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_shape".}
proc fQGraphicsSvgItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_contains".}
proc fcQGraphicsSvgItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_contains".}
proc fQGraphicsSvgItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsSvgItem_virtualbase_collidesWithItem".}
proc fcQGraphicsSvgItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_collidesWithItem".}
proc fQGraphicsSvgItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsSvgItem_virtualbase_collidesWithPath".}
proc fcQGraphicsSvgItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_collidesWithPath".}
proc fQGraphicsSvgItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_isObscuredBy".}
proc fcQGraphicsSvgItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_isObscuredBy".}
proc fQGraphicsSvgItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsSvgItem_virtualbase_opaqueArea".}
proc fcQGraphicsSvgItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_opaqueArea".}
proc fQGraphicsSvgItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsSvgItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_sceneEventFilter".}
proc fQGraphicsSvgItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_sceneEvent".}
proc fcQGraphicsSvgItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_sceneEvent".}
proc fQGraphicsSvgItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsSvgItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_contextMenuEvent".}
proc fQGraphicsSvgItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsSvgItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_dragEnterEvent".}
proc fQGraphicsSvgItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsSvgItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsSvgItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsSvgItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_dragMoveEvent".}
proc fQGraphicsSvgItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_dropEvent".}
proc fcQGraphicsSvgItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_dropEvent".}
proc fQGraphicsSvgItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_focusInEvent".}
proc fcQGraphicsSvgItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_focusInEvent".}
proc fQGraphicsSvgItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_focusOutEvent".}
proc fcQGraphicsSvgItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_focusOutEvent".}
proc fQGraphicsSvgItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsSvgItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsSvgItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsSvgItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsSvgItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsSvgItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsSvgItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_keyPressEvent".}
proc fcQGraphicsSvgItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_keyPressEvent".}
proc fQGraphicsSvgItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsSvgItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsSvgItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_mousePressEvent".}
proc fcQGraphicsSvgItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_mousePressEvent".}
proc fQGraphicsSvgItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsSvgItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsSvgItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsSvgItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsSvgItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsSvgItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_wheelEvent".}
proc fcQGraphicsSvgItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_wheelEvent".}
proc fQGraphicsSvgItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsSvgItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_inputMethodEvent".}
proc fQGraphicsSvgItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsSvgItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsSvgItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_inputMethodQuery".}
proc fQGraphicsSvgItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsSvgItem_virtualbase_itemChange".}
proc fcQGraphicsSvgItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_itemChange".}
proc fQGraphicsSvgItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsSvgItem_virtualbase_supportsExtension".}
proc fcQGraphicsSvgItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_supportsExtension".}
proc fQGraphicsSvgItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_setExtension".}
proc fcQGraphicsSvgItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_setExtension".}
proc fQGraphicsSvgItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsSvgItem_virtualbase_extension".}
proc fcQGraphicsSvgItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_extension".}
proc fcQGraphicsSvgItem_delete(self: pointer) {.importc: "QGraphicsSvgItem_delete".}


func init*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem, h: ptr cQGraphicsSvgItem): gen_qgraphicssvgitem_types.QGraphicsSvgItem =
  T(h: h)
proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qgraphicssvgitem_types.QGraphicsSvgItem =
  gen_qgraphicssvgitem_types.QGraphicsSvgItem.init(fcQGraphicsSvgItem_new())

proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem, fileName: string): gen_qgraphicssvgitem_types.QGraphicsSvgItem =
  gen_qgraphicssvgitem_types.QGraphicsSvgItem.init(fcQGraphicsSvgItem_new2(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem, parentItem: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicssvgitem_types.QGraphicsSvgItem =
  gen_qgraphicssvgitem_types.QGraphicsSvgItem.init(fcQGraphicsSvgItem_new3(parentItem.h))

proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem, fileName: string, parentItem: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicssvgitem_types.QGraphicsSvgItem =
  gen_qgraphicssvgitem_types.QGraphicsSvgItem.init(fcQGraphicsSvgItem_new4(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parentItem.h))

proc metaObject*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsSvgItem_metaObject(self.h))

proc metacast*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, param1: cstring): pointer =
  fcQGraphicsSvgItem_metacast(self.h, param1)

proc tr*(_: type gen_qgraphicssvgitem_types.QGraphicsSvgItem, s: cstring): string =
  let v_ms = fcQGraphicsSvgItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSharedRenderer*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, renderer: gen_qsvgrenderer_types.QSvgRenderer): void =
  fcQGraphicsSvgItem_setSharedRenderer(self.h, renderer.h)

proc renderer*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQGraphicsSvgItem_renderer(self.h))

proc setElementId*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, id: string): void =
  fcQGraphicsSvgItem_setElementId(self.h, struct_miqt_string(data: id, len: csize_t(len(id))))

proc elementId*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): string =
  let v_ms = fcQGraphicsSvgItem_elementId(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCachingEnabled*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, cachingEnabled: bool): void =
  fcQGraphicsSvgItem_setCachingEnabled(self.h, cachingEnabled)

proc isCachingEnabled*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): bool =
  fcQGraphicsSvgItem_isCachingEnabled(self.h)

proc setMaximumCacheSize*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, size: gen_qsize_types.QSize): void =
  fcQGraphicsSvgItem_setMaximumCacheSize(self.h, size.h)

proc maximumCacheSize*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGraphicsSvgItem_maximumCacheSize(self.h))

proc boundingRect*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsSvgItem_boundingRect(self.h))

proc paint*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsSvgItem_paint(self.h, painter.h, option.h, widget.h)

proc typeX*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): cint =
  fcQGraphicsSvgItem_typeX(self.h)

proc tr*(_: type gen_qgraphicssvgitem_types.QGraphicsSvgItem, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsSvgItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicssvgitem_types.QGraphicsSvgItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsSvgItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QGraphicsSvgItemboundingRect*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsSvgItem_virtualbase_boundingRect(self.h))

type QGraphicsSvgItemboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_boundingRect(self: ptr cQGraphicsSvgItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsSvgItempaint*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsSvgItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsSvgItempaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItempaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItempaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_paint(self: ptr cQGraphicsSvgItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_paint ".} =
  var nimfunc = cast[ptr QGraphicsSvgItempaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsSvgItemtypeX*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): cint =
  fQGraphicsSvgItem_virtualbase_type(self.h)

type QGraphicsSvgItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_type(self: ptr cQGraphicsSvgItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsSvgItem_type ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsSvgItemevent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ev: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsSvgItem_virtualbase_event(self.h, ev.h)

type QGraphicsSvgItemeventProc* = proc(ev: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemeventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_event(self: ptr cQGraphicsSvgItem, slot: int, ev: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_event ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: ev)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsSvgItemeventFilter*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsSvgItem_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsSvgItemeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemeventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_eventFilter(self: ptr cQGraphicsSvgItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsSvgItemtimerEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsSvgItem_virtualbase_timerEvent(self.h, event.h)

type QGraphicsSvgItemtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemtimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_timerEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemchildEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsSvgItem_virtualbase_childEvent(self.h, event.h)

type QGraphicsSvgItemchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_childEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemcustomEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsSvgItem_virtualbase_customEvent(self.h, event.h)

type QGraphicsSvgItemcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_customEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemconnectNotify*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsSvgItem_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsSvgItemconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_connectNotify(self: ptr cQGraphicsSvgItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsSvgItemdisconnectNotify*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsSvgItem_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsSvgItemdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_disconnectNotify(self: ptr cQGraphicsSvgItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsSvgItemadvance*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, phase: cint): void =
  fQGraphicsSvgItem_virtualbase_advance(self.h, phase)

type QGraphicsSvgItemadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_advance(self: ptr cQGraphicsSvgItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_advance ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsSvgItemshape*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsSvgItem_virtualbase_shape(self.h))

type QGraphicsSvgItemshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_shape(self: ptr cQGraphicsSvgItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_shape ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsSvgItemcontains*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsSvgItem_virtualbase_contains(self.h, point.h)

type QGraphicsSvgItemcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_contains(self: ptr cQGraphicsSvgItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_contains ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsSvgItemcollidesWithItem*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsSvgItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsSvgItemcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_collidesWithItem(self: ptr cQGraphicsSvgItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsSvgItemcollidesWithPath*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsSvgItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsSvgItemcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_collidesWithPath(self: ptr cQGraphicsSvgItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsSvgItemisObscuredBy*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsSvgItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsSvgItemisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_isObscuredBy(self: ptr cQGraphicsSvgItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsSvgItemopaqueArea*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsSvgItem_virtualbase_opaqueArea(self.h))

type QGraphicsSvgItemopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_opaqueArea(self: ptr cQGraphicsSvgItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsSvgItemsceneEventFilter*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsSvgItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsSvgItemsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_sceneEventFilter(self: ptr cQGraphicsSvgItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsSvgItemsceneEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsSvgItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsSvgItemsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_sceneEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsSvgItemcontextMenuEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsSvgItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsSvgItemcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_contextMenuEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemdragEnterEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsSvgItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsSvgItemdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_dragEnterEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemdragLeaveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsSvgItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsSvgItemdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_dragLeaveEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemdragMoveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsSvgItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsSvgItemdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_dragMoveEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemdropEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsSvgItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsSvgItemdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_dropEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemfocusInEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsSvgItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsSvgItemfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_focusInEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemfocusOutEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsSvgItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsSvgItemfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_focusOutEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemhoverEnterEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsSvgItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsSvgItemhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_hoverEnterEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemhoverMoveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsSvgItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsSvgItemhoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_hoverMoveEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemhoverLeaveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsSvgItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsSvgItemhoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_hoverLeaveEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemkeyPressEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsSvgItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsSvgItemkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_keyPressEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemkeyReleaseEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsSvgItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsSvgItemkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_keyReleaseEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemmousePressEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsSvgItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsSvgItemmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_mousePressEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemmouseMoveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsSvgItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsSvgItemmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_mouseMoveEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemmouseReleaseEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsSvgItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsSvgItemmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_mouseReleaseEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemmouseDoubleClickEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsSvgItemmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_mouseDoubleClickEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgItemwheelEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsSvgItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsSvgItemwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_wheelEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgIteminputMethodEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsSvgItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsSvgIteminputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgIteminputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgIteminputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_inputMethodEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsSvgIteminputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsSvgIteminputMethodQuery*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsSvgItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsSvgIteminputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgIteminputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgIteminputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_inputMethodQuery(self: ptr cQGraphicsSvgItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsSvgIteminputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsSvgItemitemChange*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsSvgItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsSvgItemitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_itemChange(self: ptr cQGraphicsSvgItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsSvgItemsupportsExtension*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, extension: cint): bool =
  fQGraphicsSvgItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsSvgItemsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_supportsExtension(self: ptr cQGraphicsSvgItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsSvgItemsetExtension*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsSvgItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsSvgItemsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_setExtension(self: ptr cQGraphicsSvgItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsSvgItemextension*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsSvgItem_virtualbase_extension(self.h, variant.h))

type QGraphicsSvgItemextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, slot: QGraphicsSvgItemextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsSvgItemextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_extension(self: ptr cQGraphicsSvgItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_extension ".} =
  var nimfunc = cast[ptr QGraphicsSvgItemextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc delete*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem) =
  fcQGraphicsSvgItem_delete(self.h)
