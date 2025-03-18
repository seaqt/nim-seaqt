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


{.compile("gen_qgraphicsproxywidget.cpp", QtWidgetsCFlags).}


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

proc fcQGraphicsProxyWidget_metaObject(self: pointer): pointer {.importc: "QGraphicsProxyWidget_metaObject".}
proc fcQGraphicsProxyWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsProxyWidget_metacast".}
proc fcQGraphicsProxyWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsProxyWidget_metacall".}
proc fcQGraphicsProxyWidget_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr".}
proc fcQGraphicsProxyWidget_setWidget(self: pointer, widget: pointer): void {.importc: "QGraphicsProxyWidget_setWidget".}
proc fcQGraphicsProxyWidget_widget(self: pointer): pointer {.importc: "QGraphicsProxyWidget_widget".}
proc fcQGraphicsProxyWidget_subWidgetRect(self: pointer, widget: pointer): pointer {.importc: "QGraphicsProxyWidget_subWidgetRect".}
proc fcQGraphicsProxyWidget_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsProxyWidget_setGeometry".}
proc fcQGraphicsProxyWidget_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsProxyWidget_paint".}
proc fcQGraphicsProxyWidget_typeX(self: pointer): cint {.importc: "QGraphicsProxyWidget_type".}
proc fcQGraphicsProxyWidget_createProxyForChildWidget(self: pointer, child: pointer): pointer {.importc: "QGraphicsProxyWidget_createProxyForChildWidget".}
proc fcQGraphicsProxyWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr2".}
proc fcQGraphicsProxyWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr3".}
proc fcQGraphicsProxyWidget_vtbl(self: pointer): pointer {.importc: "QGraphicsProxyWidget_vtbl".}
proc fcQGraphicsProxyWidget_vdata(self: pointer): pointer {.importc: "QGraphicsProxyWidget_vdata".}

type cQGraphicsProxyWidgetVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  paint*: proc(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  typeX*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  grabMouseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  ungrabMouseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer, which: cint, constraint: pointer): pointer {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  getContentsMargins*: proc(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl, raises: [], gcsafe.}
  paintWindowFrame*: proc(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  updateGeometry*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  propertyChange*: proc(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowFrameEvent*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowFrameSectionAt*: proc(self: pointer, pos: pointer): cint {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  polishEvent*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  grabKeyboardEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  ungrabKeyboardEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  supportsExtension*: proc(self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsProxyWidget_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsProxyWidget_virtualbase_metaObject".}
proc fcQGraphicsProxyWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsProxyWidget_virtualbase_metacast".}
proc fcQGraphicsProxyWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsProxyWidget_virtualbase_metacall".}
proc fcQGraphicsProxyWidget_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_setGeometry".}
proc fcQGraphicsProxyWidget_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_paint".}
proc fcQGraphicsProxyWidget_virtualbase_typeX(self: pointer): cint {.importc: "QGraphicsProxyWidget_virtualbase_type".}
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
proc fcQGraphicsProxyWidget_virtualbase_boundingRect(self: pointer): pointer {.importc: "QGraphicsProxyWidget_virtualbase_boundingRect".}
proc fcQGraphicsProxyWidget_virtualbase_shape(self: pointer): pointer {.importc: "QGraphicsProxyWidget_virtualbase_shape".}
proc fcQGraphicsProxyWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_initStyleOption".}
proc fcQGraphicsProxyWidget_virtualbase_updateGeometry(self: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_updateGeometry".}
proc fcQGraphicsProxyWidget_virtualbase_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.importc: "QGraphicsProxyWidget_virtualbase_propertyChange".}
proc fcQGraphicsProxyWidget_virtualbase_sceneEvent(self: pointer, event: pointer): bool {.importc: "QGraphicsProxyWidget_virtualbase_sceneEvent".}
proc fcQGraphicsProxyWidget_virtualbase_windowFrameEvent(self: pointer, e: pointer): bool {.importc: "QGraphicsProxyWidget_virtualbase_windowFrameEvent".}
proc fcQGraphicsProxyWidget_virtualbase_windowFrameSectionAt(self: pointer, pos: pointer): cint {.importc: "QGraphicsProxyWidget_virtualbase_windowFrameSectionAt".}
proc fcQGraphicsProxyWidget_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_changeEvent".}
proc fcQGraphicsProxyWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_closeEvent".}
proc fcQGraphicsProxyWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_moveEvent".}
proc fcQGraphicsProxyWidget_virtualbase_polishEvent(self: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_polishEvent".}
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
proc fcQGraphicsProxyWidget_virtualbase_opaqueArea(self: pointer): pointer {.importc: "QGraphicsProxyWidget_virtualbase_opaqueArea".}
proc fcQGraphicsProxyWidget_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsProxyWidget_virtualbase_sceneEventFilter".}
proc fcQGraphicsProxyWidget_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsProxyWidget_virtualbase_supportsExtension".}
proc fcQGraphicsProxyWidget_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsProxyWidget_virtualbase_setExtension".}
proc fcQGraphicsProxyWidget_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsProxyWidget_virtualbase_extension".}
proc fcQGraphicsProxyWidget_virtualbase_isEmpty(self: pointer): bool {.importc: "QGraphicsProxyWidget_virtualbase_isEmpty".}
proc fcQGraphicsProxyWidget_protectedbase_newProxyWidget(self: pointer, param1: pointer): pointer {.importc: "QGraphicsProxyWidget_protectedbase_newProxyWidget".}
proc fcQGraphicsProxyWidget_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QGraphicsProxyWidget_protectedbase_updateMicroFocus".}
proc fcQGraphicsProxyWidget_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsProxyWidget_protectedbase_sender".}
proc fcQGraphicsProxyWidget_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsProxyWidget_protectedbase_senderSignalIndex".}
proc fcQGraphicsProxyWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsProxyWidget_protectedbase_receivers".}
proc fcQGraphicsProxyWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsProxyWidget_protectedbase_isSignalConnected".}
proc fcQGraphicsProxyWidget_protectedbase_addToIndex(self: pointer): void {.importc: "QGraphicsProxyWidget_protectedbase_addToIndex".}
proc fcQGraphicsProxyWidget_protectedbase_removeFromIndex(self: pointer): void {.importc: "QGraphicsProxyWidget_protectedbase_removeFromIndex".}
proc fcQGraphicsProxyWidget_protectedbase_prepareGeometryChange(self: pointer): void {.importc: "QGraphicsProxyWidget_protectedbase_prepareGeometryChange".}
proc fcQGraphicsProxyWidget_protectedbase_setGraphicsItem(self: pointer, item: pointer): void {.importc: "QGraphicsProxyWidget_protectedbase_setGraphicsItem".}
proc fcQGraphicsProxyWidget_protectedbase_setOwnedByLayout(self: pointer, ownedByLayout: bool): void {.importc: "QGraphicsProxyWidget_protectedbase_setOwnedByLayout".}
proc fcQGraphicsProxyWidget_new(vtbl, vdata: pointer): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new".}
proc fcQGraphicsProxyWidget_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new2".}
proc fcQGraphicsProxyWidget_new3(vtbl, vdata: pointer, parent: pointer, wFlags: cint): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new3".}
proc fcQGraphicsProxyWidget_staticMetaObject(): pointer {.importc: "QGraphicsProxyWidget_staticMetaObject".}

proc metaObject*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsProxyWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, param1: cstring): pointer =
  fcQGraphicsProxyWidget_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsProxyWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, s: cstring): string =
  let v_ms = fcQGraphicsProxyWidget_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWidget*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsProxyWidget_setWidget(self.h, widget.h)

proc widget*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQGraphicsProxyWidget_widget(self.h), owned: false)

proc subWidgetRect*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsProxyWidget_subWidgetRect(self.h, widget.h), owned: true)

proc setGeometry*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsProxyWidget_setGeometry(self.h, rect.h)

proc paint*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsProxyWidget_paint(self.h, painter.h, option.h, widget.h)

proc typeX*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): cint =
  fcQGraphicsProxyWidget_typeX(self.h)

proc createProxyForChildWidget*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, child: gen_qwidget_types.QWidget): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_createProxyForChildWidget(self.h, child.h), owned: false)

