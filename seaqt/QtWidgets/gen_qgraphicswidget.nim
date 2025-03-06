import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qgraphicswidget.cpp", cflags).}


type QGraphicsWidgetEnumEnum* = distinct cint
template Type*(_: type QGraphicsWidgetEnumEnum): untyped = 11


import ./gen_qgraphicswidget_types
export gen_qgraphicswidget_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qkeysequence_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpainterpath_types,
  ../QtGui/gen_qpalette_types,
  ./gen_qaction_types,
  ./gen_qgraphicsitem,
  ./gen_qgraphicslayout_types,
  ./gen_qgraphicssceneevent_types,
  ./gen_qstyle_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmargins_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qfont_types,
  gen_qkeysequence_types,
  gen_qpainter_types,
  gen_qpainterpath_types,
  gen_qpalette_types,
  gen_qaction_types,
  gen_qgraphicsitem,
  gen_qgraphicslayout_types,
  gen_qgraphicssceneevent_types,
  gen_qstyle_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQGraphicsWidget*{.exportc: "QGraphicsWidget", incompleteStruct.} = object

proc fcQGraphicsWidget_new(): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new".}
proc fcQGraphicsWidget_new2(parent: pointer): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new2".}
proc fcQGraphicsWidget_new3(parent: pointer, wFlags: cint): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new3".}
proc fcQGraphicsWidget_metaObject(self: pointer, ): pointer {.importc: "QGraphicsWidget_metaObject".}
proc fcQGraphicsWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWidget_metacast".}
proc fcQGraphicsWidget_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsWidget_tr".}
proc fcQGraphicsWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsWidget_trUtf8".}
proc fcQGraphicsWidget_layout(self: pointer, ): pointer {.importc: "QGraphicsWidget_layout".}
proc fcQGraphicsWidget_setLayout(self: pointer, layout: pointer): void {.importc: "QGraphicsWidget_setLayout".}
proc fcQGraphicsWidget_adjustSize(self: pointer, ): void {.importc: "QGraphicsWidget_adjustSize".}
proc fcQGraphicsWidget_layoutDirection(self: pointer, ): cint {.importc: "QGraphicsWidget_layoutDirection".}
proc fcQGraphicsWidget_setLayoutDirection(self: pointer, direction: cint): void {.importc: "QGraphicsWidget_setLayoutDirection".}
proc fcQGraphicsWidget_unsetLayoutDirection(self: pointer, ): void {.importc: "QGraphicsWidget_unsetLayoutDirection".}
proc fcQGraphicsWidget_style(self: pointer, ): pointer {.importc: "QGraphicsWidget_style".}
proc fcQGraphicsWidget_setStyle(self: pointer, style: pointer): void {.importc: "QGraphicsWidget_setStyle".}
proc fcQGraphicsWidget_font(self: pointer, ): pointer {.importc: "QGraphicsWidget_font".}
proc fcQGraphicsWidget_setFont(self: pointer, font: pointer): void {.importc: "QGraphicsWidget_setFont".}
proc fcQGraphicsWidget_palette(self: pointer, ): pointer {.importc: "QGraphicsWidget_palette".}
proc fcQGraphicsWidget_setPalette(self: pointer, palette: pointer): void {.importc: "QGraphicsWidget_setPalette".}
proc fcQGraphicsWidget_autoFillBackground(self: pointer, ): bool {.importc: "QGraphicsWidget_autoFillBackground".}
proc fcQGraphicsWidget_setAutoFillBackground(self: pointer, enabled: bool): void {.importc: "QGraphicsWidget_setAutoFillBackground".}
proc fcQGraphicsWidget_resize(self: pointer, size: pointer): void {.importc: "QGraphicsWidget_resize".}
proc fcQGraphicsWidget_resize2(self: pointer, w: float64, h: float64): void {.importc: "QGraphicsWidget_resize2".}
proc fcQGraphicsWidget_size(self: pointer, ): pointer {.importc: "QGraphicsWidget_size".}
proc fcQGraphicsWidget_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsWidget_setGeometry".}
proc fcQGraphicsWidget_setGeometry2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsWidget_setGeometry2".}
proc fcQGraphicsWidget_rect(self: pointer, ): pointer {.importc: "QGraphicsWidget_rect".}
proc fcQGraphicsWidget_setContentsMargins(self: pointer, left: float64, top: float64, right: float64, bottom: float64): void {.importc: "QGraphicsWidget_setContentsMargins".}
proc fcQGraphicsWidget_setContentsMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QGraphicsWidget_setContentsMarginsWithMargins".}
proc fcQGraphicsWidget_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsWidget_getContentsMargins".}
proc fcQGraphicsWidget_setWindowFrameMargins(self: pointer, left: float64, top: float64, right: float64, bottom: float64): void {.importc: "QGraphicsWidget_setWindowFrameMargins".}
proc fcQGraphicsWidget_setWindowFrameMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QGraphicsWidget_setWindowFrameMarginsWithMargins".}
proc fcQGraphicsWidget_getWindowFrameMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsWidget_getWindowFrameMargins".}
proc fcQGraphicsWidget_unsetWindowFrameMargins(self: pointer, ): void {.importc: "QGraphicsWidget_unsetWindowFrameMargins".}
proc fcQGraphicsWidget_windowFrameGeometry(self: pointer, ): pointer {.importc: "QGraphicsWidget_windowFrameGeometry".}
proc fcQGraphicsWidget_windowFrameRect(self: pointer, ): pointer {.importc: "QGraphicsWidget_windowFrameRect".}
proc fcQGraphicsWidget_windowFlags(self: pointer, ): cint {.importc: "QGraphicsWidget_windowFlags".}
proc fcQGraphicsWidget_windowType(self: pointer, ): cint {.importc: "QGraphicsWidget_windowType".}
proc fcQGraphicsWidget_setWindowFlags(self: pointer, wFlags: cint): void {.importc: "QGraphicsWidget_setWindowFlags".}
proc fcQGraphicsWidget_isActiveWindow(self: pointer, ): bool {.importc: "QGraphicsWidget_isActiveWindow".}
proc fcQGraphicsWidget_setWindowTitle(self: pointer, title: struct_miqt_string): void {.importc: "QGraphicsWidget_setWindowTitle".}
proc fcQGraphicsWidget_windowTitle(self: pointer, ): struct_miqt_string {.importc: "QGraphicsWidget_windowTitle".}
proc fcQGraphicsWidget_focusPolicy(self: pointer, ): cint {.importc: "QGraphicsWidget_focusPolicy".}
proc fcQGraphicsWidget_setFocusPolicy(self: pointer, policy: cint): void {.importc: "QGraphicsWidget_setFocusPolicy".}
proc fcQGraphicsWidget_setTabOrder(first: pointer, second: pointer): void {.importc: "QGraphicsWidget_setTabOrder".}
proc fcQGraphicsWidget_focusWidget(self: pointer, ): pointer {.importc: "QGraphicsWidget_focusWidget".}
proc fcQGraphicsWidget_grabShortcut(self: pointer, sequence: pointer): cint {.importc: "QGraphicsWidget_grabShortcut".}
proc fcQGraphicsWidget_releaseShortcut(self: pointer, id: cint): void {.importc: "QGraphicsWidget_releaseShortcut".}
proc fcQGraphicsWidget_setShortcutEnabled(self: pointer, id: cint): void {.importc: "QGraphicsWidget_setShortcutEnabled".}
proc fcQGraphicsWidget_setShortcutAutoRepeat(self: pointer, id: cint): void {.importc: "QGraphicsWidget_setShortcutAutoRepeat".}
proc fcQGraphicsWidget_addAction(self: pointer, action: pointer): void {.importc: "QGraphicsWidget_addAction".}
proc fcQGraphicsWidget_addActions(self: pointer, actions: struct_miqt_array): void {.importc: "QGraphicsWidget_addActions".}
proc fcQGraphicsWidget_insertActions(self: pointer, before: pointer, actions: struct_miqt_array): void {.importc: "QGraphicsWidget_insertActions".}
proc fcQGraphicsWidget_insertAction(self: pointer, before: pointer, action: pointer): void {.importc: "QGraphicsWidget_insertAction".}
proc fcQGraphicsWidget_removeAction(self: pointer, action: pointer): void {.importc: "QGraphicsWidget_removeAction".}
proc fcQGraphicsWidget_actions(self: pointer, ): struct_miqt_array {.importc: "QGraphicsWidget_actions".}
proc fcQGraphicsWidget_setAttribute(self: pointer, attribute: cint): void {.importc: "QGraphicsWidget_setAttribute".}
proc fcQGraphicsWidget_testAttribute(self: pointer, attribute: cint): bool {.importc: "QGraphicsWidget_testAttribute".}
proc fcQGraphicsWidget_typeX(self: pointer, ): cint {.importc: "QGraphicsWidget_type".}
proc fcQGraphicsWidget_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWidget_paint".}
proc fcQGraphicsWidget_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWidget_paintWindowFrame".}
proc fcQGraphicsWidget_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsWidget_boundingRect".}
proc fcQGraphicsWidget_shape(self: pointer, ): pointer {.importc: "QGraphicsWidget_shape".}
proc fcQGraphicsWidget_geometryChanged(self: pointer, ): void {.importc: "QGraphicsWidget_geometryChanged".}
proc fcQGraphicsWidget_connect_geometryChanged(self: pointer, slot: int) {.importc: "QGraphicsWidget_connect_geometryChanged".}
proc fcQGraphicsWidget_layoutChanged(self: pointer, ): void {.importc: "QGraphicsWidget_layoutChanged".}
proc fcQGraphicsWidget_connect_layoutChanged(self: pointer, slot: int) {.importc: "QGraphicsWidget_connect_layoutChanged".}
proc fcQGraphicsWidget_close(self: pointer, ): bool {.importc: "QGraphicsWidget_close".}
proc fcQGraphicsWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsWidget_tr2".}
proc fcQGraphicsWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsWidget_tr3".}
proc fcQGraphicsWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsWidget_trUtf82".}
proc fcQGraphicsWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsWidget_trUtf83".}
proc fcQGraphicsWidget_grabShortcut2(self: pointer, sequence: pointer, context: cint): cint {.importc: "QGraphicsWidget_grabShortcut2".}
proc fcQGraphicsWidget_setShortcutEnabled2(self: pointer, id: cint, enabled: bool): void {.importc: "QGraphicsWidget_setShortcutEnabled2".}
proc fcQGraphicsWidget_setShortcutAutoRepeat2(self: pointer, id: cint, enabled: bool): void {.importc: "QGraphicsWidget_setShortcutAutoRepeat2".}
proc fcQGraphicsWidget_setAttribute2(self: pointer, attribute: cint, on: bool): void {.importc: "QGraphicsWidget_setAttribute2".}
proc fQGraphicsWidget_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsWidget_virtualbase_setGeometry".}
proc fcQGraphicsWidget_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_setGeometry".}
proc fQGraphicsWidget_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsWidget_virtualbase_getContentsMargins".}
proc fcQGraphicsWidget_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_getContentsMargins".}
proc fQGraphicsWidget_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsWidget_virtualbase_type".}
proc fcQGraphicsWidget_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_type".}
proc fQGraphicsWidget_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsWidget_virtualbase_paint".}
proc fcQGraphicsWidget_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_paint".}
proc fQGraphicsWidget_virtualbase_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsWidget_virtualbase_paintWindowFrame".}
proc fcQGraphicsWidget_override_virtual_paintWindowFrame(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_paintWindowFrame".}
proc fQGraphicsWidget_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsWidget_virtualbase_boundingRect".}
proc fcQGraphicsWidget_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_boundingRect".}
proc fQGraphicsWidget_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsWidget_virtualbase_shape".}
proc fcQGraphicsWidget_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_shape".}
proc fQGraphicsWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QGraphicsWidget_virtualbase_initStyleOption".}
proc fcQGraphicsWidget_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_initStyleOption".}
proc fQGraphicsWidget_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsWidget_virtualbase_sizeHint".}
proc fcQGraphicsWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_sizeHint".}
proc fQGraphicsWidget_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsWidget_virtualbase_updateGeometry".}
proc fcQGraphicsWidget_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_updateGeometry".}
proc fQGraphicsWidget_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsWidget_virtualbase_itemChange".}
proc fcQGraphicsWidget_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_itemChange".}
proc fQGraphicsWidget_virtualbase_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer{.importc: "QGraphicsWidget_virtualbase_propertyChange".}
proc fcQGraphicsWidget_override_virtual_propertyChange(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_propertyChange".}
proc fQGraphicsWidget_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsWidget_virtualbase_sceneEvent".}
proc fcQGraphicsWidget_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_sceneEvent".}
proc fQGraphicsWidget_virtualbase_windowFrameEvent(self: pointer, e: pointer): bool{.importc: "QGraphicsWidget_virtualbase_windowFrameEvent".}
proc fcQGraphicsWidget_override_virtual_windowFrameEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_windowFrameEvent".}
proc fQGraphicsWidget_virtualbase_windowFrameSectionAt(self: pointer, pos: pointer): cint{.importc: "QGraphicsWidget_virtualbase_windowFrameSectionAt".}
proc fcQGraphicsWidget_override_virtual_windowFrameSectionAt(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_windowFrameSectionAt".}
proc fQGraphicsWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsWidget_virtualbase_event".}
proc fcQGraphicsWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_event".}
proc fQGraphicsWidget_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_changeEvent".}
proc fcQGraphicsWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_changeEvent".}
proc fQGraphicsWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_closeEvent".}
proc fcQGraphicsWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_closeEvent".}
proc fQGraphicsWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_focusInEvent".}
proc fcQGraphicsWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_focusInEvent".}
proc fQGraphicsWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QGraphicsWidget_virtualbase_focusNextPrevChild".}
proc fcQGraphicsWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_focusNextPrevChild".}
proc fQGraphicsWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_focusOutEvent".}
proc fcQGraphicsWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_focusOutEvent".}
proc fQGraphicsWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_hideEvent".}
proc fcQGraphicsWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_hideEvent".}
proc fQGraphicsWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_moveEvent".}
proc fcQGraphicsWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_moveEvent".}
proc fQGraphicsWidget_virtualbase_polishEvent(self: pointer, ): void{.importc: "QGraphicsWidget_virtualbase_polishEvent".}
proc fcQGraphicsWidget_override_virtual_polishEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_polishEvent".}
proc fQGraphicsWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_resizeEvent".}
proc fcQGraphicsWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_resizeEvent".}
proc fQGraphicsWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_showEvent".}
proc fcQGraphicsWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_showEvent".}
proc fQGraphicsWidget_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_hoverMoveEvent".}
proc fcQGraphicsWidget_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_hoverMoveEvent".}
proc fQGraphicsWidget_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsWidget_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_hoverLeaveEvent".}
proc fQGraphicsWidget_virtualbase_grabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_grabMouseEvent".}
proc fcQGraphicsWidget_override_virtual_grabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_grabMouseEvent".}
proc fQGraphicsWidget_virtualbase_ungrabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_ungrabMouseEvent".}
proc fcQGraphicsWidget_override_virtual_ungrabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_ungrabMouseEvent".}
proc fQGraphicsWidget_virtualbase_grabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_grabKeyboardEvent".}
proc fcQGraphicsWidget_override_virtual_grabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_grabKeyboardEvent".}
proc fQGraphicsWidget_virtualbase_ungrabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_ungrabKeyboardEvent".}
proc fcQGraphicsWidget_override_virtual_ungrabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_ungrabKeyboardEvent".}
proc fQGraphicsWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsWidget_virtualbase_eventFilter".}
proc fcQGraphicsWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_eventFilter".}
proc fQGraphicsWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_timerEvent".}
proc fcQGraphicsWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_timerEvent".}
proc fQGraphicsWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_childEvent".}
proc fcQGraphicsWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_childEvent".}
proc fQGraphicsWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_customEvent".}
proc fcQGraphicsWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_customEvent".}
proc fQGraphicsWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsWidget_virtualbase_connectNotify".}
proc fcQGraphicsWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_connectNotify".}
proc fQGraphicsWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsWidget_virtualbase_disconnectNotify".}
proc fcQGraphicsWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_disconnectNotify".}
proc fQGraphicsWidget_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsWidget_virtualbase_advance".}
proc fcQGraphicsWidget_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_advance".}
proc fQGraphicsWidget_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsWidget_virtualbase_contains".}
proc fcQGraphicsWidget_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_contains".}
proc fQGraphicsWidget_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsWidget_virtualbase_collidesWithItem".}
proc fcQGraphicsWidget_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_collidesWithItem".}
proc fQGraphicsWidget_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsWidget_virtualbase_collidesWithPath".}
proc fcQGraphicsWidget_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_collidesWithPath".}
proc fQGraphicsWidget_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsWidget_virtualbase_isObscuredBy".}
proc fcQGraphicsWidget_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_isObscuredBy".}
proc fQGraphicsWidget_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsWidget_virtualbase_opaqueArea".}
proc fcQGraphicsWidget_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_opaqueArea".}
proc fQGraphicsWidget_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsWidget_virtualbase_sceneEventFilter".}
proc fcQGraphicsWidget_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_sceneEventFilter".}
proc fQGraphicsWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_contextMenuEvent".}
proc fcQGraphicsWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_contextMenuEvent".}
proc fQGraphicsWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_dragEnterEvent".}
proc fcQGraphicsWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_dragEnterEvent".}
proc fQGraphicsWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_dragLeaveEvent".}
proc fcQGraphicsWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_dragLeaveEvent".}
proc fQGraphicsWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_dragMoveEvent".}
proc fcQGraphicsWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_dragMoveEvent".}
proc fQGraphicsWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_dropEvent".}
proc fcQGraphicsWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_dropEvent".}
proc fQGraphicsWidget_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_hoverEnterEvent".}
proc fcQGraphicsWidget_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_hoverEnterEvent".}
proc fQGraphicsWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_keyPressEvent".}
proc fcQGraphicsWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_keyPressEvent".}
proc fQGraphicsWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_keyReleaseEvent".}
proc fcQGraphicsWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_keyReleaseEvent".}
proc fQGraphicsWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_mousePressEvent".}
proc fcQGraphicsWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_mousePressEvent".}
proc fQGraphicsWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_mouseMoveEvent".}
proc fcQGraphicsWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_mouseMoveEvent".}
proc fQGraphicsWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_mouseReleaseEvent".}
proc fQGraphicsWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_wheelEvent".}
proc fcQGraphicsWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_wheelEvent".}
proc fQGraphicsWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_inputMethodEvent".}
proc fcQGraphicsWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_inputMethodEvent".}
proc fQGraphicsWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsWidget_virtualbase_inputMethodQuery".}
proc fcQGraphicsWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_inputMethodQuery".}
proc fQGraphicsWidget_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsWidget_virtualbase_supportsExtension".}
proc fcQGraphicsWidget_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_supportsExtension".}
proc fQGraphicsWidget_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsWidget_virtualbase_setExtension".}
proc fcQGraphicsWidget_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_setExtension".}
proc fQGraphicsWidget_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsWidget_virtualbase_extension".}
proc fcQGraphicsWidget_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_extension".}
proc fcQGraphicsWidget_delete(self: pointer) {.importc: "QGraphicsWidget_delete".}


func init*(T: type gen_qgraphicswidget_types.QGraphicsWidget, h: ptr cQGraphicsWidget): gen_qgraphicswidget_types.QGraphicsWidget =
  T(h: h)
proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qgraphicswidget_types.QGraphicsWidget =
  gen_qgraphicswidget_types.QGraphicsWidget.init(fcQGraphicsWidget_new())

proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicswidget_types.QGraphicsWidget =
  gen_qgraphicswidget_types.QGraphicsWidget.init(fcQGraphicsWidget_new2(parent.h))

proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget, parent: gen_qgraphicsitem_types.QGraphicsItem, wFlags: cint): gen_qgraphicswidget_types.QGraphicsWidget =
  gen_qgraphicswidget_types.QGraphicsWidget.init(fcQGraphicsWidget_new3(parent.h, cint(wFlags)))

proc metaObject*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWidget_metaObject(self.h))

proc metacast*(self: gen_qgraphicswidget_types.QGraphicsWidget, param1: cstring): pointer =
  fcQGraphicsWidget_metacast(self.h, param1)

proc tr*(_: type gen_qgraphicswidget_types.QGraphicsWidget, s: cstring): string =
  let v_ms = fcQGraphicsWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicswidget_types.QGraphicsWidget, s: cstring): string =
  let v_ms = fcQGraphicsWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc layout*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qgraphicslayout_types.QGraphicsLayout =
  gen_qgraphicslayout_types.QGraphicsLayout(h: fcQGraphicsWidget_layout(self.h))

