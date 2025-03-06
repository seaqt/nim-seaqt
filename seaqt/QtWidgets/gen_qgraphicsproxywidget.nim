import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
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

proc fcQGraphicsProxyWidget_metaObject(self: pointer, ): pointer {.importc: "QGraphicsProxyWidget_metaObject".}
proc fcQGraphicsProxyWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsProxyWidget_metacast".}
proc fcQGraphicsProxyWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsProxyWidget_metacall".}
proc fcQGraphicsProxyWidget_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr".}
proc fcQGraphicsProxyWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_trUtf8".}
proc fcQGraphicsProxyWidget_setWidget(self: pointer, widget: pointer): void {.importc: "QGraphicsProxyWidget_setWidget".}
proc fcQGraphicsProxyWidget_widget(self: pointer, ): pointer {.importc: "QGraphicsProxyWidget_widget".}
proc fcQGraphicsProxyWidget_subWidgetRect(self: pointer, widget: pointer): pointer {.importc: "QGraphicsProxyWidget_subWidgetRect".}
proc fcQGraphicsProxyWidget_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsProxyWidget_setGeometry".}
proc fcQGraphicsProxyWidget_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsProxyWidget_paint".}
proc fcQGraphicsProxyWidget_typeX(self: pointer, ): cint {.importc: "QGraphicsProxyWidget_type".}
proc fcQGraphicsProxyWidget_createProxyForChildWidget(self: pointer, child: pointer): pointer {.importc: "QGraphicsProxyWidget_createProxyForChildWidget".}
proc fcQGraphicsProxyWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr2".}
proc fcQGraphicsProxyWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr3".}
proc fcQGraphicsProxyWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_trUtf82".}
proc fcQGraphicsProxyWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsProxyWidget_trUtf83".}
type cQGraphicsProxyWidgetVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsProxyWidgetVTable, self: ptr cQGraphicsProxyWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  grabMouseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  ungrabMouseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, which: cint, constraint: pointer): pointer {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  getContentsMargins*: proc(vtbl, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl, raises: [], gcsafe.}
  paintWindowFrame*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  updateGeometry*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  propertyChange*: proc(vtbl, self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowFrameEvent*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowFrameSectionAt*: proc(vtbl, self: pointer, pos: pointer): cint {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  polishEvent*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  grabKeyboardEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  ungrabKeyboardEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsProxyWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsProxyWidget_virtualbase_metaObject".}
proc fcQGraphicsProxyWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsProxyWidget_virtualbase_metacast".}
proc fcQGraphicsProxyWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsProxyWidget_virtualbase_metacall".}
proc fcQGraphicsProxyWidget_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_setGeometry".}
proc fcQGraphicsProxyWidget_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_paint".}
proc fcQGraphicsProxyWidget_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsProxyWidget_virtualbase_type".}
proc fcQGraphicsProxyWidget_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsProxyWidget_virtualbase_itemChange".}
proc fcQGraphicsProxyWidget_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsProxyWidget_virtualbase_event".}
proc fcQGraphicsProxyWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QGraphicsProxyWidget_virtualbase_eventFilter".}
proc fcQGraphicsProxyWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_showEvent".}
proc fcQGraphicsProxyWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_hideEvent".}
proc fcQGraphicsProxyWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_contextMenuEvent".}
proc fcQGraphicsProxyWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_dragEnterEvent".}
proc fcQGraphicsProxyWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_dragLeaveEvent".}
proc fcQGraphicsProxyWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_dragMoveEvent".}
proc fcQGraphicsProxyWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_dropEvent".}
proc fcQGraphicsProxyWidget_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_hoverEnterEvent".}
proc fcQGraphicsProxyWidget_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsProxyWidget_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_hoverMoveEvent".}
proc fcQGraphicsProxyWidget_virtualbase_grabMouseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_grabMouseEvent".}
proc fcQGraphicsProxyWidget_virtualbase_ungrabMouseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_ungrabMouseEvent".}
proc fcQGraphicsProxyWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_mouseMoveEvent".}
proc fcQGraphicsProxyWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_mousePressEvent".}
proc fcQGraphicsProxyWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsProxyWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_wheelEvent".}
proc fcQGraphicsProxyWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_keyPressEvent".}
proc fcQGraphicsProxyWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_keyReleaseEvent".}
proc fcQGraphicsProxyWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_focusInEvent".}
proc fcQGraphicsProxyWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_focusOutEvent".}
proc fcQGraphicsProxyWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QGraphicsProxyWidget_virtualbase_focusNextPrevChild".}
proc fcQGraphicsProxyWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsProxyWidget_virtualbase_inputMethodQuery".}
proc fcQGraphicsProxyWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_inputMethodEvent".}
proc fcQGraphicsProxyWidget_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsProxyWidget_virtualbase_sizeHint".}
proc fcQGraphicsProxyWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_resizeEvent".}
proc fcQGraphicsProxyWidget_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsProxyWidget_virtualbase_getContentsMargins".}
proc fcQGraphicsProxyWidget_virtualbase_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_paintWindowFrame".}
proc fcQGraphicsProxyWidget_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsProxyWidget_virtualbase_boundingRect".}
proc fcQGraphicsProxyWidget_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsProxyWidget_virtualbase_shape".}
proc fcQGraphicsProxyWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_initStyleOption".}
proc fcQGraphicsProxyWidget_virtualbase_updateGeometry(self: pointer, ): void {.importc: "QGraphicsProxyWidget_virtualbase_updateGeometry".}
proc fcQGraphicsProxyWidget_virtualbase_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.importc: "QGraphicsProxyWidget_virtualbase_propertyChange".}
proc fcQGraphicsProxyWidget_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsProxyWidget_virtualbase_sceneEvent".}
proc fcQGraphicsProxyWidget_virtualbase_windowFrameEvent(self: pointer, e: pointer): bool {.importc: "QGraphicsProxyWidget_virtualbase_windowFrameEvent".}
proc fcQGraphicsProxyWidget_virtualbase_windowFrameSectionAt(self: pointer, pos: pointer): cint {.importc: "QGraphicsProxyWidget_virtualbase_windowFrameSectionAt".}
proc fcQGraphicsProxyWidget_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_changeEvent".}
proc fcQGraphicsProxyWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_closeEvent".}
proc fcQGraphicsProxyWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_moveEvent".}
proc fcQGraphicsProxyWidget_virtualbase_polishEvent(self: pointer, ): void {.importc: "QGraphicsProxyWidget_virtualbase_polishEvent".}
proc fcQGraphicsProxyWidget_virtualbase_grabKeyboardEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_grabKeyboardEvent".}
proc fcQGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent".}
proc fcQGraphicsProxyWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_timerEvent".}
proc fcQGraphicsProxyWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_childEvent".}
proc fcQGraphicsProxyWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_customEvent".}
proc fcQGraphicsProxyWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_connectNotify".}
proc fcQGraphicsProxyWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_disconnectNotify".}
proc fcQGraphicsProxyWidget_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsProxyWidget_virtualbase_advance".}
proc fcQGraphicsProxyWidget_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsProxyWidget_virtualbase_contains".}
proc fcQGraphicsProxyWidget_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsProxyWidget_virtualbase_collidesWithItem".}
proc fcQGraphicsProxyWidget_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsProxyWidget_virtualbase_collidesWithPath".}
proc fcQGraphicsProxyWidget_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsProxyWidget_virtualbase_isObscuredBy".}
proc fcQGraphicsProxyWidget_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsProxyWidget_virtualbase_opaqueArea".}
proc fcQGraphicsProxyWidget_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsProxyWidget_virtualbase_sceneEventFilter".}
proc fcQGraphicsProxyWidget_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsProxyWidget_virtualbase_supportsExtension".}
proc fcQGraphicsProxyWidget_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_setExtension".}
proc fcQGraphicsProxyWidget_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsProxyWidget_virtualbase_extension".}
proc fcQGraphicsProxyWidget_protectedbase_newProxyWidget(self: pointer, param1: pointer): pointer {.importc: "QGraphicsProxyWidget_protectedbase_newProxyWidget".}
proc fcQGraphicsProxyWidget_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGraphicsProxyWidget_protectedbase_updateMicroFocus".}
proc fcQGraphicsProxyWidget_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsProxyWidget_protectedbase_sender".}
proc fcQGraphicsProxyWidget_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsProxyWidget_protectedbase_senderSignalIndex".}
proc fcQGraphicsProxyWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsProxyWidget_protectedbase_receivers".}
proc fcQGraphicsProxyWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsProxyWidget_protectedbase_isSignalConnected".}
proc fcQGraphicsProxyWidget_protectedbase_addToIndex(self: pointer, ): void {.importc: "QGraphicsProxyWidget_protectedbase_addToIndex".}
proc fcQGraphicsProxyWidget_protectedbase_removeFromIndex(self: pointer, ): void {.importc: "QGraphicsProxyWidget_protectedbase_removeFromIndex".}
proc fcQGraphicsProxyWidget_protectedbase_prepareGeometryChange(self: pointer, ): void {.importc: "QGraphicsProxyWidget_protectedbase_prepareGeometryChange".}
proc fcQGraphicsProxyWidget_protectedbase_setGraphicsItem(self: pointer, item: pointer): void {.importc: "QGraphicsProxyWidget_protectedbase_setGraphicsItem".}
proc fcQGraphicsProxyWidget_protectedbase_setOwnedByLayout(self: pointer, ownedByLayout: bool): void {.importc: "QGraphicsProxyWidget_protectedbase_setOwnedByLayout".}
proc fcQGraphicsProxyWidget_new(vtbl: pointer, ): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new".}
proc fcQGraphicsProxyWidget_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new2".}
proc fcQGraphicsProxyWidget_new3(vtbl: pointer, parent: pointer, wFlags: cint): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new3".}
proc fcQGraphicsProxyWidget_staticMetaObject(): pointer {.importc: "QGraphicsProxyWidget_staticMetaObject".}

proc metaObject*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsProxyWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, param1: cstring): pointer =
  fcQGraphicsProxyWidget_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsProxyWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, s: cstring): string =
  let v_ms = fcQGraphicsProxyWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, s: cstring): string =
  let v_ms = fcQGraphicsProxyWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWidget*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsProxyWidget_setWidget(self.h, widget.h)

