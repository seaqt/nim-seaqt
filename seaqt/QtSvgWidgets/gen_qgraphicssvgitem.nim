import ./Qt6SvgWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6SvgWidgets") & " -fPIC"
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

proc fcQGraphicsSvgItem_metaObject(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_metaObject".}
proc fcQGraphicsSvgItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsSvgItem_metacast".}
proc fcQGraphicsSvgItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsSvgItem_metacall".}
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
type cQGraphicsSvgItemVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsSvgItemVTable, self: ptr cQGraphicsSvgItem) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, ev: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsSvgItem_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_virtualbase_metaObject".}
proc fcQGraphicsSvgItem_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsSvgItem_virtualbase_metacast".}
proc fcQGraphicsSvgItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsSvgItem_virtualbase_metacall".}
proc fcQGraphicsSvgItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_virtualbase_boundingRect".}
proc fcQGraphicsSvgItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_paint".}
proc fcQGraphicsSvgItem_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsSvgItem_virtualbase_type".}
proc fcQGraphicsSvgItem_virtualbase_event(self: pointer, ev: pointer): bool {.importc: "QGraphicsSvgItem_virtualbase_event".}
proc fcQGraphicsSvgItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsSvgItem_virtualbase_eventFilter".}
proc fcQGraphicsSvgItem_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_timerEvent".}
proc fcQGraphicsSvgItem_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_childEvent".}
proc fcQGraphicsSvgItem_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_customEvent".}
proc fcQGraphicsSvgItem_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_connectNotify".}
proc fcQGraphicsSvgItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_disconnectNotify".}
proc fcQGraphicsSvgItem_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsSvgItem_virtualbase_advance".}
proc fcQGraphicsSvgItem_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_virtualbase_shape".}
proc fcQGraphicsSvgItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsSvgItem_virtualbase_contains".}
proc fcQGraphicsSvgItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsSvgItem_virtualbase_collidesWithItem".}
proc fcQGraphicsSvgItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsSvgItem_virtualbase_collidesWithPath".}
proc fcQGraphicsSvgItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsSvgItem_virtualbase_isObscuredBy".}
proc fcQGraphicsSvgItem_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_virtualbase_opaqueArea".}
proc fcQGraphicsSvgItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsSvgItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsSvgItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsSvgItem_virtualbase_sceneEvent".}
proc fcQGraphicsSvgItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsSvgItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsSvgItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsSvgItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsSvgItem_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_dropEvent".}
proc fcQGraphicsSvgItem_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_focusInEvent".}
proc fcQGraphicsSvgItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_focusOutEvent".}
proc fcQGraphicsSvgItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsSvgItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsSvgItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsSvgItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_keyPressEvent".}
proc fcQGraphicsSvgItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsSvgItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_mousePressEvent".}
proc fcQGraphicsSvgItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsSvgItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsSvgItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_wheelEvent".}
proc fcQGraphicsSvgItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsSvgItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsSvgItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsSvgItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsSvgItem_virtualbase_itemChange".}
proc fcQGraphicsSvgItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsSvgItem_virtualbase_supportsExtension".}
proc fcQGraphicsSvgItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsSvgItem_virtualbase_setExtension".}
proc fcQGraphicsSvgItem_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsSvgItem_virtualbase_extension".}
proc fcQGraphicsSvgItem_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsSvgItem_protectedbase_updateMicroFocus".}
proc fcQGraphicsSvgItem_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_protectedbase_sender".}
proc fcQGraphicsSvgItem_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsSvgItem_protectedbase_senderSignalIndex".}
proc fcQGraphicsSvgItem_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsSvgItem_protectedbase_receivers".}
proc fcQGraphicsSvgItem_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsSvgItem_protectedbase_isSignalConnected".}
proc fcQGraphicsSvgItem_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsSvgItem_protectedbase_addToIndex".}
proc fcQGraphicsSvgItem_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsSvgItem_protectedbase_removeFromIndex".}
proc fcQGraphicsSvgItem_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsSvgItem_protectedbase_prepareGeometryChange".}
proc fcQGraphicsSvgItem_new(vtbl: pointer, ): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new".}
proc fcQGraphicsSvgItem_new2(vtbl: pointer, fileName: struct_miqt_string): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new2".}
proc fcQGraphicsSvgItem_new3(vtbl: pointer, parentItem: pointer): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new3".}
proc fcQGraphicsSvgItem_new4(vtbl: pointer, fileName: struct_miqt_string, parentItem: pointer): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new4".}
proc fcQGraphicsSvgItem_staticMetaObject(): pointer {.importc: "QGraphicsSvgItem_staticMetaObject".}

proc metaObject*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsSvgItem_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, param1: cstring): pointer =
  fcQGraphicsSvgItem_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsSvgItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicssvgitem_types.QGraphicsSvgItem, s: cstring): string =
  let v_ms = fcQGraphicsSvgItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSharedRenderer*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, renderer: gen_qsvgrenderer_types.QSvgRenderer): void =
  fcQGraphicsSvgItem_setSharedRenderer(self.h, renderer.h)

