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
  ../QtGui/gen_qaction_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qkeysequence_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpainterpath_types,
  ../QtGui/gen_qpalette_types,
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
  gen_qaction_types,
  gen_qevent_types,
  gen_qfont_types,
  gen_qkeysequence_types,
  gen_qpainter_types,
  gen_qpainterpath_types,
  gen_qpalette_types,
  gen_qgraphicsitem,
  gen_qgraphicslayout_types,
  gen_qgraphicssceneevent_types,
  gen_qstyle_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQGraphicsWidget*{.exportc: "QGraphicsWidget", incompleteStruct.} = object

proc fcQGraphicsWidget_metaObject(self: pointer, ): pointer {.importc: "QGraphicsWidget_metaObject".}
proc fcQGraphicsWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWidget_metacast".}
proc fcQGraphicsWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsWidget_metacall".}
proc fcQGraphicsWidget_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsWidget_tr".}
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
proc fcQGraphicsWidget_connect_geometryChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWidget_connect_geometryChanged".}
proc fcQGraphicsWidget_layoutChanged(self: pointer, ): void {.importc: "QGraphicsWidget_layoutChanged".}
proc fcQGraphicsWidget_connect_layoutChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWidget_connect_layoutChanged".}
proc fcQGraphicsWidget_close(self: pointer, ): bool {.importc: "QGraphicsWidget_close".}
proc fcQGraphicsWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsWidget_tr2".}
proc fcQGraphicsWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsWidget_tr3".}
proc fcQGraphicsWidget_grabShortcut2(self: pointer, sequence: pointer, context: cint): cint {.importc: "QGraphicsWidget_grabShortcut2".}
proc fcQGraphicsWidget_setShortcutEnabled2(self: pointer, id: cint, enabled: bool): void {.importc: "QGraphicsWidget_setShortcutEnabled2".}
proc fcQGraphicsWidget_setShortcutAutoRepeat2(self: pointer, id: cint, enabled: bool): void {.importc: "QGraphicsWidget_setShortcutAutoRepeat2".}
proc fcQGraphicsWidget_setAttribute2(self: pointer, attribute: cint, on: bool): void {.importc: "QGraphicsWidget_setAttribute2".}
type cQGraphicsWidgetVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsWidgetVTable, self: ptr cQGraphicsWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  getContentsMargins*: proc(vtbl, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  paintWindowFrame*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, which: cint, constraint: pointer): pointer {.cdecl, raises: [], gcsafe.}
  updateGeometry*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  propertyChange*: proc(vtbl, self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowFrameEvent*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowFrameSectionAt*: proc(vtbl, self: pointer, pos: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  polishEvent*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  grabMouseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  ungrabMouseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  grabKeyboardEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  ungrabKeyboardEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  advance*: proc(vtbl, self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(vtbl, self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(vtbl, self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(vtbl, self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsWidget_virtualbase_metaObject".}
proc fcQGraphicsWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWidget_virtualbase_metacast".}
proc fcQGraphicsWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsWidget_virtualbase_metacall".}
proc fcQGraphicsWidget_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsWidget_virtualbase_setGeometry".}
proc fcQGraphicsWidget_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsWidget_virtualbase_getContentsMargins".}
proc fcQGraphicsWidget_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsWidget_virtualbase_type".}
proc fcQGraphicsWidget_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWidget_virtualbase_paint".}
proc fcQGraphicsWidget_virtualbase_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWidget_virtualbase_paintWindowFrame".}
proc fcQGraphicsWidget_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsWidget_virtualbase_boundingRect".}
proc fcQGraphicsWidget_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsWidget_virtualbase_shape".}
proc fcQGraphicsWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QGraphicsWidget_virtualbase_initStyleOption".}
proc fcQGraphicsWidget_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsWidget_virtualbase_sizeHint".}
proc fcQGraphicsWidget_virtualbase_updateGeometry(self: pointer, ): void {.importc: "QGraphicsWidget_virtualbase_updateGeometry".}
proc fcQGraphicsWidget_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsWidget_virtualbase_itemChange".}
proc fcQGraphicsWidget_virtualbase_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.importc: "QGraphicsWidget_virtualbase_propertyChange".}
proc fcQGraphicsWidget_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsWidget_virtualbase_sceneEvent".}
proc fcQGraphicsWidget_virtualbase_windowFrameEvent(self: pointer, e: pointer): bool {.importc: "QGraphicsWidget_virtualbase_windowFrameEvent".}
proc fcQGraphicsWidget_virtualbase_windowFrameSectionAt(self: pointer, pos: pointer): cint {.importc: "QGraphicsWidget_virtualbase_windowFrameSectionAt".}
proc fcQGraphicsWidget_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsWidget_virtualbase_event".}
proc fcQGraphicsWidget_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_changeEvent".}
proc fcQGraphicsWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_closeEvent".}
proc fcQGraphicsWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_focusInEvent".}
proc fcQGraphicsWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QGraphicsWidget_virtualbase_focusNextPrevChild".}
proc fcQGraphicsWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_focusOutEvent".}
proc fcQGraphicsWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_hideEvent".}
proc fcQGraphicsWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_moveEvent".}
proc fcQGraphicsWidget_virtualbase_polishEvent(self: pointer, ): void {.importc: "QGraphicsWidget_virtualbase_polishEvent".}
proc fcQGraphicsWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_resizeEvent".}
proc fcQGraphicsWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_showEvent".}
proc fcQGraphicsWidget_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_hoverMoveEvent".}
proc fcQGraphicsWidget_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsWidget_virtualbase_grabMouseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_grabMouseEvent".}
proc fcQGraphicsWidget_virtualbase_ungrabMouseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_ungrabMouseEvent".}
proc fcQGraphicsWidget_virtualbase_grabKeyboardEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_grabKeyboardEvent".}
proc fcQGraphicsWidget_virtualbase_ungrabKeyboardEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_ungrabKeyboardEvent".}
proc fcQGraphicsWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsWidget_virtualbase_eventFilter".}
proc fcQGraphicsWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_timerEvent".}
proc fcQGraphicsWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_childEvent".}
proc fcQGraphicsWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_customEvent".}
proc fcQGraphicsWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsWidget_virtualbase_connectNotify".}
proc fcQGraphicsWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsWidget_virtualbase_disconnectNotify".}
proc fcQGraphicsWidget_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsWidget_virtualbase_advance".}
proc fcQGraphicsWidget_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsWidget_virtualbase_contains".}
proc fcQGraphicsWidget_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsWidget_virtualbase_collidesWithItem".}
proc fcQGraphicsWidget_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsWidget_virtualbase_collidesWithPath".}
proc fcQGraphicsWidget_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsWidget_virtualbase_isObscuredBy".}
proc fcQGraphicsWidget_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsWidget_virtualbase_opaqueArea".}
proc fcQGraphicsWidget_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsWidget_virtualbase_sceneEventFilter".}
proc fcQGraphicsWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_contextMenuEvent".}
proc fcQGraphicsWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_dragEnterEvent".}
proc fcQGraphicsWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_dragLeaveEvent".}
proc fcQGraphicsWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_dragMoveEvent".}
proc fcQGraphicsWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_dropEvent".}
proc fcQGraphicsWidget_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_hoverEnterEvent".}
proc fcQGraphicsWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_keyPressEvent".}
proc fcQGraphicsWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_keyReleaseEvent".}
proc fcQGraphicsWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_mousePressEvent".}
proc fcQGraphicsWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_mouseMoveEvent".}
proc fcQGraphicsWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_wheelEvent".}
proc fcQGraphicsWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWidget_virtualbase_inputMethodEvent".}
proc fcQGraphicsWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsWidget_virtualbase_inputMethodQuery".}
proc fcQGraphicsWidget_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsWidget_virtualbase_supportsExtension".}
proc fcQGraphicsWidget_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsWidget_virtualbase_setExtension".}
proc fcQGraphicsWidget_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsWidget_virtualbase_extension".}
proc fcQGraphicsWidget_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QGraphicsWidget_virtualbase_isEmpty".}
proc fcQGraphicsWidget_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsWidget_protectedbase_updateMicroFocus".}
proc fcQGraphicsWidget_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsWidget_protectedbase_sender".}
proc fcQGraphicsWidget_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsWidget_protectedbase_senderSignalIndex".}
proc fcQGraphicsWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsWidget_protectedbase_receivers".}
proc fcQGraphicsWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsWidget_protectedbase_isSignalConnected".}
proc fcQGraphicsWidget_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsWidget_protectedbase_addToIndex".}
proc fcQGraphicsWidget_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsWidget_protectedbase_removeFromIndex".}
proc fcQGraphicsWidget_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsWidget_protectedbase_prepareGeometryChange".}
proc fcQGraphicsWidget_protectedbase_setGraphicsItem(self: pointer, item: pointer): void {.importc: "QGraphicsWidget_protectedbase_setGraphicsItem".}
proc fcQGraphicsWidget_protectedbase_setOwnedByLayout(self: pointer, ownedByLayout: bool): void {.importc: "QGraphicsWidget_protectedbase_setOwnedByLayout".}
proc fcQGraphicsWidget_new(vtbl: pointer, ): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new".}
proc fcQGraphicsWidget_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new2".}
proc fcQGraphicsWidget_new3(vtbl: pointer, parent: pointer, wFlags: cint): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new3".}
proc fcQGraphicsWidget_staticMetaObject(): pointer {.importc: "QGraphicsWidget_staticMetaObject".}
proc fcQGraphicsWidget_delete(self: pointer) {.importc: "QGraphicsWidget_delete".}

proc metaObject*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWidget_metaObject(self.h))

proc metacast*(self: gen_qgraphicswidget_types.QGraphicsWidget, param1: cstring): pointer =
  fcQGraphicsWidget_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicswidget_types.QGraphicsWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicswidget_types.QGraphicsWidget, s: cstring): string =
  let v_ms = fcQGraphicsWidget_tr(s)
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
proc miqt_exec_callback_cQGraphicsWidget_geometryChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWidgetgeometryChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsWidget_geometryChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWidgetgeometryChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ongeometryChanged*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetgeometryChangedSlot) =
  var tmp = new QGraphicsWidgetgeometryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_connect_geometryChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsWidget_geometryChanged, miqt_exec_callback_cQGraphicsWidget_geometryChanged_release)

proc layoutChanged*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_layoutChanged(self.h)

type QGraphicsWidgetlayoutChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsWidget_layoutChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWidgetlayoutChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsWidget_layoutChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWidgetlayoutChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlayoutChanged*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetlayoutChangedSlot) =
  var tmp = new QGraphicsWidgetlayoutChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_connect_layoutChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsWidget_layoutChanged, miqt_exec_callback_cQGraphicsWidget_layoutChanged_release)

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