proc tr*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsProxyWidget_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsProxyWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QGraphicsProxyWidgetpropertyChangeProc* = proc(self: QGraphicsProxyWidget, propertyName: openArray[char], value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
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
type QGraphicsProxyWidgetisEmptyProc* = proc(self: QGraphicsProxyWidget): bool {.raises: [], gcsafe.}

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
  isEmpty*: QGraphicsProxyWidgetisEmptyProc

proc QGraphicsProxyWidgetmetaObject*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsProxyWidget_virtualbase_metaObject(self.h), owned: false)

proc QGraphicsProxyWidgetmetacast*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, param1: cstring): pointer =
  fcQGraphicsProxyWidget_virtualbase_metacast(self.h, param1)

proc QGraphicsProxyWidgetmetacall*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsProxyWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QGraphicsProxyWidgetsetGeometry*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsProxyWidget_virtualbase_setGeometry(self.h, rect.h)

proc QGraphicsProxyWidgetpaint*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsProxyWidget_virtualbase_paint(self.h, painter.h, option.h, widget.h)

proc QGraphicsProxyWidgettypeX*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): cint =
  fcQGraphicsProxyWidget_virtualbase_typeX(self.h)

proc QGraphicsProxyWidgetitemChange*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsProxyWidget_virtualbase_itemChange(self.h, cint(change), value.h), owned: true)

proc QGraphicsProxyWidgetevent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsProxyWidget_virtualbase_event(self.h, event.h)

proc QGraphicsProxyWidgeteventFilter*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsProxyWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc QGraphicsProxyWidgetshowEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QShowEvent): void =
  fcQGraphicsProxyWidget_virtualbase_showEvent(self.h, event.h)

proc QGraphicsProxyWidgethideEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QHideEvent): void =
  fcQGraphicsProxyWidget_virtualbase_hideEvent(self.h, event.h)

proc QGraphicsProxyWidgetcontextMenuEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsProxyWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc QGraphicsProxyWidgetdragEnterEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsProxyWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc QGraphicsProxyWidgetdragLeaveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsProxyWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc QGraphicsProxyWidgetdragMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsProxyWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc QGraphicsProxyWidgetdropEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsProxyWidget_virtualbase_dropEvent(self.h, event.h)

proc QGraphicsProxyWidgethoverEnterEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsProxyWidget_virtualbase_hoverEnterEvent(self.h, event.h)

proc QGraphicsProxyWidgethoverLeaveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsProxyWidget_virtualbase_hoverLeaveEvent(self.h, event.h)

proc QGraphicsProxyWidgethoverMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsProxyWidget_virtualbase_hoverMoveEvent(self.h, event.h)

proc QGraphicsProxyWidgetgrabMouseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_grabMouseEvent(self.h, event.h)

proc QGraphicsProxyWidgetungrabMouseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_ungrabMouseEvent(self.h, event.h)

proc QGraphicsProxyWidgetmouseMoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsProxyWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc QGraphicsProxyWidgetmousePressEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsProxyWidget_virtualbase_mousePressEvent(self.h, event.h)

proc QGraphicsProxyWidgetmouseReleaseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsProxyWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QGraphicsProxyWidgetmouseDoubleClickEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QGraphicsProxyWidgetwheelEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsProxyWidget_virtualbase_wheelEvent(self.h, event.h)

proc QGraphicsProxyWidgetkeyPressEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsProxyWidget_virtualbase_keyPressEvent(self.h, event.h)

proc QGraphicsProxyWidgetkeyReleaseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsProxyWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc QGraphicsProxyWidgetfocusInEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsProxyWidget_virtualbase_focusInEvent(self.h, event.h)

proc QGraphicsProxyWidgetfocusOutEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsProxyWidget_virtualbase_focusOutEvent(self.h, event.h)