proc setLayout*(self: gen_qgraphicswidget_types.QGraphicsWidget, layout: gen_qgraphicslayout_types.QGraphicsLayout): void =
  fcQGraphicsWidget_setLayout(self.h, layout.h)

proc adjustSize*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_adjustSize(self.h)

proc layoutDirection*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): cint =
  cint(fcQGraphicsWidget_layoutDirection(self.h))

proc setLayoutDirection*(self: gen_qgraphicswidget_types.QGraphicsWidget, direction: cint): void =
  fcQGraphicsWidget_setLayoutDirection(self.h, cint(direction))

proc unsetLayoutDirection*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_unsetLayoutDirection(self.h)

proc style*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQGraphicsWidget_style(self.h))

proc setStyle*(self: gen_qgraphicswidget_types.QGraphicsWidget, style: gen_qstyle_types.QStyle): void =
  fcQGraphicsWidget_setStyle(self.h, style.h)

proc font*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQGraphicsWidget_font(self.h))

proc setFont*(self: gen_qgraphicswidget_types.QGraphicsWidget, font: gen_qfont_types.QFont): void =
  fcQGraphicsWidget_setFont(self.h, font.h)

proc palette*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQGraphicsWidget_palette(self.h))

proc setPalette*(self: gen_qgraphicswidget_types.QGraphicsWidget, palette: gen_qpalette_types.QPalette): void =
  fcQGraphicsWidget_setPalette(self.h, palette.h)