proc renderer*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQGraphicsSvgItem_renderer(self.h), owned: false)

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
  gen_qsize_types.QSize(h: fcQGraphicsSvgItem_maximumCacheSize(self.h), owned: true)

proc boundingRect*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsSvgItem_boundingRect(self.h), owned: true)

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

type QGraphicsSvgItemmetaObjectProc* = proc(self: QGraphicsSvgItem): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsSvgItemmetacastProc* = proc(self: QGraphicsSvgItem, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsSvgItemmetacallProc* = proc(self: QGraphicsSvgItem, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsSvgItemboundingRectProc* = proc(self: QGraphicsSvgItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsSvgItempaintProc* = proc(self: QGraphicsSvgItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsSvgItemtypeXProc* = proc(self: QGraphicsSvgItem): cint {.raises: [], gcsafe.}
type QGraphicsSvgItemeventProc* = proc(self: QGraphicsSvgItem, ev: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsSvgItemeventFilterProc* = proc(self: QGraphicsSvgItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsSvgItemtimerEventProc* = proc(self: QGraphicsSvgItem, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemchildEventProc* = proc(self: QGraphicsSvgItem, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemcustomEventProc* = proc(self: QGraphicsSvgItem, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemconnectNotifyProc* = proc(self: QGraphicsSvgItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsSvgItemdisconnectNotifyProc* = proc(self: QGraphicsSvgItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsSvgItemadvanceProc* = proc(self: QGraphicsSvgItem, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsSvgItemshapeProc* = proc(self: QGraphicsSvgItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsSvgItemcontainsProc* = proc(self: QGraphicsSvgItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsSvgItemcollidesWithItemProc* = proc(self: QGraphicsSvgItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsSvgItemcollidesWithPathProc* = proc(self: QGraphicsSvgItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsSvgItemisObscuredByProc* = proc(self: QGraphicsSvgItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsSvgItemopaqueAreaProc* = proc(self: QGraphicsSvgItem): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsSvgItemsceneEventFilterProc* = proc(self: QGraphicsSvgItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsSvgItemsceneEventProc* = proc(self: QGraphicsSvgItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsSvgItemcontextMenuEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemdragEnterEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemdragLeaveEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemdragMoveEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemdropEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemfocusInEventProc* = proc(self: QGraphicsSvgItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemfocusOutEventProc* = proc(self: QGraphicsSvgItem, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemhoverEnterEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemhoverMoveEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemhoverLeaveEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemkeyPressEventProc* = proc(self: QGraphicsSvgItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemkeyReleaseEventProc* = proc(self: QGraphicsSvgItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemmousePressEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemmouseMoveEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemmouseReleaseEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemmouseDoubleClickEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgItemwheelEventProc* = proc(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgIteminputMethodEventProc* = proc(self: QGraphicsSvgItem, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsSvgIteminputMethodQueryProc* = proc(self: QGraphicsSvgItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsSvgItemitemChangeProc* = proc(self: QGraphicsSvgItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsSvgItemsupportsExtensionProc* = proc(self: QGraphicsSvgItem, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsSvgItemsetExtensionProc* = proc(self: QGraphicsSvgItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsSvgItemextensionProc* = proc(self: QGraphicsSvgItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsSvgItemVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsSvgItemVTable
  metaObject*: QGraphicsSvgItemmetaObjectProc
  metacast*: QGraphicsSvgItemmetacastProc
  metacall*: QGraphicsSvgItemmetacallProc
  boundingRect*: QGraphicsSvgItemboundingRectProc
  paint*: QGraphicsSvgItempaintProc
  typeX*: QGraphicsSvgItemtypeXProc
  event*: QGraphicsSvgItemeventProc
  eventFilter*: QGraphicsSvgItemeventFilterProc
  timerEvent*: QGraphicsSvgItemtimerEventProc
  childEvent*: QGraphicsSvgItemchildEventProc
  customEvent*: QGraphicsSvgItemcustomEventProc
  connectNotify*: QGraphicsSvgItemconnectNotifyProc
  disconnectNotify*: QGraphicsSvgItemdisconnectNotifyProc
  advance*: QGraphicsSvgItemadvanceProc
  shape*: QGraphicsSvgItemshapeProc
  contains*: QGraphicsSvgItemcontainsProc
  collidesWithItem*: QGraphicsSvgItemcollidesWithItemProc
  collidesWithPath*: QGraphicsSvgItemcollidesWithPathProc
  isObscuredBy*: QGraphicsSvgItemisObscuredByProc
  opaqueArea*: QGraphicsSvgItemopaqueAreaProc
  sceneEventFilter*: QGraphicsSvgItemsceneEventFilterProc
  sceneEvent*: QGraphicsSvgItemsceneEventProc
  contextMenuEvent*: QGraphicsSvgItemcontextMenuEventProc
  dragEnterEvent*: QGraphicsSvgItemdragEnterEventProc
  dragLeaveEvent*: QGraphicsSvgItemdragLeaveEventProc
  dragMoveEvent*: QGraphicsSvgItemdragMoveEventProc
  dropEvent*: QGraphicsSvgItemdropEventProc
  focusInEvent*: QGraphicsSvgItemfocusInEventProc
  focusOutEvent*: QGraphicsSvgItemfocusOutEventProc
  hoverEnterEvent*: QGraphicsSvgItemhoverEnterEventProc
  hoverMoveEvent*: QGraphicsSvgItemhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsSvgItemhoverLeaveEventProc
  keyPressEvent*: QGraphicsSvgItemkeyPressEventProc
  keyReleaseEvent*: QGraphicsSvgItemkeyReleaseEventProc
  mousePressEvent*: QGraphicsSvgItemmousePressEventProc
  mouseMoveEvent*: QGraphicsSvgItemmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsSvgItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsSvgItemmouseDoubleClickEventProc
  wheelEvent*: QGraphicsSvgItemwheelEventProc
  inputMethodEvent*: QGraphicsSvgIteminputMethodEventProc
  inputMethodQuery*: QGraphicsSvgIteminputMethodQueryProc
  itemChange*: QGraphicsSvgItemitemChangeProc
  supportsExtension*: QGraphicsSvgItemsupportsExtensionProc
  setExtension*: QGraphicsSvgItemsetExtensionProc
  extension*: QGraphicsSvgItemextensionProc
proc QGraphicsSvgItemmetaObject*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsSvgItem_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsSvgItem_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsSvgItemmetacast*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, param1: cstring): pointer =
  fcQGraphicsSvgItem_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsSvgItem_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsSvgItemmetacall*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsSvgItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsSvgItem_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsSvgItemboundingRect*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsSvgItem_virtualbase_boundingRect(self.h), owned: true)

proc miqt_exec_callback_cQGraphicsSvgItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsSvgItempaint*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsSvgItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsSvgItem_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsSvgItemtypeX*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): cint =
  fcQGraphicsSvgItem_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsSvgItem_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsSvgItemevent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ev: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsSvgItem_virtualbase_event(self.h, ev.h)

proc miqt_exec_callback_cQGraphicsSvgItem_event(vtbl: pointer, self: pointer, ev: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: ev, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsSvgItemeventFilter*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsSvgItem_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsSvgItemtimerEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsSvgItem_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsSvgItemchildEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsSvgItem_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsSvgItemcustomEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsSvgItem_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsSvgItemconnectNotify*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsSvgItem_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsSvgItem_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsSvgItemdisconnectNotify*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsSvgItem_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsSvgItem_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc QGraphicsSvgItemadvance*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, phase: cint): void =
  fcQGraphicsSvgItem_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsSvgItem_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsSvgItemshape*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsSvgItem_virtualbase_shape(self.h), owned: true)

proc miqt_exec_callback_cQGraphicsSvgItem_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsSvgItemcontains*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsSvgItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsSvgItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsSvgItemcollidesWithItem*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsSvgItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsSvgItem_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsSvgItemcollidesWithPath*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsSvgItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsSvgItem_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsSvgItemisObscuredBy*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsSvgItem_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsSvgItem_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsSvgItemopaqueArea*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsSvgItem_virtualbase_opaqueArea(self.h), owned: true)

proc miqt_exec_callback_cQGraphicsSvgItem_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsSvgItemsceneEventFilter*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsSvgItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsSvgItemsceneEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsSvgItem_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsSvgItemcontextMenuEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsSvgItem_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsSvgItemdragEnterEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsSvgItem_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsSvgItemdragLeaveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsSvgItem_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsSvgItemdragMoveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsSvgItem_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsSvgItemdropEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsSvgItem_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsSvgItemfocusInEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsSvgItem_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsSvgItemfocusOutEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsSvgItem_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsSvgItemhoverEnterEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsSvgItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsSvgItemhoverMoveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsSvgItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsSvgItemhoverLeaveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsSvgItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsSvgItemkeyPressEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsSvgItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsSvgItemkeyReleaseEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsSvgItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsSvgItemmousePressEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsSvgItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsSvgItemmouseMoveEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsSvgItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsSvgItemmouseReleaseEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsSvgItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsSvgItemmouseDoubleClickEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsSvgItemwheelEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsSvgItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsSvgIteminputMethodEvent*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsSvgItem_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsSvgItem_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsSvgIteminputMethodQuery*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsSvgItem_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc miqt_exec_callback_cQGraphicsSvgItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsSvgItemitemChange*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsSvgItem_virtualbase_itemChange(self.h, cint(change), value.h), owned: true)

proc miqt_exec_callback_cQGraphicsSvgItem_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsSvgItemsupportsExtension*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, extension: cint): bool =
  fcQGraphicsSvgItem_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsSvgItem_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsSvgItemsetExtension*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsSvgItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsSvgItem_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsSvgItemextension*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsSvgItem_virtualbase_extension(self.h, variant.h), owned: true)

proc miqt_exec_callback_cQGraphicsSvgItem_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSvgItemVTable](vtbl)
  let self = QGraphicsSvgItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsSvgItem* {.inheritable.} = ref object of QGraphicsSvgItem
  vtbl*: cQGraphicsSvgItemVTable
method metaObject*(self: VirtualQGraphicsSvgItem, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsSvgItemmetaObject(self[])
proc miqt_exec_method_cQGraphicsSvgItem_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsSvgItem, param1: cstring): pointer {.base.} =
  QGraphicsSvgItemmetacast(self[], param1)
proc miqt_exec_method_cQGraphicsSvgItem_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsSvgItem, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsSvgItemmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQGraphicsSvgItem_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method boundingRect*(self: VirtualQGraphicsSvgItem, ): gen_qrect_types.QRectF {.base.} =
  QGraphicsSvgItemboundingRect(self[])
proc miqt_exec_method_cQGraphicsSvgItem_boundingRect(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  var virtualReturn = vtbl.boundingRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method paint*(self: VirtualQGraphicsSvgItem, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.base.} =
  QGraphicsSvgItempaint(self[], painter, option, widget)
proc miqt_exec_method_cQGraphicsSvgItem_paint(vtbl: pointer, inst: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl.paint(slotval1, slotval2, slotval3)

method typeX*(self: VirtualQGraphicsSvgItem, ): cint {.base.} =
  QGraphicsSvgItemtypeX(self[])
proc miqt_exec_method_cQGraphicsSvgItem_typeX(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  var virtualReturn = vtbl.typeX()
  virtualReturn

method event*(self: VirtualQGraphicsSvgItem, ev: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsSvgItemevent(self[], ev)
proc miqt_exec_method_cQGraphicsSvgItem_event(vtbl: pointer, inst: pointer, ev: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: ev, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGraphicsSvgItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsSvgItemeventFilter(self[], watched, event)
proc miqt_exec_method_cQGraphicsSvgItem_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGraphicsSvgItem, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsSvgItemtimerEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsSvgItem, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsSvgItemchildEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsSvgItem, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsSvgItemcustomEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsSvgItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsSvgItemconnectNotify(self[], signal)
proc miqt_exec_method_cQGraphicsSvgItem_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsSvgItem, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsSvgItemdisconnectNotify(self[], signal)
proc miqt_exec_method_cQGraphicsSvgItem_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

method advance*(self: VirtualQGraphicsSvgItem, phase: cint): void {.base.} =
  QGraphicsSvgItemadvance(self[], phase)
proc miqt_exec_method_cQGraphicsSvgItem_advance(vtbl: pointer, inst: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = phase
  vtbl.advance(slotval1)

method shape*(self: VirtualQGraphicsSvgItem, ): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsSvgItemshape(self[])
proc miqt_exec_method_cQGraphicsSvgItem_shape(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  var virtualReturn = vtbl.shape()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method contains*(self: VirtualQGraphicsSvgItem, point: gen_qpoint_types.QPointF): bool {.base.} =
  QGraphicsSvgItemcontains(self[], point)
proc miqt_exec_method_cQGraphicsSvgItem_contains(vtbl: pointer, inst: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl.contains(slotval1)
  virtualReturn

method collidesWithItem*(self: VirtualQGraphicsSvgItem, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.base.} =
  QGraphicsSvgItemcollidesWithItem(self[], other, mode)
proc miqt_exec_method_cQGraphicsSvgItem_collidesWithItem(vtbl: pointer, inst: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl.collidesWithItem(slotval1, slotval2)
  virtualReturn

method collidesWithPath*(self: VirtualQGraphicsSvgItem, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.base.} =
  QGraphicsSvgItemcollidesWithPath(self[], path, mode)
proc miqt_exec_method_cQGraphicsSvgItem_collidesWithPath(vtbl: pointer, inst: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl.collidesWithPath(slotval1, slotval2)
  virtualReturn

method isObscuredBy*(self: VirtualQGraphicsSvgItem, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.base.} =
  QGraphicsSvgItemisObscuredBy(self[], item)
proc miqt_exec_method_cQGraphicsSvgItem_isObscuredBy(vtbl: pointer, inst: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = vtbl.isObscuredBy(slotval1)
  virtualReturn

method opaqueArea*(self: VirtualQGraphicsSvgItem, ): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsSvgItemopaqueArea(self[])
proc miqt_exec_method_cQGraphicsSvgItem_opaqueArea(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  var virtualReturn = vtbl.opaqueArea()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sceneEventFilter*(self: VirtualQGraphicsSvgItem, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsSvgItemsceneEventFilter(self[], watched, event)
proc miqt_exec_method_cQGraphicsSvgItem_sceneEventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.sceneEventFilter(slotval1, slotval2)
  virtualReturn

method sceneEvent*(self: VirtualQGraphicsSvgItem, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsSvgItemsceneEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_sceneEvent(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.sceneEvent(slotval1)
  virtualReturn

method contextMenuEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.base.} =
  QGraphicsSvgItemcontextMenuEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method dragEnterEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsSvgItemdragEnterEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragLeaveEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsSvgItemdragLeaveEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dragMoveEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsSvgItemdragMoveEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dropEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsSvgItemdropEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method focusInEvent*(self: VirtualQGraphicsSvgItem, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsSvgItemfocusInEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQGraphicsSvgItem, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsSvgItemfocusOutEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method hoverEnterEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsSvgItemhoverEnterEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_hoverEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl.hoverEnterEvent(slotval1)

method hoverMoveEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsSvgItemhoverMoveEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_hoverMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl.hoverMoveEvent(slotval1)

method hoverLeaveEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsSvgItemhoverLeaveEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_hoverLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl.hoverLeaveEvent(slotval1)

method keyPressEvent*(self: VirtualQGraphicsSvgItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsSvgItemkeyPressEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQGraphicsSvgItem, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsSvgItemkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method mousePressEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsSvgItemmousePressEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsSvgItemmouseMoveEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsSvgItemmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsSvgItemmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQGraphicsSvgItem, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.base.} =
  QGraphicsSvgItemwheelEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method inputMethodEvent*(self: VirtualQGraphicsSvgItem, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QGraphicsSvgIteminputMethodEvent(self[], event)
proc miqt_exec_method_cQGraphicsSvgItem_inputMethodEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQGraphicsSvgItem, query: cint): gen_qvariant_types.QVariant {.base.} =
  QGraphicsSvgIteminputMethodQuery(self[], query)
proc miqt_exec_method_cQGraphicsSvgItem_inputMethodQuery(vtbl: pointer, inst: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = cint(query)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method itemChange*(self: VirtualQGraphicsSvgItem, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsSvgItemitemChange(self[], change, value)
proc miqt_exec_method_cQGraphicsSvgItem_itemChange(vtbl: pointer, inst: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl.itemChange(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method supportsExtension*(self: VirtualQGraphicsSvgItem, extension: cint): bool {.base.} =
  QGraphicsSvgItemsupportsExtension(self[], extension)
proc miqt_exec_method_cQGraphicsSvgItem_supportsExtension(vtbl: pointer, inst: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = cint(extension)
  var virtualReturn = vtbl.supportsExtension(slotval1)
  virtualReturn

method setExtension*(self: VirtualQGraphicsSvgItem, extension: cint, variant: gen_qvariant_types.QVariant): void {.base.} =
  QGraphicsSvgItemsetExtension(self[], extension, variant)
proc miqt_exec_method_cQGraphicsSvgItem_setExtension(vtbl: pointer, inst: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  vtbl.setExtension(slotval1, slotval2)

method extension*(self: VirtualQGraphicsSvgItem, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsSvgItemextension(self[], variant)
proc miqt_exec_method_cQGraphicsSvgItem_extension(vtbl: pointer, inst: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSvgItem](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = vtbl.extension(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc updateMicroFocus*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): void =
  fcQGraphicsSvgItem_protectedbase_updateMicroFocus(self.h)

proc sender*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsSvgItem_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): cint =
  fcQGraphicsSvgItem_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, signal: cstring): cint =
  fcQGraphicsSvgItem_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsSvgItem_protectedbase_isSignalConnected(self.h, signal.h)

proc addToIndex*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): void =
  fcQGraphicsSvgItem_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): void =
  fcQGraphicsSvgItem_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicssvgitem_types.QGraphicsSvgItem, ): void =
  fcQGraphicsSvgItem_protectedbase_prepareGeometryChange(self.h)

proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem,
    vtbl: ref QGraphicsSvgItemVTable = nil): gen_qgraphicssvgitem_types.QGraphicsSvgItem =
  let vtbl = if vtbl == nil: new QGraphicsSvgItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSvgItemVTable, _: ptr cQGraphicsSvgItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSvgItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsSvgItem_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsSvgItem_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsSvgItem_metacall
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsSvgItem_boundingRect
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsSvgItem_paint
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsSvgItem_typeX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsSvgItem_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsSvgItem_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsSvgItem_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsSvgItem_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsSvgItem_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsSvgItem_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsSvgItem_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsSvgItem_advance
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsSvgItem_shape
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsSvgItem_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsSvgItem_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsSvgItem_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsSvgItem_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsSvgItem_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsSvgItem_sceneEventFilter
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsSvgItem_sceneEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsSvgItem_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsSvgItem_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsSvgItem_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsSvgItem_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsSvgItem_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsSvgItem_focusOutEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverLeaveEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsSvgItem_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsSvgItem_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsSvgItem_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsSvgItem_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsSvgItem_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsSvgItem_inputMethodQuery
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsSvgItem_itemChange
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsSvgItem_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsSvgItem_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsSvgItem_extension
  gen_qgraphicssvgitem_types.QGraphicsSvgItem(h: fcQGraphicsSvgItem_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem,
    fileName: string,
    vtbl: ref QGraphicsSvgItemVTable = nil): gen_qgraphicssvgitem_types.QGraphicsSvgItem =
  let vtbl = if vtbl == nil: new QGraphicsSvgItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSvgItemVTable, _: ptr cQGraphicsSvgItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSvgItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsSvgItem_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsSvgItem_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsSvgItem_metacall
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsSvgItem_boundingRect
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsSvgItem_paint
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsSvgItem_typeX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsSvgItem_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsSvgItem_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsSvgItem_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsSvgItem_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsSvgItem_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsSvgItem_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsSvgItem_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsSvgItem_advance
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsSvgItem_shape
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsSvgItem_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsSvgItem_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsSvgItem_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsSvgItem_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsSvgItem_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsSvgItem_sceneEventFilter
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsSvgItem_sceneEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsSvgItem_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsSvgItem_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsSvgItem_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsSvgItem_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsSvgItem_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsSvgItem_focusOutEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverLeaveEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsSvgItem_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsSvgItem_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsSvgItem_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsSvgItem_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsSvgItem_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsSvgItem_inputMethodQuery
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsSvgItem_itemChange
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsSvgItem_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsSvgItem_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsSvgItem_extension
  gen_qgraphicssvgitem_types.QGraphicsSvgItem(h: fcQGraphicsSvgItem_new2(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))), owned: true)

proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem,
    parentItem: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsSvgItemVTable = nil): gen_qgraphicssvgitem_types.QGraphicsSvgItem =
  let vtbl = if vtbl == nil: new QGraphicsSvgItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSvgItemVTable, _: ptr cQGraphicsSvgItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSvgItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsSvgItem_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsSvgItem_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsSvgItem_metacall
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsSvgItem_boundingRect
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsSvgItem_paint
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsSvgItem_typeX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsSvgItem_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsSvgItem_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsSvgItem_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsSvgItem_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsSvgItem_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsSvgItem_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsSvgItem_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsSvgItem_advance
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsSvgItem_shape
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsSvgItem_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsSvgItem_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsSvgItem_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsSvgItem_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsSvgItem_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsSvgItem_sceneEventFilter
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsSvgItem_sceneEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsSvgItem_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsSvgItem_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsSvgItem_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsSvgItem_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsSvgItem_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsSvgItem_focusOutEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverLeaveEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsSvgItem_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsSvgItem_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsSvgItem_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsSvgItem_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsSvgItem_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsSvgItem_inputMethodQuery
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsSvgItem_itemChange
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsSvgItem_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsSvgItem_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsSvgItem_extension
  gen_qgraphicssvgitem_types.QGraphicsSvgItem(h: fcQGraphicsSvgItem_new3(addr(vtbl[].vtbl), parentItem.h), owned: true)

proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem,
    fileName: string, parentItem: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsSvgItemVTable = nil): gen_qgraphicssvgitem_types.QGraphicsSvgItem =
  let vtbl = if vtbl == nil: new QGraphicsSvgItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSvgItemVTable, _: ptr cQGraphicsSvgItem) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSvgItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsSvgItem_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsSvgItem_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsSvgItem_metacall
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsSvgItem_boundingRect
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsSvgItem_paint
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsSvgItem_typeX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsSvgItem_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsSvgItem_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsSvgItem_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsSvgItem_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsSvgItem_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsSvgItem_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsSvgItem_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsSvgItem_advance
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsSvgItem_shape
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsSvgItem_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsSvgItem_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsSvgItem_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsSvgItem_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsSvgItem_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsSvgItem_sceneEventFilter
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsSvgItem_sceneEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsSvgItem_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsSvgItem_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsSvgItem_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsSvgItem_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsSvgItem_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsSvgItem_focusOutEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverEnterEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsSvgItem_hoverLeaveEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsSvgItem_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsSvgItem_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsSvgItem_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsSvgItem_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsSvgItem_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsSvgItem_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsSvgItem_inputMethodQuery
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsSvgItem_itemChange
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsSvgItem_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsSvgItem_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsSvgItem_extension
  gen_qgraphicssvgitem_types.QGraphicsSvgItem(h: fcQGraphicsSvgItem_new4(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parentItem.h), owned: true)

proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem,
    vtbl: VirtualQGraphicsSvgItem) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSvgItemVTable, _: ptr cQGraphicsSvgItem) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSvgItem()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsSvgItem_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsSvgItem_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsSvgItem_metacall
  vtbl[].vtbl.boundingRect = miqt_exec_method_cQGraphicsSvgItem_boundingRect
  vtbl[].vtbl.paint = miqt_exec_method_cQGraphicsSvgItem_paint
  vtbl[].vtbl.typeX = miqt_exec_method_cQGraphicsSvgItem_typeX
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsSvgItem_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsSvgItem_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsSvgItem_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsSvgItem_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsSvgItem_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsSvgItem_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsSvgItem_disconnectNotify
  vtbl[].vtbl.advance = miqt_exec_method_cQGraphicsSvgItem_advance
  vtbl[].vtbl.shape = miqt_exec_method_cQGraphicsSvgItem_shape
  vtbl[].vtbl.contains = miqt_exec_method_cQGraphicsSvgItem_contains
  vtbl[].vtbl.collidesWithItem = miqt_exec_method_cQGraphicsSvgItem_collidesWithItem
  vtbl[].vtbl.collidesWithPath = miqt_exec_method_cQGraphicsSvgItem_collidesWithPath
  vtbl[].vtbl.isObscuredBy = miqt_exec_method_cQGraphicsSvgItem_isObscuredBy
  vtbl[].vtbl.opaqueArea = miqt_exec_method_cQGraphicsSvgItem_opaqueArea
  vtbl[].vtbl.sceneEventFilter = miqt_exec_method_cQGraphicsSvgItem_sceneEventFilter
  vtbl[].vtbl.sceneEvent = miqt_exec_method_cQGraphicsSvgItem_sceneEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsSvgItem_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsSvgItem_dragEnterEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsSvgItem_dragLeaveEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsSvgItem_dragMoveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsSvgItem_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsSvgItem_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsSvgItem_focusOutEvent
  vtbl[].vtbl.hoverEnterEvent = miqt_exec_method_cQGraphicsSvgItem_hoverEnterEvent
  vtbl[].vtbl.hoverMoveEvent = miqt_exec_method_cQGraphicsSvgItem_hoverMoveEvent
  vtbl[].vtbl.hoverLeaveEvent = miqt_exec_method_cQGraphicsSvgItem_hoverLeaveEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsSvgItem_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsSvgItem_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsSvgItem_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsSvgItem_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsSvgItem_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsSvgItem_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsSvgItem_wheelEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsSvgItem_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsSvgItem_inputMethodQuery
  vtbl[].vtbl.itemChange = miqt_exec_method_cQGraphicsSvgItem_itemChange
  vtbl[].vtbl.supportsExtension = miqt_exec_method_cQGraphicsSvgItem_supportsExtension
  vtbl[].vtbl.setExtension = miqt_exec_method_cQGraphicsSvgItem_setExtension
  vtbl[].vtbl.extension = miqt_exec_method_cQGraphicsSvgItem_extension
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSvgItem_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem,
    fileName: string,
    vtbl: VirtualQGraphicsSvgItem) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSvgItemVTable, _: ptr cQGraphicsSvgItem) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSvgItem()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsSvgItem_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsSvgItem_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsSvgItem_metacall
  vtbl[].vtbl.boundingRect = miqt_exec_method_cQGraphicsSvgItem_boundingRect
  vtbl[].vtbl.paint = miqt_exec_method_cQGraphicsSvgItem_paint
  vtbl[].vtbl.typeX = miqt_exec_method_cQGraphicsSvgItem_typeX
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsSvgItem_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsSvgItem_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsSvgItem_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsSvgItem_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsSvgItem_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsSvgItem_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsSvgItem_disconnectNotify
  vtbl[].vtbl.advance = miqt_exec_method_cQGraphicsSvgItem_advance
  vtbl[].vtbl.shape = miqt_exec_method_cQGraphicsSvgItem_shape
  vtbl[].vtbl.contains = miqt_exec_method_cQGraphicsSvgItem_contains
  vtbl[].vtbl.collidesWithItem = miqt_exec_method_cQGraphicsSvgItem_collidesWithItem
  vtbl[].vtbl.collidesWithPath = miqt_exec_method_cQGraphicsSvgItem_collidesWithPath
  vtbl[].vtbl.isObscuredBy = miqt_exec_method_cQGraphicsSvgItem_isObscuredBy
  vtbl[].vtbl.opaqueArea = miqt_exec_method_cQGraphicsSvgItem_opaqueArea
  vtbl[].vtbl.sceneEventFilter = miqt_exec_method_cQGraphicsSvgItem_sceneEventFilter
  vtbl[].vtbl.sceneEvent = miqt_exec_method_cQGraphicsSvgItem_sceneEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsSvgItem_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsSvgItem_dragEnterEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsSvgItem_dragLeaveEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsSvgItem_dragMoveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsSvgItem_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsSvgItem_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsSvgItem_focusOutEvent
  vtbl[].vtbl.hoverEnterEvent = miqt_exec_method_cQGraphicsSvgItem_hoverEnterEvent
  vtbl[].vtbl.hoverMoveEvent = miqt_exec_method_cQGraphicsSvgItem_hoverMoveEvent
  vtbl[].vtbl.hoverLeaveEvent = miqt_exec_method_cQGraphicsSvgItem_hoverLeaveEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsSvgItem_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsSvgItem_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsSvgItem_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsSvgItem_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsSvgItem_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsSvgItem_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsSvgItem_wheelEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsSvgItem_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsSvgItem_inputMethodQuery
  vtbl[].vtbl.itemChange = miqt_exec_method_cQGraphicsSvgItem_itemChange
  vtbl[].vtbl.supportsExtension = miqt_exec_method_cQGraphicsSvgItem_supportsExtension
  vtbl[].vtbl.setExtension = miqt_exec_method_cQGraphicsSvgItem_setExtension
  vtbl[].vtbl.extension = miqt_exec_method_cQGraphicsSvgItem_extension
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSvgItem_new2(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  vtbl[].owned = true

proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem,
    parentItem: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: VirtualQGraphicsSvgItem) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSvgItemVTable, _: ptr cQGraphicsSvgItem) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSvgItem()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsSvgItem_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsSvgItem_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsSvgItem_metacall
  vtbl[].vtbl.boundingRect = miqt_exec_method_cQGraphicsSvgItem_boundingRect
  vtbl[].vtbl.paint = miqt_exec_method_cQGraphicsSvgItem_paint
  vtbl[].vtbl.typeX = miqt_exec_method_cQGraphicsSvgItem_typeX
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsSvgItem_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsSvgItem_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsSvgItem_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsSvgItem_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsSvgItem_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsSvgItem_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsSvgItem_disconnectNotify
  vtbl[].vtbl.advance = miqt_exec_method_cQGraphicsSvgItem_advance
  vtbl[].vtbl.shape = miqt_exec_method_cQGraphicsSvgItem_shape
  vtbl[].vtbl.contains = miqt_exec_method_cQGraphicsSvgItem_contains
  vtbl[].vtbl.collidesWithItem = miqt_exec_method_cQGraphicsSvgItem_collidesWithItem
  vtbl[].vtbl.collidesWithPath = miqt_exec_method_cQGraphicsSvgItem_collidesWithPath
  vtbl[].vtbl.isObscuredBy = miqt_exec_method_cQGraphicsSvgItem_isObscuredBy
  vtbl[].vtbl.opaqueArea = miqt_exec_method_cQGraphicsSvgItem_opaqueArea
  vtbl[].vtbl.sceneEventFilter = miqt_exec_method_cQGraphicsSvgItem_sceneEventFilter
  vtbl[].vtbl.sceneEvent = miqt_exec_method_cQGraphicsSvgItem_sceneEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsSvgItem_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsSvgItem_dragEnterEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsSvgItem_dragLeaveEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsSvgItem_dragMoveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsSvgItem_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsSvgItem_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsSvgItem_focusOutEvent
  vtbl[].vtbl.hoverEnterEvent = miqt_exec_method_cQGraphicsSvgItem_hoverEnterEvent
  vtbl[].vtbl.hoverMoveEvent = miqt_exec_method_cQGraphicsSvgItem_hoverMoveEvent
  vtbl[].vtbl.hoverLeaveEvent = miqt_exec_method_cQGraphicsSvgItem_hoverLeaveEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsSvgItem_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsSvgItem_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsSvgItem_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsSvgItem_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsSvgItem_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsSvgItem_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsSvgItem_wheelEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsSvgItem_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsSvgItem_inputMethodQuery
  vtbl[].vtbl.itemChange = miqt_exec_method_cQGraphicsSvgItem_itemChange
  vtbl[].vtbl.supportsExtension = miqt_exec_method_cQGraphicsSvgItem_supportsExtension
  vtbl[].vtbl.setExtension = miqt_exec_method_cQGraphicsSvgItem_setExtension
  vtbl[].vtbl.extension = miqt_exec_method_cQGraphicsSvgItem_extension
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSvgItem_new3(addr(vtbl[].vtbl), parentItem.h)
  vtbl[].owned = true

proc create*(T: type gen_qgraphicssvgitem_types.QGraphicsSvgItem,
    fileName: string, parentItem: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: VirtualQGraphicsSvgItem) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSvgItemVTable, _: ptr cQGraphicsSvgItem) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSvgItem()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSvgItem, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsSvgItem_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsSvgItem_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsSvgItem_metacall
  vtbl[].vtbl.boundingRect = miqt_exec_method_cQGraphicsSvgItem_boundingRect
  vtbl[].vtbl.paint = miqt_exec_method_cQGraphicsSvgItem_paint
  vtbl[].vtbl.typeX = miqt_exec_method_cQGraphicsSvgItem_typeX
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsSvgItem_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsSvgItem_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsSvgItem_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsSvgItem_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsSvgItem_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsSvgItem_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsSvgItem_disconnectNotify
  vtbl[].vtbl.advance = miqt_exec_method_cQGraphicsSvgItem_advance
  vtbl[].vtbl.shape = miqt_exec_method_cQGraphicsSvgItem_shape
  vtbl[].vtbl.contains = miqt_exec_method_cQGraphicsSvgItem_contains
  vtbl[].vtbl.collidesWithItem = miqt_exec_method_cQGraphicsSvgItem_collidesWithItem
  vtbl[].vtbl.collidesWithPath = miqt_exec_method_cQGraphicsSvgItem_collidesWithPath
  vtbl[].vtbl.isObscuredBy = miqt_exec_method_cQGraphicsSvgItem_isObscuredBy
  vtbl[].vtbl.opaqueArea = miqt_exec_method_cQGraphicsSvgItem_opaqueArea
  vtbl[].vtbl.sceneEventFilter = miqt_exec_method_cQGraphicsSvgItem_sceneEventFilter
  vtbl[].vtbl.sceneEvent = miqt_exec_method_cQGraphicsSvgItem_sceneEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsSvgItem_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsSvgItem_dragEnterEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsSvgItem_dragLeaveEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsSvgItem_dragMoveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsSvgItem_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsSvgItem_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsSvgItem_focusOutEvent
  vtbl[].vtbl.hoverEnterEvent = miqt_exec_method_cQGraphicsSvgItem_hoverEnterEvent
  vtbl[].vtbl.hoverMoveEvent = miqt_exec_method_cQGraphicsSvgItem_hoverMoveEvent
  vtbl[].vtbl.hoverLeaveEvent = miqt_exec_method_cQGraphicsSvgItem_hoverLeaveEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsSvgItem_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsSvgItem_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsSvgItem_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsSvgItem_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsSvgItem_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsSvgItem_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsSvgItem_wheelEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsSvgItem_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsSvgItem_inputMethodQuery
  vtbl[].vtbl.itemChange = miqt_exec_method_cQGraphicsSvgItem_itemChange
  vtbl[].vtbl.supportsExtension = miqt_exec_method_cQGraphicsSvgItem_supportsExtension
  vtbl[].vtbl.setExtension = miqt_exec_method_cQGraphicsSvgItem_setExtension
  vtbl[].vtbl.extension = miqt_exec_method_cQGraphicsSvgItem_extension
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSvgItem_new4(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parentItem.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qgraphicssvgitem_types.QGraphicsSvgItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsSvgItem_staticMetaObject())