proc QGraphicsProxyWidgetfocusNextPrevChild*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, next: bool): bool =
  fcQGraphicsProxyWidget_virtualbase_focusNextPrevChild(self.h, next)

proc QGraphicsProxyWidgetinputMethodQuery*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsProxyWidget_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc QGraphicsProxyWidgetinputMethodEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsProxyWidget_virtualbase_inputMethodEvent(self.h, event.h)

proc QGraphicsProxyWidgetsizeHint*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsProxyWidget_virtualbase_sizeHint(self.h, cint(which), constraint.h), owned: true)

proc QGraphicsProxyWidgetresizeEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void =
  fcQGraphicsProxyWidget_virtualbase_resizeEvent(self.h, event.h)

proc QGraphicsProxyWidgetgetContentsMargins*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsProxyWidget_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

proc QGraphicsProxyWidgetpaintWindowFrame*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsProxyWidget_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

proc QGraphicsProxyWidgetboundingRect*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsProxyWidget_virtualbase_boundingRect(self.h), owned: true)

proc QGraphicsProxyWidgetshape*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsProxyWidget_virtualbase_shape(self.h), owned: true)

proc QGraphicsProxyWidgetinitStyleOption*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, option: gen_qstyleoption_types.QStyleOption): void =
  fcQGraphicsProxyWidget_virtualbase_initStyleOption(self.h, option.h)

proc QGraphicsProxyWidgetupdateGeometry*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): void =
  fcQGraphicsProxyWidget_virtualbase_updateGeometry(self.h)

proc QGraphicsProxyWidgetpropertyChange*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, propertyName: openArray[char], value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsProxyWidget_virtualbase_propertyChange(self.h, struct_miqt_string(data: if len(propertyName) > 0: addr propertyName[0] else: nil, len: csize_t(len(propertyName))), value.h), owned: true)

proc QGraphicsProxyWidgetsceneEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsProxyWidget_virtualbase_sceneEvent(self.h, event.h)

proc QGraphicsProxyWidgetwindowFrameEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsProxyWidget_virtualbase_windowFrameEvent(self.h, e.h)

proc QGraphicsProxyWidgetwindowFrameSectionAt*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, pos: gen_qpoint_types.QPointF): cint =
  cint(fcQGraphicsProxyWidget_virtualbase_windowFrameSectionAt(self.h, pos.h))

proc QGraphicsProxyWidgetchangeEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_changeEvent(self.h, event.h)

proc QGraphicsProxyWidgetcloseEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQGraphicsProxyWidget_virtualbase_closeEvent(self.h, event.h)

proc QGraphicsProxyWidgetmoveEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void =
  fcQGraphicsProxyWidget_virtualbase_moveEvent(self.h, event.h)

proc QGraphicsProxyWidgetpolishEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): void =
  fcQGraphicsProxyWidget_virtualbase_polishEvent(self.h)

proc QGraphicsProxyWidgetgrabKeyboardEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_grabKeyboardEvent(self.h, event.h)

proc QGraphicsProxyWidgetungrabKeyboardEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(self.h, event.h)

proc QGraphicsProxyWidgettimerEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsProxyWidget_virtualbase_timerEvent(self.h, event.h)

proc QGraphicsProxyWidgetchildEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsProxyWidget_virtualbase_childEvent(self.h, event.h)

proc QGraphicsProxyWidgetcustomEvent*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsProxyWidget_virtualbase_customEvent(self.h, event.h)

proc QGraphicsProxyWidgetconnectNotify*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsProxyWidget_virtualbase_connectNotify(self.h, signal.h)

proc QGraphicsProxyWidgetdisconnectNotify*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsProxyWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc QGraphicsProxyWidgetadvance*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, phase: cint): void =
  fcQGraphicsProxyWidget_virtualbase_advance(self.h, phase)

proc QGraphicsProxyWidgetcontains*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsProxyWidget_virtualbase_contains(self.h, point.h)

proc QGraphicsProxyWidgetcollidesWithItem*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsProxyWidget_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc QGraphicsProxyWidgetcollidesWithPath*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsProxyWidget_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc QGraphicsProxyWidgetisObscuredBy*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsProxyWidget_virtualbase_isObscuredBy(self.h, item.h)

proc QGraphicsProxyWidgetopaqueArea*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsProxyWidget_virtualbase_opaqueArea(self.h), owned: true)

proc QGraphicsProxyWidgetsceneEventFilter*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsProxyWidget_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc QGraphicsProxyWidgetsupportsExtension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, extension: cint): bool =
  fcQGraphicsProxyWidget_virtualbase_supportsExtension(self.h, cint(extension))

proc QGraphicsProxyWidgetsetExtension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsProxyWidget_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc QGraphicsProxyWidgetextension*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsProxyWidget_virtualbase_extension(self.h, variant.h), owned: true)

proc QGraphicsProxyWidgetisEmpty*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): bool =
  fcQGraphicsProxyWidget_virtualbase_isEmpty(self.h)


proc fcQGraphicsProxyWidget_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc fcQGraphicsProxyWidget_vtable_callback_typeX(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_itemChange(self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverEnterEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverMoveEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_grabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].grabMouseEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_ungrabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].ungrabMouseEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_vtable_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl[].getContentsMargins(self, slotval1, slotval2, slotval3, slotval4)

proc fcQGraphicsProxyWidget_vtable_callback_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].paintWindowFrame(self, slotval1, slotval2, slotval3)