proc autoFillBackground*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): bool =
  fcQGraphicsWidget_autoFillBackground(self.h)

proc setAutoFillBackground*(self: gen_qgraphicswidget_types.QGraphicsWidget, enabled: bool): void =
  fcQGraphicsWidget_setAutoFillBackground(self.h, enabled)

proc resize*(self: gen_qgraphicswidget_types.QGraphicsWidget, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsWidget_resize(self.h, size.h)

proc resize*(self: gen_qgraphicswidget_types.QGraphicsWidget, w: float64, h: float64): void =
  fcQGraphicsWidget_resize2(self.h, w, h)

proc size*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsWidget_size(self.h))

proc setGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsWidget_setGeometry(self.h, rect.h)

proc setGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsWidget_setGeometry2(self.h, x, y, w, h)

proc rect*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWidget_rect(self.h))

proc setContentsMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget, left: float64, top: float64, right: float64, bottom: float64): void =
  fcQGraphicsWidget_setContentsMargins(self.h, left, top, right, bottom)

proc setContentsMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget, margins: gen_qmargins_types.QMarginsF): void =
  fcQGraphicsWidget_setContentsMarginsWithMargins(self.h, margins.h)

proc getContentsMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsWidget_getContentsMargins(self.h, left, top, right, bottom)

