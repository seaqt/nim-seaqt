import ./qtwidgets_pkg

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


{.compile("gen_qgraphicswidget.cpp", QtWidgetsCFlags).}


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

proc fcQGraphicsWidget_metaObject(self: pointer): pointer {.importc: "QGraphicsWidget_metaObject".}
proc fcQGraphicsWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWidget_metacast".}
proc fcQGraphicsWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsWidget_metacall".}
proc fcQGraphicsWidget_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsWidget_tr".}
proc fcQGraphicsWidget_layout(self: pointer): pointer {.importc: "QGraphicsWidget_layout".}
proc fcQGraphicsWidget_setLayout(self: pointer, layout: pointer): void {.importc: "QGraphicsWidget_setLayout".}
proc fcQGraphicsWidget_adjustSize(self: pointer): void {.importc: "QGraphicsWidget_adjustSize".}
proc fcQGraphicsWidget_layoutDirection(self: pointer): cint {.importc: "QGraphicsWidget_layoutDirection".}
proc fcQGraphicsWidget_setLayoutDirection(self: pointer, direction: cint): void {.importc: "QGraphicsWidget_setLayoutDirection".}
proc fcQGraphicsWidget_unsetLayoutDirection(self: pointer): void {.importc: "QGraphicsWidget_unsetLayoutDirection".}
proc fcQGraphicsWidget_style(self: pointer): pointer {.importc: "QGraphicsWidget_style".}
proc fcQGraphicsWidget_setStyle(self: pointer, style: pointer): void {.importc: "QGraphicsWidget_setStyle".}
proc fcQGraphicsWidget_font(self: pointer): pointer {.importc: "QGraphicsWidget_font".}
proc fcQGraphicsWidget_setFont(self: pointer, font: pointer): void {.importc: "QGraphicsWidget_setFont".}
proc fcQGraphicsWidget_palette(self: pointer): pointer {.importc: "QGraphicsWidget_palette".}
proc fcQGraphicsWidget_setPalette(self: pointer, palette: pointer): void {.importc: "QGraphicsWidget_setPalette".}
proc fcQGraphicsWidget_autoFillBackground(self: pointer): bool {.importc: "QGraphicsWidget_autoFillBackground".}
proc fcQGraphicsWidget_setAutoFillBackground(self: pointer, enabled: bool): void {.importc: "QGraphicsWidget_setAutoFillBackground".}
proc fcQGraphicsWidget_resize(self: pointer, size: pointer): void {.importc: "QGraphicsWidget_resize".}
proc fcQGraphicsWidget_resize2(self: pointer, w: float64, h: float64): void {.importc: "QGraphicsWidget_resize2".}
proc fcQGraphicsWidget_size(self: pointer): pointer {.importc: "QGraphicsWidget_size".}
proc fcQGraphicsWidget_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsWidget_setGeometry".}
proc fcQGraphicsWidget_setGeometry2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsWidget_setGeometry2".}
proc fcQGraphicsWidget_rect(self: pointer): pointer {.importc: "QGraphicsWidget_rect".}
proc fcQGraphicsWidget_setContentsMargins(self: pointer, left: float64, top: float64, right: float64, bottom: float64): void {.importc: "QGraphicsWidget_setContentsMargins".}
proc fcQGraphicsWidget_setContentsMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QGraphicsWidget_setContentsMarginsWithMargins".}
proc fcQGraphicsWidget_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsWidget_getContentsMargins".}
proc fcQGraphicsWidget_setWindowFrameMargins(self: pointer, left: float64, top: float64, right: float64, bottom: float64): void {.importc: "QGraphicsWidget_setWindowFrameMargins".}
proc fcQGraphicsWidget_setWindowFrameMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QGraphicsWidget_setWindowFrameMarginsWithMargins".}
proc fcQGraphicsWidget_getWindowFrameMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsWidget_getWindowFrameMargins".}
proc fcQGraphicsWidget_unsetWindowFrameMargins(self: pointer): void {.importc: "QGraphicsWidget_unsetWindowFrameMargins".}
proc fcQGraphicsWidget_windowFrameGeometry(self: pointer): pointer {.importc: "QGraphicsWidget_windowFrameGeometry".}
proc fcQGraphicsWidget_windowFrameRect(self: pointer): pointer {.importc: "QGraphicsWidget_windowFrameRect".}
proc fcQGraphicsWidget_windowFlags(self: pointer): cint {.importc: "QGraphicsWidget_windowFlags".}
proc fcQGraphicsWidget_windowType(self: pointer): cint {.importc: "QGraphicsWidget_windowType".}
proc fcQGraphicsWidget_setWindowFlags(self: pointer, wFlags: cint): void {.importc: "QGraphicsWidget_setWindowFlags".}
proc fcQGraphicsWidget_isActiveWindow(self: pointer): bool {.importc: "QGraphicsWidget_isActiveWindow".}
proc fcQGraphicsWidget_setWindowTitle(self: pointer, title: struct_miqt_string): void {.importc: "QGraphicsWidget_setWindowTitle".}
proc fcQGraphicsWidget_windowTitle(self: pointer): struct_miqt_string {.importc: "QGraphicsWidget_windowTitle".}
proc fcQGraphicsWidget_focusPolicy(self: pointer): cint {.importc: "QGraphicsWidget_focusPolicy".}
proc fcQGraphicsWidget_setFocusPolicy(self: pointer, policy: cint): void {.importc: "QGraphicsWidget_setFocusPolicy".}
proc fcQGraphicsWidget_setTabOrder(first: pointer, second: pointer): void {.importc: "QGraphicsWidget_setTabOrder".}
proc fcQGraphicsWidget_focusWidget(self: pointer): pointer {.importc: "QGraphicsWidget_focusWidget".}
proc fcQGraphicsWidget_grabShortcut(self: pointer, sequence: pointer): cint {.importc: "QGraphicsWidget_grabShortcut".}
proc fcQGraphicsWidget_releaseShortcut(self: pointer, id: cint): void {.importc: "QGraphicsWidget_releaseShortcut".}
proc fcQGraphicsWidget_setShortcutEnabled(self: pointer, id: cint): void {.importc: "QGraphicsWidget_setShortcutEnabled".}
proc fcQGraphicsWidget_setShortcutAutoRepeat(self: pointer, id: cint): void {.importc: "QGraphicsWidget_setShortcutAutoRepeat".}
proc fcQGraphicsWidget_addAction(self: pointer, action: pointer): void {.importc: "QGraphicsWidget_addAction".}
proc fcQGraphicsWidget_addActions(self: pointer, actions: struct_miqt_array): void {.importc: "QGraphicsWidget_addActions".}
proc fcQGraphicsWidget_insertActions(self: pointer, before: pointer, actions: struct_miqt_array): void {.importc: "QGraphicsWidget_insertActions".}
proc fcQGraphicsWidget_insertAction(self: pointer, before: pointer, action: pointer): void {.importc: "QGraphicsWidget_insertAction".}
proc fcQGraphicsWidget_removeAction(self: pointer, action: pointer): void {.importc: "QGraphicsWidget_removeAction".}
proc fcQGraphicsWidget_actions(self: pointer): struct_miqt_array {.importc: "QGraphicsWidget_actions".}
proc fcQGraphicsWidget_setAttribute(self: pointer, attribute: cint): void {.importc: "QGraphicsWidget_setAttribute".}
proc fcQGraphicsWidget_testAttribute(self: pointer, attribute: cint): bool {.importc: "QGraphicsWidget_testAttribute".}
proc fcQGraphicsWidget_typeX(self: pointer): cint {.importc: "QGraphicsWidget_type".}
proc fcQGraphicsWidget_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWidget_paint".}
proc fcQGraphicsWidget_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWidget_paintWindowFrame".}
proc fcQGraphicsWidget_boundingRect(self: pointer): pointer {.importc: "QGraphicsWidget_boundingRect".}
proc fcQGraphicsWidget_shape(self: pointer): pointer {.importc: "QGraphicsWidget_shape".}
proc fcQGraphicsWidget_geometryChanged(self: pointer): void {.importc: "QGraphicsWidget_geometryChanged".}
proc fcQGraphicsWidget_connect_geometryChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWidget_connect_geometryChanged".}
proc fcQGraphicsWidget_layoutChanged(self: pointer): void {.importc: "QGraphicsWidget_layoutChanged".}
proc fcQGraphicsWidget_connect_layoutChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWidget_connect_layoutChanged".}
proc fcQGraphicsWidget_close(self: pointer): bool {.importc: "QGraphicsWidget_close".}
proc fcQGraphicsWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsWidget_tr2".}
proc fcQGraphicsWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsWidget_tr3".}
proc fcQGraphicsWidget_grabShortcut2(self: pointer, sequence: pointer, context: cint): cint {.importc: "QGraphicsWidget_grabShortcut2".}
proc fcQGraphicsWidget_setShortcutEnabled2(self: pointer, id: cint, enabled: bool): void {.importc: "QGraphicsWidget_setShortcutEnabled2".}
proc fcQGraphicsWidget_setShortcutAutoRepeat2(self: pointer, id: cint, enabled: bool): void {.importc: "QGraphicsWidget_setShortcutAutoRepeat2".}
proc fcQGraphicsWidget_setAttribute2(self: pointer, attribute: cint, on: bool): void {.importc: "QGraphicsWidget_setAttribute2".}
proc fcQGraphicsWidget_vtbl(self: pointer): pointer {.importc: "QGraphicsWidget_vtbl".}
proc fcQGraphicsWidget_vdata(self: pointer): pointer {.importc: "QGraphicsWidget_vdata".}
type cQGraphicsWidgetVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  getContentsMargins*: proc(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl, raises: [], gcsafe.}
  typeX*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  paint*: proc(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  paintWindowFrame*: proc(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer, which: cint, constraint: pointer): pointer {.cdecl, raises: [], gcsafe.}
  updateGeometry*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  propertyChange*: proc(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowFrameEvent*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowFrameSectionAt*: proc(self: pointer, pos: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  polishEvent*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  grabMouseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  ungrabMouseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  grabKeyboardEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  ungrabKeyboardEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  advance*: proc(self: pointer, phase: cint): void {.cdecl, raises: [], gcsafe.}
  contains*: proc(self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  collidesWithItem*: proc(self: pointer, other: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  collidesWithPath*: proc(self: pointer, path: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  isObscuredBy*: proc(self: pointer, item: pointer): bool {.cdecl, raises: [], gcsafe.}
  opaqueArea*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sceneEventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsWidget_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsWidget_virtualbase_metaObject".}
proc fcQGraphicsWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWidget_virtualbase_metacast".}
proc fcQGraphicsWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsWidget_virtualbase_metacall".}
proc fcQGraphicsWidget_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsWidget_virtualbase_setGeometry".}
proc fcQGraphicsWidget_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsWidget_virtualbase_getContentsMargins".}
proc fcQGraphicsWidget_virtualbase_typeX(self: pointer): cint {.importc: "QGraphicsWidget_virtualbase_type".}
proc fcQGraphicsWidget_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWidget_virtualbase_paint".}
proc fcQGraphicsWidget_virtualbase_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWidget_virtualbase_paintWindowFrame".}
proc fcQGraphicsWidget_virtualbase_boundingRect(self: pointer): pointer {.importc: "QGraphicsWidget_virtualbase_boundingRect".}
proc fcQGraphicsWidget_virtualbase_shape(self: pointer): pointer {.importc: "QGraphicsWidget_virtualbase_shape".}
proc fcQGraphicsWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QGraphicsWidget_virtualbase_initStyleOption".}
proc fcQGraphicsWidget_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsWidget_virtualbase_sizeHint".}
proc fcQGraphicsWidget_virtualbase_updateGeometry(self: pointer): void {.importc: "QGraphicsWidget_virtualbase_updateGeometry".}
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
proc fcQGraphicsWidget_virtualbase_polishEvent(self: pointer): void {.importc: "QGraphicsWidget_virtualbase_polishEvent".}
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
proc fcQGraphicsWidget_virtualbase_opaqueArea(self: pointer): pointer {.importc: "QGraphicsWidget_virtualbase_opaqueArea".}
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
proc fcQGraphicsWidget_virtualbase_isEmpty(self: pointer): bool {.importc: "QGraphicsWidget_virtualbase_isEmpty".}
proc fcQGraphicsWidget_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QGraphicsWidget_protectedbase_updateMicroFocus".}
proc fcQGraphicsWidget_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsWidget_protectedbase_sender".}
proc fcQGraphicsWidget_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsWidget_protectedbase_senderSignalIndex".}
proc fcQGraphicsWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsWidget_protectedbase_receivers".}
proc fcQGraphicsWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsWidget_protectedbase_isSignalConnected".}
proc fcQGraphicsWidget_protectedbase_addToIndex(self: pointer): void {.importc: "QGraphicsWidget_protectedbase_addToIndex".}
proc fcQGraphicsWidget_protectedbase_removeFromIndex(self: pointer): void {.importc: "QGraphicsWidget_protectedbase_removeFromIndex".}
proc fcQGraphicsWidget_protectedbase_prepareGeometryChange(self: pointer): void {.importc: "QGraphicsWidget_protectedbase_prepareGeometryChange".}
proc fcQGraphicsWidget_protectedbase_setGraphicsItem(self: pointer, item: pointer): void {.importc: "QGraphicsWidget_protectedbase_setGraphicsItem".}
proc fcQGraphicsWidget_protectedbase_setOwnedByLayout(self: pointer, ownedByLayout: bool): void {.importc: "QGraphicsWidget_protectedbase_setOwnedByLayout".}
proc fcQGraphicsWidget_new(vtbl, vdata: pointer): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new".}
proc fcQGraphicsWidget_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new2".}
proc fcQGraphicsWidget_new3(vtbl, vdata: pointer, parent: pointer, wFlags: cint): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new3".}
proc fcQGraphicsWidget_staticMetaObject(): pointer {.importc: "QGraphicsWidget_staticMetaObject".}

proc metaObject*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicswidget_types.QGraphicsWidget, param1: cstring): pointer =
  fcQGraphicsWidget_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicswidget_types.QGraphicsWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicswidget_types.QGraphicsWidget, s: cstring): string =
  let v_ms = fcQGraphicsWidget_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc layout*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qgraphicslayout_types.QGraphicsLayout =
  gen_qgraphicslayout_types.QGraphicsLayout(h: fcQGraphicsWidget_layout(self.h), owned: false)

proc setLayout*(self: gen_qgraphicswidget_types.QGraphicsWidget, layout: gen_qgraphicslayout_types.QGraphicsLayout): void =
  fcQGraphicsWidget_setLayout(self.h, layout.h)

proc adjustSize*(self: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_adjustSize(self.h)

proc layoutDirection*(self: gen_qgraphicswidget_types.QGraphicsWidget): cint =
  cint(fcQGraphicsWidget_layoutDirection(self.h))

proc setLayoutDirection*(self: gen_qgraphicswidget_types.QGraphicsWidget, direction: cint): void =
  fcQGraphicsWidget_setLayoutDirection(self.h, cint(direction))

proc unsetLayoutDirection*(self: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_unsetLayoutDirection(self.h)

proc style*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQGraphicsWidget_style(self.h), owned: false)

proc setStyle*(self: gen_qgraphicswidget_types.QGraphicsWidget, style: gen_qstyle_types.QStyle): void =
  fcQGraphicsWidget_setStyle(self.h, style.h)

proc font*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQGraphicsWidget_font(self.h), owned: true)

proc setFont*(self: gen_qgraphicswidget_types.QGraphicsWidget, font: gen_qfont_types.QFont): void =
  fcQGraphicsWidget_setFont(self.h, font.h)

proc palette*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQGraphicsWidget_palette(self.h), owned: true)

proc setPalette*(self: gen_qgraphicswidget_types.QGraphicsWidget, palette: gen_qpalette_types.QPalette): void =
  fcQGraphicsWidget_setPalette(self.h, palette.h)

proc autoFillBackground*(self: gen_qgraphicswidget_types.QGraphicsWidget): bool =
  fcQGraphicsWidget_autoFillBackground(self.h)

proc setAutoFillBackground*(self: gen_qgraphicswidget_types.QGraphicsWidget, enabled: bool): void =
  fcQGraphicsWidget_setAutoFillBackground(self.h, enabled)

proc resize*(self: gen_qgraphicswidget_types.QGraphicsWidget, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsWidget_resize(self.h, size.h)

proc resize*(self: gen_qgraphicswidget_types.QGraphicsWidget, w: float64, h: float64): void =
  fcQGraphicsWidget_resize2(self.h, w, h)

proc size*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsWidget_size(self.h), owned: true)

proc setGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsWidget_setGeometry(self.h, rect.h)

proc setGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, x: float64, y: float64, w: float64, h: float64): void =
  fcQGraphicsWidget_setGeometry2(self.h, x, y, w, h)

proc rect*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWidget_rect(self.h), owned: true)

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

proc unsetWindowFrameMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_unsetWindowFrameMargins(self.h)

proc windowFrameGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWidget_windowFrameGeometry(self.h), owned: true)