proc widget*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQGraphicsProxyWidget_widget(self.h), owned: false)

proc subWidgetRect*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsProxyWidget_subWidgetRect(self.h, widget.h), owned: true)

proc setGeometry*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsProxyWidget_setGeometry(self.h, rect.h)

proc paint*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsProxyWidget_paint(self.h, painter.h, option.h, widget.h)

proc typeX*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): cint =
  fcQGraphicsProxyWidget_typeX(self.h)

proc createProxyForChildWidget*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, child: gen_qwidget_types.QWidget): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_createProxyForChildWidget(self.h, child.h), owned: false)

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

proc trUtf8*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsProxyWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsProxyWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QGraphicsProxyWidgetmetaObjectProc* = proc(self: QGraphicsProxyWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsProxyWidgetmetacastProc* = proc(self: QGraphicsProxyWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsProxyWidgetmetacallProc* = proc(self: QGraphicsProxyWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsProxyWidgetsetGeometryProc* = proc(self: QGraphicsProxyWidget, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetpaintProc* = proc(self: QGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgettypeXProc* = proc(self: QGraphicsProxyWidget): cint {.raises: [], gcsafe.}
type QGraphicsProxyWidgetitemChangeProc* = proc(self: QGraphicsProxyWidget, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsProxyWidgeteventProc* = proc(self: QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsProxyWidgeteventFilterProc* = proc(self: QGraphicsProxyWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsProxyWidgetshowEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgethideEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetcontextMenuEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetdragEnterEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetdragLeaveEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetdragMoveEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetdropEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgethoverEnterEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgethoverLeaveEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgethoverMoveEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetgrabMouseEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetungrabMouseEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetmouseMoveEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetmousePressEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetmouseReleaseEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetmouseDoubleClickEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetwheelEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetkeyPressEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetkeyReleaseEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetfocusInEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetfocusOutEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetfocusNextPrevChildProc* = proc(self: QGraphicsProxyWidget, next: bool): bool {.raises: [], gcsafe.}
type QGraphicsProxyWidgetinputMethodQueryProc* = proc(self: QGraphicsProxyWidget, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsProxyWidgetinputMethodEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetsizeHintProc* = proc(self: QGraphicsProxyWidget, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.raises: [], gcsafe.}
type QGraphicsProxyWidgetresizeEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetgetContentsMarginsProc* = proc(self: QGraphicsProxyWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetpaintWindowFrameProc* = proc(self: QGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetboundingRectProc* = proc(self: QGraphicsProxyWidget): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsProxyWidgetshapeProc* = proc(self: QGraphicsProxyWidget): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsProxyWidgetinitStyleOptionProc* = proc(self: QGraphicsProxyWidget, option: gen_qstyleoption_types.QStyleOption): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetupdateGeometryProc* = proc(self: QGraphicsProxyWidget): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetpropertyChangeProc* = proc(self: QGraphicsProxyWidget, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsProxyWidgetsceneEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsProxyWidgetwindowFrameEventProc* = proc(self: QGraphicsProxyWidget, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsProxyWidgetwindowFrameSectionAtProc* = proc(self: QGraphicsProxyWidget, pos: gen_qpoint_types.QPointF): cint {.raises: [], gcsafe.}
type QGraphicsProxyWidgetchangeEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetcloseEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetmoveEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetpolishEventProc* = proc(self: QGraphicsProxyWidget): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetgrabKeyboardEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetungrabKeyboardEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgettimerEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetchildEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetcustomEventProc* = proc(self: QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetconnectNotifyProc* = proc(self: QGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetdisconnectNotifyProc* = proc(self: QGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetadvanceProc* = proc(self: QGraphicsProxyWidget, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetcontainsProc* = proc(self: QGraphicsProxyWidget, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsProxyWidgetcollidesWithItemProc* = proc(self: QGraphicsProxyWidget, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsProxyWidgetcollidesWithPathProc* = proc(self: QGraphicsProxyWidget, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsProxyWidgetisObscuredByProc* = proc(self: QGraphicsProxyWidget, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsProxyWidgetopaqueAreaProc* = proc(self: QGraphicsProxyWidget): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsProxyWidgetsceneEventFilterProc* = proc(self: QGraphicsProxyWidget, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsProxyWidgetsupportsExtensionProc* = proc(self: QGraphicsProxyWidget, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsProxyWidgetsetExtensionProc* = proc(self: QGraphicsProxyWidget, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsProxyWidgetextensionProc* = proc(self: QGraphicsProxyWidget, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsProxyWidgetVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsProxyWidgetVTable
  metaObject*: QGraphicsProxyWidgetmetaObjectProc
  metacast*: QGraphicsProxyWidgetmetacastProc
  metacall*: QGraphicsProxyWidgetmetacallProc
  setGeometry*: QGraphicsProxyWidgetsetGeometryProc
  paint*: QGraphicsProxyWidgetpaintProc
  typeX*: QGraphicsProxyWidgettypeXProc
  itemChange*: QGraphicsProxyWidgetitemChangeProc
  event*: QGraphicsProxyWidgeteventProc
  eventFilter*: QGraphicsProxyWidgeteventFilterProc
  showEvent*: QGraphicsProxyWidgetshowEventProc
  hideEvent*: QGraphicsProxyWidgethideEventProc
  contextMenuEvent*: QGraphicsProxyWidgetcontextMenuEventProc
  dragEnterEvent*: QGraphicsProxyWidgetdragEnterEventProc
  dragLeaveEvent*: QGraphicsProxyWidgetdragLeaveEventProc
  dragMoveEvent*: QGraphicsProxyWidgetdragMoveEventProc
  dropEvent*: QGraphicsProxyWidgetdropEventProc
  hoverEnterEvent*: QGraphicsProxyWidgethoverEnterEventProc
  hoverLeaveEvent*: QGraphicsProxyWidgethoverLeaveEventProc
  hoverMoveEvent*: QGraphicsProxyWidgethoverMoveEventProc
  grabMouseEvent*: QGraphicsProxyWidgetgrabMouseEventProc
  ungrabMouseEvent*: QGraphicsProxyWidgetungrabMouseEventProc
  mouseMoveEvent*: QGraphicsProxyWidgetmouseMoveEventProc
  mousePressEvent*: QGraphicsProxyWidgetmousePressEventProc
  mouseReleaseEvent*: QGraphicsProxyWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QGraphicsProxyWidgetmouseDoubleClickEventProc
  wheelEvent*: QGraphicsProxyWidgetwheelEventProc
  keyPressEvent*: QGraphicsProxyWidgetkeyPressEventProc
  keyReleaseEvent*: QGraphicsProxyWidgetkeyReleaseEventProc
  focusInEvent*: QGraphicsProxyWidgetfocusInEventProc
  focusOutEvent*: QGraphicsProxyWidgetfocusOutEventProc
  focusNextPrevChild*: QGraphicsProxyWidgetfocusNextPrevChildProc
  inputMethodQuery*: QGraphicsProxyWidgetinputMethodQueryProc
  inputMethodEvent*: QGraphicsProxyWidgetinputMethodEventProc
  sizeHint*: QGraphicsProxyWidgetsizeHintProc
  resizeEvent*: QGraphicsProxyWidgetresizeEventProc
  getContentsMargins*: QGraphicsProxyWidgetgetContentsMarginsProc
  paintWindowFrame*: QGraphicsProxyWidgetpaintWindowFrameProc
  boundingRect*: QGraphicsProxyWidgetboundingRectProc
  shape*: QGraphicsProxyWidgetshapeProc
  initStyleOption*: QGraphicsProxyWidgetinitStyleOptionProc
  updateGeometry*: QGraphicsProxyWidgetupdateGeometryProc
  propertyChange*: QGraphicsProxyWidgetpropertyChangeProc
  sceneEvent*: QGraphicsProxyWidgetsceneEventProc
  windowFrameEvent*: QGraphicsProxyWidgetwindowFrameEventProc
  windowFrameSectionAt*: QGraphicsProxyWidgetwindowFrameSectionAtProc
  changeEvent*: QGraphicsProxyWidgetchangeEventProc
  closeEvent*: QGraphicsProxyWidgetcloseEventProc
  moveEvent*: QGraphicsProxyWidgetmoveEventProc
  polishEvent*: QGraphicsProxyWidgetpolishEventProc
  grabKeyboardEvent*: QGraphicsProxyWidgetgrabKeyboardEventProc
  ungrabKeyboardEvent*: QGraphicsProxyWidgetungrabKeyboardEventProc
  timerEvent*: QGraphicsProxyWidgettimerEventProc
  childEvent*: QGraphicsProxyWidgetchildEventProc
  customEvent*: QGraphicsProxyWidgetcustomEventProc
  connectNotify*: QGraphicsProxyWidgetconnectNotifyProc
  disconnectNotify*: QGraphicsProxyWidgetdisconnectNotifyProc
  advance*: QGraphicsProxyWidgetadvanceProc
  contains*: QGraphicsProxyWidgetcontainsProc
  collidesWithItem*: QGraphicsProxyWidgetcollidesWithItemProc
  collidesWithPath*: QGraphicsProxyWidgetcollidesWithPathProc
  isObscuredBy*: QGraphicsProxyWidgetisObscuredByProc
  opaqueArea*: QGraphicsProxyWidgetopaqueAreaProc
  sceneEventFilter*: QGraphicsProxyWidgetsceneEventFilterProc
  supportsExtension*: QGraphicsProxyWidgetsupportsExtensionProc
  setExtension*: QGraphicsProxyWidgetsetExtensionProc
  extension*: QGraphicsProxyWidgetextensionProc
proc QGraphicsProxyWidgetmetaObject*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsProxyWidget_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsProxyWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsProxyWidgetmetacast*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, param1: cstring): pointer =
  fcQGraphicsProxyWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsProxyWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsProxyWidgetmetacall*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsProxyWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsProxyWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsProxyWidgetsetGeometry*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsProxyWidget_virtualbase_setGeometry(self.h, rect.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_setGeometry(vtbl: pointer, self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QGraphicsProxyWidgetpaint*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsProxyWidget_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_paint(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsProxyWidgettypeX*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): cint =
  fcQGraphicsProxyWidget_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsProxyWidgetitemChange*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsProxyWidget_virtualbase_itemChange(self.h, cint(change), value.h), owned: true)

proc miqt_exec_callback_cQGraphicsProxyWidget_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsProxyWidgetevent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsProxyWidget_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsProxyWidgeteventFilter*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsProxyWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsProxyWidgetshowEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QShowEvent): void =
  fcQGraphicsProxyWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QGraphicsProxyWidgethideEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QHideEvent): void =
  fcQGraphicsProxyWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QGraphicsProxyWidgetcontextMenuEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsProxyWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsProxyWidgetdragEnterEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsProxyWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsProxyWidgetdragLeaveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsProxyWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsProxyWidgetdragMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsProxyWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsProxyWidgetdropEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsProxyWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsProxyWidgethoverEnterEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsProxyWidget_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsProxyWidgethoverLeaveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsProxyWidget_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsProxyWidgethoverMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsProxyWidget_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsProxyWidgetgrabMouseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_grabMouseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_grabMouseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].grabMouseEvent(self, slotval1)

proc QGraphicsProxyWidgetungrabMouseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_ungrabMouseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_ungrabMouseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].ungrabMouseEvent(self, slotval1)

proc QGraphicsProxyWidgetmouseMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsProxyWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsProxyWidgetmousePressEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsProxyWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsProxyWidgetmouseReleaseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsProxyWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsProxyWidgetmouseDoubleClickEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsProxyWidgetwheelEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsProxyWidget_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsProxyWidgetkeyPressEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsProxyWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsProxyWidgetkeyReleaseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsProxyWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsProxyWidgetfocusInEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsProxyWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsProxyWidgetfocusOutEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsProxyWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsProxyWidgetfocusNextPrevChild*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, next: bool): bool =
  fcQGraphicsProxyWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQGraphicsProxyWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QGraphicsProxyWidgetinputMethodQuery*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsProxyWidget_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc miqt_exec_callback_cQGraphicsProxyWidget_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsProxyWidgetinputMethodEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsProxyWidget_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsProxyWidgetsizeHint*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsProxyWidget_virtualbase_sizeHint(self.h, cint(which), constraint.h), owned: true)

proc miqt_exec_callback_cQGraphicsProxyWidget_sizeHint(vtbl: pointer, self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsProxyWidgetresizeEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void =
  fcQGraphicsProxyWidget_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QGraphicsProxyWidgetgetContentsMargins*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsProxyWidget_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

proc miqt_exec_callback_cQGraphicsProxyWidget_getContentsMargins(vtbl: pointer, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl[].getContentsMargins(self, slotval1, slotval2, slotval3, slotval4)

proc QGraphicsProxyWidgetpaintWindowFrame*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsProxyWidget_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_paintWindowFrame(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].paintWindowFrame(self, slotval1, slotval2, slotval3)

proc QGraphicsProxyWidgetboundingRect*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsProxyWidget_virtualbase_boundingRect(self.h), owned: true)

proc miqt_exec_callback_cQGraphicsProxyWidget_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsProxyWidgetshape*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsProxyWidget_virtualbase_shape(self.h), owned: true)

proc miqt_exec_callback_cQGraphicsProxyWidget_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsProxyWidgetinitStyleOption*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, option: gen_qstyleoption_types.QStyleOption): void =
  fcQGraphicsProxyWidget_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QGraphicsProxyWidgetupdateGeometry*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): void =
  fcQGraphicsProxyWidget_virtualbase_updateGeometry(self.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_updateGeometry(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  vtbl[].updateGeometry(self)

proc QGraphicsProxyWidgetpropertyChange*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsProxyWidget_virtualbase_propertyChange(self.h, struct_miqt_string(data: propertyName, len: csize_t(len(propertyName))), value.h), owned: true)

proc miqt_exec_callback_cQGraphicsProxyWidget_propertyChange(vtbl: pointer, self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(toOpenArrayByte(vpropertyName_ms.data, 0, int(vpropertyName_ms.len)-1))
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl[].propertyChange(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsProxyWidgetsceneEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsProxyWidget_virtualbase_sceneEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_sceneEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsProxyWidgetwindowFrameEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsProxyWidget_virtualbase_windowFrameEvent(self.h, e.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_windowFrameEvent(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].windowFrameEvent(self, slotval1)
  virtualReturn

proc QGraphicsProxyWidgetwindowFrameSectionAt*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, pos: gen_qpoint_types.QPointF): cint =
  cint(fcQGraphicsProxyWidget_virtualbase_windowFrameSectionAt(self.h, pos.h))

proc miqt_exec_callback_cQGraphicsProxyWidget_windowFrameSectionAt(vtbl: pointer, self: pointer, pos: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: pos, owned: false)
  var virtualReturn = vtbl[].windowFrameSectionAt(self, slotval1)
  cint(virtualReturn)

proc QGraphicsProxyWidgetchangeEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QGraphicsProxyWidgetcloseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQGraphicsProxyWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QGraphicsProxyWidgetmoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void =
  fcQGraphicsProxyWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QGraphicsProxyWidgetpolishEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): void =
  fcQGraphicsProxyWidget_virtualbase_polishEvent(self.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_polishEvent(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  vtbl[].polishEvent(self)

proc QGraphicsProxyWidgetgrabKeyboardEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_grabKeyboardEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_grabKeyboardEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].grabKeyboardEvent(self, slotval1)

proc QGraphicsProxyWidgetungrabKeyboardEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_ungrabKeyboardEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].ungrabKeyboardEvent(self, slotval1)

proc QGraphicsProxyWidgettimerEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsProxyWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsProxyWidgetchildEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsProxyWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsProxyWidgetcustomEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsProxyWidgetconnectNotify*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsProxyWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsProxyWidgetdisconnectNotify*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsProxyWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc QGraphicsProxyWidgetadvance*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, phase: cint): void =
  fcQGraphicsProxyWidget_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsProxyWidget_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsProxyWidgetcontains*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsProxyWidget_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsProxyWidgetcollidesWithItem*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsProxyWidget_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsProxyWidget_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsProxyWidgetcollidesWithPath*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsProxyWidget_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsProxyWidget_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsProxyWidgetisObscuredBy*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsProxyWidget_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsProxyWidgetopaqueArea*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsProxyWidget_virtualbase_opaqueArea(self.h), owned: true)

proc miqt_exec_callback_cQGraphicsProxyWidget_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsProxyWidgetsceneEventFilter*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsProxyWidget_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsProxyWidgetsupportsExtension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, extension: cint): bool =
  fcQGraphicsProxyWidget_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsProxyWidget_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsProxyWidgetsetExtension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsProxyWidget_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsProxyWidget_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsProxyWidgetextension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsProxyWidget_virtualbase_extension(self.h, variant.h), owned: true)

proc miqt_exec_callback_cQGraphicsProxyWidget_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](vtbl)
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsProxyWidget* {.inheritable.} = ref object of QGraphicsProxyWidget
  vtbl*: cQGraphicsProxyWidgetVTable
method metaObject*(self: VirtualQGraphicsProxyWidget, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsProxyWidgetmetaObject(self[])
proc miqt_exec_method_cQGraphicsProxyWidget_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsProxyWidget, param1: cstring): pointer {.base.} =
  QGraphicsProxyWidgetmetacast(self[], param1)
proc miqt_exec_method_cQGraphicsProxyWidget_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsProxyWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsProxyWidgetmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQGraphicsProxyWidget_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setGeometry*(self: VirtualQGraphicsProxyWidget, rect: gen_qrect_types.QRectF): void {.base.} =
  QGraphicsProxyWidgetsetGeometry(self[], rect)
proc miqt_exec_method_cQGraphicsProxyWidget_setGeometry(vtbl: pointer, inst: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl.setGeometry(slotval1)

method paint*(self: VirtualQGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.base.} =
  QGraphicsProxyWidgetpaint(self[], painter, option, widget)
proc miqt_exec_method_cQGraphicsProxyWidget_paint(vtbl: pointer, inst: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl.paint(slotval1, slotval2, slotval3)

method typeX*(self: VirtualQGraphicsProxyWidget, ): cint {.base.} =
  QGraphicsProxyWidgettypeX(self[])
proc miqt_exec_method_cQGraphicsProxyWidget_typeX(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  var virtualReturn = vtbl.typeX()
  virtualReturn

method itemChange*(self: VirtualQGraphicsProxyWidget, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsProxyWidgetitemChange(self[], change, value)
proc miqt_exec_method_cQGraphicsProxyWidget_itemChange(vtbl: pointer, inst: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl.itemChange(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsProxyWidgetevent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGraphicsProxyWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsProxyWidgeteventFilter(self[], objectVal, event)
proc miqt_exec_method_cQGraphicsProxyWidget_eventFilter(vtbl: pointer, inst: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method showEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QGraphicsProxyWidgetshowEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QGraphicsProxyWidgethideEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method contextMenuEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.base.} =
  QGraphicsProxyWidgetcontextMenuEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method dragEnterEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsProxyWidgetdragEnterEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragLeaveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsProxyWidgetdragLeaveEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dragMoveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsProxyWidgetdragMoveEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dropEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsProxyWidgetdropEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method hoverEnterEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsProxyWidgethoverEnterEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_hoverEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl.hoverEnterEvent(slotval1)

method hoverLeaveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsProxyWidgethoverLeaveEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_hoverLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl.hoverLeaveEvent(slotval1)

method hoverMoveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsProxyWidgethoverMoveEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_hoverMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl.hoverMoveEvent(slotval1)

method grabMouseEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetgrabMouseEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_grabMouseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.grabMouseEvent(slotval1)

method ungrabMouseEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetungrabMouseEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_ungrabMouseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.ungrabMouseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsProxyWidgetmouseMoveEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method mousePressEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsProxyWidgetmousePressEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsProxyWidgetmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsProxyWidgetmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.base.} =
  QGraphicsProxyWidgetwheelEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsProxyWidgetkeyPressEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsProxyWidgetkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsProxyWidgetfocusInEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsProxyWidgetfocusOutEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method focusNextPrevChild*(self: VirtualQGraphicsProxyWidget, next: bool): bool {.base.} =
  QGraphicsProxyWidgetfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQGraphicsProxyWidget_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method inputMethodQuery*(self: VirtualQGraphicsProxyWidget, query: cint): gen_qvariant_types.QVariant {.base.} =
  QGraphicsProxyWidgetinputMethodQuery(self[], query)
proc miqt_exec_method_cQGraphicsProxyWidget_inputMethodQuery(vtbl: pointer, inst: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = cint(query)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QGraphicsProxyWidgetinputMethodEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_inputMethodEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl.inputMethodEvent(slotval1)

method sizeHint*(self: VirtualQGraphicsProxyWidget, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.base.} =
  QGraphicsProxyWidgetsizeHint(self[], which, constraint)
proc miqt_exec_method_cQGraphicsProxyWidget_sizeHint(vtbl: pointer, inst: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = vtbl.sizeHint(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method resizeEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void {.base.} =
  QGraphicsProxyWidgetresizeEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method getContentsMargins*(self: VirtualQGraphicsProxyWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.base.} =
  QGraphicsProxyWidgetgetContentsMargins(self[], left, top, right, bottom)
proc miqt_exec_method_cQGraphicsProxyWidget_getContentsMargins(vtbl: pointer, inst: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl.getContentsMargins(slotval1, slotval2, slotval3, slotval4)

method paintWindowFrame*(self: VirtualQGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.base.} =
  QGraphicsProxyWidgetpaintWindowFrame(self[], painter, option, widget)
proc miqt_exec_method_cQGraphicsProxyWidget_paintWindowFrame(vtbl: pointer, inst: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl.paintWindowFrame(slotval1, slotval2, slotval3)

method boundingRect*(self: VirtualQGraphicsProxyWidget, ): gen_qrect_types.QRectF {.base.} =
  QGraphicsProxyWidgetboundingRect(self[])
proc miqt_exec_method_cQGraphicsProxyWidget_boundingRect(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  var virtualReturn = vtbl.boundingRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method shape*(self: VirtualQGraphicsProxyWidget, ): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsProxyWidgetshape(self[])
proc miqt_exec_method_cQGraphicsProxyWidget_shape(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  var virtualReturn = vtbl.shape()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method initStyleOption*(self: VirtualQGraphicsProxyWidget, option: gen_qstyleoption_types.QStyleOption): void {.base.} =
  QGraphicsProxyWidgetinitStyleOption(self[], option)
proc miqt_exec_method_cQGraphicsProxyWidget_initStyleOption(vtbl: pointer, inst: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  vtbl.initStyleOption(slotval1)

method updateGeometry*(self: VirtualQGraphicsProxyWidget, ): void {.base.} =
  QGraphicsProxyWidgetupdateGeometry(self[])
proc miqt_exec_method_cQGraphicsProxyWidget_updateGeometry(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  vtbl.updateGeometry()

method propertyChange*(self: VirtualQGraphicsProxyWidget, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsProxyWidgetpropertyChange(self[], propertyName, value)
proc miqt_exec_method_cQGraphicsProxyWidget_propertyChange(vtbl: pointer, inst: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(toOpenArrayByte(vpropertyName_ms.data, 0, int(vpropertyName_ms.len)-1))
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl.propertyChange(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sceneEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsProxyWidgetsceneEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_sceneEvent(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.sceneEvent(slotval1)
  virtualReturn

method windowFrameEvent*(self: VirtualQGraphicsProxyWidget, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsProxyWidgetwindowFrameEvent(self[], e)
proc miqt_exec_method_cQGraphicsProxyWidget_windowFrameEvent(vtbl: pointer, inst: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl.windowFrameEvent(slotval1)
  virtualReturn

method windowFrameSectionAt*(self: VirtualQGraphicsProxyWidget, pos: gen_qpoint_types.QPointF): cint {.base.} =
  QGraphicsProxyWidgetwindowFrameSectionAt(self[], pos)
proc miqt_exec_method_cQGraphicsProxyWidget_windowFrameSectionAt(vtbl: pointer, inst: pointer, pos: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qpoint_types.QPointF(h: pos, owned: false)
  var virtualReturn = vtbl.windowFrameSectionAt(slotval1)
  cint(virtualReturn)

method changeEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetchangeEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_changeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.changeEvent(slotval1)

method closeEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QGraphicsProxyWidgetcloseEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method moveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void {.base.} =
  QGraphicsProxyWidgetmoveEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method polishEvent*(self: VirtualQGraphicsProxyWidget, ): void {.base.} =
  QGraphicsProxyWidgetpolishEvent(self[])
proc miqt_exec_method_cQGraphicsProxyWidget_polishEvent(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  vtbl.polishEvent()

method grabKeyboardEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetgrabKeyboardEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_grabKeyboardEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.grabKeyboardEvent(slotval1)

method ungrabKeyboardEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetungrabKeyboardEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_ungrabKeyboardEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.ungrabKeyboardEvent(slotval1)

method timerEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsProxyWidgettimerEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsProxyWidgetchildEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetcustomEvent(self[], event)
proc miqt_exec_method_cQGraphicsProxyWidget_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsProxyWidgetconnectNotify(self[], signal)
proc miqt_exec_method_cQGraphicsProxyWidget_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsProxyWidgetdisconnectNotify(self[], signal)
proc miqt_exec_method_cQGraphicsProxyWidget_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

method advance*(self: VirtualQGraphicsProxyWidget, phase: cint): void {.base.} =
  QGraphicsProxyWidgetadvance(self[], phase)
proc miqt_exec_method_cQGraphicsProxyWidget_advance(vtbl: pointer, inst: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = phase
  vtbl.advance(slotval1)

method contains*(self: VirtualQGraphicsProxyWidget, point: gen_qpoint_types.QPointF): bool {.base.} =
  QGraphicsProxyWidgetcontains(self[], point)
proc miqt_exec_method_cQGraphicsProxyWidget_contains(vtbl: pointer, inst: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl.contains(slotval1)
  virtualReturn

method collidesWithItem*(self: VirtualQGraphicsProxyWidget, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.base.} =
  QGraphicsProxyWidgetcollidesWithItem(self[], other, mode)
proc miqt_exec_method_cQGraphicsProxyWidget_collidesWithItem(vtbl: pointer, inst: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl.collidesWithItem(slotval1, slotval2)
  virtualReturn

method collidesWithPath*(self: VirtualQGraphicsProxyWidget, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.base.} =
  QGraphicsProxyWidgetcollidesWithPath(self[], path, mode)
proc miqt_exec_method_cQGraphicsProxyWidget_collidesWithPath(vtbl: pointer, inst: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl.collidesWithPath(slotval1, slotval2)
  virtualReturn

method isObscuredBy*(self: VirtualQGraphicsProxyWidget, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.base.} =
  QGraphicsProxyWidgetisObscuredBy(self[], item)
proc miqt_exec_method_cQGraphicsProxyWidget_isObscuredBy(vtbl: pointer, inst: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = vtbl.isObscuredBy(slotval1)
  virtualReturn

method opaqueArea*(self: VirtualQGraphicsProxyWidget, ): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsProxyWidgetopaqueArea(self[])
proc miqt_exec_method_cQGraphicsProxyWidget_opaqueArea(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  var virtualReturn = vtbl.opaqueArea()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sceneEventFilter*(self: VirtualQGraphicsProxyWidget, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsProxyWidgetsceneEventFilter(self[], watched, event)
proc miqt_exec_method_cQGraphicsProxyWidget_sceneEventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.sceneEventFilter(slotval1, slotval2)
  virtualReturn

method supportsExtension*(self: VirtualQGraphicsProxyWidget, extension: cint): bool {.base.} =
  QGraphicsProxyWidgetsupportsExtension(self[], extension)
proc miqt_exec_method_cQGraphicsProxyWidget_supportsExtension(vtbl: pointer, inst: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = cint(extension)
  var virtualReturn = vtbl.supportsExtension(slotval1)
  virtualReturn

method setExtension*(self: VirtualQGraphicsProxyWidget, extension: cint, variant: gen_qvariant_types.QVariant): void {.base.} =
  QGraphicsProxyWidgetsetExtension(self[], extension, variant)
proc miqt_exec_method_cQGraphicsProxyWidget_setExtension(vtbl: pointer, inst: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  vtbl.setExtension(slotval1, slotval2)

method extension*(self: VirtualQGraphicsProxyWidget, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsProxyWidgetextension(self[], variant)
proc miqt_exec_method_cQGraphicsProxyWidget_extension(vtbl: pointer, inst: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsProxyWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = vtbl.extension(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc newProxyWidget*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, param1: gen_qwidget_types.QWidget): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_protectedbase_newProxyWidget(self.h, param1.h), owned: false)

proc updateMicroFocus*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): void =
  fcQGraphicsProxyWidget_protectedbase_updateMicroFocus(self.h)

proc sender*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsProxyWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): cint =
  fcQGraphicsProxyWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, signal: cstring): cint =
  fcQGraphicsProxyWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsProxyWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc addToIndex*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): void =
  fcQGraphicsProxyWidget_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): void =
  fcQGraphicsProxyWidget_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ): void =
  fcQGraphicsProxyWidget_protectedbase_prepareGeometryChange(self.h)

proc setGraphicsItem*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsProxyWidget_protectedbase_setGraphicsItem(self.h, item.h)

proc setOwnedByLayout*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ownedByLayout: bool): void =
  fcQGraphicsProxyWidget_protectedbase_setOwnedByLayout(self.h, ownedByLayout)

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    vtbl: ref QGraphicsProxyWidgetVTable = nil): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  let vtbl = if vtbl == nil: new QGraphicsProxyWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsProxyWidgetVTable, _: ptr cQGraphicsProxyWidget) {.cdecl.} =
    let vtbl = cast[ref QGraphicsProxyWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsProxyWidget_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsProxyWidget_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsProxyWidget_metacall
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsProxyWidget_setGeometry
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsProxyWidget_paint
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsProxyWidget_typeX
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsProxyWidget_itemChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsProxyWidget_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsProxyWidget_eventFilter
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsProxyWidget_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsProxyWidget_hideEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsProxyWidget_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsProxyWidget_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsProxyWidget_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsProxyWidget_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsProxyWidget_dropEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsProxyWidget_hoverEnterEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsProxyWidget_hoverLeaveEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsProxyWidget_hoverMoveEvent
  if not isNil(vtbl[].grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = miqt_exec_callback_cQGraphicsProxyWidget_grabMouseEvent
  if not isNil(vtbl[].ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = miqt_exec_callback_cQGraphicsProxyWidget_ungrabMouseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsProxyWidget_mouseMoveEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsProxyWidget_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsProxyWidget_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsProxyWidget_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsProxyWidget_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsProxyWidget_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsProxyWidget_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsProxyWidget_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsProxyWidget_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsProxyWidget_focusNextPrevChild
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsProxyWidget_inputMethodQuery
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsProxyWidget_inputMethodEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsProxyWidget_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsProxyWidget_resizeEvent
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsProxyWidget_getContentsMargins
  if not isNil(vtbl[].paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = miqt_exec_callback_cQGraphicsProxyWidget_paintWindowFrame
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsProxyWidget_boundingRect
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsProxyWidget_shape
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsProxyWidget_initStyleOption
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsProxyWidget_updateGeometry
  if not isNil(vtbl[].propertyChange):
    vtbl[].vtbl.propertyChange = miqt_exec_callback_cQGraphicsProxyWidget_propertyChange
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsProxyWidget_sceneEvent
  if not isNil(vtbl[].windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = miqt_exec_callback_cQGraphicsProxyWidget_windowFrameEvent
  if not isNil(vtbl[].windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = miqt_exec_callback_cQGraphicsProxyWidget_windowFrameSectionAt
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsProxyWidget_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsProxyWidget_closeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsProxyWidget_moveEvent
  if not isNil(vtbl[].polishEvent):
    vtbl[].vtbl.polishEvent = miqt_exec_callback_cQGraphicsProxyWidget_polishEvent
  if not isNil(vtbl[].grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = miqt_exec_callback_cQGraphicsProxyWidget_grabKeyboardEvent
  if not isNil(vtbl[].ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = miqt_exec_callback_cQGraphicsProxyWidget_ungrabKeyboardEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsProxyWidget_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsProxyWidget_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsProxyWidget_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsProxyWidget_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsProxyWidget_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsProxyWidget_advance
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsProxyWidget_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsProxyWidget_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsProxyWidget_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsProxyWidget_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsProxyWidget_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsProxyWidget_sceneEventFilter
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsProxyWidget_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsProxyWidget_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsProxyWidget_extension
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsProxyWidgetVTable = nil): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  let vtbl = if vtbl == nil: new QGraphicsProxyWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsProxyWidgetVTable, _: ptr cQGraphicsProxyWidget) {.cdecl.} =
    let vtbl = cast[ref QGraphicsProxyWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsProxyWidget_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsProxyWidget_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsProxyWidget_metacall
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsProxyWidget_setGeometry
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsProxyWidget_paint
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsProxyWidget_typeX
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsProxyWidget_itemChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsProxyWidget_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsProxyWidget_eventFilter
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsProxyWidget_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsProxyWidget_hideEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsProxyWidget_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsProxyWidget_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsProxyWidget_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsProxyWidget_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsProxyWidget_dropEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsProxyWidget_hoverEnterEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsProxyWidget_hoverLeaveEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsProxyWidget_hoverMoveEvent
  if not isNil(vtbl[].grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = miqt_exec_callback_cQGraphicsProxyWidget_grabMouseEvent
  if not isNil(vtbl[].ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = miqt_exec_callback_cQGraphicsProxyWidget_ungrabMouseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsProxyWidget_mouseMoveEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsProxyWidget_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsProxyWidget_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsProxyWidget_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsProxyWidget_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsProxyWidget_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsProxyWidget_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsProxyWidget_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsProxyWidget_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsProxyWidget_focusNextPrevChild
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsProxyWidget_inputMethodQuery
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsProxyWidget_inputMethodEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsProxyWidget_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsProxyWidget_resizeEvent
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsProxyWidget_getContentsMargins
  if not isNil(vtbl[].paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = miqt_exec_callback_cQGraphicsProxyWidget_paintWindowFrame
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsProxyWidget_boundingRect
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsProxyWidget_shape
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsProxyWidget_initStyleOption
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsProxyWidget_updateGeometry
  if not isNil(vtbl[].propertyChange):
    vtbl[].vtbl.propertyChange = miqt_exec_callback_cQGraphicsProxyWidget_propertyChange
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsProxyWidget_sceneEvent
  if not isNil(vtbl[].windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = miqt_exec_callback_cQGraphicsProxyWidget_windowFrameEvent
  if not isNil(vtbl[].windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = miqt_exec_callback_cQGraphicsProxyWidget_windowFrameSectionAt
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsProxyWidget_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsProxyWidget_closeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsProxyWidget_moveEvent
  if not isNil(vtbl[].polishEvent):
    vtbl[].vtbl.polishEvent = miqt_exec_callback_cQGraphicsProxyWidget_polishEvent
  if not isNil(vtbl[].grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = miqt_exec_callback_cQGraphicsProxyWidget_grabKeyboardEvent
  if not isNil(vtbl[].ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = miqt_exec_callback_cQGraphicsProxyWidget_ungrabKeyboardEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsProxyWidget_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsProxyWidget_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsProxyWidget_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsProxyWidget_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsProxyWidget_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsProxyWidget_advance
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsProxyWidget_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsProxyWidget_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsProxyWidget_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsProxyWidget_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsProxyWidget_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsProxyWidget_sceneEventFilter
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsProxyWidget_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsProxyWidget_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsProxyWidget_extension
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem, wFlags: cint,
    vtbl: ref QGraphicsProxyWidgetVTable = nil): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  let vtbl = if vtbl == nil: new QGraphicsProxyWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsProxyWidgetVTable, _: ptr cQGraphicsProxyWidget) {.cdecl.} =
    let vtbl = cast[ref QGraphicsProxyWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsProxyWidget_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsProxyWidget_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsProxyWidget_metacall
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsProxyWidget_setGeometry
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsProxyWidget_paint
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsProxyWidget_typeX
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsProxyWidget_itemChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsProxyWidget_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsProxyWidget_eventFilter
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsProxyWidget_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsProxyWidget_hideEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsProxyWidget_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsProxyWidget_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsProxyWidget_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsProxyWidget_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsProxyWidget_dropEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsProxyWidget_hoverEnterEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsProxyWidget_hoverLeaveEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsProxyWidget_hoverMoveEvent
  if not isNil(vtbl[].grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = miqt_exec_callback_cQGraphicsProxyWidget_grabMouseEvent
  if not isNil(vtbl[].ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = miqt_exec_callback_cQGraphicsProxyWidget_ungrabMouseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsProxyWidget_mouseMoveEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsProxyWidget_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsProxyWidget_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsProxyWidget_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsProxyWidget_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsProxyWidget_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsProxyWidget_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsProxyWidget_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsProxyWidget_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsProxyWidget_focusNextPrevChild
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsProxyWidget_inputMethodQuery
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsProxyWidget_inputMethodEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsProxyWidget_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsProxyWidget_resizeEvent
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsProxyWidget_getContentsMargins
  if not isNil(vtbl[].paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = miqt_exec_callback_cQGraphicsProxyWidget_paintWindowFrame
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsProxyWidget_boundingRect
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsProxyWidget_shape
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsProxyWidget_initStyleOption
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsProxyWidget_updateGeometry
  if not isNil(vtbl[].propertyChange):
    vtbl[].vtbl.propertyChange = miqt_exec_callback_cQGraphicsProxyWidget_propertyChange
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsProxyWidget_sceneEvent
  if not isNil(vtbl[].windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = miqt_exec_callback_cQGraphicsProxyWidget_windowFrameEvent
  if not isNil(vtbl[].windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = miqt_exec_callback_cQGraphicsProxyWidget_windowFrameSectionAt
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsProxyWidget_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsProxyWidget_closeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsProxyWidget_moveEvent
  if not isNil(vtbl[].polishEvent):
    vtbl[].vtbl.polishEvent = miqt_exec_callback_cQGraphicsProxyWidget_polishEvent
  if not isNil(vtbl[].grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = miqt_exec_callback_cQGraphicsProxyWidget_grabKeyboardEvent
  if not isNil(vtbl[].ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = miqt_exec_callback_cQGraphicsProxyWidget_ungrabKeyboardEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsProxyWidget_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsProxyWidget_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsProxyWidget_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsProxyWidget_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsProxyWidget_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsProxyWidget_advance
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsProxyWidget_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsProxyWidget_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsProxyWidget_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsProxyWidget_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsProxyWidget_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsProxyWidget_sceneEventFilter
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsProxyWidget_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsProxyWidget_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsProxyWidget_extension
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_new3(addr(vtbl[].vtbl), parent.h, cint(wFlags)), owned: true)

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    vtbl: VirtualQGraphicsProxyWidget) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsProxyWidgetVTable, _: ptr cQGraphicsProxyWidget) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsProxyWidget()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsProxyWidget_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsProxyWidget_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsProxyWidget_metacall
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQGraphicsProxyWidget_setGeometry
  vtbl[].vtbl.paint = miqt_exec_method_cQGraphicsProxyWidget_paint
  vtbl[].vtbl.typeX = miqt_exec_method_cQGraphicsProxyWidget_typeX
  vtbl[].vtbl.itemChange = miqt_exec_method_cQGraphicsProxyWidget_itemChange
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsProxyWidget_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsProxyWidget_eventFilter
  vtbl[].vtbl.showEvent = miqt_exec_method_cQGraphicsProxyWidget_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQGraphicsProxyWidget_hideEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsProxyWidget_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsProxyWidget_dragEnterEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsProxyWidget_dragLeaveEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsProxyWidget_dragMoveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsProxyWidget_dropEvent
  vtbl[].vtbl.hoverEnterEvent = miqt_exec_method_cQGraphicsProxyWidget_hoverEnterEvent
  vtbl[].vtbl.hoverLeaveEvent = miqt_exec_method_cQGraphicsProxyWidget_hoverLeaveEvent
  vtbl[].vtbl.hoverMoveEvent = miqt_exec_method_cQGraphicsProxyWidget_hoverMoveEvent
  vtbl[].vtbl.grabMouseEvent = miqt_exec_method_cQGraphicsProxyWidget_grabMouseEvent
  vtbl[].vtbl.ungrabMouseEvent = miqt_exec_method_cQGraphicsProxyWidget_ungrabMouseEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsProxyWidget_mouseMoveEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsProxyWidget_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsProxyWidget_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsProxyWidget_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsProxyWidget_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsProxyWidget_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsProxyWidget_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsProxyWidget_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsProxyWidget_focusOutEvent
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQGraphicsProxyWidget_focusNextPrevChild
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsProxyWidget_inputMethodQuery
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsProxyWidget_inputMethodEvent
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQGraphicsProxyWidget_sizeHint
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQGraphicsProxyWidget_resizeEvent
  vtbl[].vtbl.getContentsMargins = miqt_exec_method_cQGraphicsProxyWidget_getContentsMargins
  vtbl[].vtbl.paintWindowFrame = miqt_exec_method_cQGraphicsProxyWidget_paintWindowFrame
  vtbl[].vtbl.boundingRect = miqt_exec_method_cQGraphicsProxyWidget_boundingRect
  vtbl[].vtbl.shape = miqt_exec_method_cQGraphicsProxyWidget_shape
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQGraphicsProxyWidget_initStyleOption
  vtbl[].vtbl.updateGeometry = miqt_exec_method_cQGraphicsProxyWidget_updateGeometry
  vtbl[].vtbl.propertyChange = miqt_exec_method_cQGraphicsProxyWidget_propertyChange
  vtbl[].vtbl.sceneEvent = miqt_exec_method_cQGraphicsProxyWidget_sceneEvent
  vtbl[].vtbl.windowFrameEvent = miqt_exec_method_cQGraphicsProxyWidget_windowFrameEvent
  vtbl[].vtbl.windowFrameSectionAt = miqt_exec_method_cQGraphicsProxyWidget_windowFrameSectionAt
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQGraphicsProxyWidget_changeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQGraphicsProxyWidget_closeEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQGraphicsProxyWidget_moveEvent
  vtbl[].vtbl.polishEvent = miqt_exec_method_cQGraphicsProxyWidget_polishEvent
  vtbl[].vtbl.grabKeyboardEvent = miqt_exec_method_cQGraphicsProxyWidget_grabKeyboardEvent
  vtbl[].vtbl.ungrabKeyboardEvent = miqt_exec_method_cQGraphicsProxyWidget_ungrabKeyboardEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsProxyWidget_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsProxyWidget_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsProxyWidget_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsProxyWidget_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsProxyWidget_disconnectNotify
  vtbl[].vtbl.advance = miqt_exec_method_cQGraphicsProxyWidget_advance
  vtbl[].vtbl.contains = miqt_exec_method_cQGraphicsProxyWidget_contains
  vtbl[].vtbl.collidesWithItem = miqt_exec_method_cQGraphicsProxyWidget_collidesWithItem
  vtbl[].vtbl.collidesWithPath = miqt_exec_method_cQGraphicsProxyWidget_collidesWithPath
  vtbl[].vtbl.isObscuredBy = miqt_exec_method_cQGraphicsProxyWidget_isObscuredBy
  vtbl[].vtbl.opaqueArea = miqt_exec_method_cQGraphicsProxyWidget_opaqueArea
  vtbl[].vtbl.sceneEventFilter = miqt_exec_method_cQGraphicsProxyWidget_sceneEventFilter
  vtbl[].vtbl.supportsExtension = miqt_exec_method_cQGraphicsProxyWidget_supportsExtension
  vtbl[].vtbl.setExtension = miqt_exec_method_cQGraphicsProxyWidget_setExtension
  vtbl[].vtbl.extension = miqt_exec_method_cQGraphicsProxyWidget_extension
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsProxyWidget_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: VirtualQGraphicsProxyWidget) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsProxyWidgetVTable, _: ptr cQGraphicsProxyWidget) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsProxyWidget()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsProxyWidget_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsProxyWidget_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsProxyWidget_metacall
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQGraphicsProxyWidget_setGeometry
  vtbl[].vtbl.paint = miqt_exec_method_cQGraphicsProxyWidget_paint
  vtbl[].vtbl.typeX = miqt_exec_method_cQGraphicsProxyWidget_typeX
  vtbl[].vtbl.itemChange = miqt_exec_method_cQGraphicsProxyWidget_itemChange
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsProxyWidget_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsProxyWidget_eventFilter
  vtbl[].vtbl.showEvent = miqt_exec_method_cQGraphicsProxyWidget_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQGraphicsProxyWidget_hideEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsProxyWidget_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsProxyWidget_dragEnterEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsProxyWidget_dragLeaveEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsProxyWidget_dragMoveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsProxyWidget_dropEvent
  vtbl[].vtbl.hoverEnterEvent = miqt_exec_method_cQGraphicsProxyWidget_hoverEnterEvent
  vtbl[].vtbl.hoverLeaveEvent = miqt_exec_method_cQGraphicsProxyWidget_hoverLeaveEvent
  vtbl[].vtbl.hoverMoveEvent = miqt_exec_method_cQGraphicsProxyWidget_hoverMoveEvent
  vtbl[].vtbl.grabMouseEvent = miqt_exec_method_cQGraphicsProxyWidget_grabMouseEvent
  vtbl[].vtbl.ungrabMouseEvent = miqt_exec_method_cQGraphicsProxyWidget_ungrabMouseEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsProxyWidget_mouseMoveEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsProxyWidget_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsProxyWidget_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsProxyWidget_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsProxyWidget_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsProxyWidget_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsProxyWidget_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsProxyWidget_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsProxyWidget_focusOutEvent
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQGraphicsProxyWidget_focusNextPrevChild
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsProxyWidget_inputMethodQuery
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsProxyWidget_inputMethodEvent
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQGraphicsProxyWidget_sizeHint
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQGraphicsProxyWidget_resizeEvent
  vtbl[].vtbl.getContentsMargins = miqt_exec_method_cQGraphicsProxyWidget_getContentsMargins
  vtbl[].vtbl.paintWindowFrame = miqt_exec_method_cQGraphicsProxyWidget_paintWindowFrame
  vtbl[].vtbl.boundingRect = miqt_exec_method_cQGraphicsProxyWidget_boundingRect
  vtbl[].vtbl.shape = miqt_exec_method_cQGraphicsProxyWidget_shape
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQGraphicsProxyWidget_initStyleOption
  vtbl[].vtbl.updateGeometry = miqt_exec_method_cQGraphicsProxyWidget_updateGeometry
  vtbl[].vtbl.propertyChange = miqt_exec_method_cQGraphicsProxyWidget_propertyChange
  vtbl[].vtbl.sceneEvent = miqt_exec_method_cQGraphicsProxyWidget_sceneEvent
  vtbl[].vtbl.windowFrameEvent = miqt_exec_method_cQGraphicsProxyWidget_windowFrameEvent
  vtbl[].vtbl.windowFrameSectionAt = miqt_exec_method_cQGraphicsProxyWidget_windowFrameSectionAt
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQGraphicsProxyWidget_changeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQGraphicsProxyWidget_closeEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQGraphicsProxyWidget_moveEvent
  vtbl[].vtbl.polishEvent = miqt_exec_method_cQGraphicsProxyWidget_polishEvent
  vtbl[].vtbl.grabKeyboardEvent = miqt_exec_method_cQGraphicsProxyWidget_grabKeyboardEvent
  vtbl[].vtbl.ungrabKeyboardEvent = miqt_exec_method_cQGraphicsProxyWidget_ungrabKeyboardEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsProxyWidget_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsProxyWidget_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsProxyWidget_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsProxyWidget_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsProxyWidget_disconnectNotify
  vtbl[].vtbl.advance = miqt_exec_method_cQGraphicsProxyWidget_advance
  vtbl[].vtbl.contains = miqt_exec_method_cQGraphicsProxyWidget_contains
  vtbl[].vtbl.collidesWithItem = miqt_exec_method_cQGraphicsProxyWidget_collidesWithItem
  vtbl[].vtbl.collidesWithPath = miqt_exec_method_cQGraphicsProxyWidget_collidesWithPath
  vtbl[].vtbl.isObscuredBy = miqt_exec_method_cQGraphicsProxyWidget_isObscuredBy
  vtbl[].vtbl.opaqueArea = miqt_exec_method_cQGraphicsProxyWidget_opaqueArea
  vtbl[].vtbl.sceneEventFilter = miqt_exec_method_cQGraphicsProxyWidget_sceneEventFilter
  vtbl[].vtbl.supportsExtension = miqt_exec_method_cQGraphicsProxyWidget_supportsExtension
  vtbl[].vtbl.setExtension = miqt_exec_method_cQGraphicsProxyWidget_setExtension
  vtbl[].vtbl.extension = miqt_exec_method_cQGraphicsProxyWidget_extension
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsProxyWidget_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem, wFlags: cint,
    vtbl: VirtualQGraphicsProxyWidget) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsProxyWidgetVTable, _: ptr cQGraphicsProxyWidget) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsProxyWidget()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsProxyWidget, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQGraphicsProxyWidget_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQGraphicsProxyWidget_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQGraphicsProxyWidget_metacall
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQGraphicsProxyWidget_setGeometry
  vtbl[].vtbl.paint = miqt_exec_method_cQGraphicsProxyWidget_paint
  vtbl[].vtbl.typeX = miqt_exec_method_cQGraphicsProxyWidget_typeX
  vtbl[].vtbl.itemChange = miqt_exec_method_cQGraphicsProxyWidget_itemChange
  vtbl[].vtbl.event = miqt_exec_method_cQGraphicsProxyWidget_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQGraphicsProxyWidget_eventFilter
  vtbl[].vtbl.showEvent = miqt_exec_method_cQGraphicsProxyWidget_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQGraphicsProxyWidget_hideEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQGraphicsProxyWidget_contextMenuEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQGraphicsProxyWidget_dragEnterEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQGraphicsProxyWidget_dragLeaveEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQGraphicsProxyWidget_dragMoveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQGraphicsProxyWidget_dropEvent
  vtbl[].vtbl.hoverEnterEvent = miqt_exec_method_cQGraphicsProxyWidget_hoverEnterEvent
  vtbl[].vtbl.hoverLeaveEvent = miqt_exec_method_cQGraphicsProxyWidget_hoverLeaveEvent
  vtbl[].vtbl.hoverMoveEvent = miqt_exec_method_cQGraphicsProxyWidget_hoverMoveEvent
  vtbl[].vtbl.grabMouseEvent = miqt_exec_method_cQGraphicsProxyWidget_grabMouseEvent
  vtbl[].vtbl.ungrabMouseEvent = miqt_exec_method_cQGraphicsProxyWidget_ungrabMouseEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQGraphicsProxyWidget_mouseMoveEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQGraphicsProxyWidget_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQGraphicsProxyWidget_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQGraphicsProxyWidget_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQGraphicsProxyWidget_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQGraphicsProxyWidget_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQGraphicsProxyWidget_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQGraphicsProxyWidget_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQGraphicsProxyWidget_focusOutEvent
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQGraphicsProxyWidget_focusNextPrevChild
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQGraphicsProxyWidget_inputMethodQuery
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQGraphicsProxyWidget_inputMethodEvent
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQGraphicsProxyWidget_sizeHint
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQGraphicsProxyWidget_resizeEvent
  vtbl[].vtbl.getContentsMargins = miqt_exec_method_cQGraphicsProxyWidget_getContentsMargins
  vtbl[].vtbl.paintWindowFrame = miqt_exec_method_cQGraphicsProxyWidget_paintWindowFrame
  vtbl[].vtbl.boundingRect = miqt_exec_method_cQGraphicsProxyWidget_boundingRect
  vtbl[].vtbl.shape = miqt_exec_method_cQGraphicsProxyWidget_shape
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQGraphicsProxyWidget_initStyleOption
  vtbl[].vtbl.updateGeometry = miqt_exec_method_cQGraphicsProxyWidget_updateGeometry
  vtbl[].vtbl.propertyChange = miqt_exec_method_cQGraphicsProxyWidget_propertyChange
  vtbl[].vtbl.sceneEvent = miqt_exec_method_cQGraphicsProxyWidget_sceneEvent
  vtbl[].vtbl.windowFrameEvent = miqt_exec_method_cQGraphicsProxyWidget_windowFrameEvent
  vtbl[].vtbl.windowFrameSectionAt = miqt_exec_method_cQGraphicsProxyWidget_windowFrameSectionAt
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQGraphicsProxyWidget_changeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQGraphicsProxyWidget_closeEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQGraphicsProxyWidget_moveEvent
  vtbl[].vtbl.polishEvent = miqt_exec_method_cQGraphicsProxyWidget_polishEvent
  vtbl[].vtbl.grabKeyboardEvent = miqt_exec_method_cQGraphicsProxyWidget_grabKeyboardEvent
  vtbl[].vtbl.ungrabKeyboardEvent = miqt_exec_method_cQGraphicsProxyWidget_ungrabKeyboardEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQGraphicsProxyWidget_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQGraphicsProxyWidget_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQGraphicsProxyWidget_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQGraphicsProxyWidget_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQGraphicsProxyWidget_disconnectNotify
  vtbl[].vtbl.advance = miqt_exec_method_cQGraphicsProxyWidget_advance
  vtbl[].vtbl.contains = miqt_exec_method_cQGraphicsProxyWidget_contains
  vtbl[].vtbl.collidesWithItem = miqt_exec_method_cQGraphicsProxyWidget_collidesWithItem
  vtbl[].vtbl.collidesWithPath = miqt_exec_method_cQGraphicsProxyWidget_collidesWithPath
  vtbl[].vtbl.isObscuredBy = miqt_exec_method_cQGraphicsProxyWidget_isObscuredBy
  vtbl[].vtbl.opaqueArea = miqt_exec_method_cQGraphicsProxyWidget_opaqueArea
  vtbl[].vtbl.sceneEventFilter = miqt_exec_method_cQGraphicsProxyWidget_sceneEventFilter
  vtbl[].vtbl.supportsExtension = miqt_exec_method_cQGraphicsProxyWidget_supportsExtension
  vtbl[].vtbl.setExtension = miqt_exec_method_cQGraphicsProxyWidget_setExtension
  vtbl[].vtbl.extension = miqt_exec_method_cQGraphicsProxyWidget_extension
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsProxyWidget_new3(addr(vtbl[].vtbl), parent.h, cint(wFlags))
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsProxyWidget_staticMetaObject())