proc setWindowFrameMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget, left: float64, top: float64, right: float64, bottom: float64): void =
  fcQGraphicsWidget_setWindowFrameMargins(self.h, left, top, right, bottom)

proc setWindowFrameMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget, margins: gen_qmargins_types.QMarginsF): void =
  fcQGraphicsWidget_setWindowFrameMarginsWithMargins(self.h, margins.h)

proc getWindowFrameMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsWidget_getWindowFrameMargins(self.h, left, top, right, bottom)

proc unsetWindowFrameMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_unsetWindowFrameMargins(self.h)

proc windowFrameGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWidget_windowFrameGeometry(self.h))

proc windowFrameRect*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWidget_windowFrameRect(self.h))

proc windowFlags*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): cint =
  cint(fcQGraphicsWidget_windowFlags(self.h))

proc windowType*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): cint =
  cint(fcQGraphicsWidget_windowType(self.h))

proc setWindowFlags*(self: gen_qgraphicswidget_types.QGraphicsWidget, wFlags: cint): void =
  fcQGraphicsWidget_setWindowFlags(self.h, cint(wFlags))

proc isActiveWindow*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): bool =
  fcQGraphicsWidget_isActiveWindow(self.h)

proc setWindowTitle*(self: gen_qgraphicswidget_types.QGraphicsWidget, title: string): void =
  fcQGraphicsWidget_setWindowTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc windowTitle*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): string =
  let v_ms = fcQGraphicsWidget_windowTitle(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc focusPolicy*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): cint =
  cint(fcQGraphicsWidget_focusPolicy(self.h))

