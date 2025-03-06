import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qgraphicsproxywidget.cpp", cflags).}


type QGraphicsProxyWidgetEnumEnum* = distinct cint
template Type*(_: type QGraphicsProxyWidgetEnumEnum): untyped = 12


import ./gen_qgraphicsproxywidget_types
export gen_qgraphicsproxywidget_types

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
  ./gen_qgraphicsitem_types,
  ./gen_qgraphicssceneevent_types,
  ./gen_qgraphicswidget,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
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
  gen_qgraphicsitem_types,
  gen_qgraphicssceneevent_types,
  gen_qgraphicswidget,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQGraphicsProxyWidget*{.exportc: "QGraphicsProxyWidget", incompleteStruct.} = object

proc fcQGraphicsProxyWidget_new(): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new".}
proc fcQGraphicsProxyWidget_new2(parent: pointer): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new2".}
proc fcQGraphicsProxyWidget_new3(parent: pointer, wFlags: cint): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new3".}
proc fcQGraphicsProxyWidget_metaObject(self: pointer, ): pointer {.importc: "QGraphicsProxyWidget_metaObject".}
proc fcQGraphicsProxyWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsProxyWidget_metacast".}
proc fcQGraphicsProxyWidget_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr".}
proc fcQGraphicsProxyWidget_setWidget(self: pointer, widget: pointer): void {.importc: "QGraphicsProxyWidget_setWidget".}
proc fcQGraphicsProxyWidget_widget(self: pointer, ): pointer {.importc: "QGraphicsProxyWidget_widget".}
proc fcQGraphicsProxyWidget_subWidgetRect(self: pointer, widget: pointer): pointer {.importc: "QGraphicsProxyWidget_subWidgetRect".}
proc fcQGraphicsProxyWidget_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsProxyWidget_setGeometry".}
proc fcQGraphicsProxyWidget_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsProxyWidget_paint".}
proc fcQGraphicsProxyWidget_typeX(self: pointer, ): cint {.importc: "QGraphicsProxyWidget_type".}
proc fcQGraphicsProxyWidget_createProxyForChildWidget(self: pointer, child: pointer): pointer {.importc: "QGraphicsProxyWidget_createProxyForChildWidget".}
proc fcQGraphicsProxyWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr2".}
proc fcQGraphicsProxyWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr3".}
proc fQGraphicsProxyWidget_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_setGeometry".}
proc fcQGraphicsProxyWidget_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_setGeometry".}
proc fQGraphicsProxyWidget_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_paint".}
proc fcQGraphicsProxyWidget_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_paint".}
proc fQGraphicsProxyWidget_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsProxyWidget_virtualbase_type".}
proc fcQGraphicsProxyWidget_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_type".}
proc fQGraphicsProxyWidget_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsProxyWidget_virtualbase_itemChange".}
proc fcQGraphicsProxyWidget_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_itemChange".}
proc fQGraphicsProxyWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_event".}
proc fcQGraphicsProxyWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_event".}
proc fQGraphicsProxyWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_eventFilter".}
proc fcQGraphicsProxyWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_eventFilter".}
proc fQGraphicsProxyWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_showEvent".}
proc fcQGraphicsProxyWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_showEvent".}
proc fQGraphicsProxyWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_hideEvent".}
proc fcQGraphicsProxyWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_hideEvent".}
proc fQGraphicsProxyWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_contextMenuEvent".}
proc fcQGraphicsProxyWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_contextMenuEvent".}
proc fQGraphicsProxyWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_dragEnterEvent".}
proc fcQGraphicsProxyWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_dragEnterEvent".}
proc fQGraphicsProxyWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_dragLeaveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_dragLeaveEvent".}
proc fQGraphicsProxyWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_dragMoveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_dragMoveEvent".}
proc fQGraphicsProxyWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_dropEvent".}
proc fcQGraphicsProxyWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_dropEvent".}
proc fQGraphicsProxyWidget_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_hoverEnterEvent".}
proc fcQGraphicsProxyWidget_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_hoverEnterEvent".}
proc fQGraphicsProxyWidget_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_hoverLeaveEvent".}
proc fQGraphicsProxyWidget_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_hoverMoveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_hoverMoveEvent".}
proc fQGraphicsProxyWidget_virtualbase_grabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_grabMouseEvent".}
proc fcQGraphicsProxyWidget_override_virtual_grabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_grabMouseEvent".}
proc fQGraphicsProxyWidget_virtualbase_ungrabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_ungrabMouseEvent".}
proc fcQGraphicsProxyWidget_override_virtual_ungrabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_ungrabMouseEvent".}
proc fQGraphicsProxyWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_mouseMoveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_mouseMoveEvent".}
proc fQGraphicsProxyWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_mousePressEvent".}
proc fcQGraphicsProxyWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_mousePressEvent".}
proc fQGraphicsProxyWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsProxyWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_mouseReleaseEvent".}
proc fQGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsProxyWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsProxyWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_wheelEvent".}
proc fcQGraphicsProxyWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_wheelEvent".}
proc fQGraphicsProxyWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_keyPressEvent".}
proc fcQGraphicsProxyWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_keyPressEvent".}
proc fQGraphicsProxyWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_keyReleaseEvent".}
proc fcQGraphicsProxyWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_keyReleaseEvent".}
proc fQGraphicsProxyWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_focusInEvent".}
proc fcQGraphicsProxyWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_focusInEvent".}
proc fQGraphicsProxyWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_focusOutEvent".}
proc fcQGraphicsProxyWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_focusOutEvent".}
proc fQGraphicsProxyWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QGraphicsProxyWidget_virtualbase_focusNextPrevChild".}
proc fcQGraphicsProxyWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_focusNextPrevChild".}
proc fQGraphicsProxyWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsProxyWidget_virtualbase_inputMethodQuery".}
proc fcQGraphicsProxyWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_inputMethodQuery".}
proc fQGraphicsProxyWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_inputMethodEvent".}
proc fcQGraphicsProxyWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_inputMethodEvent".}
proc fQGraphicsProxyWidget_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsProxyWidget_virtualbase_sizeHint".}
proc fcQGraphicsProxyWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_sizeHint".}
proc fQGraphicsProxyWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_resizeEvent".}
proc fcQGraphicsProxyWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_resizeEvent".}
proc fQGraphicsProxyWidget_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsProxyWidget_virtualbase_getContentsMargins".}
proc fcQGraphicsProxyWidget_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_getContentsMargins".}
proc fQGraphicsProxyWidget_virtualbase_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_paintWindowFrame".}
proc fcQGraphicsProxyWidget_override_virtual_paintWindowFrame(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_paintWindowFrame".}
proc fQGraphicsProxyWidget_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsProxyWidget_virtualbase_boundingRect".}
proc fcQGraphicsProxyWidget_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_boundingRect".}
proc fQGraphicsProxyWidget_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsProxyWidget_virtualbase_shape".}
proc fcQGraphicsProxyWidget_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_shape".}
proc fQGraphicsProxyWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_initStyleOption".}
proc fcQGraphicsProxyWidget_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_initStyleOption".}
proc fQGraphicsProxyWidget_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsProxyWidget_virtualbase_updateGeometry".}
proc fcQGraphicsProxyWidget_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_updateGeometry".}
proc fQGraphicsProxyWidget_virtualbase_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer{.importc: "QGraphicsProxyWidget_virtualbase_propertyChange".}
proc fcQGraphicsProxyWidget_override_virtual_propertyChange(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_propertyChange".}
proc fQGraphicsProxyWidget_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_sceneEvent".}
proc fcQGraphicsProxyWidget_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_sceneEvent".}
proc fQGraphicsProxyWidget_virtualbase_windowFrameEvent(self: pointer, e: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_windowFrameEvent".}
proc fcQGraphicsProxyWidget_override_virtual_windowFrameEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_windowFrameEvent".}
proc fQGraphicsProxyWidget_virtualbase_windowFrameSectionAt(self: pointer, pos: pointer): cint{.importc: "QGraphicsProxyWidget_virtualbase_windowFrameSectionAt".}
proc fcQGraphicsProxyWidget_override_virtual_windowFrameSectionAt(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_windowFrameSectionAt".}
proc fQGraphicsProxyWidget_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_changeEvent".}
proc fcQGraphicsProxyWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_changeEvent".}
proc fQGraphicsProxyWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_closeEvent".}
proc fcQGraphicsProxyWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_closeEvent".}
proc fQGraphicsProxyWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_moveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_moveEvent".}
proc fQGraphicsProxyWidget_virtualbase_polishEvent(self: pointer, ): void{.importc: "QGraphicsProxyWidget_virtualbase_polishEvent".}
proc fcQGraphicsProxyWidget_override_virtual_polishEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_polishEvent".}
proc fQGraphicsProxyWidget_virtualbase_grabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_grabKeyboardEvent".}
proc fcQGraphicsProxyWidget_override_virtual_grabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_grabKeyboardEvent".}
proc fQGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent".}
proc fcQGraphicsProxyWidget_override_virtual_ungrabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_ungrabKeyboardEvent".}
proc fQGraphicsProxyWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_timerEvent".}
proc fcQGraphicsProxyWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_timerEvent".}
proc fQGraphicsProxyWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_childEvent".}
proc fcQGraphicsProxyWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_childEvent".}
proc fQGraphicsProxyWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_customEvent".}
proc fcQGraphicsProxyWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_customEvent".}
proc fQGraphicsProxyWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_connectNotify".}
proc fcQGraphicsProxyWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_connectNotify".}
proc fQGraphicsProxyWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_disconnectNotify".}
proc fcQGraphicsProxyWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_disconnectNotify".}
proc fQGraphicsProxyWidget_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsProxyWidget_virtualbase_advance".}
proc fcQGraphicsProxyWidget_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_advance".}
proc fQGraphicsProxyWidget_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_contains".}
proc fcQGraphicsProxyWidget_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_contains".}
proc fQGraphicsProxyWidget_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsProxyWidget_virtualbase_collidesWithItem".}
proc fcQGraphicsProxyWidget_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_collidesWithItem".}
proc fQGraphicsProxyWidget_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsProxyWidget_virtualbase_collidesWithPath".}
proc fcQGraphicsProxyWidget_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_collidesWithPath".}
proc fQGraphicsProxyWidget_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_isObscuredBy".}
proc fcQGraphicsProxyWidget_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_isObscuredBy".}
proc fQGraphicsProxyWidget_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsProxyWidget_virtualbase_opaqueArea".}
proc fcQGraphicsProxyWidget_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_opaqueArea".}
proc fQGraphicsProxyWidget_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_sceneEventFilter".}
proc fcQGraphicsProxyWidget_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_sceneEventFilter".}
proc fQGraphicsProxyWidget_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsProxyWidget_virtualbase_supportsExtension".}
proc fcQGraphicsProxyWidget_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_supportsExtension".}
proc fQGraphicsProxyWidget_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_setExtension".}
proc fcQGraphicsProxyWidget_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_setExtension".}
proc fQGraphicsProxyWidget_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsProxyWidget_virtualbase_extension".}
proc fcQGraphicsProxyWidget_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_extension".}
proc fQGraphicsProxyWidget_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QGraphicsProxyWidget_virtualbase_isEmpty".}
proc fcQGraphicsProxyWidget_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_isEmpty".}
proc fcQGraphicsProxyWidget_delete(self: pointer) {.importc: "QGraphicsProxyWidget_delete".}


func init*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, h: ptr cQGraphicsProxyWidget): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  T(h: h)
proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget.init(fcQGraphicsProxyWidget_new())

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget.init(fcQGraphicsProxyWidget_new2(parent.h))

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, parent: gen_qgraphicsitem_types.QGraphicsItem, wFlags: cint): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget.init(fcQGraphicsProxyWidget_new3(parent.h, cint(wFlags)))

proc metaObject*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsProxyWidget_metaObject(self.h))

proc metacast*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, param1: cstring): pointer =
  fcQGraphicsProxyWidget_metacast(self.h, param1)