proc fcQGraphicsProxyWidget_vtable_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_vtable_callback_shape(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_updateGeometry(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  vtbl[].updateGeometry(self)

proc fcQGraphicsProxyWidget_vtable_callback_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
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

proc fcQGraphicsProxyWidget_vtable_callback_sceneEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_windowFrameEvent(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].windowFrameEvent(self, slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_windowFrameSectionAt(self: pointer, pos: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: pos, owned: false)
  var virtualReturn = vtbl[].windowFrameSectionAt(self, slotval1)
  cint(virtualReturn)

proc fcQGraphicsProxyWidget_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_polishEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  vtbl[].polishEvent(self)

proc fcQGraphicsProxyWidget_vtable_callback_grabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].grabKeyboardEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_ungrabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].ungrabKeyboardEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_advance(self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc fcQGraphicsProxyWidget_vtable_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_isObscuredBy(self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_opaqueArea(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_vtable_callback_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_vtable_callback_setExtension(self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  vtbl[].setExtension(self, slotval1, slotval2)

proc fcQGraphicsProxyWidget_vtable_callback_extension(self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
  let self = QGraphicsProxyWidget(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

type VirtualQGraphicsProxyWidget* {.inheritable.} = ref object of QGraphicsProxyWidget
  vtbl*: cQGraphicsProxyWidgetVTable

method metaObject*(self: VirtualQGraphicsProxyWidget): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsProxyWidgetmetaObject(self[])
method metacast*(self: VirtualQGraphicsProxyWidget, param1: cstring): pointer {.base.} =
  QGraphicsProxyWidgetmetacast(self[], param1)
method metacall*(self: VirtualQGraphicsProxyWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsProxyWidgetmetacall(self[], param1, param2, param3)
method setGeometry*(self: VirtualQGraphicsProxyWidget, rect: gen_qrect_types.QRectF): void {.base.} =
  QGraphicsProxyWidgetsetGeometry(self[], rect)
method paint*(self: VirtualQGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.base.} =
  QGraphicsProxyWidgetpaint(self[], painter, option, widget)
method typeX*(self: VirtualQGraphicsProxyWidget): cint {.base.} =
  QGraphicsProxyWidgettypeX(self[])
method itemChange*(self: VirtualQGraphicsProxyWidget, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsProxyWidgetitemChange(self[], change, value)
method event*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsProxyWidgetevent(self[], event)
method eventFilter*(self: VirtualQGraphicsProxyWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsProxyWidgeteventFilter(self[], objectVal, event)
method showEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QGraphicsProxyWidgetshowEvent(self[], event)
method hideEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QGraphicsProxyWidgethideEvent(self[], event)
method contextMenuEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.base.} =
  QGraphicsProxyWidgetcontextMenuEvent(self[], event)
method dragEnterEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsProxyWidgetdragEnterEvent(self[], event)
method dragLeaveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsProxyWidgetdragLeaveEvent(self[], event)
method dragMoveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsProxyWidgetdragMoveEvent(self[], event)
method dropEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsProxyWidgetdropEvent(self[], event)
method hoverEnterEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsProxyWidgethoverEnterEvent(self[], event)
method hoverLeaveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsProxyWidgethoverLeaveEvent(self[], event)
method hoverMoveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsProxyWidgethoverMoveEvent(self[], event)
method grabMouseEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetgrabMouseEvent(self[], event)
method ungrabMouseEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetungrabMouseEvent(self[], event)
method mouseMoveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsProxyWidgetmouseMoveEvent(self[], event)
method mousePressEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsProxyWidgetmousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsProxyWidgetmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsProxyWidgetmouseDoubleClickEvent(self[], event)
method wheelEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.base.} =
  QGraphicsProxyWidgetwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsProxyWidgetkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsProxyWidgetkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsProxyWidgetfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsProxyWidgetfocusOutEvent(self[], event)
method focusNextPrevChild*(self: VirtualQGraphicsProxyWidget, next: bool): bool {.base.} =
  QGraphicsProxyWidgetfocusNextPrevChild(self[], next)
method inputMethodQuery*(self: VirtualQGraphicsProxyWidget, query: cint): gen_qvariant_types.QVariant {.base.} =
  QGraphicsProxyWidgetinputMethodQuery(self[], query)
method inputMethodEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QGraphicsProxyWidgetinputMethodEvent(self[], event)
method sizeHint*(self: VirtualQGraphicsProxyWidget, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.base.} =
  QGraphicsProxyWidgetsizeHint(self[], which, constraint)
method resizeEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void {.base.} =
  QGraphicsProxyWidgetresizeEvent(self[], event)
method getContentsMargins*(self: VirtualQGraphicsProxyWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.base.} =
  QGraphicsProxyWidgetgetContentsMargins(self[], left, top, right, bottom)
method paintWindowFrame*(self: VirtualQGraphicsProxyWidget, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.base.} =
  QGraphicsProxyWidgetpaintWindowFrame(self[], painter, option, widget)
method boundingRect*(self: VirtualQGraphicsProxyWidget): gen_qrect_types.QRectF {.base.} =
  QGraphicsProxyWidgetboundingRect(self[])
method shape*(self: VirtualQGraphicsProxyWidget): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsProxyWidgetshape(self[])
method initStyleOption*(self: VirtualQGraphicsProxyWidget, option: gen_qstyleoption_types.QStyleOption): void {.base.} =
  QGraphicsProxyWidgetinitStyleOption(self[], option)
method updateGeometry*(self: VirtualQGraphicsProxyWidget): void {.base.} =
  QGraphicsProxyWidgetupdateGeometry(self[])
method propertyChange*(self: VirtualQGraphicsProxyWidget, propertyName: openArray[char], value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsProxyWidgetpropertyChange(self[], propertyName, value)
method sceneEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsProxyWidgetsceneEvent(self[], event)
method windowFrameEvent*(self: VirtualQGraphicsProxyWidget, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsProxyWidgetwindowFrameEvent(self[], e)
method windowFrameSectionAt*(self: VirtualQGraphicsProxyWidget, pos: gen_qpoint_types.QPointF): cint {.base.} =
  QGraphicsProxyWidgetwindowFrameSectionAt(self[], pos)
method changeEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetchangeEvent(self[], event)
method closeEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QGraphicsProxyWidgetcloseEvent(self[], event)
method moveEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void {.base.} =
  QGraphicsProxyWidgetmoveEvent(self[], event)
method polishEvent*(self: VirtualQGraphicsProxyWidget): void {.base.} =
  QGraphicsProxyWidgetpolishEvent(self[])
method grabKeyboardEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetgrabKeyboardEvent(self[], event)
method ungrabKeyboardEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetungrabKeyboardEvent(self[], event)
method timerEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsProxyWidgettimerEvent(self[], event)
method childEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsProxyWidgetchildEvent(self[], event)
method customEvent*(self: VirtualQGraphicsProxyWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsProxyWidgetcustomEvent(self[], event)
method connectNotify*(self: VirtualQGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsProxyWidgetconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsProxyWidgetdisconnectNotify(self[], signal)
method advance*(self: VirtualQGraphicsProxyWidget, phase: cint): void {.base.} =
  QGraphicsProxyWidgetadvance(self[], phase)
method contains*(self: VirtualQGraphicsProxyWidget, point: gen_qpoint_types.QPointF): bool {.base.} =
  QGraphicsProxyWidgetcontains(self[], point)
method collidesWithItem*(self: VirtualQGraphicsProxyWidget, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.base.} =
  QGraphicsProxyWidgetcollidesWithItem(self[], other, mode)
method collidesWithPath*(self: VirtualQGraphicsProxyWidget, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.base.} =
  QGraphicsProxyWidgetcollidesWithPath(self[], path, mode)
method isObscuredBy*(self: VirtualQGraphicsProxyWidget, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.base.} =
  QGraphicsProxyWidgetisObscuredBy(self[], item)
method opaqueArea*(self: VirtualQGraphicsProxyWidget): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsProxyWidgetopaqueArea(self[])
method sceneEventFilter*(self: VirtualQGraphicsProxyWidget, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsProxyWidgetsceneEventFilter(self[], watched, event)
method supportsExtension*(self: VirtualQGraphicsProxyWidget, extension: cint): bool {.base.} =
  QGraphicsProxyWidgetsupportsExtension(self[], extension)
method setExtension*(self: VirtualQGraphicsProxyWidget, extension: cint, variant: gen_qvariant_types.QVariant): void {.base.} =
  QGraphicsProxyWidgetsetExtension(self[], extension, variant)
method extension*(self: VirtualQGraphicsProxyWidget, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsProxyWidgetextension(self[], variant)
method isEmpty*(self: VirtualQGraphicsProxyWidget): bool {.base.} =
  QGraphicsProxyWidgetisEmpty(self[])

proc fcQGraphicsProxyWidget_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  inst.setGeometry(slotval1)

proc fcQGraphicsProxyWidget_method_callback_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.paint(slotval1, slotval2, slotval3)

proc fcQGraphicsProxyWidget_method_callback_typeX(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  var virtualReturn = inst.typeX()
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_itemChange(self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = inst.itemChange(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  inst.hoverEnterEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_hoverLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  inst.hoverLeaveEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_hoverMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  inst.hoverMoveEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_grabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.grabMouseEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_ungrabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.ungrabMouseEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_method_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = inst.sizeHint(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  inst.getContentsMargins(slotval1, slotval2, slotval3, slotval4)

proc fcQGraphicsProxyWidget_method_callback_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.paintWindowFrame(slotval1, slotval2, slotval3)

proc fcQGraphicsProxyWidget_method_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  var virtualReturn = inst.boundingRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_method_callback_shape(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  var virtualReturn = inst.shape()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  inst.initStyleOption(slotval1)

proc fcQGraphicsProxyWidget_method_callback_updateGeometry(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  inst.updateGeometry()

proc fcQGraphicsProxyWidget_method_callback_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
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

proc fcQGraphicsProxyWidget_method_callback_sceneEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.sceneEvent(slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_windowFrameEvent(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.windowFrameEvent(slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_windowFrameSectionAt(self: pointer, pos: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPointF(h: pos, owned: false)
  var virtualReturn = inst.windowFrameSectionAt(slotval1)
  cint(virtualReturn)

proc fcQGraphicsProxyWidget_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_polishEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  inst.polishEvent()

proc fcQGraphicsProxyWidget_method_callback_grabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.grabKeyboardEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_ungrabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.ungrabKeyboardEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQGraphicsProxyWidget_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQGraphicsProxyWidget_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc fcQGraphicsProxyWidget_method_callback_advance(self: pointer, phase: cint): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = phase
  inst.advance(slotval1)

proc fcQGraphicsProxyWidget_method_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = inst.contains(slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = inst.collidesWithItem(slotval1, slotval2)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = inst.collidesWithPath(slotval1, slotval2)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_isObscuredBy(self: pointer, item: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = inst.isObscuredBy(slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_opaqueArea(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  var virtualReturn = inst.opaqueArea()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_method_callback_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.sceneEventFilter(slotval1, slotval2)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = cint(extension)
  var virtualReturn = inst.supportsExtension(slotval1)
  virtualReturn

proc fcQGraphicsProxyWidget_method_callback_setExtension(self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  inst.setExtension(slotval1, slotval2)

proc fcQGraphicsProxyWidget_method_callback_extension(self: pointer, variant: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = inst.extension(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGraphicsProxyWidget_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsProxyWidget](fcQGraphicsProxyWidget_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn


proc newProxyWidget*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, param1: gen_qwidget_types.QWidget): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_protectedbase_newProxyWidget(self.h, param1.h), owned: false)

proc updateMicroFocus*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): void =
  fcQGraphicsProxyWidget_protectedbase_updateMicroFocus(self.h)

proc sender*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsProxyWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): cint =
  fcQGraphicsProxyWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, signal: cstring): cint =
  fcQGraphicsProxyWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsProxyWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc addToIndex*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): void =
  fcQGraphicsProxyWidget_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): void =
  fcQGraphicsProxyWidget_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): void =
  fcQGraphicsProxyWidget_protectedbase_prepareGeometryChange(self.h)

proc setGraphicsItem*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsProxyWidget_protectedbase_setGraphicsItem(self.h, item.h)

proc setOwnedByLayout*(self: gen_qgraphicsproxywidget_types.QGraphicsProxyWidget, ownedByLayout: bool): void =
  fcQGraphicsProxyWidget_protectedbase_setOwnedByLayout(self.h, ownedByLayout)

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    vtbl: ref QGraphicsProxyWidgetVTable = nil): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  let vtbl = if vtbl == nil: new QGraphicsProxyWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGraphicsProxyWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGraphicsProxyWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGraphicsProxyWidget_vtable_callback_metacall
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQGraphicsProxyWidget_vtable_callback_setGeometry
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = fcQGraphicsProxyWidget_vtable_callback_paint
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQGraphicsProxyWidget_vtable_callback_typeX
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = fcQGraphicsProxyWidget_vtable_callback_itemChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGraphicsProxyWidget_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGraphicsProxyWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQGraphicsProxyWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQGraphicsProxyWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQGraphicsProxyWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQGraphicsProxyWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQGraphicsProxyWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQGraphicsProxyWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQGraphicsProxyWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = fcQGraphicsProxyWidget_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = fcQGraphicsProxyWidget_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = fcQGraphicsProxyWidget_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = fcQGraphicsProxyWidget_vtable_callback_grabMouseEvent
  if not isNil(vtbl[].ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = fcQGraphicsProxyWidget_vtable_callback_ungrabMouseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQGraphicsProxyWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQGraphicsProxyWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQGraphicsProxyWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQGraphicsProxyWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQGraphicsProxyWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQGraphicsProxyWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQGraphicsProxyWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQGraphicsProxyWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQGraphicsProxyWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQGraphicsProxyWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQGraphicsProxyWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQGraphicsProxyWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQGraphicsProxyWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQGraphicsProxyWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = fcQGraphicsProxyWidget_vtable_callback_getContentsMargins
  if not isNil(vtbl[].paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = fcQGraphicsProxyWidget_vtable_callback_paintWindowFrame
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = fcQGraphicsProxyWidget_vtable_callback_boundingRect
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = fcQGraphicsProxyWidget_vtable_callback_shape
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQGraphicsProxyWidget_vtable_callback_initStyleOption
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = fcQGraphicsProxyWidget_vtable_callback_updateGeometry
  if not isNil(vtbl[].propertyChange):
    vtbl[].vtbl.propertyChange = fcQGraphicsProxyWidget_vtable_callback_propertyChange
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = fcQGraphicsProxyWidget_vtable_callback_sceneEvent
  if not isNil(vtbl[].windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = fcQGraphicsProxyWidget_vtable_callback_windowFrameEvent
  if not isNil(vtbl[].windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = fcQGraphicsProxyWidget_vtable_callback_windowFrameSectionAt
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQGraphicsProxyWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQGraphicsProxyWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQGraphicsProxyWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].polishEvent):
    vtbl[].vtbl.polishEvent = fcQGraphicsProxyWidget_vtable_callback_polishEvent
  if not isNil(vtbl[].grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = fcQGraphicsProxyWidget_vtable_callback_grabKeyboardEvent
  if not isNil(vtbl[].ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = fcQGraphicsProxyWidget_vtable_callback_ungrabKeyboardEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGraphicsProxyWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGraphicsProxyWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGraphicsProxyWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGraphicsProxyWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGraphicsProxyWidget_vtable_callback_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = fcQGraphicsProxyWidget_vtable_callback_advance
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = fcQGraphicsProxyWidget_vtable_callback_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = fcQGraphicsProxyWidget_vtable_callback_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = fcQGraphicsProxyWidget_vtable_callback_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = fcQGraphicsProxyWidget_vtable_callback_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = fcQGraphicsProxyWidget_vtable_callback_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = fcQGraphicsProxyWidget_vtable_callback_sceneEventFilter
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = fcQGraphicsProxyWidget_vtable_callback_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = fcQGraphicsProxyWidget_vtable_callback_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQGraphicsProxyWidget_vtable_callback_extension
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQGraphicsProxyWidget_vtable_callback_isEmpty
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsProxyWidgetVTable = nil): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  let vtbl = if vtbl == nil: new QGraphicsProxyWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGraphicsProxyWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGraphicsProxyWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGraphicsProxyWidget_vtable_callback_metacall
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQGraphicsProxyWidget_vtable_callback_setGeometry
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = fcQGraphicsProxyWidget_vtable_callback_paint
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQGraphicsProxyWidget_vtable_callback_typeX
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = fcQGraphicsProxyWidget_vtable_callback_itemChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGraphicsProxyWidget_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGraphicsProxyWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQGraphicsProxyWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQGraphicsProxyWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQGraphicsProxyWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQGraphicsProxyWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQGraphicsProxyWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQGraphicsProxyWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQGraphicsProxyWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = fcQGraphicsProxyWidget_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = fcQGraphicsProxyWidget_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = fcQGraphicsProxyWidget_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = fcQGraphicsProxyWidget_vtable_callback_grabMouseEvent
  if not isNil(vtbl[].ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = fcQGraphicsProxyWidget_vtable_callback_ungrabMouseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQGraphicsProxyWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQGraphicsProxyWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQGraphicsProxyWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQGraphicsProxyWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQGraphicsProxyWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQGraphicsProxyWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQGraphicsProxyWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQGraphicsProxyWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQGraphicsProxyWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQGraphicsProxyWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQGraphicsProxyWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQGraphicsProxyWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQGraphicsProxyWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQGraphicsProxyWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = fcQGraphicsProxyWidget_vtable_callback_getContentsMargins
  if not isNil(vtbl[].paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = fcQGraphicsProxyWidget_vtable_callback_paintWindowFrame
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = fcQGraphicsProxyWidget_vtable_callback_boundingRect
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = fcQGraphicsProxyWidget_vtable_callback_shape
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQGraphicsProxyWidget_vtable_callback_initStyleOption
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = fcQGraphicsProxyWidget_vtable_callback_updateGeometry
  if not isNil(vtbl[].propertyChange):
    vtbl[].vtbl.propertyChange = fcQGraphicsProxyWidget_vtable_callback_propertyChange
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = fcQGraphicsProxyWidget_vtable_callback_sceneEvent
  if not isNil(vtbl[].windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = fcQGraphicsProxyWidget_vtable_callback_windowFrameEvent
  if not isNil(vtbl[].windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = fcQGraphicsProxyWidget_vtable_callback_windowFrameSectionAt
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQGraphicsProxyWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQGraphicsProxyWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQGraphicsProxyWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].polishEvent):
    vtbl[].vtbl.polishEvent = fcQGraphicsProxyWidget_vtable_callback_polishEvent
  if not isNil(vtbl[].grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = fcQGraphicsProxyWidget_vtable_callback_grabKeyboardEvent
  if not isNil(vtbl[].ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = fcQGraphicsProxyWidget_vtable_callback_ungrabKeyboardEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGraphicsProxyWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGraphicsProxyWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGraphicsProxyWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGraphicsProxyWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGraphicsProxyWidget_vtable_callback_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = fcQGraphicsProxyWidget_vtable_callback_advance
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = fcQGraphicsProxyWidget_vtable_callback_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = fcQGraphicsProxyWidget_vtable_callback_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = fcQGraphicsProxyWidget_vtable_callback_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = fcQGraphicsProxyWidget_vtable_callback_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = fcQGraphicsProxyWidget_vtable_callback_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = fcQGraphicsProxyWidget_vtable_callback_sceneEventFilter
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = fcQGraphicsProxyWidget_vtable_callback_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = fcQGraphicsProxyWidget_vtable_callback_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQGraphicsProxyWidget_vtable_callback_extension
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQGraphicsProxyWidget_vtable_callback_isEmpty
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem, wFlags: cint,
    vtbl: ref QGraphicsProxyWidgetVTable = nil): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  let vtbl = if vtbl == nil: new QGraphicsProxyWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsProxyWidgetVTable](fcQGraphicsProxyWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGraphicsProxyWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGraphicsProxyWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGraphicsProxyWidget_vtable_callback_metacall
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQGraphicsProxyWidget_vtable_callback_setGeometry
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = fcQGraphicsProxyWidget_vtable_callback_paint
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQGraphicsProxyWidget_vtable_callback_typeX
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = fcQGraphicsProxyWidget_vtable_callback_itemChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGraphicsProxyWidget_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGraphicsProxyWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQGraphicsProxyWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQGraphicsProxyWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQGraphicsProxyWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQGraphicsProxyWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQGraphicsProxyWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQGraphicsProxyWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQGraphicsProxyWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = fcQGraphicsProxyWidget_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = fcQGraphicsProxyWidget_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = fcQGraphicsProxyWidget_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = fcQGraphicsProxyWidget_vtable_callback_grabMouseEvent
  if not isNil(vtbl[].ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = fcQGraphicsProxyWidget_vtable_callback_ungrabMouseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQGraphicsProxyWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQGraphicsProxyWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQGraphicsProxyWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQGraphicsProxyWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQGraphicsProxyWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQGraphicsProxyWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQGraphicsProxyWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQGraphicsProxyWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQGraphicsProxyWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQGraphicsProxyWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQGraphicsProxyWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQGraphicsProxyWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQGraphicsProxyWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQGraphicsProxyWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = fcQGraphicsProxyWidget_vtable_callback_getContentsMargins
  if not isNil(vtbl[].paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = fcQGraphicsProxyWidget_vtable_callback_paintWindowFrame
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = fcQGraphicsProxyWidget_vtable_callback_boundingRect
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = fcQGraphicsProxyWidget_vtable_callback_shape
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQGraphicsProxyWidget_vtable_callback_initStyleOption
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = fcQGraphicsProxyWidget_vtable_callback_updateGeometry
  if not isNil(vtbl[].propertyChange):
    vtbl[].vtbl.propertyChange = fcQGraphicsProxyWidget_vtable_callback_propertyChange
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = fcQGraphicsProxyWidget_vtable_callback_sceneEvent
  if not isNil(vtbl[].windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = fcQGraphicsProxyWidget_vtable_callback_windowFrameEvent
  if not isNil(vtbl[].windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = fcQGraphicsProxyWidget_vtable_callback_windowFrameSectionAt
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQGraphicsProxyWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQGraphicsProxyWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQGraphicsProxyWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].polishEvent):
    vtbl[].vtbl.polishEvent = fcQGraphicsProxyWidget_vtable_callback_polishEvent
  if not isNil(vtbl[].grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = fcQGraphicsProxyWidget_vtable_callback_grabKeyboardEvent
  if not isNil(vtbl[].ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = fcQGraphicsProxyWidget_vtable_callback_ungrabKeyboardEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGraphicsProxyWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGraphicsProxyWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGraphicsProxyWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGraphicsProxyWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGraphicsProxyWidget_vtable_callback_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = fcQGraphicsProxyWidget_vtable_callback_advance
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = fcQGraphicsProxyWidget_vtable_callback_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = fcQGraphicsProxyWidget_vtable_callback_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = fcQGraphicsProxyWidget_vtable_callback_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = fcQGraphicsProxyWidget_vtable_callback_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = fcQGraphicsProxyWidget_vtable_callback_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = fcQGraphicsProxyWidget_vtable_callback_sceneEventFilter
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = fcQGraphicsProxyWidget_vtable_callback_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = fcQGraphicsProxyWidget_vtable_callback_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQGraphicsProxyWidget_vtable_callback_extension
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQGraphicsProxyWidget_vtable_callback_isEmpty
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(wFlags)), owned: true)

const cQGraphicsProxyWidget_mvtbl = cQGraphicsProxyWidgetVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsProxyWidget()[])](self.fcQGraphicsProxyWidget_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQGraphicsProxyWidget_method_callback_metaObject,
  metacast: fcQGraphicsProxyWidget_method_callback_metacast,
  metacall: fcQGraphicsProxyWidget_method_callback_metacall,
  setGeometry: fcQGraphicsProxyWidget_method_callback_setGeometry,
  paint: fcQGraphicsProxyWidget_method_callback_paint,
  typeX: fcQGraphicsProxyWidget_method_callback_typeX,
  itemChange: fcQGraphicsProxyWidget_method_callback_itemChange,
  event: fcQGraphicsProxyWidget_method_callback_event,
  eventFilter: fcQGraphicsProxyWidget_method_callback_eventFilter,
  showEvent: fcQGraphicsProxyWidget_method_callback_showEvent,
  hideEvent: fcQGraphicsProxyWidget_method_callback_hideEvent,
  contextMenuEvent: fcQGraphicsProxyWidget_method_callback_contextMenuEvent,
  dragEnterEvent: fcQGraphicsProxyWidget_method_callback_dragEnterEvent,
  dragLeaveEvent: fcQGraphicsProxyWidget_method_callback_dragLeaveEvent,
  dragMoveEvent: fcQGraphicsProxyWidget_method_callback_dragMoveEvent,
  dropEvent: fcQGraphicsProxyWidget_method_callback_dropEvent,
  hoverEnterEvent: fcQGraphicsProxyWidget_method_callback_hoverEnterEvent,
  hoverLeaveEvent: fcQGraphicsProxyWidget_method_callback_hoverLeaveEvent,
  hoverMoveEvent: fcQGraphicsProxyWidget_method_callback_hoverMoveEvent,
  grabMouseEvent: fcQGraphicsProxyWidget_method_callback_grabMouseEvent,
  ungrabMouseEvent: fcQGraphicsProxyWidget_method_callback_ungrabMouseEvent,
  mouseMoveEvent: fcQGraphicsProxyWidget_method_callback_mouseMoveEvent,
  mousePressEvent: fcQGraphicsProxyWidget_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQGraphicsProxyWidget_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQGraphicsProxyWidget_method_callback_mouseDoubleClickEvent,
  wheelEvent: fcQGraphicsProxyWidget_method_callback_wheelEvent,
  keyPressEvent: fcQGraphicsProxyWidget_method_callback_keyPressEvent,
  keyReleaseEvent: fcQGraphicsProxyWidget_method_callback_keyReleaseEvent,
  focusInEvent: fcQGraphicsProxyWidget_method_callback_focusInEvent,
  focusOutEvent: fcQGraphicsProxyWidget_method_callback_focusOutEvent,
  focusNextPrevChild: fcQGraphicsProxyWidget_method_callback_focusNextPrevChild,
  inputMethodQuery: fcQGraphicsProxyWidget_method_callback_inputMethodQuery,
  inputMethodEvent: fcQGraphicsProxyWidget_method_callback_inputMethodEvent,
  sizeHint: fcQGraphicsProxyWidget_method_callback_sizeHint,
  resizeEvent: fcQGraphicsProxyWidget_method_callback_resizeEvent,
  getContentsMargins: fcQGraphicsProxyWidget_method_callback_getContentsMargins,
  paintWindowFrame: fcQGraphicsProxyWidget_method_callback_paintWindowFrame,
  boundingRect: fcQGraphicsProxyWidget_method_callback_boundingRect,
  shape: fcQGraphicsProxyWidget_method_callback_shape,
  initStyleOption: fcQGraphicsProxyWidget_method_callback_initStyleOption,
  updateGeometry: fcQGraphicsProxyWidget_method_callback_updateGeometry,
  propertyChange: fcQGraphicsProxyWidget_method_callback_propertyChange,
  sceneEvent: fcQGraphicsProxyWidget_method_callback_sceneEvent,
  windowFrameEvent: fcQGraphicsProxyWidget_method_callback_windowFrameEvent,
  windowFrameSectionAt: fcQGraphicsProxyWidget_method_callback_windowFrameSectionAt,
  changeEvent: fcQGraphicsProxyWidget_method_callback_changeEvent,
  closeEvent: fcQGraphicsProxyWidget_method_callback_closeEvent,
  moveEvent: fcQGraphicsProxyWidget_method_callback_moveEvent,
  polishEvent: fcQGraphicsProxyWidget_method_callback_polishEvent,
  grabKeyboardEvent: fcQGraphicsProxyWidget_method_callback_grabKeyboardEvent,
  ungrabKeyboardEvent: fcQGraphicsProxyWidget_method_callback_ungrabKeyboardEvent,
  timerEvent: fcQGraphicsProxyWidget_method_callback_timerEvent,
  childEvent: fcQGraphicsProxyWidget_method_callback_childEvent,
  customEvent: fcQGraphicsProxyWidget_method_callback_customEvent,
  connectNotify: fcQGraphicsProxyWidget_method_callback_connectNotify,
  disconnectNotify: fcQGraphicsProxyWidget_method_callback_disconnectNotify,
  advance: fcQGraphicsProxyWidget_method_callback_advance,
  contains: fcQGraphicsProxyWidget_method_callback_contains,
  collidesWithItem: fcQGraphicsProxyWidget_method_callback_collidesWithItem,
  collidesWithPath: fcQGraphicsProxyWidget_method_callback_collidesWithPath,
  isObscuredBy: fcQGraphicsProxyWidget_method_callback_isObscuredBy,
  opaqueArea: fcQGraphicsProxyWidget_method_callback_opaqueArea,
  sceneEventFilter: fcQGraphicsProxyWidget_method_callback_sceneEventFilter,
  supportsExtension: fcQGraphicsProxyWidget_method_callback_supportsExtension,
  setExtension: fcQGraphicsProxyWidget_method_callback_setExtension,
  extension: fcQGraphicsProxyWidget_method_callback_extension,
  isEmpty: fcQGraphicsProxyWidget_method_callback_isEmpty,
)
proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    inst: VirtualQGraphicsProxyWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsProxyWidget_new(addr(cQGraphicsProxyWidget_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    inst: VirtualQGraphicsProxyWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsProxyWidget_new2(addr(cQGraphicsProxyWidget_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget,
    parent: gen_qgraphicsitem_types.QGraphicsItem, wFlags: cint,
    inst: VirtualQGraphicsProxyWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsProxyWidget_new3(addr(cQGraphicsProxyWidget_mvtbl), addr(inst[]), parent.h, cint(wFlags))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicsproxywidget_types.QGraphicsProxyWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsProxyWidget_staticMetaObject())