proc setFocusPolicy*(self: gen_qgraphicswidget_types.QGraphicsWidget, policy: cint): void =
  fcQGraphicsWidget_setFocusPolicy(self.h, cint(policy))

proc setTabOrder*(_: type gen_qgraphicswidget_types.QGraphicsWidget, first: gen_qgraphicswidget_types.QGraphicsWidget, second: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_setTabOrder(first.h, second.h)

proc focusWidget*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qgraphicswidget_types.QGraphicsWidget =
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsWidget_focusWidget(self.h))

proc grabShortcut*(self: gen_qgraphicswidget_types.QGraphicsWidget, sequence: gen_qkeysequence_types.QKeySequence): cint =
  fcQGraphicsWidget_grabShortcut(self.h, sequence.h)

proc releaseShortcut*(self: gen_qgraphicswidget_types.QGraphicsWidget, id: cint): void =
  fcQGraphicsWidget_releaseShortcut(self.h, id)

proc setShortcutEnabled*(self: gen_qgraphicswidget_types.QGraphicsWidget, id: cint): void =
  fcQGraphicsWidget_setShortcutEnabled(self.h, id)

proc setShortcutAutoRepeat*(self: gen_qgraphicswidget_types.QGraphicsWidget, id: cint): void =
  fcQGraphicsWidget_setShortcutAutoRepeat(self.h, id)

proc addAction*(self: gen_qgraphicswidget_types.QGraphicsWidget, action: gen_qaction_types.QAction): void =
  fcQGraphicsWidget_addAction(self.h, action.h)