proc tr*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, s: cstring): string =
  let v_ms = fcQGraphicsProxyWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWidget*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsProxyWidget_setWidget(self.h, widget.h)

proc widget*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQGraphicsProxyWidget_widget(self.h))

proc subWidgetRect*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsProxyWidget_subWidgetRect(self.h, widget.h))

proc setGeometry*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsProxyWidget_setGeometry(self.h, rect.h)

proc paint*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsProxyWidget_paint(self.h, painter.h, option.h, widget.h)

proc typeX*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): cint =
  fcQGraphicsProxyWidget_typeX(self.h)

proc createProxyForChildWidget*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, child: gen_qwidget_types.QWidget): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_createProxyForChildWidget(self.h, child.h))

proc tr*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsProxyWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsProxyWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QGraphicsProxyWidgetsetGeometry*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, rect: gen_qrect_types.QRectF): void =
  fQGraphicsProxyWidget_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsProxyWidgetsetGeometryProc* = proc(rect: gen_qrect_types.QRectF): void
proc onsetGeometry*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetsetGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_setGeometry(self: ptr cQGraphicsProxyWidget, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_setGeometry ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rect)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetpaint*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsProxyWidget_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsProxyWidgetpaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetpaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetpaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_paint(self: ptr cQGraphicsProxyWidget, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_paint ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetpaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsProxyWidgettypeX*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): cint =
  fQGraphicsProxyWidget_virtualbase_type(self.h)

type QGraphicsProxyWidgettypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgettypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgettypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_type(self: ptr cQGraphicsProxyWidget, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_type ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgettypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsProxyWidgetitemChange*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsProxyWidget_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsProxyWidgetitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_itemChange(self: ptr cQGraphicsProxyWidget, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsProxyWidgetevent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsProxyWidget_virtualbase_event(self.h, event.h)

type QGraphicsProxyWidgeteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgeteventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_event(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_event ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsProxyWidgeteventFilter*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsProxyWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QGraphicsProxyWidgeteventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_eventFilter(self: ptr cQGraphicsProxyWidget, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsProxyWidgetshowEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QShowEvent): void =
  fQGraphicsProxyWidget_virtualbase_showEvent(self.h, event.h)

type QGraphicsProxyWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_showEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_showEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgethideEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QHideEvent): void =
  fQGraphicsProxyWidget_virtualbase_hideEvent(self.h, event.h)

type QGraphicsProxyWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_hideEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_hideEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetcontextMenuEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsProxyWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsProxyWidgetcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_contextMenuEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetdragEnterEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsProxyWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsProxyWidgetdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_dragEnterEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetdragLeaveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsProxyWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsProxyWidgetdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_dragLeaveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetdragMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsProxyWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsProxyWidgetdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_dragMoveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetdropEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsProxyWidget_virtualbase_dropEvent(self.h, event.h)

type QGraphicsProxyWidgetdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_dropEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgethoverEnterEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsProxyWidget_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsProxyWidgethoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgethoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgethoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_hoverEnterEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgethoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgethoverLeaveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsProxyWidget_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsProxyWidgethoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgethoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgethoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_hoverLeaveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgethoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgethoverMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsProxyWidget_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsProxyWidgethoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgethoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgethoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_hoverMoveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgethoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetgrabMouseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsProxyWidget_virtualbase_grabMouseEvent(self.h, event.h)

type QGraphicsProxyWidgetgrabMouseEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ongrabMouseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetgrabMouseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetgrabMouseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_grabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_grabMouseEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_grabMouseEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetgrabMouseEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetungrabMouseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsProxyWidget_virtualbase_ungrabMouseEvent(self.h, event.h)

type QGraphicsProxyWidgetungrabMouseEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onungrabMouseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetungrabMouseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetungrabMouseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_ungrabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_ungrabMouseEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_ungrabMouseEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetungrabMouseEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetmouseMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsProxyWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsProxyWidgetmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_mouseMoveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetmousePressEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsProxyWidget_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsProxyWidgetmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_mousePressEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetmouseReleaseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsProxyWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsProxyWidgetmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_mouseReleaseEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetmouseDoubleClickEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsProxyWidgetmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_mouseDoubleClickEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetwheelEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsProxyWidget_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsProxyWidgetwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_wheelEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetkeyPressEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsProxyWidget_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsProxyWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_keyPressEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetkeyReleaseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsProxyWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsProxyWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_keyReleaseEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetfocusInEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsProxyWidget_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsProxyWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_focusInEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetfocusOutEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsProxyWidget_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsProxyWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_focusOutEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetfocusNextPrevChild*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, next: bool): bool =
  fQGraphicsProxyWidget_virtualbase_focusNextPrevChild(self.h, next)

type QGraphicsProxyWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_focusNextPrevChild(self: ptr cQGraphicsProxyWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsProxyWidgetinputMethodQuery*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsProxyWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsProxyWidgetinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_inputMethodQuery(self: ptr cQGraphicsProxyWidget, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsProxyWidgetinputMethodEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsProxyWidget_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsProxyWidgetinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_inputMethodEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetsizeHint*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fQGraphicsProxyWidget_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsProxyWidgetsizeHintProc* = proc(which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF
proc onsizeHint*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_sizeHint(self: ptr cQGraphicsProxyWidget, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_sizeHint ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetsizeHintProc](cast[pointer](slot))
  let slotval1 = cint(which)

  let slotval2 = gen_qsize_types.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsProxyWidgetresizeEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void =
  fQGraphicsProxyWidget_virtualbase_resizeEvent(self.h, event.h)

type QGraphicsProxyWidgetresizeEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void
proc onresizeEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_resizeEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetgetContentsMargins*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fQGraphicsProxyWidget_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsProxyWidgetgetContentsMarginsProc* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetgetContentsMarginsProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetgetContentsMarginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_getContentsMargins(self: ptr cQGraphicsProxyWidget, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_getContentsMargins ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetgetContentsMarginsProc](cast[pointer](slot))
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QGraphicsProxyWidgetpaintWindowFrame*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsProxyWidget_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

type QGraphicsProxyWidgetpaintWindowFrameProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaintWindowFrame*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetpaintWindowFrameProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetpaintWindowFrameProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_paintWindowFrame(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_paintWindowFrame(self: ptr cQGraphicsProxyWidget, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_paintWindowFrame ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetpaintWindowFrameProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsProxyWidgetboundingRect*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsProxyWidget_virtualbase_boundingRect(self.h))

type QGraphicsProxyWidgetboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_boundingRect(self: ptr cQGraphicsProxyWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsProxyWidgetshape*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsProxyWidget_virtualbase_shape(self.h))

type QGraphicsProxyWidgetshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_shape(self: ptr cQGraphicsProxyWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_shape ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsProxyWidgetinitStyleOption*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, option: gen_qstyleoption_types.QStyleOption): void =
  fQGraphicsProxyWidget_virtualbase_initStyleOption(self.h, option.h)

type QGraphicsProxyWidgetinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOption): void
proc oninitStyleOption*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_initStyleOption(self: ptr cQGraphicsProxyWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_initStyleOption ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetupdateGeometry*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): void =
  fQGraphicsProxyWidget_virtualbase_updateGeometry(self.h)

type QGraphicsProxyWidgetupdateGeometryProc* = proc(): void
proc onupdateGeometry*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetupdateGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetupdateGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_updateGeometry(self: ptr cQGraphicsProxyWidget, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_updateGeometry ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetupdateGeometryProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsProxyWidgetpropertyChange*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsProxyWidget_virtualbase_propertyChange(self.h, struct_miqt_string(data: propertyName, len: csize_t(len(propertyName))), value.h))

type QGraphicsProxyWidgetpropertyChangeProc* = proc(propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onpropertyChange*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetpropertyChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetpropertyChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_propertyChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_propertyChange(self: ptr cQGraphicsProxyWidget, slot: int, propertyName: struct_miqt_string, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_propertyChange ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetpropertyChangeProc](cast[pointer](slot))
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(toOpenArrayByte(vpropertyName_ms.data, 0, int(vpropertyName_ms.len)-1))
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsProxyWidgetsceneEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsProxyWidget_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsProxyWidgetsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_sceneEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsProxyWidgetwindowFrameEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, e: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsProxyWidget_virtualbase_windowFrameEvent(self.h, e.h)

type QGraphicsProxyWidgetwindowFrameEventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onwindowFrameEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetwindowFrameEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetwindowFrameEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_windowFrameEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_windowFrameEvent(self: ptr cQGraphicsProxyWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_windowFrameEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetwindowFrameEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsProxyWidgetwindowFrameSectionAt*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, pos: gen_qpoint_types.QPointF): cint =
  cint(fQGraphicsProxyWidget_virtualbase_windowFrameSectionAt(self.h, pos.h))

type QGraphicsProxyWidgetwindowFrameSectionAtProc* = proc(pos: gen_qpoint_types.QPointF): cint
proc onwindowFrameSectionAt*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetwindowFrameSectionAtProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetwindowFrameSectionAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_windowFrameSectionAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_windowFrameSectionAt(self: ptr cQGraphicsProxyWidget, slot: int, pos: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_windowFrameSectionAt ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetwindowFrameSectionAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: pos)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QGraphicsProxyWidgetchangeEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsProxyWidget_virtualbase_changeEvent(self.h, event.h)

type QGraphicsProxyWidgetchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_changeEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_changeEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetcloseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QCloseEvent): void =
  fQGraphicsProxyWidget_virtualbase_closeEvent(self.h, event.h)

type QGraphicsProxyWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_closeEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_closeEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetmoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void =
  fQGraphicsProxyWidget_virtualbase_moveEvent(self.h, event.h)

type QGraphicsProxyWidgetmoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void
proc onmoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_moveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_moveEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetpolishEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): void =
  fQGraphicsProxyWidget_virtualbase_polishEvent(self.h)

type QGraphicsProxyWidgetpolishEventProc* = proc(): void
proc onpolishEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetpolishEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetpolishEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_polishEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_polishEvent(self: ptr cQGraphicsProxyWidget, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_polishEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetpolishEventProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsProxyWidgetgrabKeyboardEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsProxyWidget_virtualbase_grabKeyboardEvent(self.h, event.h)

type QGraphicsProxyWidgetgrabKeyboardEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ongrabKeyboardEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetgrabKeyboardEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetgrabKeyboardEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_grabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_grabKeyboardEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_grabKeyboardEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetgrabKeyboardEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetungrabKeyboardEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(self.h, event.h)

type QGraphicsProxyWidgetungrabKeyboardEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onungrabKeyboardEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetungrabKeyboardEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetungrabKeyboardEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_ungrabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_ungrabKeyboardEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_ungrabKeyboardEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetungrabKeyboardEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgettimerEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsProxyWidget_virtualbase_timerEvent(self.h, event.h)

type QGraphicsProxyWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_timerEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetchildEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsProxyWidget_virtualbase_childEvent(self.h, event.h)

type QGraphicsProxyWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_childEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetcustomEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsProxyWidget_virtualbase_customEvent(self.h, event.h)

type QGraphicsProxyWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_customEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetconnectNotify*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsProxyWidget_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsProxyWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_connectNotify(self: ptr cQGraphicsProxyWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetdisconnectNotify*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsProxyWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsProxyWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_disconnectNotify(self: ptr cQGraphicsProxyWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetadvance*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, phase: cint): void =
  fQGraphicsProxyWidget_virtualbase_advance(self.h, phase)

type QGraphicsProxyWidgetadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_advance(self: ptr cQGraphicsProxyWidget, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_advance ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsProxyWidgetcontains*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsProxyWidget_virtualbase_contains(self.h, point.h)

type QGraphicsProxyWidgetcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_contains(self: ptr cQGraphicsProxyWidget, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_contains ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsProxyWidgetcollidesWithItem*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsProxyWidget_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsProxyWidgetcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_collidesWithItem(self: ptr cQGraphicsProxyWidget, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsProxyWidgetcollidesWithPath*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsProxyWidget_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsProxyWidgetcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_collidesWithPath(self: ptr cQGraphicsProxyWidget, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsProxyWidgetisObscuredBy*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsProxyWidget_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsProxyWidgetisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_isObscuredBy(self: ptr cQGraphicsProxyWidget, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsProxyWidgetopaqueArea*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsProxyWidget_virtualbase_opaqueArea(self.h))

type QGraphicsProxyWidgetopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_opaqueArea(self: ptr cQGraphicsProxyWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsProxyWidgetsceneEventFilter*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsProxyWidget_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsProxyWidgetsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_sceneEventFilter(self: ptr cQGraphicsProxyWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsProxyWidgetsupportsExtension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, extension: cint): bool =
  fQGraphicsProxyWidget_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsProxyWidgetsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_supportsExtension(self: ptr cQGraphicsProxyWidget, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsProxyWidgetsetExtension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsProxyWidget_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsProxyWidgetsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_setExtension(self: ptr cQGraphicsProxyWidget, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsProxyWidgetextension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsProxyWidget_virtualbase_extension(self.h, variant.h))

type QGraphicsProxyWidgetextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_extension(self: ptr cQGraphicsProxyWidget, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_extension ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsProxyWidgetisEmpty*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): bool =
  fQGraphicsProxyWidget_virtualbase_isEmpty(self.h)

type QGraphicsProxyWidgetisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, slot: QGraphicsProxyWidgetisEmptyProc) =
  # TODO check subclass
  var tmp = new QGraphicsProxyWidgetisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_isEmpty(self: ptr cQGraphicsProxyWidget, slot: int): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_isEmpty ".} =
  var nimfunc = cast[ptr QGraphicsProxyWidgetisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc delete*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget) =
  fcQGraphicsProxyWidget_delete(self.h)