proc grabShortcut*(self: gen_qgraphicswidget_types.QGraphicsWidget, sequence: gen_qkeysequence_types.QKeySequence, context: cint): cint =
  fcQGraphicsWidget_grabShortcut2(self.h, sequence.h, cint(context))

proc setShortcutEnabled*(self: gen_qgraphicswidget_types.QGraphicsWidget, id: cint, enabled: bool): void =
  fcQGraphicsWidget_setShortcutEnabled2(self.h, id, enabled)

proc setShortcutAutoRepeat*(self: gen_qgraphicswidget_types.QGraphicsWidget, id: cint, enabled: bool): void =
  fcQGraphicsWidget_setShortcutAutoRepeat2(self.h, id, enabled)

proc setAttribute*(self: gen_qgraphicswidget_types.QGraphicsWidget, attribute: cint, on: bool): void =
  fcQGraphicsWidget_setAttribute2(self.h, cint(attribute), on)

type QGraphicsWidgetmetaObjectProc* = proc(self: QGraphicsWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsWidgetmetacastProc* = proc(self: QGraphicsWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsWidgetmetacallProc* = proc(self: QGraphicsWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsWidgetsetGeometryProc* = proc(self: QGraphicsWidget, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsWidgetgetContentsMarginsProc* = proc(self: QGraphicsWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.raises: [], gcsafe.}
type QGraphicsWidgettypeXProc* = proc(self: QGraphicsWidget): cint {.raises: [], gcsafe.}
type QGraphicsWidgetpaintProc* = proc(self: QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsWidgetpaintWindowFrameProc* = proc(self: QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsWidgetboundingRectProc* = proc(self: QGraphicsWidget): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsWidgetshapeProc* = proc(self: QGraphicsWidget): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsWidgetinitStyleOptionProc* = proc(self: QGraphicsWidget, option: gen_qstyleoption_types.QStyleOption): void {.raises: [], gcsafe.}
type QGraphicsWidgetsizeHintProc* = proc(self: QGraphicsWidget, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.raises: [], gcsafe.}
type QGraphicsWidgetupdateGeometryProc* = proc(self: QGraphicsWidget): void {.raises: [], gcsafe.}
type QGraphicsWidgetitemChangeProc* = proc(self: QGraphicsWidget, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsWidgetpropertyChangeProc* = proc(self: QGraphicsWidget, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsWidgetsceneEventProc* = proc(self: QGraphicsWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsWidgetwindowFrameEventProc* = proc(self: QGraphicsWidget, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsWidgetwindowFrameSectionAtProc* = proc(self: QGraphicsWidget, pos: gen_qpoint_types.QPointF): cint {.raises: [], gcsafe.}
type QGraphicsWidgeteventProc* = proc(self: QGraphicsWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsWidgetchangeEventProc* = proc(self: QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetcloseEventProc* = proc(self: QGraphicsWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetfocusInEventProc* = proc(self: QGraphicsWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetfocusNextPrevChildProc* = proc(self: QGraphicsWidget, next: bool): bool {.raises: [], gcsafe.}
type QGraphicsWidgetfocusOutEventProc* = proc(self: QGraphicsWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgethideEventProc* = proc(self: QGraphicsWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetmoveEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetpolishEventProc* = proc(self: QGraphicsWidget): void {.raises: [], gcsafe.}
type QGraphicsWidgetresizeEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetshowEventProc* = proc(self: QGraphicsWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgethoverMoveEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgethoverLeaveEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetgrabMouseEventProc* = proc(self: QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetungrabMouseEventProc* = proc(self: QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetgrabKeyboardEventProc* = proc(self: QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetungrabKeyboardEventProc* = proc(self: QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgeteventFilterProc* = proc(self: QGraphicsWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsWidgettimerEventProc* = proc(self: QGraphicsWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetchildEventProc* = proc(self: QGraphicsWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetcustomEventProc* = proc(self: QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetconnectNotifyProc* = proc(self: QGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsWidgetdisconnectNotifyProc* = proc(self: QGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsWidgetadvanceProc* = proc(self: QGraphicsWidget, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsWidgetcontainsProc* = proc(self: QGraphicsWidget, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsWidgetcollidesWithItemProc* = proc(self: QGraphicsWidget, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsWidgetcollidesWithPathProc* = proc(self: QGraphicsWidget, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsWidgetisObscuredByProc* = proc(self: QGraphicsWidget, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsWidgetopaqueAreaProc* = proc(self: QGraphicsWidget): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsWidgetsceneEventFilterProc* = proc(self: QGraphicsWidget, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsWidgetcontextMenuEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetdragEnterEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetdragLeaveEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetdragMoveEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetdropEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgethoverEnterEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetkeyPressEventProc* = proc(self: QGraphicsWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetkeyReleaseEventProc* = proc(self: QGraphicsWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetmousePressEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetmouseMoveEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetmouseReleaseEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetmouseDoubleClickEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetwheelEventProc* = proc(self: QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetinputMethodEventProc* = proc(self: QGraphicsWidget, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsWidgetinputMethodQueryProc* = proc(self: QGraphicsWidget, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsWidgetsupportsExtensionProc* = proc(self: QGraphicsWidget, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsWidgetsetExtensionProc* = proc(self: QGraphicsWidget, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsWidgetextensionProc* = proc(self: QGraphicsWidget, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsWidgetisEmptyProc* = proc(self: QGraphicsWidget): bool {.raises: [], gcsafe.}
type QGraphicsWidgetVTable* = object
  vtbl: cQGraphicsWidgetVTable
  metaObject*: QGraphicsWidgetmetaObjectProc
  metacast*: QGraphicsWidgetmetacastProc
  metacall*: QGraphicsWidgetmetacallProc
  setGeometry*: QGraphicsWidgetsetGeometryProc
  getContentsMargins*: QGraphicsWidgetgetContentsMarginsProc
  typeX*: QGraphicsWidgettypeXProc
  paint*: QGraphicsWidgetpaintProc
  paintWindowFrame*: QGraphicsWidgetpaintWindowFrameProc
  boundingRect*: QGraphicsWidgetboundingRectProc
  shape*: QGraphicsWidgetshapeProc
  initStyleOption*: QGraphicsWidgetinitStyleOptionProc
  sizeHint*: QGraphicsWidgetsizeHintProc
  updateGeometry*: QGraphicsWidgetupdateGeometryProc
  itemChange*: QGraphicsWidgetitemChangeProc
  propertyChange*: QGraphicsWidgetpropertyChangeProc
  sceneEvent*: QGraphicsWidgetsceneEventProc
  windowFrameEvent*: QGraphicsWidgetwindowFrameEventProc
  windowFrameSectionAt*: QGraphicsWidgetwindowFrameSectionAtProc
  event*: QGraphicsWidgeteventProc
  changeEvent*: QGraphicsWidgetchangeEventProc
  closeEvent*: QGraphicsWidgetcloseEventProc
  focusInEvent*: QGraphicsWidgetfocusInEventProc
  focusNextPrevChild*: QGraphicsWidgetfocusNextPrevChildProc
  focusOutEvent*: QGraphicsWidgetfocusOutEventProc
  hideEvent*: QGraphicsWidgethideEventProc
  moveEvent*: QGraphicsWidgetmoveEventProc
  polishEvent*: QGraphicsWidgetpolishEventProc
  resizeEvent*: QGraphicsWidgetresizeEventProc
  showEvent*: QGraphicsWidgetshowEventProc
  hoverMoveEvent*: QGraphicsWidgethoverMoveEventProc
  hoverLeaveEvent*: QGraphicsWidgethoverLeaveEventProc
  grabMouseEvent*: QGraphicsWidgetgrabMouseEventProc
  ungrabMouseEvent*: QGraphicsWidgetungrabMouseEventProc
  grabKeyboardEvent*: QGraphicsWidgetgrabKeyboardEventProc
  ungrabKeyboardEvent*: QGraphicsWidgetungrabKeyboardEventProc
  eventFilter*: QGraphicsWidgeteventFilterProc
  timerEvent*: QGraphicsWidgettimerEventProc
  childEvent*: QGraphicsWidgetchildEventProc
  customEvent*: QGraphicsWidgetcustomEventProc
  connectNotify*: QGraphicsWidgetconnectNotifyProc
  disconnectNotify*: QGraphicsWidgetdisconnectNotifyProc
  advance*: QGraphicsWidgetadvanceProc
  contains*: QGraphicsWidgetcontainsProc
  collidesWithItem*: QGraphicsWidgetcollidesWithItemProc
  collidesWithPath*: QGraphicsWidgetcollidesWithPathProc
  isObscuredBy*: QGraphicsWidgetisObscuredByProc
  opaqueArea*: QGraphicsWidgetopaqueAreaProc
  sceneEventFilter*: QGraphicsWidgetsceneEventFilterProc
  contextMenuEvent*: QGraphicsWidgetcontextMenuEventProc
  dragEnterEvent*: QGraphicsWidgetdragEnterEventProc
  dragLeaveEvent*: QGraphicsWidgetdragLeaveEventProc
  dragMoveEvent*: QGraphicsWidgetdragMoveEventProc
  dropEvent*: QGraphicsWidgetdropEventProc
  hoverEnterEvent*: QGraphicsWidgethoverEnterEventProc
  keyPressEvent*: QGraphicsWidgetkeyPressEventProc
  keyReleaseEvent*: QGraphicsWidgetkeyReleaseEventProc
  mousePressEvent*: QGraphicsWidgetmousePressEventProc
  mouseMoveEvent*: QGraphicsWidgetmouseMoveEventProc
  mouseReleaseEvent*: QGraphicsWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsWidgetmouseDoubleClickEventProc
  wheelEvent*: QGraphicsWidgetwheelEventProc
  inputMethodEvent*: QGraphicsWidgetinputMethodEventProc
  inputMethodQuery*: QGraphicsWidgetinputMethodQueryProc
  supportsExtension*: QGraphicsWidgetsupportsExtensionProc
  setExtension*: QGraphicsWidgetsetExtensionProc
  extension*: QGraphicsWidgetextensionProc
  isEmpty*: QGraphicsWidgetisEmptyProc
proc QGraphicsWidgetmetaObject*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWidget_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsWidgetmetacast*(self: gen_qgraphicswidget_types.QGraphicsWidget, param1: cstring): pointer =
  fcQGraphicsWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsWidgetmetacall*(self: gen_qgraphicswidget_types.QGraphicsWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsWidgetsetGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsWidget_virtualbase_setGeometry(self.h, rect.h)

proc miqt_exec_callback_cQGraphicsWidget_setGeometry(vtbl: pointer, self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect)
  vtbl[].setGeometry(self, slotval1)

proc QGraphicsWidgetgetContentsMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsWidget_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

proc miqt_exec_callback_cQGraphicsWidget_getContentsMargins(vtbl: pointer, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl[].getContentsMargins(self, slotval1, slotval2, slotval3, slotval4)

proc QGraphicsWidgettypeX*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): cint =
  fcQGraphicsWidget_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsWidget_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsWidgetpaint*(self: gen_qgraphicswidget_types.QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWidget_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsWidget_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsWidgetpaintWindowFrame*(self: gen_qgraphicswidget_types.QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWidget_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsWidget_paintWindowFrame(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paintWindowFrame(self, slotval1, slotval2, slotval3)

proc QGraphicsWidgetboundingRect*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWidget_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsWidget_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsWidgetshape*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsWidget_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsWidget_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsWidgetinitStyleOption*(self: gen_qgraphicswidget_types.QGraphicsWidget, option: gen_qstyleoption_types.QStyleOption): void =
  fcQGraphicsWidget_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQGraphicsWidget_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QGraphicsWidgetsizeHint*(self: gen_qgraphicswidget_types.QGraphicsWidget, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsWidget_virtualbase_sizeHint(self.h, cint(which), constraint.h))

proc miqt_exec_callback_cQGraphicsWidget_sizeHint(vtbl: pointer, self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.h

proc QGraphicsWidgetupdateGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_virtualbase_updateGeometry(self.h)

proc miqt_exec_callback_cQGraphicsWidget_updateGeometry(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  vtbl[].updateGeometry(self)

proc QGraphicsWidgetitemChange*(self: gen_qgraphicswidget_types.QGraphicsWidget, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWidget_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsWidget_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc QGraphicsWidgetpropertyChange*(self: gen_qgraphicswidget_types.QGraphicsWidget, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWidget_virtualbase_propertyChange(self.h, struct_miqt_string(data: propertyName, len: csize_t(len(propertyName))), value.h))

proc miqt_exec_callback_cQGraphicsWidget_propertyChange(vtbl: pointer, self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(toOpenArrayByte(vpropertyName_ms.data, 0, int(vpropertyName_ms.len)-1))
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].propertyChange(self, slotval1, slotval2)
  virtualReturn.h

proc QGraphicsWidgetsceneEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWidget_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsWidgetwindowFrameEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWidget_virtualbase_windowFrameEvent(self.h, e.h)

proc miqt_exec_callback_cQGraphicsWidget_windowFrameEvent(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].windowFrameEvent(self, slotval1)
  virtualReturn

proc QGraphicsWidgetwindowFrameSectionAt*(self: gen_qgraphicswidget_types.QGraphicsWidget, pos: gen_qpoint_types.QPointF): cint =
  cint(fcQGraphicsWidget_virtualbase_windowFrameSectionAt(self.h, pos.h))

proc miqt_exec_callback_cQGraphicsWidget_windowFrameSectionAt(vtbl: pointer, self: pointer, pos: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: pos)
  var virtualReturn = vtbl[].windowFrameSectionAt(self, slotval1)
  cint(virtualReturn)

proc QGraphicsWidgetevent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWidget_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsWidgetchangeEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QGraphicsWidgetcloseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQGraphicsWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QGraphicsWidgetfocusInEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsWidgetfocusNextPrevChild*(self: gen_qgraphicswidget_types.QGraphicsWidget, next: bool): bool =
  fcQGraphicsWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQGraphicsWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QGraphicsWidgetfocusOutEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsWidgethideEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QHideEvent): void =
  fcQGraphicsWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QGraphicsWidgetmoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void =
  fcQGraphicsWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QGraphicsWidgetpolishEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_virtualbase_polishEvent(self.h)

proc miqt_exec_callback_cQGraphicsWidget_polishEvent(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  vtbl[].polishEvent(self)

proc QGraphicsWidgetresizeEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void =
  fcQGraphicsWidget_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QGraphicsWidgetshowEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QShowEvent): void =
  fcQGraphicsWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QGraphicsWidgethoverMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWidget_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsWidgethoverLeaveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWidget_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsWidgetgrabMouseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_grabMouseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_grabMouseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].grabMouseEvent(self, slotval1)

proc QGraphicsWidgetungrabMouseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_ungrabMouseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_ungrabMouseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].ungrabMouseEvent(self, slotval1)

proc QGraphicsWidgetgrabKeyboardEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_grabKeyboardEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_grabKeyboardEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].grabKeyboardEvent(self, slotval1)

proc QGraphicsWidgetungrabKeyboardEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_ungrabKeyboardEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_ungrabKeyboardEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].ungrabKeyboardEvent(self, slotval1)

proc QGraphicsWidgeteventFilter*(self: gen_qgraphicswidget_types.QGraphicsWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWidgettimerEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsWidgetchildEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsWidgetcustomEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsWidgetconnectNotify*(self: gen_qgraphicswidget_types.QGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsWidgetdisconnectNotify*(self: gen_qgraphicswidget_types.QGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc QGraphicsWidgetadvance*(self: gen_qgraphicswidget_types.QGraphicsWidget, phase: cint): void =
  fcQGraphicsWidget_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsWidget_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsWidgetcontains*(self: gen_qgraphicswidget_types.QGraphicsWidget, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsWidget_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsWidget_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsWidgetcollidesWithItem*(self: gen_qgraphicswidget_types.QGraphicsWidget, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsWidget_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsWidget_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWidgetcollidesWithPath*(self: gen_qgraphicswidget_types.QGraphicsWidget, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsWidget_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsWidget_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWidgetisObscuredBy*(self: gen_qgraphicswidget_types.QGraphicsWidget, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsWidget_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsWidget_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsWidgetopaqueArea*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsWidget_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsWidget_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsWidgetsceneEventFilter*(self: gen_qgraphicswidget_types.QGraphicsWidget, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWidget_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWidgetcontextMenuEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsWidgetdragEnterEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsWidgetdragLeaveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsWidgetdragMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsWidgetdropEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsWidgethoverEnterEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWidget_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsWidgetkeyPressEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsWidgetkeyReleaseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsWidgetmousePressEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsWidgetmouseMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsWidgetmouseReleaseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsWidgetmouseDoubleClickEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsWidgetwheelEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsWidget_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsWidgetinputMethodEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsWidget_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWidget_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsWidgetinputMethodQuery*(self: gen_qgraphicswidget_types.QGraphicsWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsWidget_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsWidgetsupportsExtension*(self: gen_qgraphicswidget_types.QGraphicsWidget, extension: cint): bool =
  fcQGraphicsWidget_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsWidget_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsWidgetsetExtension*(self: gen_qgraphicswidget_types.QGraphicsWidget, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsWidget_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsWidget_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsWidgetextension*(self: gen_qgraphicswidget_types.QGraphicsWidget, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWidget_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsWidget_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc QGraphicsWidgetisEmpty*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): bool =
  fcQGraphicsWidget_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQGraphicsWidget_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](vtbl)
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc updateMicroFocus*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_protectedbase_updateMicroFocus(self.h)

proc sender*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsWidget_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): cint =
  fcQGraphicsWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicswidget_types.QGraphicsWidget, signal: cstring): cint =
  fcQGraphicsWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicswidget_types.QGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc addToIndex*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicswidget_types.QGraphicsWidget, ): void =
  fcQGraphicsWidget_protectedbase_prepareGeometryChange(self.h)

proc setGraphicsItem*(self: gen_qgraphicswidget_types.QGraphicsWidget, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsWidget_protectedbase_setGraphicsItem(self.h, item.h)

proc setOwnedByLayout*(self: gen_qgraphicswidget_types.QGraphicsWidget, ownedByLayout: bool): void =
  fcQGraphicsWidget_protectedbase_setOwnedByLayout(self.h, ownedByLayout)

proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget,
    vtbl: ref QGraphicsWidgetVTable = nil): gen_qgraphicswidget_types.QGraphicsWidget =
  let vtbl = if vtbl == nil: new QGraphicsWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsWidgetVTable, _: ptr cQGraphicsWidget) {.cdecl.} =
    let vtbl = cast[ref QGraphicsWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsWidget_metacall
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsWidget_setGeometry
  if not isNil(vtbl.getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsWidget_getContentsMargins
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsWidget_typeX
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsWidget_paint
  if not isNil(vtbl.paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = miqt_exec_callback_cQGraphicsWidget_paintWindowFrame
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsWidget_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsWidget_shape
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsWidget_initStyleOption
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsWidget_sizeHint
  if not isNil(vtbl.updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsWidget_updateGeometry
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsWidget_itemChange
  if not isNil(vtbl.propertyChange):
    vtbl[].vtbl.propertyChange = miqt_exec_callback_cQGraphicsWidget_propertyChange
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsWidget_sceneEvent
  if not isNil(vtbl.windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = miqt_exec_callback_cQGraphicsWidget_windowFrameEvent
  if not isNil(vtbl.windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = miqt_exec_callback_cQGraphicsWidget_windowFrameSectionAt
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsWidget_event
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsWidget_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsWidget_closeEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsWidget_focusInEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsWidget_focusNextPrevChild
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsWidget_focusOutEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsWidget_hideEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsWidget_moveEvent
  if not isNil(vtbl.polishEvent):
    vtbl[].vtbl.polishEvent = miqt_exec_callback_cQGraphicsWidget_polishEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsWidget_resizeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsWidget_showEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsWidget_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsWidget_hoverLeaveEvent
  if not isNil(vtbl.grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = miqt_exec_callback_cQGraphicsWidget_grabMouseEvent
  if not isNil(vtbl.ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = miqt_exec_callback_cQGraphicsWidget_ungrabMouseEvent
  if not isNil(vtbl.grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = miqt_exec_callback_cQGraphicsWidget_grabKeyboardEvent
  if not isNil(vtbl.ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = miqt_exec_callback_cQGraphicsWidget_ungrabKeyboardEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsWidget_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsWidget_advance
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsWidget_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsWidget_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsWidget_collidesWithPath
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsWidget_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsWidget_opaqueArea
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsWidget_sceneEventFilter
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsWidget_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsWidget_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsWidget_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsWidget_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsWidget_dropEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsWidget_hoverEnterEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsWidget_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsWidget_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsWidget_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsWidget_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsWidget_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsWidget_inputMethodQuery
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsWidget_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsWidget_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsWidget_extension
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQGraphicsWidget_isEmpty
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsWidget_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsWidgetVTable = nil): gen_qgraphicswidget_types.QGraphicsWidget =
  let vtbl = if vtbl == nil: new QGraphicsWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsWidgetVTable, _: ptr cQGraphicsWidget) {.cdecl.} =
    let vtbl = cast[ref QGraphicsWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsWidget_metacall
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsWidget_setGeometry
  if not isNil(vtbl.getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsWidget_getContentsMargins
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsWidget_typeX
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsWidget_paint
  if not isNil(vtbl.paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = miqt_exec_callback_cQGraphicsWidget_paintWindowFrame
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsWidget_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsWidget_shape
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsWidget_initStyleOption
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsWidget_sizeHint
  if not isNil(vtbl.updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsWidget_updateGeometry
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsWidget_itemChange
  if not isNil(vtbl.propertyChange):
    vtbl[].vtbl.propertyChange = miqt_exec_callback_cQGraphicsWidget_propertyChange
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsWidget_sceneEvent
  if not isNil(vtbl.windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = miqt_exec_callback_cQGraphicsWidget_windowFrameEvent
  if not isNil(vtbl.windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = miqt_exec_callback_cQGraphicsWidget_windowFrameSectionAt
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsWidget_event
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsWidget_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsWidget_closeEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsWidget_focusInEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsWidget_focusNextPrevChild
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsWidget_focusOutEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsWidget_hideEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsWidget_moveEvent
  if not isNil(vtbl.polishEvent):
    vtbl[].vtbl.polishEvent = miqt_exec_callback_cQGraphicsWidget_polishEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsWidget_resizeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsWidget_showEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsWidget_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsWidget_hoverLeaveEvent
  if not isNil(vtbl.grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = miqt_exec_callback_cQGraphicsWidget_grabMouseEvent
  if not isNil(vtbl.ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = miqt_exec_callback_cQGraphicsWidget_ungrabMouseEvent
  if not isNil(vtbl.grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = miqt_exec_callback_cQGraphicsWidget_grabKeyboardEvent
  if not isNil(vtbl.ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = miqt_exec_callback_cQGraphicsWidget_ungrabKeyboardEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsWidget_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsWidget_advance
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsWidget_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsWidget_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsWidget_collidesWithPath
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsWidget_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsWidget_opaqueArea
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsWidget_sceneEventFilter
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsWidget_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsWidget_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsWidget_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsWidget_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsWidget_dropEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsWidget_hoverEnterEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsWidget_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsWidget_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsWidget_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsWidget_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsWidget_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsWidget_inputMethodQuery
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsWidget_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsWidget_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsWidget_extension
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQGraphicsWidget_isEmpty
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsWidget_new2(addr(vtbl[]), parent.h))

proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem, wFlags: cint,
    vtbl: ref QGraphicsWidgetVTable = nil): gen_qgraphicswidget_types.QGraphicsWidget =
  let vtbl = if vtbl == nil: new QGraphicsWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsWidgetVTable, _: ptr cQGraphicsWidget) {.cdecl.} =
    let vtbl = cast[ref QGraphicsWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsWidget_metacall
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsWidget_setGeometry
  if not isNil(vtbl.getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsWidget_getContentsMargins
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsWidget_typeX
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsWidget_paint
  if not isNil(vtbl.paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = miqt_exec_callback_cQGraphicsWidget_paintWindowFrame
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsWidget_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsWidget_shape
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsWidget_initStyleOption
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsWidget_sizeHint
  if not isNil(vtbl.updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsWidget_updateGeometry
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsWidget_itemChange
  if not isNil(vtbl.propertyChange):
    vtbl[].vtbl.propertyChange = miqt_exec_callback_cQGraphicsWidget_propertyChange
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsWidget_sceneEvent
  if not isNil(vtbl.windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = miqt_exec_callback_cQGraphicsWidget_windowFrameEvent
  if not isNil(vtbl.windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = miqt_exec_callback_cQGraphicsWidget_windowFrameSectionAt
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsWidget_event
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsWidget_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsWidget_closeEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsWidget_focusInEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsWidget_focusNextPrevChild
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsWidget_focusOutEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsWidget_hideEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsWidget_moveEvent
  if not isNil(vtbl.polishEvent):
    vtbl[].vtbl.polishEvent = miqt_exec_callback_cQGraphicsWidget_polishEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsWidget_resizeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsWidget_showEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsWidget_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsWidget_hoverLeaveEvent
  if not isNil(vtbl.grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = miqt_exec_callback_cQGraphicsWidget_grabMouseEvent
  if not isNil(vtbl.ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = miqt_exec_callback_cQGraphicsWidget_ungrabMouseEvent
  if not isNil(vtbl.grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = miqt_exec_callback_cQGraphicsWidget_grabKeyboardEvent
  if not isNil(vtbl.ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = miqt_exec_callback_cQGraphicsWidget_ungrabKeyboardEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsWidget_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsWidget_advance
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsWidget_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsWidget_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsWidget_collidesWithPath
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsWidget_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsWidget_opaqueArea
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsWidget_sceneEventFilter
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsWidget_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsWidget_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsWidget_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsWidget_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsWidget_dropEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsWidget_hoverEnterEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsWidget_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsWidget_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsWidget_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsWidget_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsWidget_wheelEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsWidget_inputMethodQuery
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsWidget_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsWidget_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsWidget_extension
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQGraphicsWidget_isEmpty
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsWidget_new3(addr(vtbl[]), parent.h, cint(wFlags)))

proc staticMetaObject*(_: type gen_qgraphicswidget_types.QGraphicsWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWidget_staticMetaObject())
proc delete*(self: gen_qgraphicswidget_types.QGraphicsWidget) =
  fcQGraphicsWidget_delete(self.h)