proc addActions*(self: gen_qgraphicswidget_types.QGraphicsWidget, actions: seq[gen_qaction_types.QAction]): void =
  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQGraphicsWidget_addActions(self.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertActions*(self: gen_qgraphicswidget_types.QGraphicsWidget, before: gen_qaction_types.QAction, actions: seq[gen_qaction_types.QAction]): void =
  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQGraphicsWidget_insertActions(self.h, before.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertAction*(self: gen_qgraphicswidget_types.QGraphicsWidget, before: gen_qaction_types.QAction, action: gen_qaction_types.QAction): void =
  fcQGraphicsWidget_insertAction(self.h, before.h, action.h)

proc removeAction*(self: gen_qgraphicswidget_types.QGraphicsWidget, action: gen_qaction_types.QAction): void =
  fcQGraphicsWidget_removeAction(self.h, action.h)

proc actions*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): seq[gen_qaction_types.QAction] =
  var v_ma = fcQGraphicsWidget_actions(self.h)
  var vx_ret = newSeq[gen_qaction_types.QAction](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaction_types.QAction(h: v_outCast[i])
  vx_ret

proc setAttribute*(self: gen_qgraphicswidget_types.QGraphicsWidget, attribute: cint): void =
  fcQGraphicsWidget_setAttribute(self.h, cint(attribute))

proc testAttribute*(self: gen_qgraphicswidget_types.QGraphicsWidget, attribute: cint): bool =
  fcQGraphicsWidget_testAttribute(self.h, cint(attribute))

proc typeX*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): cint =
  fcQGraphicsWidget_typeX(self.h)

proc paint*(self: gen_qgraphicswidget_types.QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWidget_paint(self.h, painter.h, option.h, widget.h)

proc paintWindowFrame*(self: gen_qgraphicswidget_types.QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWidget_paintWindowFrame(self.h, painter.h, option.h, widget.h)

proc boundingRect*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWidget_boundingRect(self.h))

proc shape*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsWidget_shape(self.h))

proc geometryChanged*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_geometryChanged(self.h)

type QGraphicsWidgetgeometryChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsWidget_geometryChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsWidgetgeometryChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ongeometryChanged*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetgeometryChangedSlot) =
  var tmp = new QGraphicsWidgetgeometryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_connect_geometryChanged(self.h, cast[int](addr tmp[]))

proc layoutChanged*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_layoutChanged(self.h)

type QGraphicsWidgetlayoutChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsWidget_layoutChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsWidgetlayoutChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onlayoutChanged*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetlayoutChangedSlot) =
  var tmp = new QGraphicsWidgetlayoutChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_connect_layoutChanged(self.h, cast[int](addr tmp[]))

proc close*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): bool =
  fcQGraphicsWidget_close(self.h)

proc tr*(_: type gen_qgraphicswidget_types.QGraphicsWidget, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicswidget_types.QGraphicsWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicswidget_types.QGraphicsWidget, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicswidget_types.QGraphicsWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc grabShortcut*(self: gen_qgraphicswidget_types.QGraphicsWidget, sequence: gen_qkeysequence_types.QKeySequence, context: cint): cint =
  fcQGraphicsWidget_grabShortcut2(self.h, sequence.h, cint(context))

proc setShortcutEnabled*(self: gen_qgraphicswidget_types.QGraphicsWidget, id: cint, enabled: bool): void =
  fcQGraphicsWidget_setShortcutEnabled2(self.h, id, enabled)

proc setShortcutAutoRepeat*(self: gen_qgraphicswidget_types.QGraphicsWidget, id: cint, enabled: bool): void =
  fcQGraphicsWidget_setShortcutAutoRepeat2(self.h, id, enabled)

proc setAttribute*(self: gen_qgraphicswidget_types.QGraphicsWidget, attribute: cint, on: bool): void =
  fcQGraphicsWidget_setAttribute2(self.h, cint(attribute), on)

proc QGraphicsWidgetsetGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, rect: gen_qrect_types.QRectF): void =
  fQGraphicsWidget_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsWidgetsetGeometryProc* = proc(rect: gen_qrect_types.QRectF): void