proc windowFrameRect*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWidget_windowFrameRect(self.h), owned: true)

proc windowFlags*(self: gen_qgraphicswidget_types.QGraphicsWidget): cint =
  cint(fcQGraphicsWidget_windowFlags(self.h))

proc windowType*(self: gen_qgraphicswidget_types.QGraphicsWidget): cint =
  cint(fcQGraphicsWidget_windowType(self.h))

proc setWindowFlags*(self: gen_qgraphicswidget_types.QGraphicsWidget, wFlags: cint): void =
  fcQGraphicsWidget_setWindowFlags(self.h, cint(wFlags))

proc isActiveWindow*(self: gen_qgraphicswidget_types.QGraphicsWidget): bool =
  fcQGraphicsWidget_isActiveWindow(self.h)

proc setWindowTitle*(self: gen_qgraphicswidget_types.QGraphicsWidget, title: openArray[char]): void =
  fcQGraphicsWidget_setWindowTitle(self.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))))

proc windowTitle*(self: gen_qgraphicswidget_types.QGraphicsWidget): string =
  let v_ms = fcQGraphicsWidget_windowTitle(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc focusPolicy*(self: gen_qgraphicswidget_types.QGraphicsWidget): cint =
  cint(fcQGraphicsWidget_focusPolicy(self.h))

proc setFocusPolicy*(self: gen_qgraphicswidget_types.QGraphicsWidget, policy: cint): void =
  fcQGraphicsWidget_setFocusPolicy(self.h, cint(policy))

proc setTabOrder*(_: type gen_qgraphicswidget_types.QGraphicsWidget, first: gen_qgraphicswidget_types.QGraphicsWidget, second: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_setTabOrder(first.h, second.h)

proc focusWidget*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qgraphicswidget_types.QGraphicsWidget =
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsWidget_focusWidget(self.h), owned: false)

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

proc addActions*(self: gen_qgraphicswidget_types.QGraphicsWidget, actions: openArray[gen_qaction_types.QAction]): void =
  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQGraphicsWidget_addActions(self.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertActions*(self: gen_qgraphicswidget_types.QGraphicsWidget, before: gen_qaction_types.QAction, actions: openArray[gen_qaction_types.QAction]): void =
  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQGraphicsWidget_insertActions(self.h, before.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertAction*(self: gen_qgraphicswidget_types.QGraphicsWidget, before: gen_qaction_types.QAction, action: gen_qaction_types.QAction): void =
  fcQGraphicsWidget_insertAction(self.h, before.h, action.h)

proc removeAction*(self: gen_qgraphicswidget_types.QGraphicsWidget, action: gen_qaction_types.QAction): void =
  fcQGraphicsWidget_removeAction(self.h, action.h)

proc actions*(self: gen_qgraphicswidget_types.QGraphicsWidget): seq[gen_qaction_types.QAction] =
  var v_ma = fcQGraphicsWidget_actions(self.h)
  var vx_ret = newSeq[gen_qaction_types.QAction](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaction_types.QAction(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc setAttribute*(self: gen_qgraphicswidget_types.QGraphicsWidget, attribute: cint): void =
  fcQGraphicsWidget_setAttribute(self.h, cint(attribute))

proc testAttribute*(self: gen_qgraphicswidget_types.QGraphicsWidget, attribute: cint): bool =
  fcQGraphicsWidget_testAttribute(self.h, cint(attribute))

proc typeX*(self: gen_qgraphicswidget_types.QGraphicsWidget): cint =
  fcQGraphicsWidget_typeX(self.h)

proc paint*(self: gen_qgraphicswidget_types.QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWidget_paint(self.h, painter.h, option.h, widget.h)

proc paintWindowFrame*(self: gen_qgraphicswidget_types.QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWidget_paintWindowFrame(self.h, painter.h, option.h, widget.h)

proc boundingRect*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWidget_boundingRect(self.h), owned: true)

proc shape*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsWidget_shape(self.h), owned: true)

proc geometryChanged*(self: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_geometryChanged(self.h)

type QGraphicsWidgetgeometryChangedSlot* = proc()
proc cQGraphicsWidget_slot_callback_geometryChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWidgetgeometryChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsWidget_slot_callback_geometryChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWidgetgeometryChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ongeometryChanged*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetgeometryChangedSlot) =
  var tmp = new QGraphicsWidgetgeometryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_connect_geometryChanged(self.h, cast[int](addr tmp[]), cQGraphicsWidget_slot_callback_geometryChanged, cQGraphicsWidget_slot_callback_geometryChanged_release)

proc layoutChanged*(self: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_layoutChanged(self.h)

type QGraphicsWidgetlayoutChangedSlot* = proc()
proc cQGraphicsWidget_slot_callback_layoutChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWidgetlayoutChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsWidget_slot_callback_layoutChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWidgetlayoutChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlayoutChanged*(self: gen_qgraphicswidget_types.QGraphicsWidget, slot: QGraphicsWidgetlayoutChangedSlot) =
  var tmp = new QGraphicsWidgetlayoutChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_connect_layoutChanged(self.h, cast[int](addr tmp[]), cQGraphicsWidget_slot_callback_layoutChanged, cQGraphicsWidget_slot_callback_layoutChanged_release)

proc close*(self: gen_qgraphicswidget_types.QGraphicsWidget): bool =
  fcQGraphicsWidget_close(self.h)

proc tr*(_: type gen_qgraphicswidget_types.QGraphicsWidget, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsWidget_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicswidget_types.QGraphicsWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QGraphicsWidgetpropertyChangeProc* = proc(self: QGraphicsWidget, propertyName: openArray[char], value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
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
type QGraphicsWidgetVTable* {.inheritable, pure.} = object
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
proc QGraphicsWidgetmetaObject*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWidget_virtualbase_metaObject(self.h), owned: false)

proc cQGraphicsWidget_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWidgetmetacast*(self: gen_qgraphicswidget_types.QGraphicsWidget, param1: cstring): pointer =
  fcQGraphicsWidget_virtualbase_metacast(self.h, param1)

proc cQGraphicsWidget_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsWidgetmetacall*(self: gen_qgraphicswidget_types.QGraphicsWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGraphicsWidget_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsWidgetsetGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsWidget_virtualbase_setGeometry(self.h, rect.h)

proc cQGraphicsWidget_vtable_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QGraphicsWidgetgetContentsMargins*(self: gen_qgraphicswidget_types.QGraphicsWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsWidget_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

proc cQGraphicsWidget_vtable_callback_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl[].getContentsMargins(self, slotval1, slotval2, slotval3, slotval4)

proc QGraphicsWidgettypeX*(self: gen_qgraphicswidget_types.QGraphicsWidget): cint =
  fcQGraphicsWidget_virtualbase_typeX(self.h)

proc cQGraphicsWidget_vtable_callback_typeX(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsWidgetpaint*(self: gen_qgraphicswidget_types.QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWidget_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc cQGraphicsWidget_vtable_callback_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsWidgetpaintWindowFrame*(self: gen_qgraphicswidget_types.QGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWidget_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

proc cQGraphicsWidget_vtable_callback_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].paintWindowFrame(self, slotval1, slotval2, slotval3)

proc QGraphicsWidgetboundingRect*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWidget_virtualbase_boundingRect(self.h), owned: true)

proc cQGraphicsWidget_vtable_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWidgetshape*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsWidget_virtualbase_shape(self.h), owned: true)

proc cQGraphicsWidget_vtable_callback_shape(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWidgetinitStyleOption*(self: gen_qgraphicswidget_types.QGraphicsWidget, option: gen_qstyleoption_types.QStyleOption): void =
  fcQGraphicsWidget_virtualbase_initStyleOption(self.h, option.h)

proc cQGraphicsWidget_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QGraphicsWidgetsizeHint*(self: gen_qgraphicswidget_types.QGraphicsWidget, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsWidget_virtualbase_sizeHint(self.h, cint(which), constraint.h), owned: true)

proc cQGraphicsWidget_vtable_callback_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWidgetupdateGeometry*(self: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_virtualbase_updateGeometry(self.h)

proc cQGraphicsWidget_vtable_callback_updateGeometry(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  vtbl[].updateGeometry(self)

proc QGraphicsWidgetitemChange*(self: gen_qgraphicswidget_types.QGraphicsWidget, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWidget_virtualbase_itemChange(self.h, cint(change), value.h), owned: true)

proc cQGraphicsWidget_vtable_callback_itemChange(self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWidgetpropertyChange*(self: gen_qgraphicswidget_types.QGraphicsWidget, propertyName: openArray[char], value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWidget_virtualbase_propertyChange(self.h, struct_miqt_string(data: if len(propertyName) > 0: addr propertyName[0] else: nil, len: csize_t(len(propertyName))), value.h), owned: true)

proc cQGraphicsWidget_vtable_callback_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(vpropertyName_ms)
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl[].propertyChange(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWidgetsceneEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWidget_virtualbase_sceneEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_sceneEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsWidgetwindowFrameEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWidget_virtualbase_windowFrameEvent(self.h, e.h)

proc cQGraphicsWidget_vtable_callback_windowFrameEvent(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].windowFrameEvent(self, slotval1)
  virtualReturn

proc QGraphicsWidgetwindowFrameSectionAt*(self: gen_qgraphicswidget_types.QGraphicsWidget, pos: gen_qpoint_types.QPointF): cint =
  cint(fcQGraphicsWidget_virtualbase_windowFrameSectionAt(self.h, pos.h))

proc cQGraphicsWidget_vtable_callback_windowFrameSectionAt(self: pointer, pos: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: pos, owned: false)
  var virtualReturn = vtbl[].windowFrameSectionAt(self, slotval1)
  cint(virtualReturn)

proc QGraphicsWidgetevent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWidget_virtualbase_event(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsWidgetchangeEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_changeEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QGraphicsWidgetcloseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQGraphicsWidget_virtualbase_closeEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QGraphicsWidgetfocusInEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsWidget_virtualbase_focusInEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsWidgetfocusNextPrevChild*(self: gen_qgraphicswidget_types.QGraphicsWidget, next: bool): bool =
  fcQGraphicsWidget_virtualbase_focusNextPrevChild(self.h, next)

proc cQGraphicsWidget_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QGraphicsWidgetfocusOutEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsWidget_virtualbase_focusOutEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsWidgethideEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QHideEvent): void =
  fcQGraphicsWidget_virtualbase_hideEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QGraphicsWidgetmoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void =
  fcQGraphicsWidget_virtualbase_moveEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QGraphicsWidgetpolishEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_virtualbase_polishEvent(self.h)

proc cQGraphicsWidget_vtable_callback_polishEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  vtbl[].polishEvent(self)

proc QGraphicsWidgetresizeEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void =
  fcQGraphicsWidget_virtualbase_resizeEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QGraphicsWidgetshowEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QShowEvent): void =
  fcQGraphicsWidget_virtualbase_showEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QGraphicsWidgethoverMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWidget_virtualbase_hoverMoveEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsWidgethoverLeaveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWidget_virtualbase_hoverLeaveEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsWidgetgrabMouseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_grabMouseEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_grabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].grabMouseEvent(self, slotval1)

proc QGraphicsWidgetungrabMouseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_ungrabMouseEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_ungrabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].ungrabMouseEvent(self, slotval1)

proc QGraphicsWidgetgrabKeyboardEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_grabKeyboardEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_grabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].grabKeyboardEvent(self, slotval1)

proc QGraphicsWidgetungrabKeyboardEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_ungrabKeyboardEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_ungrabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].ungrabKeyboardEvent(self, slotval1)

proc QGraphicsWidgeteventFilter*(self: gen_qgraphicswidget_types.QGraphicsWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGraphicsWidget_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWidgettimerEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsWidget_virtualbase_timerEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsWidgetchildEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsWidget_virtualbase_childEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsWidgetcustomEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWidget_virtualbase_customEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsWidgetconnectNotify*(self: gen_qgraphicswidget_types.QGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsWidget_virtualbase_connectNotify(self.h, signal.h)

proc cQGraphicsWidget_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsWidgetdisconnectNotify*(self: gen_qgraphicswidget_types.QGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGraphicsWidget_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc QGraphicsWidgetadvance*(self: gen_qgraphicswidget_types.QGraphicsWidget, phase: cint): void =
  fcQGraphicsWidget_virtualbase_advance(self.h, phase)

proc cQGraphicsWidget_vtable_callback_advance(self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsWidgetcontains*(self: gen_qgraphicswidget_types.QGraphicsWidget, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsWidget_virtualbase_contains(self.h, point.h)

proc cQGraphicsWidget_vtable_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsWidgetcollidesWithItem*(self: gen_qgraphicswidget_types.QGraphicsWidget, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsWidget_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc cQGraphicsWidget_vtable_callback_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWidgetcollidesWithPath*(self: gen_qgraphicswidget_types.QGraphicsWidget, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsWidget_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc cQGraphicsWidget_vtable_callback_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWidgetisObscuredBy*(self: gen_qgraphicswidget_types.QGraphicsWidget, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsWidget_virtualbase_isObscuredBy(self.h, item.h)

proc cQGraphicsWidget_vtable_callback_isObscuredBy(self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsWidgetopaqueArea*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsWidget_virtualbase_opaqueArea(self.h), owned: true)

proc cQGraphicsWidget_vtable_callback_opaqueArea(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWidgetsceneEventFilter*(self: gen_qgraphicswidget_types.QGraphicsWidget, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWidget_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc cQGraphicsWidget_vtable_callback_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWidgetcontextMenuEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsWidgetdragEnterEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsWidgetdragLeaveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsWidgetdragMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsWidgetdropEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWidget_virtualbase_dropEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsWidgethoverEnterEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWidget_virtualbase_hoverEnterEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsWidgetkeyPressEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsWidget_virtualbase_keyPressEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsWidgetkeyReleaseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsWidgetmousePressEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWidget_virtualbase_mousePressEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsWidgetmouseMoveEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsWidgetmouseReleaseEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsWidgetmouseDoubleClickEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsWidgetwheelEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsWidget_virtualbase_wheelEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsWidgetinputMethodEvent*(self: gen_qgraphicswidget_types.QGraphicsWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsWidget_virtualbase_inputMethodEvent(self.h, event.h)

proc cQGraphicsWidget_vtable_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsWidgetinputMethodQuery*(self: gen_qgraphicswidget_types.QGraphicsWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWidget_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc cQGraphicsWidget_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWidgetsupportsExtension*(self: gen_qgraphicswidget_types.QGraphicsWidget, extension: cint): bool =
  fcQGraphicsWidget_virtualbase_supportsExtension(self.h, cint(extension))

proc cQGraphicsWidget_vtable_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsWidgetsetExtension*(self: gen_qgraphicswidget_types.QGraphicsWidget, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsWidget_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc cQGraphicsWidget_vtable_callback_setExtension(self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsWidgetextension*(self: gen_qgraphicswidget_types.QGraphicsWidget, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWidget_virtualbase_extension(self.h, variant.h), owned: true)

proc cQGraphicsWidget_vtable_callback_extension(self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWidgetisEmpty*(self: gen_qgraphicswidget_types.QGraphicsWidget): bool =
  fcQGraphicsWidget_virtualbase_isEmpty(self.h)

proc cQGraphicsWidget_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
  let self = QGraphicsWidget(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

type VirtualQGraphicsWidget* {.inheritable.} = ref object of QGraphicsWidget
  vtbl*: cQGraphicsWidgetVTable
method metaObject*(self: VirtualQGraphicsWidget): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsWidgetmetaObject(self[])
proc cQGraphicsWidget_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsWidget, param1: cstring): pointer {.base.} =
  QGraphicsWidgetmetacast(self[], param1)
proc cQGraphicsWidget_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsWidgetmetacall(self[], param1, param2, param3)
proc cQGraphicsWidget_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setGeometry*(self: VirtualQGraphicsWidget, rect: gen_qrect_types.QRectF): void {.base.} =
  QGraphicsWidgetsetGeometry(self[], rect)
proc cQGraphicsWidget_method_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  inst.setGeometry(slotval1)

method getContentsMargins*(self: VirtualQGraphicsWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.base.} =
  QGraphicsWidgetgetContentsMargins(self[], left, top, right, bottom)
proc cQGraphicsWidget_method_callback_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  inst.getContentsMargins(slotval1, slotval2, slotval3, slotval4)

method typeX*(self: VirtualQGraphicsWidget): cint {.base.} =
  QGraphicsWidgettypeX(self[])
proc cQGraphicsWidget_method_callback_typeX(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  var virtualReturn = inst.typeX()
  virtualReturn

method paint*(self: VirtualQGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.base.} =
  QGraphicsWidgetpaint(self[], painter, option, widget)
proc cQGraphicsWidget_method_callback_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.paint(slotval1, slotval2, slotval3)

method paintWindowFrame*(self: VirtualQGraphicsWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.base.} =
  QGraphicsWidgetpaintWindowFrame(self[], painter, option, widget)
proc cQGraphicsWidget_method_callback_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.paintWindowFrame(slotval1, slotval2, slotval3)

method boundingRect*(self: VirtualQGraphicsWidget): gen_qrect_types.QRectF {.base.} =
  QGraphicsWidgetboundingRect(self[])
proc cQGraphicsWidget_method_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  var virtualReturn = inst.boundingRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method shape*(self: VirtualQGraphicsWidget): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsWidgetshape(self[])
proc cQGraphicsWidget_method_callback_shape(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  var virtualReturn = inst.shape()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method initStyleOption*(self: VirtualQGraphicsWidget, option: gen_qstyleoption_types.QStyleOption): void {.base.} =
  QGraphicsWidgetinitStyleOption(self[], option)
proc cQGraphicsWidget_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  inst.initStyleOption(slotval1)

method sizeHint*(self: VirtualQGraphicsWidget, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.base.} =
  QGraphicsWidgetsizeHint(self[], which, constraint)
proc cQGraphicsWidget_method_callback_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = inst.sizeHint(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method updateGeometry*(self: VirtualQGraphicsWidget): void {.base.} =
  QGraphicsWidgetupdateGeometry(self[])
proc cQGraphicsWidget_method_callback_updateGeometry(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  inst.updateGeometry()

method itemChange*(self: VirtualQGraphicsWidget, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsWidgetitemChange(self[], change, value)
proc cQGraphicsWidget_method_callback_itemChange(self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = inst.itemChange(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method propertyChange*(self: VirtualQGraphicsWidget, propertyName: openArray[char], value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsWidgetpropertyChange(self[], propertyName, value)
proc cQGraphicsWidget_method_callback_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(vpropertyName_ms)
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = inst.propertyChange(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sceneEvent*(self: VirtualQGraphicsWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsWidgetsceneEvent(self[], event)
proc cQGraphicsWidget_method_callback_sceneEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.sceneEvent(slotval1)
  virtualReturn

method windowFrameEvent*(self: VirtualQGraphicsWidget, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsWidgetwindowFrameEvent(self[], e)
proc cQGraphicsWidget_method_callback_windowFrameEvent(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.windowFrameEvent(slotval1)
  virtualReturn

method windowFrameSectionAt*(self: VirtualQGraphicsWidget, pos: gen_qpoint_types.QPointF): cint {.base.} =
  QGraphicsWidgetwindowFrameSectionAt(self[], pos)
proc cQGraphicsWidget_method_callback_windowFrameSectionAt(self: pointer, pos: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPointF(h: pos, owned: false)
  var virtualReturn = inst.windowFrameSectionAt(slotval1)
  cint(virtualReturn)

method event*(self: VirtualQGraphicsWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsWidgetevent(self[], event)
proc cQGraphicsWidget_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method changeEvent*(self: VirtualQGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWidgetchangeEvent(self[], event)
proc cQGraphicsWidget_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method closeEvent*(self: VirtualQGraphicsWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QGraphicsWidgetcloseEvent(self[], event)
proc cQGraphicsWidget_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method focusInEvent*(self: VirtualQGraphicsWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsWidgetfocusInEvent(self[], event)
proc cQGraphicsWidget_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusNextPrevChild*(self: VirtualQGraphicsWidget, next: bool): bool {.base.} =
  QGraphicsWidgetfocusNextPrevChild(self[], next)
proc cQGraphicsWidget_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method focusOutEvent*(self: VirtualQGraphicsWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsWidgetfocusOutEvent(self[], event)
proc cQGraphicsWidget_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method hideEvent*(self: VirtualQGraphicsWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QGraphicsWidgethideEvent(self[], event)
proc cQGraphicsWidget_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method moveEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void {.base.} =
  QGraphicsWidgetmoveEvent(self[], event)
proc cQGraphicsWidget_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method polishEvent*(self: VirtualQGraphicsWidget): void {.base.} =
  QGraphicsWidgetpolishEvent(self[])
proc cQGraphicsWidget_method_callback_polishEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  inst.polishEvent()

method resizeEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void {.base.} =
  QGraphicsWidgetresizeEvent(self[], event)
proc cQGraphicsWidget_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method showEvent*(self: VirtualQGraphicsWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QGraphicsWidgetshowEvent(self[], event)
proc cQGraphicsWidget_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hoverMoveEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsWidgethoverMoveEvent(self[], event)
proc cQGraphicsWidget_method_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  inst.hoverMoveEvent(slotval1)

method hoverLeaveEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsWidgethoverLeaveEvent(self[], event)
proc cQGraphicsWidget_method_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  inst.hoverLeaveEvent(slotval1)

method grabMouseEvent*(self: VirtualQGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWidgetgrabMouseEvent(self[], event)
proc cQGraphicsWidget_method_callback_grabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.grabMouseEvent(slotval1)

method ungrabMouseEvent*(self: VirtualQGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWidgetungrabMouseEvent(self[], event)
proc cQGraphicsWidget_method_callback_ungrabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.ungrabMouseEvent(slotval1)

method grabKeyboardEvent*(self: VirtualQGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWidgetgrabKeyboardEvent(self[], event)
proc cQGraphicsWidget_method_callback_grabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.grabKeyboardEvent(slotval1)

method ungrabKeyboardEvent*(self: VirtualQGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWidgetungrabKeyboardEvent(self[], event)
proc cQGraphicsWidget_method_callback_ungrabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.ungrabKeyboardEvent(slotval1)

method eventFilter*(self: VirtualQGraphicsWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsWidgeteventFilter(self[], watched, event)
proc cQGraphicsWidget_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGraphicsWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsWidgettimerEvent(self[], event)
proc cQGraphicsWidget_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsWidgetchildEvent(self[], event)
proc cQGraphicsWidget_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWidgetcustomEvent(self[], event)
proc cQGraphicsWidget_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsWidgetconnectNotify(self[], signal)
proc cQGraphicsWidget_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsWidgetdisconnectNotify(self[], signal)
proc cQGraphicsWidget_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

method advance*(self: VirtualQGraphicsWidget, phase: cint): void {.base.} =
  QGraphicsWidgetadvance(self[], phase)
proc cQGraphicsWidget_method_callback_advance(self: pointer, phase: cint): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = phase
  inst.advance(slotval1)

method contains*(self: VirtualQGraphicsWidget, point: gen_qpoint_types.QPointF): bool {.base.} =
  QGraphicsWidgetcontains(self[], point)
proc cQGraphicsWidget_method_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = inst.contains(slotval1)
  virtualReturn

method collidesWithItem*(self: VirtualQGraphicsWidget, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.base.} =
  QGraphicsWidgetcollidesWithItem(self[], other, mode)
proc cQGraphicsWidget_method_callback_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = inst.collidesWithItem(slotval1, slotval2)
  virtualReturn

method collidesWithPath*(self: VirtualQGraphicsWidget, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.base.} =
  QGraphicsWidgetcollidesWithPath(self[], path, mode)
proc cQGraphicsWidget_method_callback_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = inst.collidesWithPath(slotval1, slotval2)
  virtualReturn

method isObscuredBy*(self: VirtualQGraphicsWidget, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.base.} =
  QGraphicsWidgetisObscuredBy(self[], item)
proc cQGraphicsWidget_method_callback_isObscuredBy(self: pointer, item: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = inst.isObscuredBy(slotval1)
  virtualReturn

method opaqueArea*(self: VirtualQGraphicsWidget): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsWidgetopaqueArea(self[])
proc cQGraphicsWidget_method_callback_opaqueArea(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  var virtualReturn = inst.opaqueArea()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sceneEventFilter*(self: VirtualQGraphicsWidget, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsWidgetsceneEventFilter(self[], watched, event)
proc cQGraphicsWidget_method_callback_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.sceneEventFilter(slotval1, slotval2)
  virtualReturn

method contextMenuEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.base.} =
  QGraphicsWidgetcontextMenuEvent(self[], event)
proc cQGraphicsWidget_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method dragEnterEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsWidgetdragEnterEvent(self[], event)
proc cQGraphicsWidget_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragLeaveEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsWidgetdragLeaveEvent(self[], event)
proc cQGraphicsWidget_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dragMoveEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsWidgetdragMoveEvent(self[], event)
proc cQGraphicsWidget_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dropEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsWidgetdropEvent(self[], event)
proc cQGraphicsWidget_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hoverEnterEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsWidgethoverEnterEvent(self[], event)
proc cQGraphicsWidget_method_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  inst.hoverEnterEvent(slotval1)

method keyPressEvent*(self: VirtualQGraphicsWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsWidgetkeyPressEvent(self[], event)
proc cQGraphicsWidget_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQGraphicsWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsWidgetkeyReleaseEvent(self[], event)
proc cQGraphicsWidget_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method mousePressEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsWidgetmousePressEvent(self[], event)
proc cQGraphicsWidget_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsWidgetmouseMoveEvent(self[], event)
proc cQGraphicsWidget_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsWidgetmouseReleaseEvent(self[], event)
proc cQGraphicsWidget_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsWidgetmouseDoubleClickEvent(self[], event)
proc cQGraphicsWidget_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQGraphicsWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.base.} =
  QGraphicsWidgetwheelEvent(self[], event)
proc cQGraphicsWidget_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method inputMethodEvent*(self: VirtualQGraphicsWidget, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QGraphicsWidgetinputMethodEvent(self[], event)
proc cQGraphicsWidget_method_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQGraphicsWidget, query: cint): gen_qvariant_types.QVariant {.base.} =
  QGraphicsWidgetinputMethodQuery(self[], query)
proc cQGraphicsWidget_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method supportsExtension*(self: VirtualQGraphicsWidget, extension: cint): bool {.base.} =
  QGraphicsWidgetsupportsExtension(self[], extension)
proc cQGraphicsWidget_method_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = cint(extension)
  var virtualReturn = inst.supportsExtension(slotval1)
  virtualReturn

method setExtension*(self: VirtualQGraphicsWidget, extension: cint, variant: gen_qvariant_types.QVariant): void {.base.} =
  QGraphicsWidgetsetExtension(self[], extension, variant)
proc cQGraphicsWidget_method_callback_setExtension(self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  inst.setExtension(slotval1, slotval2)

method extension*(self: VirtualQGraphicsWidget, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsWidgetextension(self[], variant)
proc cQGraphicsWidget_method_callback_extension(self: pointer, variant: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = inst.extension(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method isEmpty*(self: VirtualQGraphicsWidget): bool {.base.} =
  QGraphicsWidgetisEmpty(self[])
proc cQGraphicsWidget_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWidget](fcQGraphicsWidget_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

proc updateMicroFocus*(self: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_protectedbase_updateMicroFocus(self.h)

proc sender*(self: gen_qgraphicswidget_types.QGraphicsWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicswidget_types.QGraphicsWidget): cint =
  fcQGraphicsWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicswidget_types.QGraphicsWidget, signal: cstring): cint =
  fcQGraphicsWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicswidget_types.QGraphicsWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc addToIndex*(self: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicswidget_types.QGraphicsWidget): void =
  fcQGraphicsWidget_protectedbase_prepareGeometryChange(self.h)

proc setGraphicsItem*(self: gen_qgraphicswidget_types.QGraphicsWidget, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsWidget_protectedbase_setGraphicsItem(self.h, item.h)

proc setOwnedByLayout*(self: gen_qgraphicswidget_types.QGraphicsWidget, ownedByLayout: bool): void =
  fcQGraphicsWidget_protectedbase_setOwnedByLayout(self.h, ownedByLayout)

proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget,
    vtbl: ref QGraphicsWidgetVTable = nil): gen_qgraphicswidget_types.QGraphicsWidget =
  let vtbl = if vtbl == nil: new QGraphicsWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsWidget_vtable_callback_metacall
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQGraphicsWidget_vtable_callback_setGeometry
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = cQGraphicsWidget_vtable_callback_getContentsMargins
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = cQGraphicsWidget_vtable_callback_typeX
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = cQGraphicsWidget_vtable_callback_paint
  if not isNil(vtbl[].paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = cQGraphicsWidget_vtable_callback_paintWindowFrame
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = cQGraphicsWidget_vtable_callback_boundingRect
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = cQGraphicsWidget_vtable_callback_shape
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQGraphicsWidget_vtable_callback_initStyleOption
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGraphicsWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = cQGraphicsWidget_vtable_callback_updateGeometry
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = cQGraphicsWidget_vtable_callback_itemChange
  if not isNil(vtbl[].propertyChange):
    vtbl[].vtbl.propertyChange = cQGraphicsWidget_vtable_callback_propertyChange
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = cQGraphicsWidget_vtable_callback_sceneEvent
  if not isNil(vtbl[].windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = cQGraphicsWidget_vtable_callback_windowFrameEvent
  if not isNil(vtbl[].windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = cQGraphicsWidget_vtable_callback_windowFrameSectionAt
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsWidget_vtable_callback_event
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGraphicsWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGraphicsWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGraphicsWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGraphicsWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGraphicsWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGraphicsWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGraphicsWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].polishEvent):
    vtbl[].vtbl.polishEvent = cQGraphicsWidget_vtable_callback_polishEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGraphicsWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGraphicsWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = cQGraphicsWidget_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = cQGraphicsWidget_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = cQGraphicsWidget_vtable_callback_grabMouseEvent
  if not isNil(vtbl[].ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = cQGraphicsWidget_vtable_callback_ungrabMouseEvent
  if not isNil(vtbl[].grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = cQGraphicsWidget_vtable_callback_grabKeyboardEvent
  if not isNil(vtbl[].ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = cQGraphicsWidget_vtable_callback_ungrabKeyboardEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsWidget_vtable_callback_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = cQGraphicsWidget_vtable_callback_advance
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = cQGraphicsWidget_vtable_callback_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = cQGraphicsWidget_vtable_callback_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = cQGraphicsWidget_vtable_callback_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = cQGraphicsWidget_vtable_callback_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = cQGraphicsWidget_vtable_callback_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = cQGraphicsWidget_vtable_callback_sceneEventFilter
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGraphicsWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGraphicsWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGraphicsWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGraphicsWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGraphicsWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = cQGraphicsWidget_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGraphicsWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGraphicsWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGraphicsWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGraphicsWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGraphicsWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGraphicsWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGraphicsWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGraphicsWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGraphicsWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = cQGraphicsWidget_vtable_callback_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = cQGraphicsWidget_vtable_callback_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = cQGraphicsWidget_vtable_callback_extension
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = cQGraphicsWidget_vtable_callback_isEmpty
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsWidget_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsWidgetVTable = nil): gen_qgraphicswidget_types.QGraphicsWidget =
  let vtbl = if vtbl == nil: new QGraphicsWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsWidget_vtable_callback_metacall
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQGraphicsWidget_vtable_callback_setGeometry
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = cQGraphicsWidget_vtable_callback_getContentsMargins
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = cQGraphicsWidget_vtable_callback_typeX
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = cQGraphicsWidget_vtable_callback_paint
  if not isNil(vtbl[].paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = cQGraphicsWidget_vtable_callback_paintWindowFrame
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = cQGraphicsWidget_vtable_callback_boundingRect
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = cQGraphicsWidget_vtable_callback_shape
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQGraphicsWidget_vtable_callback_initStyleOption
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGraphicsWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = cQGraphicsWidget_vtable_callback_updateGeometry
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = cQGraphicsWidget_vtable_callback_itemChange
  if not isNil(vtbl[].propertyChange):
    vtbl[].vtbl.propertyChange = cQGraphicsWidget_vtable_callback_propertyChange
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = cQGraphicsWidget_vtable_callback_sceneEvent
  if not isNil(vtbl[].windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = cQGraphicsWidget_vtable_callback_windowFrameEvent
  if not isNil(vtbl[].windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = cQGraphicsWidget_vtable_callback_windowFrameSectionAt
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsWidget_vtable_callback_event
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGraphicsWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGraphicsWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGraphicsWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGraphicsWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGraphicsWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGraphicsWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGraphicsWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].polishEvent):
    vtbl[].vtbl.polishEvent = cQGraphicsWidget_vtable_callback_polishEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGraphicsWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGraphicsWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = cQGraphicsWidget_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = cQGraphicsWidget_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = cQGraphicsWidget_vtable_callback_grabMouseEvent
  if not isNil(vtbl[].ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = cQGraphicsWidget_vtable_callback_ungrabMouseEvent
  if not isNil(vtbl[].grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = cQGraphicsWidget_vtable_callback_grabKeyboardEvent
  if not isNil(vtbl[].ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = cQGraphicsWidget_vtable_callback_ungrabKeyboardEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsWidget_vtable_callback_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = cQGraphicsWidget_vtable_callback_advance
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = cQGraphicsWidget_vtable_callback_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = cQGraphicsWidget_vtable_callback_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = cQGraphicsWidget_vtable_callback_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = cQGraphicsWidget_vtable_callback_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = cQGraphicsWidget_vtable_callback_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = cQGraphicsWidget_vtable_callback_sceneEventFilter
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGraphicsWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGraphicsWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGraphicsWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGraphicsWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGraphicsWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = cQGraphicsWidget_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGraphicsWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGraphicsWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGraphicsWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGraphicsWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGraphicsWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGraphicsWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGraphicsWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGraphicsWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGraphicsWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = cQGraphicsWidget_vtable_callback_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = cQGraphicsWidget_vtable_callback_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = cQGraphicsWidget_vtable_callback_extension
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = cQGraphicsWidget_vtable_callback_isEmpty
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsWidget_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem, wFlags: cint,
    vtbl: ref QGraphicsWidgetVTable = nil): gen_qgraphicswidget_types.QGraphicsWidget =
  let vtbl = if vtbl == nil: new QGraphicsWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsWidgetVTable](fcQGraphicsWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsWidget_vtable_callback_metacall
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQGraphicsWidget_vtable_callback_setGeometry
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = cQGraphicsWidget_vtable_callback_getContentsMargins
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = cQGraphicsWidget_vtable_callback_typeX
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = cQGraphicsWidget_vtable_callback_paint
  if not isNil(vtbl[].paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = cQGraphicsWidget_vtable_callback_paintWindowFrame
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = cQGraphicsWidget_vtable_callback_boundingRect
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = cQGraphicsWidget_vtable_callback_shape
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQGraphicsWidget_vtable_callback_initStyleOption
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGraphicsWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = cQGraphicsWidget_vtable_callback_updateGeometry
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = cQGraphicsWidget_vtable_callback_itemChange
  if not isNil(vtbl[].propertyChange):
    vtbl[].vtbl.propertyChange = cQGraphicsWidget_vtable_callback_propertyChange
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = cQGraphicsWidget_vtable_callback_sceneEvent
  if not isNil(vtbl[].windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = cQGraphicsWidget_vtable_callback_windowFrameEvent
  if not isNil(vtbl[].windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = cQGraphicsWidget_vtable_callback_windowFrameSectionAt
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsWidget_vtable_callback_event
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGraphicsWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGraphicsWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGraphicsWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGraphicsWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGraphicsWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGraphicsWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGraphicsWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].polishEvent):
    vtbl[].vtbl.polishEvent = cQGraphicsWidget_vtable_callback_polishEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGraphicsWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGraphicsWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = cQGraphicsWidget_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = cQGraphicsWidget_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = cQGraphicsWidget_vtable_callback_grabMouseEvent
  if not isNil(vtbl[].ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = cQGraphicsWidget_vtable_callback_ungrabMouseEvent
  if not isNil(vtbl[].grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = cQGraphicsWidget_vtable_callback_grabKeyboardEvent
  if not isNil(vtbl[].ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = cQGraphicsWidget_vtable_callback_ungrabKeyboardEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsWidget_vtable_callback_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = cQGraphicsWidget_vtable_callback_advance
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = cQGraphicsWidget_vtable_callback_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = cQGraphicsWidget_vtable_callback_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = cQGraphicsWidget_vtable_callback_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = cQGraphicsWidget_vtable_callback_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = cQGraphicsWidget_vtable_callback_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = cQGraphicsWidget_vtable_callback_sceneEventFilter
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGraphicsWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGraphicsWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGraphicsWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGraphicsWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGraphicsWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = cQGraphicsWidget_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGraphicsWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGraphicsWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGraphicsWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGraphicsWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGraphicsWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGraphicsWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGraphicsWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGraphicsWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGraphicsWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = cQGraphicsWidget_vtable_callback_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = cQGraphicsWidget_vtable_callback_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = cQGraphicsWidget_vtable_callback_extension
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = cQGraphicsWidget_vtable_callback_isEmpty
  gen_qgraphicswidget_types.QGraphicsWidget(h: fcQGraphicsWidget_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(wFlags)), owned: true)

const cQGraphicsWidget_mvtbl = cQGraphicsWidgetVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsWidget()[])](self.fcQGraphicsWidget_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGraphicsWidget_method_callback_metaObject,
  metacast: cQGraphicsWidget_method_callback_metacast,
  metacall: cQGraphicsWidget_method_callback_metacall,
  setGeometry: cQGraphicsWidget_method_callback_setGeometry,
  getContentsMargins: cQGraphicsWidget_method_callback_getContentsMargins,
  typeX: cQGraphicsWidget_method_callback_typeX,
  paint: cQGraphicsWidget_method_callback_paint,
  paintWindowFrame: cQGraphicsWidget_method_callback_paintWindowFrame,
  boundingRect: cQGraphicsWidget_method_callback_boundingRect,
  shape: cQGraphicsWidget_method_callback_shape,
  initStyleOption: cQGraphicsWidget_method_callback_initStyleOption,
  sizeHint: cQGraphicsWidget_method_callback_sizeHint,
  updateGeometry: cQGraphicsWidget_method_callback_updateGeometry,
  itemChange: cQGraphicsWidget_method_callback_itemChange,
  propertyChange: cQGraphicsWidget_method_callback_propertyChange,
  sceneEvent: cQGraphicsWidget_method_callback_sceneEvent,
  windowFrameEvent: cQGraphicsWidget_method_callback_windowFrameEvent,
  windowFrameSectionAt: cQGraphicsWidget_method_callback_windowFrameSectionAt,
  event: cQGraphicsWidget_method_callback_event,
  changeEvent: cQGraphicsWidget_method_callback_changeEvent,
  closeEvent: cQGraphicsWidget_method_callback_closeEvent,
  focusInEvent: cQGraphicsWidget_method_callback_focusInEvent,
  focusNextPrevChild: cQGraphicsWidget_method_callback_focusNextPrevChild,
  focusOutEvent: cQGraphicsWidget_method_callback_focusOutEvent,
  hideEvent: cQGraphicsWidget_method_callback_hideEvent,
  moveEvent: cQGraphicsWidget_method_callback_moveEvent,
  polishEvent: cQGraphicsWidget_method_callback_polishEvent,
  resizeEvent: cQGraphicsWidget_method_callback_resizeEvent,
  showEvent: cQGraphicsWidget_method_callback_showEvent,
  hoverMoveEvent: cQGraphicsWidget_method_callback_hoverMoveEvent,
  hoverLeaveEvent: cQGraphicsWidget_method_callback_hoverLeaveEvent,
  grabMouseEvent: cQGraphicsWidget_method_callback_grabMouseEvent,
  ungrabMouseEvent: cQGraphicsWidget_method_callback_ungrabMouseEvent,
  grabKeyboardEvent: cQGraphicsWidget_method_callback_grabKeyboardEvent,
  ungrabKeyboardEvent: cQGraphicsWidget_method_callback_ungrabKeyboardEvent,
  eventFilter: cQGraphicsWidget_method_callback_eventFilter,
  timerEvent: cQGraphicsWidget_method_callback_timerEvent,
  childEvent: cQGraphicsWidget_method_callback_childEvent,
  customEvent: cQGraphicsWidget_method_callback_customEvent,
  connectNotify: cQGraphicsWidget_method_callback_connectNotify,
  disconnectNotify: cQGraphicsWidget_method_callback_disconnectNotify,
  advance: cQGraphicsWidget_method_callback_advance,
  contains: cQGraphicsWidget_method_callback_contains,
  collidesWithItem: cQGraphicsWidget_method_callback_collidesWithItem,
  collidesWithPath: cQGraphicsWidget_method_callback_collidesWithPath,
  isObscuredBy: cQGraphicsWidget_method_callback_isObscuredBy,
  opaqueArea: cQGraphicsWidget_method_callback_opaqueArea,
  sceneEventFilter: cQGraphicsWidget_method_callback_sceneEventFilter,
  contextMenuEvent: cQGraphicsWidget_method_callback_contextMenuEvent,
  dragEnterEvent: cQGraphicsWidget_method_callback_dragEnterEvent,
  dragLeaveEvent: cQGraphicsWidget_method_callback_dragLeaveEvent,
  dragMoveEvent: cQGraphicsWidget_method_callback_dragMoveEvent,
  dropEvent: cQGraphicsWidget_method_callback_dropEvent,
  hoverEnterEvent: cQGraphicsWidget_method_callback_hoverEnterEvent,
  keyPressEvent: cQGraphicsWidget_method_callback_keyPressEvent,
  keyReleaseEvent: cQGraphicsWidget_method_callback_keyReleaseEvent,
  mousePressEvent: cQGraphicsWidget_method_callback_mousePressEvent,
  mouseMoveEvent: cQGraphicsWidget_method_callback_mouseMoveEvent,
  mouseReleaseEvent: cQGraphicsWidget_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQGraphicsWidget_method_callback_mouseDoubleClickEvent,
  wheelEvent: cQGraphicsWidget_method_callback_wheelEvent,
  inputMethodEvent: cQGraphicsWidget_method_callback_inputMethodEvent,
  inputMethodQuery: cQGraphicsWidget_method_callback_inputMethodQuery,
  supportsExtension: cQGraphicsWidget_method_callback_supportsExtension,
  setExtension: cQGraphicsWidget_method_callback_setExtension,
  extension: cQGraphicsWidget_method_callback_extension,
  isEmpty: cQGraphicsWidget_method_callback_isEmpty,
)
proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget,
    inst: VirtualQGraphicsWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsWidget_new(addr(cQGraphicsWidget_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    inst: VirtualQGraphicsWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsWidget_new2(addr(cQGraphicsWidget_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qgraphicswidget_types.QGraphicsWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem, wFlags: cint,
    inst: VirtualQGraphicsWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsWidget_new3(addr(cQGraphicsWidget_mvtbl), addr(inst[]), parent.h, cint(wFlags))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicswidget_types.QGraphicsWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWidget_staticMetaObject())