proc onsetGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetsetGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_setGeometry(self: ptr cQGraphicsWidget, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_setGeometry ".} =
  var nimfunc = cast[ptr QGraphicsWidgetsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rect)


  nimfunc[](slotval1)
proc QGraphicsWidgetgetContentsMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fQGraphicsWidget_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsWidgetgetContentsMarginsProc* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetgetContentsMarginsProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetgetContentsMarginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_getContentsMargins(self: ptr cQGraphicsWidget, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsWidget_getContentsMargins ".} =
  var nimfunc = cast[ptr QGraphicsWidgetgetContentsMarginsProc](cast[pointer](slot))
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QGraphicsWidgettypeX*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): cint =
  fQGraphicsWidget_virtualbase_type(self.h)

type QGraphicsWidgettypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgettypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgettypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_type(self: ptr cQGraphicsWidget, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsWidget_type ".} =
  var nimfunc = cast[ptr QGraphicsWidgettypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsWidgetpaint*(self: gen_qgraphicswidget_types.QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsWidget_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsWidgetpaintProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetpaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetpaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_paint(self: ptr cQGraphicsWidget, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_paint ".} =
  var nimfunc = cast[ptr QGraphicsWidgetpaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsWidgetpaintWindowFrame*(self: gen_qgraphicswidget_types.QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsWidget_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

type QGraphicsWidgetpaintWindowFrameProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaintWindowFrame*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetpaintWindowFrameProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetpaintWindowFrameProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_paintWindowFrame(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_paintWindowFrame(self: ptr cQGraphicsWidget, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_paintWindowFrame ".} =
  var nimfunc = cast[ptr QGraphicsWidgetpaintWindowFrameProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsWidgetboundingRect*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsWidget_virtualbase_boundingRect(self.h))

type QGraphicsWidgetboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_boundingRect(self: ptr cQGraphicsWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsWidgetboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsWidgetshape*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsWidget_virtualbase_shape(self.h))

type QGraphicsWidgetshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_shape(self: ptr cQGraphicsWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_shape ".} =
  var nimfunc = cast[ptr QGraphicsWidgetshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsWidgetinitStyleOption*(self: gen_qgraphicswidget_types.QGraphicsWidget, option: gen_qstyleoption_types.QStyleOption): void =
  fQGraphicsWidget_virtualbase_initStyleOption(self.h, option.h)

type QGraphicsWidgetinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOption): void
proc oninitStyleOption*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_initStyleOption(self: ptr cQGraphicsWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_initStyleOption ".} =
  var nimfunc = cast[ptr QGraphicsWidgetinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option)


  nimfunc[](slotval1)
proc QGraphicsWidgetsizeHint*(self: gen_qgraphicswidget_types.QGraphicsWidget, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fQGraphicsWidget_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsWidgetsizeHintProc* = proc(which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF
proc onsizeHint*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_sizeHint(self: ptr cQGraphicsWidget, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_sizeHint ".} =
  var nimfunc = cast[ptr QGraphicsWidgetsizeHintProc](cast[pointer](slot))
  let slotval1 = cint(which)

  let slotval2 = gen_qsize_types.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsWidgetupdateGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fQGraphicsWidget_virtualbase_updateGeometry(self.h)

type QGraphicsWidgetupdateGeometryProc* = proc(): void
proc onupdateGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetupdateGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetupdateGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_updateGeometry(self: ptr cQGraphicsWidget, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsWidget_updateGeometry ".} =
  var nimfunc = cast[ptr QGraphicsWidgetupdateGeometryProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsWidgetitemChange*(self: gen_qgraphicswidget_types.QGraphicsWidget, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsWidget_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsWidgetitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_itemChange(self: ptr cQGraphicsWidget, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsWidgetitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsWidgetpropertyChange*(self: gen_qgraphicswidget_types.QGraphicsWidget, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsWidget_virtualbase_propertyChange(self.h, struct_miqt_string(data: propertyName, len: csize_t(len(propertyName))), value.h))

type QGraphicsWidgetpropertyChangeProc* = proc(propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onpropertyChange*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetpropertyChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetpropertyChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_propertyChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_propertyChange(self: ptr cQGraphicsWidget, slot: int, propertyName: struct_miqt_string, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_propertyChange ".} =
  var nimfunc = cast[ptr QGraphicsWidgetpropertyChangeProc](cast[pointer](slot))
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(toOpenArrayByte(vpropertyName_ms.data, 0, int(vpropertyName_ms.len)-1))
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsWidgetsceneEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsWidget_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsWidgetsceneEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_sceneEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWidgetwindowFrameEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, e: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsWidget_virtualbase_windowFrameEvent(self.h, e.h)

type QGraphicsWidgetwindowFrameEventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onwindowFrameEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetwindowFrameEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetwindowFrameEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_windowFrameEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_windowFrameEvent(self: ptr cQGraphicsWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_windowFrameEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetwindowFrameEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWidgetwindowFrameSectionAt*(self: gen_qgraphicswidget_types.QGraphicsWidget, pos: gen_qpoint_types.QPointF): cint =
  cint(fQGraphicsWidget_virtualbase_windowFrameSectionAt(self.h, pos.h))

type QGraphicsWidgetwindowFrameSectionAtProc* = proc(pos: gen_qpoint_types.QPointF): cint
proc onwindowFrameSectionAt*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetwindowFrameSectionAtProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetwindowFrameSectionAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_windowFrameSectionAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_windowFrameSectionAt(self: ptr cQGraphicsWidget, slot: int, pos: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsWidget_windowFrameSectionAt ".} =
  var nimfunc = cast[ptr QGraphicsWidgetwindowFrameSectionAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: pos)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QGraphicsWidgetevent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsWidget_virtualbase_event(self.h, event.h)

type QGraphicsWidgeteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgeteventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_event(self: ptr cQGraphicsWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_event ".} =
  var nimfunc = cast[ptr QGraphicsWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWidgetchangeEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWidget_virtualbase_changeEvent(self.h, event.h)

type QGraphicsWidgetchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_changeEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_changeEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetcloseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QCloseEvent): void =
  fQGraphicsWidget_virtualbase_closeEvent(self.h, event.h)

type QGraphicsWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_closeEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_closeEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetfocusInEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsWidget_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_focusInEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetfocusNextPrevChild*(self: gen_qgraphicswidget_types.QGraphicsWidget, next: bool): bool =
  fQGraphicsWidget_virtualbase_focusNextPrevChild(self.h, next)

type QGraphicsWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_focusNextPrevChild(self: ptr cQGraphicsWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QGraphicsWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWidgetfocusOutEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QFocusEvent): void =
  fQGraphicsWidget_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_focusOutEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgethideEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QHideEvent): void =
  fQGraphicsWidget_virtualbase_hideEvent(self.h, event.h)

type QGraphicsWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_hideEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_hideEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetmoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void =
  fQGraphicsWidget_virtualbase_moveEvent(self.h, event.h)

type QGraphicsWidgetmoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void
proc onmoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_moveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_moveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetpolishEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fQGraphicsWidget_virtualbase_polishEvent(self.h)

type QGraphicsWidgetpolishEventProc* = proc(): void
proc onpolishEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetpolishEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetpolishEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_polishEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_polishEvent(self: ptr cQGraphicsWidget, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsWidget_polishEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetpolishEventProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsWidgetresizeEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void =
  fQGraphicsWidget_virtualbase_resizeEvent(self.h, event.h)

type QGraphicsWidgetresizeEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void
proc onresizeEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_resizeEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetshowEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QShowEvent): void =
  fQGraphicsWidget_virtualbase_showEvent(self.h, event.h)

type QGraphicsWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_showEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_showEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgethoverMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsWidget_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsWidgethoverMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgethoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgethoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_hoverMoveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgethoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgethoverLeaveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsWidget_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsWidgethoverLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgethoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgethoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_hoverLeaveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgethoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetgrabMouseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWidget_virtualbase_grabMouseEvent(self.h, event.h)

type QGraphicsWidgetgrabMouseEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ongrabMouseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetgrabMouseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetgrabMouseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_grabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_grabMouseEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_grabMouseEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetgrabMouseEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetungrabMouseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWidget_virtualbase_ungrabMouseEvent(self.h, event.h)

type QGraphicsWidgetungrabMouseEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onungrabMouseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetungrabMouseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetungrabMouseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_ungrabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_ungrabMouseEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_ungrabMouseEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetungrabMouseEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetgrabKeyboardEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWidget_virtualbase_grabKeyboardEvent(self.h, event.h)

type QGraphicsWidgetgrabKeyboardEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ongrabKeyboardEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetgrabKeyboardEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetgrabKeyboardEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_grabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_grabKeyboardEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_grabKeyboardEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetgrabKeyboardEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetungrabKeyboardEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWidget_virtualbase_ungrabKeyboardEvent(self.h, event.h)

type QGraphicsWidgetungrabKeyboardEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onungrabKeyboardEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetungrabKeyboardEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetungrabKeyboardEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_ungrabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_ungrabKeyboardEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_ungrabKeyboardEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetungrabKeyboardEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgeteventFilter*(self: gen_qgraphicswidget_types.QGraphicsWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsWidgeteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_eventFilter(self: ptr cQGraphicsWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsWidgettimerEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsWidget_virtualbase_timerEvent(self.h, event.h)

type QGraphicsWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_timerEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetchildEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsWidget_virtualbase_childEvent(self.h, event.h)

type QGraphicsWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_childEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetcustomEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWidget_virtualbase_customEvent(self.h, event.h)

type QGraphicsWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_customEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetconnectNotify*(self: gen_qgraphicswidget_types.QGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsWidget_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_connectNotify(self: ptr cQGraphicsWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsWidgetdisconnectNotify*(self: gen_qgraphicswidget_types.QGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_disconnectNotify(self: ptr cQGraphicsWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsWidgetadvance*(self: gen_qgraphicswidget_types.QGraphicsWidget, phase: cint): void =
  fQGraphicsWidget_virtualbase_advance(self.h, phase)

type QGraphicsWidgetadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_advance(self: ptr cQGraphicsWidget, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsWidget_advance ".} =
  var nimfunc = cast[ptr QGraphicsWidgetadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsWidgetcontains*(self: gen_qgraphicswidget_types.QGraphicsWidget, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsWidget_virtualbase_contains(self.h, point.h)

type QGraphicsWidgetcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_contains(self: ptr cQGraphicsWidget, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_contains ".} =
  var nimfunc = cast[ptr QGraphicsWidgetcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWidgetcollidesWithItem*(self: gen_qgraphicswidget_types.QGraphicsWidget, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsWidget_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsWidgetcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_collidesWithItem(self: ptr cQGraphicsWidget, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsWidgetcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsWidgetcollidesWithPath*(self: gen_qgraphicswidget_types.QGraphicsWidget, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsWidget_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsWidgetcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_collidesWithPath(self: ptr cQGraphicsWidget, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsWidgetcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsWidgetisObscuredBy*(self: gen_qgraphicswidget_types.QGraphicsWidget, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsWidget_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsWidgetisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_isObscuredBy(self: ptr cQGraphicsWidget, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsWidgetisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWidgetopaqueArea*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsWidget_virtualbase_opaqueArea(self.h))

type QGraphicsWidgetopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_opaqueArea(self: ptr cQGraphicsWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsWidgetopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsWidgetsceneEventFilter*(self: gen_qgraphicswidget_types.QGraphicsWidget, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsWidget_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsWidgetsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_sceneEventFilter(self: ptr cQGraphicsWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsWidgetsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsWidgetcontextMenuEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsWidgetcontextMenuEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_contextMenuEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetdragEnterEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsWidgetdragEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_dragEnterEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetdragLeaveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsWidgetdragLeaveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_dragLeaveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetdragMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsWidgetdragMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_dragMoveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetdropEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsWidget_virtualbase_dropEvent(self.h, event.h)

type QGraphicsWidgetdropEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_dropEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgethoverEnterEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsWidget_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsWidgethoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgethoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgethoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_hoverEnterEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgethoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetkeyPressEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsWidget_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_keyPressEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetkeyReleaseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QKeyEvent): void =
  fQGraphicsWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_keyReleaseEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetmousePressEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsWidget_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsWidgetmousePressEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_mousePressEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetmouseMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsWidgetmouseMoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_mouseMoveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetmouseReleaseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsWidgetmouseReleaseEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_mouseReleaseEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetmouseDoubleClickEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsWidgetmouseDoubleClickEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_mouseDoubleClickEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetwheelEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsWidget_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsWidgetwheelEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_wheelEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetinputMethodEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsWidget_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsWidgetinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_inputMethodEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWidgetinputMethodQuery*(self: gen_qgraphicswidget_types.QGraphicsWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsWidgetinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_inputMethodQuery(self: ptr cQGraphicsWidget, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsWidgetsupportsExtension*(self: gen_qgraphicswidget_types.QGraphicsWidget, extension: cint): bool =
  fQGraphicsWidget_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsWidgetsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_supportsExtension(self: ptr cQGraphicsWidget, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsWidgetsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWidgetsetExtension*(self: gen_qgraphicswidget_types.QGraphicsWidget, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsWidget_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsWidgetsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_setExtension(self: ptr cQGraphicsWidget, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsWidgetsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsWidgetextension*(self: gen_qgraphicswidget_types.QGraphicsWidget, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsWidget_virtualbase_extension(self.h, variant.h))

type QGraphicsWidgetextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsWidgetextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_extension(self: ptr cQGraphicsWidget, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_extension ".} =
  var nimfunc = cast[ptr QGraphicsWidgetextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc delete*(self: gen_qgraphicswidget_types.QGraphicsWidget) =
  fcQGraphicsWidget_delete(self.h)
