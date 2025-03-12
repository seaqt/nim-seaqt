import ./Qt5WebKitWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKitWidgets") & " -fPIC"
{.compile("gen_qgraphicswebview.cpp", cflags).}


import ./gen_qgraphicswebview_types
export gen_qgraphicswebview_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpainterpath_types,
  ../QtNetwork/gen_qnetworkrequest_types,
  ../QtWebKit/gen_qwebhistory_types,
  ../QtWebKit/gen_qwebsettings_types,
  ../QtWidgets/gen_qaction_types,
  ../QtWidgets/gen_qgraphicsitem_types,
  ../QtWidgets/gen_qgraphicssceneevent_types,
  ../QtWidgets/gen_qgraphicswidget,
  ../QtWidgets/gen_qstyleoption_types,
  ../QtWidgets/gen_qwidget_types,
  ./gen_qwebpage_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qicon_types,
  gen_qpainter_types,
  gen_qpainterpath_types,
  gen_qnetworkrequest_types,
  gen_qwebhistory_types,
  gen_qwebsettings_types,
  gen_qaction_types,
  gen_qgraphicsitem_types,
  gen_qgraphicssceneevent_types,
  gen_qgraphicswidget,
  gen_qstyleoption_types,
  gen_qwidget_types,
  gen_qwebpage_types

type cQGraphicsWebView*{.exportc: "QGraphicsWebView", incompleteStruct.} = object

proc fcQGraphicsWebView_metaObject(self: pointer): pointer {.importc: "QGraphicsWebView_metaObject".}
proc fcQGraphicsWebView_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWebView_metacast".}
proc fcQGraphicsWebView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsWebView_metacall".}
proc fcQGraphicsWebView_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsWebView_tr".}
proc fcQGraphicsWebView_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsWebView_trUtf8".}
proc fcQGraphicsWebView_page(self: pointer): pointer {.importc: "QGraphicsWebView_page".}
proc fcQGraphicsWebView_setPage(self: pointer, page: pointer): void {.importc: "QGraphicsWebView_setPage".}
proc fcQGraphicsWebView_url(self: pointer): pointer {.importc: "QGraphicsWebView_url".}
proc fcQGraphicsWebView_setUrl(self: pointer, url: pointer): void {.importc: "QGraphicsWebView_setUrl".}
proc fcQGraphicsWebView_title(self: pointer): struct_miqt_string {.importc: "QGraphicsWebView_title".}
proc fcQGraphicsWebView_icon(self: pointer): pointer {.importc: "QGraphicsWebView_icon".}
proc fcQGraphicsWebView_zoomFactor(self: pointer): float64 {.importc: "QGraphicsWebView_zoomFactor".}
proc fcQGraphicsWebView_setZoomFactor(self: pointer, zoomFactor: float64): void {.importc: "QGraphicsWebView_setZoomFactor".}
proc fcQGraphicsWebView_isModified(self: pointer): bool {.importc: "QGraphicsWebView_isModified".}
proc fcQGraphicsWebView_load(self: pointer, url: pointer): void {.importc: "QGraphicsWebView_load".}
proc fcQGraphicsWebView_loadWithRequest(self: pointer, request: pointer): void {.importc: "QGraphicsWebView_loadWithRequest".}
proc fcQGraphicsWebView_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QGraphicsWebView_setHtml".}
proc fcQGraphicsWebView_setContent(self: pointer, data: struct_miqt_string): void {.importc: "QGraphicsWebView_setContent".}
proc fcQGraphicsWebView_history(self: pointer): pointer {.importc: "QGraphicsWebView_history".}
proc fcQGraphicsWebView_settings(self: pointer): pointer {.importc: "QGraphicsWebView_settings".}
proc fcQGraphicsWebView_pageAction(self: pointer, action: cint): pointer {.importc: "QGraphicsWebView_pageAction".}
proc fcQGraphicsWebView_triggerPageAction(self: pointer, action: cint): void {.importc: "QGraphicsWebView_triggerPageAction".}
proc fcQGraphicsWebView_findText(self: pointer, subString: struct_miqt_string): bool {.importc: "QGraphicsWebView_findText".}
proc fcQGraphicsWebView_resizesToContents(self: pointer): bool {.importc: "QGraphicsWebView_resizesToContents".}
proc fcQGraphicsWebView_setResizesToContents(self: pointer, enabled: bool): void {.importc: "QGraphicsWebView_setResizesToContents".}
proc fcQGraphicsWebView_isTiledBackingStoreFrozen(self: pointer): bool {.importc: "QGraphicsWebView_isTiledBackingStoreFrozen".}
proc fcQGraphicsWebView_setTiledBackingStoreFrozen(self: pointer, frozen: bool): void {.importc: "QGraphicsWebView_setTiledBackingStoreFrozen".}
proc fcQGraphicsWebView_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsWebView_setGeometry".}
proc fcQGraphicsWebView_updateGeometry(self: pointer): void {.importc: "QGraphicsWebView_updateGeometry".}
proc fcQGraphicsWebView_paint(self: pointer, param1: pointer, options: pointer, widget: pointer): void {.importc: "QGraphicsWebView_paint".}
proc fcQGraphicsWebView_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsWebView_itemChange".}
proc fcQGraphicsWebView_event(self: pointer, param1: pointer): bool {.importc: "QGraphicsWebView_event".}
proc fcQGraphicsWebView_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsWebView_sizeHint".}
proc fcQGraphicsWebView_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsWebView_inputMethodQuery".}
proc fcQGraphicsWebView_renderHints(self: pointer): cint {.importc: "QGraphicsWebView_renderHints".}
proc fcQGraphicsWebView_setRenderHints(self: pointer, renderHints: cint): void {.importc: "QGraphicsWebView_setRenderHints".}
proc fcQGraphicsWebView_setRenderHint(self: pointer, param1: cint): void {.importc: "QGraphicsWebView_setRenderHint".}
proc fcQGraphicsWebView_stop(self: pointer): void {.importc: "QGraphicsWebView_stop".}
proc fcQGraphicsWebView_back(self: pointer): void {.importc: "QGraphicsWebView_back".}
proc fcQGraphicsWebView_forward(self: pointer): void {.importc: "QGraphicsWebView_forward".}
proc fcQGraphicsWebView_reload(self: pointer): void {.importc: "QGraphicsWebView_reload".}
proc fcQGraphicsWebView_loadStarted(self: pointer): void {.importc: "QGraphicsWebView_loadStarted".}
proc fcQGraphicsWebView_connect_loadStarted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWebView_connect_loadStarted".}
proc fcQGraphicsWebView_loadFinished(self: pointer, param1: bool): void {.importc: "QGraphicsWebView_loadFinished".}
proc fcQGraphicsWebView_connect_loadFinished(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWebView_connect_loadFinished".}
proc fcQGraphicsWebView_loadProgress(self: pointer, progress: cint): void {.importc: "QGraphicsWebView_loadProgress".}
proc fcQGraphicsWebView_connect_loadProgress(self: pointer, slot: int, callback: proc (slot: int, progress: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWebView_connect_loadProgress".}
proc fcQGraphicsWebView_urlChanged(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_urlChanged".}
proc fcQGraphicsWebView_connect_urlChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWebView_connect_urlChanged".}
proc fcQGraphicsWebView_titleChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QGraphicsWebView_titleChanged".}
proc fcQGraphicsWebView_connect_titleChanged(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWebView_connect_titleChanged".}
proc fcQGraphicsWebView_iconChanged(self: pointer): void {.importc: "QGraphicsWebView_iconChanged".}
proc fcQGraphicsWebView_connect_iconChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWebView_connect_iconChanged".}
proc fcQGraphicsWebView_statusBarMessage(self: pointer, message: struct_miqt_string): void {.importc: "QGraphicsWebView_statusBarMessage".}
proc fcQGraphicsWebView_connect_statusBarMessage(self: pointer, slot: int, callback: proc (slot: int, message: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWebView_connect_statusBarMessage".}
proc fcQGraphicsWebView_linkClicked(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_linkClicked".}
proc fcQGraphicsWebView_connect_linkClicked(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsWebView_connect_linkClicked".}
proc fcQGraphicsWebView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsWebView_tr2".}
proc fcQGraphicsWebView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsWebView_tr3".}
proc fcQGraphicsWebView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsWebView_trUtf82".}
proc fcQGraphicsWebView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsWebView_trUtf83".}
proc fcQGraphicsWebView_load2(self: pointer, request: pointer, operation: cint): void {.importc: "QGraphicsWebView_load2".}
proc fcQGraphicsWebView_load3(self: pointer, request: pointer, operation: cint, body: struct_miqt_string): void {.importc: "QGraphicsWebView_load3".}
proc fcQGraphicsWebView_setHtml2(self: pointer, html: struct_miqt_string, baseUrl: pointer): void {.importc: "QGraphicsWebView_setHtml2".}
proc fcQGraphicsWebView_setContent2(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QGraphicsWebView_setContent2".}
proc fcQGraphicsWebView_setContent3(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string, baseUrl: pointer): void {.importc: "QGraphicsWebView_setContent3".}
proc fcQGraphicsWebView_triggerPageAction2(self: pointer, action: cint, checked: bool): void {.importc: "QGraphicsWebView_triggerPageAction2".}
proc fcQGraphicsWebView_findText2(self: pointer, subString: struct_miqt_string, options: cint): bool {.importc: "QGraphicsWebView_findText2".}
proc fcQGraphicsWebView_setRenderHint2(self: pointer, param1: cint, enabled: bool): void {.importc: "QGraphicsWebView_setRenderHint2".}
proc fcQGraphicsWebView_vtbl(self: pointer): pointer {.importc: "QGraphicsWebView_vtbl".}
proc fcQGraphicsWebView_vdata(self: pointer): pointer {.importc: "QGraphicsWebView_vdata".}
type cQGraphicsWebViewVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  updateGeometry*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  paint*: proc(self: pointer, param1: pointer, options: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer, which: cint, constraint: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  getContentsMargins*: proc(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl, raises: [], gcsafe.}
  typeX*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  paintWindowFrame*: proc(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  propertyChange*: proc(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  windowFrameEvent*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowFrameSectionAt*: proc(self: pointer, pos: pointer): cint {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  polishEvent*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  hoverEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsWebView_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsWebView_virtualbase_metaObject".}
proc fcQGraphicsWebView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWebView_virtualbase_metacast".}
proc fcQGraphicsWebView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsWebView_virtualbase_metacall".}
proc fcQGraphicsWebView_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsWebView_virtualbase_setGeometry".}
proc fcQGraphicsWebView_virtualbase_updateGeometry(self: pointer): void {.importc: "QGraphicsWebView_virtualbase_updateGeometry".}
proc fcQGraphicsWebView_virtualbase_paint(self: pointer, param1: pointer, options: pointer, widget: pointer): void {.importc: "QGraphicsWebView_virtualbase_paint".}
proc fcQGraphicsWebView_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsWebView_virtualbase_itemChange".}
proc fcQGraphicsWebView_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QGraphicsWebView_virtualbase_event".}
proc fcQGraphicsWebView_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsWebView_virtualbase_sizeHint".}
proc fcQGraphicsWebView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsWebView_virtualbase_inputMethodQuery".}
proc fcQGraphicsWebView_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_mousePressEvent".}
proc fcQGraphicsWebView_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsWebView_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsWebView_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_mouseMoveEvent".}
proc fcQGraphicsWebView_virtualbase_hoverMoveEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_hoverMoveEvent".}
proc fcQGraphicsWebView_virtualbase_hoverLeaveEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsWebView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_wheelEvent".}
proc fcQGraphicsWebView_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_keyPressEvent".}
proc fcQGraphicsWebView_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_keyReleaseEvent".}
proc fcQGraphicsWebView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_contextMenuEvent".}
proc fcQGraphicsWebView_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_dragEnterEvent".}
proc fcQGraphicsWebView_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_dragLeaveEvent".}
proc fcQGraphicsWebView_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_dragMoveEvent".}
proc fcQGraphicsWebView_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_dropEvent".}
proc fcQGraphicsWebView_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_focusInEvent".}
proc fcQGraphicsWebView_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_focusOutEvent".}
proc fcQGraphicsWebView_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_virtualbase_inputMethodEvent".}
proc fcQGraphicsWebView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QGraphicsWebView_virtualbase_focusNextPrevChild".}
proc fcQGraphicsWebView_virtualbase_sceneEvent(self: pointer, param1: pointer): bool {.importc: "QGraphicsWebView_virtualbase_sceneEvent".}
proc fcQGraphicsWebView_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsWebView_virtualbase_getContentsMargins".}
proc fcQGraphicsWebView_virtualbase_typeX(self: pointer): cint {.importc: "QGraphicsWebView_virtualbase_type".}
proc fcQGraphicsWebView_virtualbase_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWebView_virtualbase_paintWindowFrame".}
proc fcQGraphicsWebView_virtualbase_boundingRect(self: pointer): pointer {.importc: "QGraphicsWebView_virtualbase_boundingRect".}
proc fcQGraphicsWebView_virtualbase_shape(self: pointer): pointer {.importc: "QGraphicsWebView_virtualbase_shape".}
proc fcQGraphicsWebView_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QGraphicsWebView_virtualbase_initStyleOption".}
proc fcQGraphicsWebView_virtualbase_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.importc: "QGraphicsWebView_virtualbase_propertyChange".}
proc fcQGraphicsWebView_virtualbase_windowFrameEvent(self: pointer, e: pointer): bool {.importc: "QGraphicsWebView_virtualbase_windowFrameEvent".}
proc fcQGraphicsWebView_virtualbase_windowFrameSectionAt(self: pointer, pos: pointer): cint {.importc: "QGraphicsWebView_virtualbase_windowFrameSectionAt".}
proc fcQGraphicsWebView_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_changeEvent".}
proc fcQGraphicsWebView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_closeEvent".}
proc fcQGraphicsWebView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_hideEvent".}
proc fcQGraphicsWebView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_moveEvent".}
proc fcQGraphicsWebView_virtualbase_polishEvent(self: pointer): void {.importc: "QGraphicsWebView_virtualbase_polishEvent".}
proc fcQGraphicsWebView_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_resizeEvent".}
proc fcQGraphicsWebView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_showEvent".}
proc fcQGraphicsWebView_virtualbase_grabMouseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_grabMouseEvent".}
proc fcQGraphicsWebView_virtualbase_ungrabMouseEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_ungrabMouseEvent".}
proc fcQGraphicsWebView_virtualbase_grabKeyboardEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_grabKeyboardEvent".}
proc fcQGraphicsWebView_virtualbase_ungrabKeyboardEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_ungrabKeyboardEvent".}
proc fcQGraphicsWebView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsWebView_virtualbase_eventFilter".}
proc fcQGraphicsWebView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_timerEvent".}
proc fcQGraphicsWebView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_childEvent".}
proc fcQGraphicsWebView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_customEvent".}
proc fcQGraphicsWebView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsWebView_virtualbase_connectNotify".}
proc fcQGraphicsWebView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsWebView_virtualbase_disconnectNotify".}
proc fcQGraphicsWebView_virtualbase_advance(self: pointer, phase: cint): void {.importc: "QGraphicsWebView_virtualbase_advance".}
proc fcQGraphicsWebView_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QGraphicsWebView_virtualbase_contains".}
proc fcQGraphicsWebView_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.importc: "QGraphicsWebView_virtualbase_collidesWithItem".}
proc fcQGraphicsWebView_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.importc: "QGraphicsWebView_virtualbase_collidesWithPath".}
proc fcQGraphicsWebView_virtualbase_isObscuredBy(self: pointer, item: pointer): bool {.importc: "QGraphicsWebView_virtualbase_isObscuredBy".}
proc fcQGraphicsWebView_virtualbase_opaqueArea(self: pointer): pointer {.importc: "QGraphicsWebView_virtualbase_opaqueArea".}
proc fcQGraphicsWebView_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsWebView_virtualbase_sceneEventFilter".}
proc fcQGraphicsWebView_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_hoverEnterEvent".}
proc fcQGraphicsWebView_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsWebView_virtualbase_supportsExtension".}
proc fcQGraphicsWebView_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsWebView_virtualbase_setExtension".}
proc fcQGraphicsWebView_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsWebView_virtualbase_extension".}
proc fcQGraphicsWebView_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QGraphicsWebView_protectedbase_updateMicroFocus".}
proc fcQGraphicsWebView_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsWebView_protectedbase_sender".}
proc fcQGraphicsWebView_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsWebView_protectedbase_senderSignalIndex".}
proc fcQGraphicsWebView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsWebView_protectedbase_receivers".}
proc fcQGraphicsWebView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsWebView_protectedbase_isSignalConnected".}
proc fcQGraphicsWebView_protectedbase_addToIndex(self: pointer): void {.importc: "QGraphicsWebView_protectedbase_addToIndex".}
proc fcQGraphicsWebView_protectedbase_removeFromIndex(self: pointer): void {.importc: "QGraphicsWebView_protectedbase_removeFromIndex".}
proc fcQGraphicsWebView_protectedbase_prepareGeometryChange(self: pointer): void {.importc: "QGraphicsWebView_protectedbase_prepareGeometryChange".}
proc fcQGraphicsWebView_protectedbase_setGraphicsItem(self: pointer, item: pointer): void {.importc: "QGraphicsWebView_protectedbase_setGraphicsItem".}
proc fcQGraphicsWebView_protectedbase_setOwnedByLayout(self: pointer, ownedByLayout: bool): void {.importc: "QGraphicsWebView_protectedbase_setOwnedByLayout".}
proc fcQGraphicsWebView_new(vtbl, vdata: pointer): ptr cQGraphicsWebView {.importc: "QGraphicsWebView_new".}
proc fcQGraphicsWebView_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsWebView {.importc: "QGraphicsWebView_new2".}
proc fcQGraphicsWebView_staticMetaObject(): pointer {.importc: "QGraphicsWebView_staticMetaObject".}

proc metaObject*(self: gen_qgraphicswebview_types.QGraphicsWebView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWebView_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: cstring): pointer =
  fcQGraphicsWebView_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsWebView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicswebview_types.QGraphicsWebView, s: cstring): string =
  let v_ms = fcQGraphicsWebView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicswebview_types.QGraphicsWebView, s: cstring): string =
  let v_ms = fcQGraphicsWebView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc page*(self: gen_qgraphicswebview_types.QGraphicsWebView): gen_qwebpage_types.QWebPage =
  gen_qwebpage_types.QWebPage(h: fcQGraphicsWebView_page(self.h), owned: false)

proc setPage*(self: gen_qgraphicswebview_types.QGraphicsWebView, page: gen_qwebpage_types.QWebPage): void =
  fcQGraphicsWebView_setPage(self.h, page.h)

proc url*(self: gen_qgraphicswebview_types.QGraphicsWebView): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQGraphicsWebView_url(self.h), owned: true)

proc setUrl*(self: gen_qgraphicswebview_types.QGraphicsWebView, url: gen_qurl_types.QUrl): void =
  fcQGraphicsWebView_setUrl(self.h, url.h)

proc title*(self: gen_qgraphicswebview_types.QGraphicsWebView): string =
  let v_ms = fcQGraphicsWebView_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc icon*(self: gen_qgraphicswebview_types.QGraphicsWebView): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQGraphicsWebView_icon(self.h), owned: true)

proc zoomFactor*(self: gen_qgraphicswebview_types.QGraphicsWebView): float64 =
  fcQGraphicsWebView_zoomFactor(self.h)

proc setZoomFactor*(self: gen_qgraphicswebview_types.QGraphicsWebView, zoomFactor: float64): void =
  fcQGraphicsWebView_setZoomFactor(self.h, zoomFactor)

proc isModified*(self: gen_qgraphicswebview_types.QGraphicsWebView): bool =
  fcQGraphicsWebView_isModified(self.h)

proc load*(self: gen_qgraphicswebview_types.QGraphicsWebView, url: gen_qurl_types.QUrl): void =
  fcQGraphicsWebView_load(self.h, url.h)

proc load*(self: gen_qgraphicswebview_types.QGraphicsWebView, request: gen_qnetworkrequest_types.QNetworkRequest): void =
  fcQGraphicsWebView_loadWithRequest(self.h, request.h)

proc setHtml*(self: gen_qgraphicswebview_types.QGraphicsWebView, html: string): void =
  fcQGraphicsWebView_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc setContent*(self: gen_qgraphicswebview_types.QGraphicsWebView, data: seq[byte]): void =
  fcQGraphicsWebView_setContent(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc history*(self: gen_qgraphicswebview_types.QGraphicsWebView): gen_qwebhistory_types.QWebHistory =
  gen_qwebhistory_types.QWebHistory(h: fcQGraphicsWebView_history(self.h), owned: false)

proc settings*(self: gen_qgraphicswebview_types.QGraphicsWebView): gen_qwebsettings_types.QWebSettings =
  gen_qwebsettings_types.QWebSettings(h: fcQGraphicsWebView_settings(self.h), owned: false)

proc pageAction*(self: gen_qgraphicswebview_types.QGraphicsWebView, action: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQGraphicsWebView_pageAction(self.h, cint(action)), owned: false)

proc triggerPageAction*(self: gen_qgraphicswebview_types.QGraphicsWebView, action: cint): void =
  fcQGraphicsWebView_triggerPageAction(self.h, cint(action))

proc findText*(self: gen_qgraphicswebview_types.QGraphicsWebView, subString: string): bool =
  fcQGraphicsWebView_findText(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))))

proc resizesToContents*(self: gen_qgraphicswebview_types.QGraphicsWebView): bool =
  fcQGraphicsWebView_resizesToContents(self.h)

proc setResizesToContents*(self: gen_qgraphicswebview_types.QGraphicsWebView, enabled: bool): void =
  fcQGraphicsWebView_setResizesToContents(self.h, enabled)

proc isTiledBackingStoreFrozen*(self: gen_qgraphicswebview_types.QGraphicsWebView): bool =
  fcQGraphicsWebView_isTiledBackingStoreFrozen(self.h)

proc setTiledBackingStoreFrozen*(self: gen_qgraphicswebview_types.QGraphicsWebView, frozen: bool): void =
  fcQGraphicsWebView_setTiledBackingStoreFrozen(self.h, frozen)

proc setGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsWebView_setGeometry(self.h, rect.h)

proc updateGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_updateGeometry(self.h)

proc paint*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWebView_paint(self.h, param1.h, options.h, widget.h)

proc itemChange*(self: gen_qgraphicswebview_types.QGraphicsWebView, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_itemChange(self.h, cint(change), value.h), owned: true)

proc event*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_event(self.h, param1.h)

proc sizeHint*(self: gen_qgraphicswebview_types.QGraphicsWebView, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsWebView_sizeHint(self.h, cint(which), constraint.h), owned: true)

proc inputMethodQuery*(self: gen_qgraphicswebview_types.QGraphicsWebView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_inputMethodQuery(self.h, cint(query)), owned: true)

proc renderHints*(self: gen_qgraphicswebview_types.QGraphicsWebView): cint =
  cint(fcQGraphicsWebView_renderHints(self.h))

proc setRenderHints*(self: gen_qgraphicswebview_types.QGraphicsWebView, renderHints: cint): void =
  fcQGraphicsWebView_setRenderHints(self.h, cint(renderHints))

proc setRenderHint*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: cint): void =
  fcQGraphicsWebView_setRenderHint(self.h, cint(param1))

proc stop*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_stop(self.h)

proc back*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_back(self.h)

proc forward*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_forward(self.h)

proc reload*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_reload(self.h)

proc loadStarted*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_loadStarted(self.h)

type QGraphicsWebViewloadStartedSlot* = proc()
proc cQGraphicsWebView_slot_callback_loadStarted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWebViewloadStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsWebView_slot_callback_loadStarted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWebViewloadStartedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadStarted*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewloadStartedSlot) =
  var tmp = new QGraphicsWebViewloadStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_loadStarted(self.h, cast[int](addr tmp[]), cQGraphicsWebView_slot_callback_loadStarted, cQGraphicsWebView_slot_callback_loadStarted_release)

proc loadFinished*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: bool): void =
  fcQGraphicsWebView_loadFinished(self.h, param1)

type QGraphicsWebViewloadFinishedSlot* = proc(param1: bool)
proc cQGraphicsWebView_slot_callback_loadFinished(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWebViewloadFinishedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQGraphicsWebView_slot_callback_loadFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWebViewloadFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadFinished*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewloadFinishedSlot) =
  var tmp = new QGraphicsWebViewloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_loadFinished(self.h, cast[int](addr tmp[]), cQGraphicsWebView_slot_callback_loadFinished, cQGraphicsWebView_slot_callback_loadFinished_release)

proc loadProgress*(self: gen_qgraphicswebview_types.QGraphicsWebView, progress: cint): void =
  fcQGraphicsWebView_loadProgress(self.h, progress)

type QGraphicsWebViewloadProgressSlot* = proc(progress: cint)
proc cQGraphicsWebView_slot_callback_loadProgress(slot: int, progress: cint) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWebViewloadProgressSlot](cast[pointer](slot))
  let slotval1 = progress

  nimfunc[](slotval1)

proc cQGraphicsWebView_slot_callback_loadProgress_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWebViewloadProgressSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadProgress*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewloadProgressSlot) =
  var tmp = new QGraphicsWebViewloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_loadProgress(self.h, cast[int](addr tmp[]), cQGraphicsWebView_slot_callback_loadProgress, cQGraphicsWebView_slot_callback_loadProgress_release)

proc urlChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qurl_types.QUrl): void =
  fcQGraphicsWebView_urlChanged(self.h, param1.h)

type QGraphicsWebViewurlChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc cQGraphicsWebView_slot_callback_urlChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWebViewurlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQGraphicsWebView_slot_callback_urlChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWebViewurlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onurlChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewurlChangedSlot) =
  var tmp = new QGraphicsWebViewurlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_urlChanged(self.h, cast[int](addr tmp[]), cQGraphicsWebView_slot_callback_urlChanged, cQGraphicsWebView_slot_callback_urlChanged_release)

proc titleChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: string): void =
  fcQGraphicsWebView_titleChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QGraphicsWebViewtitleChangedSlot* = proc(param1: string)
proc cQGraphicsWebView_slot_callback_titleChanged(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWebViewtitleChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc cQGraphicsWebView_slot_callback_titleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWebViewtitleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontitleChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewtitleChangedSlot) =
  var tmp = new QGraphicsWebViewtitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_titleChanged(self.h, cast[int](addr tmp[]), cQGraphicsWebView_slot_callback_titleChanged, cQGraphicsWebView_slot_callback_titleChanged_release)

proc iconChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_iconChanged(self.h)

type QGraphicsWebViewiconChangedSlot* = proc()
proc cQGraphicsWebView_slot_callback_iconChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWebViewiconChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsWebView_slot_callback_iconChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWebViewiconChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewiconChangedSlot) =
  var tmp = new QGraphicsWebViewiconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_iconChanged(self.h, cast[int](addr tmp[]), cQGraphicsWebView_slot_callback_iconChanged, cQGraphicsWebView_slot_callback_iconChanged_release)

proc statusBarMessage*(self: gen_qgraphicswebview_types.QGraphicsWebView, message: string): void =
  fcQGraphicsWebView_statusBarMessage(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

type QGraphicsWebViewstatusBarMessageSlot* = proc(message: string)
proc cQGraphicsWebView_slot_callback_statusBarMessage(slot: int, message: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWebViewstatusBarMessageSlot](cast[pointer](slot))
  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval1 = vmessagex_ret

  nimfunc[](slotval1)

proc cQGraphicsWebView_slot_callback_statusBarMessage_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWebViewstatusBarMessageSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusBarMessage*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewstatusBarMessageSlot) =
  var tmp = new QGraphicsWebViewstatusBarMessageSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_statusBarMessage(self.h, cast[int](addr tmp[]), cQGraphicsWebView_slot_callback_statusBarMessage, cQGraphicsWebView_slot_callback_statusBarMessage_release)

proc linkClicked*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qurl_types.QUrl): void =
  fcQGraphicsWebView_linkClicked(self.h, param1.h)

type QGraphicsWebViewlinkClickedSlot* = proc(param1: gen_qurl_types.QUrl)
proc cQGraphicsWebView_slot_callback_linkClicked(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsWebViewlinkClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQGraphicsWebView_slot_callback_linkClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsWebViewlinkClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlinkClicked*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewlinkClickedSlot) =
  var tmp = new QGraphicsWebViewlinkClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_linkClicked(self.h, cast[int](addr tmp[]), cQGraphicsWebView_slot_callback_linkClicked, cQGraphicsWebView_slot_callback_linkClicked_release)

proc tr*(_: type gen_qgraphicswebview_types.QGraphicsWebView, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsWebView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicswebview_types.QGraphicsWebView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsWebView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicswebview_types.QGraphicsWebView, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsWebView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicswebview_types.QGraphicsWebView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsWebView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qgraphicswebview_types.QGraphicsWebView, request: gen_qnetworkrequest_types.QNetworkRequest, operation: cint): void =
  fcQGraphicsWebView_load2(self.h, request.h, cint(operation))

proc load*(self: gen_qgraphicswebview_types.QGraphicsWebView, request: gen_qnetworkrequest_types.QNetworkRequest, operation: cint, body: seq[byte]): void =
  fcQGraphicsWebView_load3(self.h, request.h, cint(operation), struct_miqt_string(data: cast[cstring](if len(body) == 0: nil else: unsafeAddr body[0]), len: csize_t(len(body))))

proc setHtml*(self: gen_qgraphicswebview_types.QGraphicsWebView, html: string, baseUrl: gen_qurl_types.QUrl): void =
  fcQGraphicsWebView_setHtml2(self.h, struct_miqt_string(data: html, len: csize_t(len(html))), baseUrl.h)

proc setContent*(self: gen_qgraphicswebview_types.QGraphicsWebView, data: seq[byte], mimeType: string): void =
  fcQGraphicsWebView_setContent2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc setContent*(self: gen_qgraphicswebview_types.QGraphicsWebView, data: seq[byte], mimeType: string, baseUrl: gen_qurl_types.QUrl): void =
  fcQGraphicsWebView_setContent3(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), baseUrl.h)

proc triggerPageAction*(self: gen_qgraphicswebview_types.QGraphicsWebView, action: cint, checked: bool): void =
  fcQGraphicsWebView_triggerPageAction2(self.h, cint(action), checked)

proc findText*(self: gen_qgraphicswebview_types.QGraphicsWebView, subString: string, options: cint): bool =
  fcQGraphicsWebView_findText2(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cint(options))

proc setRenderHint*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: cint, enabled: bool): void =
  fcQGraphicsWebView_setRenderHint2(self.h, cint(param1), enabled)

type QGraphicsWebViewmetaObjectProc* = proc(self: QGraphicsWebView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsWebViewmetacastProc* = proc(self: QGraphicsWebView, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsWebViewmetacallProc* = proc(self: QGraphicsWebView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsWebViewsetGeometryProc* = proc(self: QGraphicsWebView, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsWebViewupdateGeometryProc* = proc(self: QGraphicsWebView): void {.raises: [], gcsafe.}
type QGraphicsWebViewpaintProc* = proc(self: QGraphicsWebView, param1: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsWebViewitemChangeProc* = proc(self: QGraphicsWebView, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsWebVieweventProc* = proc(self: QGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsWebViewsizeHintProc* = proc(self: QGraphicsWebView, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.raises: [], gcsafe.}
type QGraphicsWebViewinputMethodQueryProc* = proc(self: QGraphicsWebView, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsWebViewmousePressEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewmouseDoubleClickEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewmouseReleaseEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewmouseMoveEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewhoverMoveEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewhoverLeaveEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewwheelEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewkeyPressEventProc* = proc(self: QGraphicsWebView, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewkeyReleaseEventProc* = proc(self: QGraphicsWebView, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewcontextMenuEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewdragEnterEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewdragLeaveEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewdragMoveEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewdropEventProc* = proc(self: QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewfocusInEventProc* = proc(self: QGraphicsWebView, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewfocusOutEventProc* = proc(self: QGraphicsWebView, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewinputMethodEventProc* = proc(self: QGraphicsWebView, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewfocusNextPrevChildProc* = proc(self: QGraphicsWebView, next: bool): bool {.raises: [], gcsafe.}
type QGraphicsWebViewsceneEventProc* = proc(self: QGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsWebViewgetContentsMarginsProc* = proc(self: QGraphicsWebView, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.raises: [], gcsafe.}
type QGraphicsWebViewtypeXProc* = proc(self: QGraphicsWebView): cint {.raises: [], gcsafe.}
type QGraphicsWebViewpaintWindowFrameProc* = proc(self: QGraphicsWebView, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QGraphicsWebViewboundingRectProc* = proc(self: QGraphicsWebView): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsWebViewshapeProc* = proc(self: QGraphicsWebView): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsWebViewinitStyleOptionProc* = proc(self: QGraphicsWebView, option: gen_qstyleoption_types.QStyleOption): void {.raises: [], gcsafe.}
type QGraphicsWebViewpropertyChangeProc* = proc(self: QGraphicsWebView, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsWebViewwindowFrameEventProc* = proc(self: QGraphicsWebView, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsWebViewwindowFrameSectionAtProc* = proc(self: QGraphicsWebView, pos: gen_qpoint_types.QPointF): cint {.raises: [], gcsafe.}
type QGraphicsWebViewchangeEventProc* = proc(self: QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewcloseEventProc* = proc(self: QGraphicsWebView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewhideEventProc* = proc(self: QGraphicsWebView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewmoveEventProc* = proc(self: QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewpolishEventProc* = proc(self: QGraphicsWebView): void {.raises: [], gcsafe.}
type QGraphicsWebViewresizeEventProc* = proc(self: QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewshowEventProc* = proc(self: QGraphicsWebView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewgrabMouseEventProc* = proc(self: QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewungrabMouseEventProc* = proc(self: QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewgrabKeyboardEventProc* = proc(self: QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewungrabKeyboardEventProc* = proc(self: QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWebVieweventFilterProc* = proc(self: QGraphicsWebView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsWebViewtimerEventProc* = proc(self: QGraphicsWebView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewchildEventProc* = proc(self: QGraphicsWebView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewcustomEventProc* = proc(self: QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewconnectNotifyProc* = proc(self: QGraphicsWebView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsWebViewdisconnectNotifyProc* = proc(self: QGraphicsWebView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsWebViewadvanceProc* = proc(self: QGraphicsWebView, phase: cint): void {.raises: [], gcsafe.}
type QGraphicsWebViewcontainsProc* = proc(self: QGraphicsWebView, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QGraphicsWebViewcollidesWithItemProc* = proc(self: QGraphicsWebView, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsWebViewcollidesWithPathProc* = proc(self: QGraphicsWebView, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.raises: [], gcsafe.}
type QGraphicsWebViewisObscuredByProc* = proc(self: QGraphicsWebView, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.raises: [], gcsafe.}
type QGraphicsWebViewopaqueAreaProc* = proc(self: QGraphicsWebView): gen_qpainterpath_types.QPainterPath {.raises: [], gcsafe.}
type QGraphicsWebViewsceneEventFilterProc* = proc(self: QGraphicsWebView, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsWebViewhoverEnterEventProc* = proc(self: QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.raises: [], gcsafe.}
type QGraphicsWebViewsupportsExtensionProc* = proc(self: QGraphicsWebView, extension: cint): bool {.raises: [], gcsafe.}
type QGraphicsWebViewsetExtensionProc* = proc(self: QGraphicsWebView, extension: cint, variant: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QGraphicsWebViewextensionProc* = proc(self: QGraphicsWebView, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGraphicsWebViewVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsWebViewVTable
  metaObject*: QGraphicsWebViewmetaObjectProc
  metacast*: QGraphicsWebViewmetacastProc
  metacall*: QGraphicsWebViewmetacallProc
  setGeometry*: QGraphicsWebViewsetGeometryProc
  updateGeometry*: QGraphicsWebViewupdateGeometryProc
  paint*: QGraphicsWebViewpaintProc
  itemChange*: QGraphicsWebViewitemChangeProc
  event*: QGraphicsWebVieweventProc
  sizeHint*: QGraphicsWebViewsizeHintProc
  inputMethodQuery*: QGraphicsWebViewinputMethodQueryProc
  mousePressEvent*: QGraphicsWebViewmousePressEventProc
  mouseDoubleClickEvent*: QGraphicsWebViewmouseDoubleClickEventProc
  mouseReleaseEvent*: QGraphicsWebViewmouseReleaseEventProc
  mouseMoveEvent*: QGraphicsWebViewmouseMoveEventProc
  hoverMoveEvent*: QGraphicsWebViewhoverMoveEventProc
  hoverLeaveEvent*: QGraphicsWebViewhoverLeaveEventProc
  wheelEvent*: QGraphicsWebViewwheelEventProc
  keyPressEvent*: QGraphicsWebViewkeyPressEventProc
  keyReleaseEvent*: QGraphicsWebViewkeyReleaseEventProc
  contextMenuEvent*: QGraphicsWebViewcontextMenuEventProc
  dragEnterEvent*: QGraphicsWebViewdragEnterEventProc
  dragLeaveEvent*: QGraphicsWebViewdragLeaveEventProc
  dragMoveEvent*: QGraphicsWebViewdragMoveEventProc
  dropEvent*: QGraphicsWebViewdropEventProc
  focusInEvent*: QGraphicsWebViewfocusInEventProc
  focusOutEvent*: QGraphicsWebViewfocusOutEventProc
  inputMethodEvent*: QGraphicsWebViewinputMethodEventProc
  focusNextPrevChild*: QGraphicsWebViewfocusNextPrevChildProc
  sceneEvent*: QGraphicsWebViewsceneEventProc
  getContentsMargins*: QGraphicsWebViewgetContentsMarginsProc
  typeX*: QGraphicsWebViewtypeXProc
  paintWindowFrame*: QGraphicsWebViewpaintWindowFrameProc
  boundingRect*: QGraphicsWebViewboundingRectProc
  shape*: QGraphicsWebViewshapeProc
  initStyleOption*: QGraphicsWebViewinitStyleOptionProc
  propertyChange*: QGraphicsWebViewpropertyChangeProc
  windowFrameEvent*: QGraphicsWebViewwindowFrameEventProc
  windowFrameSectionAt*: QGraphicsWebViewwindowFrameSectionAtProc
  changeEvent*: QGraphicsWebViewchangeEventProc
  closeEvent*: QGraphicsWebViewcloseEventProc
  hideEvent*: QGraphicsWebViewhideEventProc
  moveEvent*: QGraphicsWebViewmoveEventProc
  polishEvent*: QGraphicsWebViewpolishEventProc
  resizeEvent*: QGraphicsWebViewresizeEventProc
  showEvent*: QGraphicsWebViewshowEventProc
  grabMouseEvent*: QGraphicsWebViewgrabMouseEventProc
  ungrabMouseEvent*: QGraphicsWebViewungrabMouseEventProc
  grabKeyboardEvent*: QGraphicsWebViewgrabKeyboardEventProc
  ungrabKeyboardEvent*: QGraphicsWebViewungrabKeyboardEventProc
  eventFilter*: QGraphicsWebVieweventFilterProc
  timerEvent*: QGraphicsWebViewtimerEventProc
  childEvent*: QGraphicsWebViewchildEventProc
  customEvent*: QGraphicsWebViewcustomEventProc
  connectNotify*: QGraphicsWebViewconnectNotifyProc
  disconnectNotify*: QGraphicsWebViewdisconnectNotifyProc
  advance*: QGraphicsWebViewadvanceProc
  contains*: QGraphicsWebViewcontainsProc
  collidesWithItem*: QGraphicsWebViewcollidesWithItemProc
  collidesWithPath*: QGraphicsWebViewcollidesWithPathProc
  isObscuredBy*: QGraphicsWebViewisObscuredByProc
  opaqueArea*: QGraphicsWebViewopaqueAreaProc
  sceneEventFilter*: QGraphicsWebViewsceneEventFilterProc
  hoverEnterEvent*: QGraphicsWebViewhoverEnterEventProc
  supportsExtension*: QGraphicsWebViewsupportsExtensionProc
  setExtension*: QGraphicsWebViewsetExtensionProc
  extension*: QGraphicsWebViewextensionProc
proc QGraphicsWebViewmetaObject*(self: gen_qgraphicswebview_types.QGraphicsWebView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWebView_virtualbase_metaObject(self.h), owned: false)

proc cQGraphicsWebView_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWebViewmetacast*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: cstring): pointer =
  fcQGraphicsWebView_virtualbase_metacast(self.h, param1)

proc cQGraphicsWebView_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsWebViewmetacall*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsWebView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGraphicsWebView_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsWebViewsetGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsWebView_virtualbase_setGeometry(self.h, rect.h)

proc cQGraphicsWebView_vtable_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QGraphicsWebViewupdateGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_virtualbase_updateGeometry(self.h)

proc cQGraphicsWebView_vtable_callback_updateGeometry(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  vtbl[].updateGeometry(self)

proc QGraphicsWebViewpaint*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWebView_virtualbase_paint(self.h, param1.h, options.h, widget.h)

proc cQGraphicsWebView_vtable_callback_paint(self: pointer, param1: pointer, options: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: param1, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: options, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsWebViewitemChange*(self: gen_qgraphicswebview_types.QGraphicsWebView, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_virtualbase_itemChange(self.h, cint(change), value.h), owned: true)

proc cQGraphicsWebView_vtable_callback_itemChange(self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWebViewevent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_virtualbase_event(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsWebViewsizeHint*(self: gen_qgraphicswebview_types.QGraphicsWebView, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsWebView_virtualbase_sizeHint(self.h, cint(which), constraint.h), owned: true)

proc cQGraphicsWebView_vtable_callback_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWebViewinputMethodQuery*(self: gen_qgraphicswebview_types.QGraphicsWebView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc cQGraphicsWebView_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWebViewmousePressEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWebView_virtualbase_mousePressEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsWebViewmouseDoubleClickEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWebView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsWebViewmouseReleaseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWebView_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsWebViewmouseMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWebView_virtualbase_mouseMoveEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsWebViewhoverMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWebView_virtualbase_hoverMoveEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_hoverMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: param1, owned: false)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsWebViewhoverLeaveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWebView_virtualbase_hoverLeaveEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_hoverLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: param1, owned: false)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsWebViewwheelEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsWebView_virtualbase_wheelEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsWebViewkeyPressEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsWebView_virtualbase_keyPressEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsWebViewkeyReleaseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsWebView_virtualbase_keyReleaseEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_keyReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsWebViewcontextMenuEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsWebView_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsWebViewdragEnterEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWebView_virtualbase_dragEnterEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsWebViewdragLeaveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWebView_virtualbase_dragLeaveEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsWebViewdragMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWebView_virtualbase_dragMoveEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsWebViewdropEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWebView_virtualbase_dropEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsWebViewfocusInEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsWebView_virtualbase_focusInEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsWebViewfocusOutEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsWebView_virtualbase_focusOutEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsWebViewinputMethodEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsWebView_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsWebViewfocusNextPrevChild*(self: gen_qgraphicswebview_types.QGraphicsWebView, next: bool): bool =
  fcQGraphicsWebView_virtualbase_focusNextPrevChild(self.h, next)

proc cQGraphicsWebView_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QGraphicsWebViewsceneEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_virtualbase_sceneEvent(self.h, param1.h)

proc cQGraphicsWebView_vtable_callback_sceneEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsWebViewgetContentsMargins*(self: gen_qgraphicswebview_types.QGraphicsWebView, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsWebView_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

proc cQGraphicsWebView_vtable_callback_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl[].getContentsMargins(self, slotval1, slotval2, slotval3, slotval4)

proc QGraphicsWebViewtypeX*(self: gen_qgraphicswebview_types.QGraphicsWebView): cint =
  fcQGraphicsWebView_virtualbase_typeX(self.h)

proc cQGraphicsWebView_vtable_callback_typeX(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsWebViewpaintWindowFrame*(self: gen_qgraphicswebview_types.QGraphicsWebView, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWebView_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

proc cQGraphicsWebView_vtable_callback_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].paintWindowFrame(self, slotval1, slotval2, slotval3)

proc QGraphicsWebViewboundingRect*(self: gen_qgraphicswebview_types.QGraphicsWebView): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWebView_virtualbase_boundingRect(self.h), owned: true)

proc cQGraphicsWebView_vtable_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWebViewshape*(self: gen_qgraphicswebview_types.QGraphicsWebView): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsWebView_virtualbase_shape(self.h), owned: true)

proc cQGraphicsWebView_vtable_callback_shape(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWebViewinitStyleOption*(self: gen_qgraphicswebview_types.QGraphicsWebView, option: gen_qstyleoption_types.QStyleOption): void =
  fcQGraphicsWebView_virtualbase_initStyleOption(self.h, option.h)

proc cQGraphicsWebView_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QGraphicsWebViewpropertyChange*(self: gen_qgraphicswebview_types.QGraphicsWebView, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_virtualbase_propertyChange(self.h, struct_miqt_string(data: propertyName, len: csize_t(len(propertyName))), value.h), owned: true)

proc cQGraphicsWebView_vtable_callback_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
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

proc QGraphicsWebViewwindowFrameEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, e: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_virtualbase_windowFrameEvent(self.h, e.h)

proc cQGraphicsWebView_vtable_callback_windowFrameEvent(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].windowFrameEvent(self, slotval1)
  virtualReturn

proc QGraphicsWebViewwindowFrameSectionAt*(self: gen_qgraphicswebview_types.QGraphicsWebView, pos: gen_qpoint_types.QPointF): cint =
  cint(fcQGraphicsWebView_virtualbase_windowFrameSectionAt(self.h, pos.h))

proc cQGraphicsWebView_vtable_callback_windowFrameSectionAt(self: pointer, pos: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: pos, owned: false)
  var virtualReturn = vtbl[].windowFrameSectionAt(self, slotval1)
  cint(virtualReturn)

proc QGraphicsWebViewchangeEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_changeEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QGraphicsWebViewcloseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qevent_types.QCloseEvent): void =
  fcQGraphicsWebView_virtualbase_closeEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QGraphicsWebViewhideEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qevent_types.QHideEvent): void =
  fcQGraphicsWebView_virtualbase_hideEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QGraphicsWebViewmoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void =
  fcQGraphicsWebView_virtualbase_moveEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QGraphicsWebViewpolishEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_virtualbase_polishEvent(self.h)

proc cQGraphicsWebView_vtable_callback_polishEvent(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  vtbl[].polishEvent(self)

proc QGraphicsWebViewresizeEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void =
  fcQGraphicsWebView_virtualbase_resizeEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QGraphicsWebViewshowEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qevent_types.QShowEvent): void =
  fcQGraphicsWebView_virtualbase_showEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QGraphicsWebViewgrabMouseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_grabMouseEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_grabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].grabMouseEvent(self, slotval1)

proc QGraphicsWebViewungrabMouseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_ungrabMouseEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_ungrabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].ungrabMouseEvent(self, slotval1)

proc QGraphicsWebViewgrabKeyboardEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_grabKeyboardEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_grabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].grabKeyboardEvent(self, slotval1)

proc QGraphicsWebViewungrabKeyboardEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_ungrabKeyboardEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_ungrabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].ungrabKeyboardEvent(self, slotval1)

proc QGraphicsWebVieweventFilter*(self: gen_qgraphicswebview_types.QGraphicsWebView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGraphicsWebView_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWebViewtimerEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsWebView_virtualbase_timerEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsWebViewchildEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsWebView_virtualbase_childEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsWebViewcustomEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_customEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsWebViewconnectNotify*(self: gen_qgraphicswebview_types.QGraphicsWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsWebView_virtualbase_connectNotify(self.h, signal.h)

proc cQGraphicsWebView_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsWebViewdisconnectNotify*(self: gen_qgraphicswebview_types.QGraphicsWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsWebView_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGraphicsWebView_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc QGraphicsWebViewadvance*(self: gen_qgraphicswebview_types.QGraphicsWebView, phase: cint): void =
  fcQGraphicsWebView_virtualbase_advance(self.h, phase)

proc cQGraphicsWebView_vtable_callback_advance(self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsWebViewcontains*(self: gen_qgraphicswebview_types.QGraphicsWebView, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsWebView_virtualbase_contains(self.h, point.h)

proc cQGraphicsWebView_vtable_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsWebViewcollidesWithItem*(self: gen_qgraphicswebview_types.QGraphicsWebView, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsWebView_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc cQGraphicsWebView_vtable_callback_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWebViewcollidesWithPath*(self: gen_qgraphicswebview_types.QGraphicsWebView, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsWebView_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc cQGraphicsWebView_vtable_callback_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWebViewisObscuredBy*(self: gen_qgraphicswebview_types.QGraphicsWebView, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsWebView_virtualbase_isObscuredBy(self.h, item.h)

proc cQGraphicsWebView_vtable_callback_isObscuredBy(self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsWebViewopaqueArea*(self: gen_qgraphicswebview_types.QGraphicsWebView): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsWebView_virtualbase_opaqueArea(self.h), owned: true)

proc cQGraphicsWebView_vtable_callback_opaqueArea(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsWebViewsceneEventFilter*(self: gen_qgraphicswebview_types.QGraphicsWebView, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc cQGraphicsWebView_vtable_callback_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWebViewhoverEnterEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWebView_virtualbase_hoverEnterEvent(self.h, event.h)

proc cQGraphicsWebView_vtable_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsWebViewsupportsExtension*(self: gen_qgraphicswebview_types.QGraphicsWebView, extension: cint): bool =
  fcQGraphicsWebView_virtualbase_supportsExtension(self.h, cint(extension))

proc cQGraphicsWebView_vtable_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsWebViewsetExtension*(self: gen_qgraphicswebview_types.QGraphicsWebView, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsWebView_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc cQGraphicsWebView_vtable_callback_setExtension(self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsWebViewextension*(self: gen_qgraphicswebview_types.QGraphicsWebView, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_virtualbase_extension(self.h, variant.h), owned: true)

proc cQGraphicsWebView_vtable_callback_extension(self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsWebView* {.inheritable.} = ref object of QGraphicsWebView
  vtbl*: cQGraphicsWebViewVTable
method metaObject*(self: VirtualQGraphicsWebView): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsWebViewmetaObject(self[])
proc cQGraphicsWebView_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsWebView, param1: cstring): pointer {.base.} =
  QGraphicsWebViewmetacast(self[], param1)
proc cQGraphicsWebView_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsWebView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsWebViewmetacall(self[], param1, param2, param3)
proc cQGraphicsWebView_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setGeometry*(self: VirtualQGraphicsWebView, rect: gen_qrect_types.QRectF): void {.base.} =
  QGraphicsWebViewsetGeometry(self[], rect)
proc cQGraphicsWebView_method_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  inst.setGeometry(slotval1)

method updateGeometry*(self: VirtualQGraphicsWebView): void {.base.} =
  QGraphicsWebViewupdateGeometry(self[])
proc cQGraphicsWebView_method_callback_updateGeometry(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  inst.updateGeometry()

method paint*(self: VirtualQGraphicsWebView, param1: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.base.} =
  QGraphicsWebViewpaint(self[], param1, options, widget)
proc cQGraphicsWebView_method_callback_paint(self: pointer, param1: pointer, options: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: param1, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: options, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.paint(slotval1, slotval2, slotval3)

method itemChange*(self: VirtualQGraphicsWebView, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsWebViewitemChange(self[], change, value)
proc cQGraphicsWebView_method_callback_itemChange(self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = inst.itemChange(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsWebViewevent(self[], param1)
proc cQGraphicsWebView_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method sizeHint*(self: VirtualQGraphicsWebView, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.base.} =
  QGraphicsWebViewsizeHint(self[], which, constraint)
proc cQGraphicsWebView_method_callback_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = inst.sizeHint(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodQuery*(self: VirtualQGraphicsWebView, query: cint): gen_qvariant_types.QVariant {.base.} =
  QGraphicsWebViewinputMethodQuery(self[], query)
proc cQGraphicsWebView_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsWebViewmousePressEvent(self[], param1)
proc cQGraphicsWebView_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsWebViewmouseDoubleClickEvent(self[], param1)
proc cQGraphicsWebView_method_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsWebViewmouseReleaseEvent(self[], param1)
proc cQGraphicsWebView_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void {.base.} =
  QGraphicsWebViewmouseMoveEvent(self[], param1)
proc cQGraphicsWebView_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

method hoverMoveEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsWebViewhoverMoveEvent(self[], param1)
proc cQGraphicsWebView_method_callback_hoverMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: param1, owned: false)
  inst.hoverMoveEvent(slotval1)

method hoverLeaveEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsWebViewhoverLeaveEvent(self[], param1)
proc cQGraphicsWebView_method_callback_hoverLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: param1, owned: false)
  inst.hoverLeaveEvent(slotval1)

method wheelEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void {.base.} =
  QGraphicsWebViewwheelEvent(self[], param1)
proc cQGraphicsWebView_method_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: param1, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQGraphicsWebView, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsWebViewkeyPressEvent(self[], param1)
proc cQGraphicsWebView_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQGraphicsWebView, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QGraphicsWebViewkeyReleaseEvent(self[], param1)
proc cQGraphicsWebView_method_callback_keyReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyReleaseEvent(slotval1)

method contextMenuEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void {.base.} =
  QGraphicsWebViewcontextMenuEvent(self[], param1)
proc cQGraphicsWebView_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method dragEnterEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsWebViewdragEnterEvent(self[], param1)
proc cQGraphicsWebView_method_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1, owned: false)
  inst.dragEnterEvent(slotval1)

method dragLeaveEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsWebViewdragLeaveEvent(self[], param1)
proc cQGraphicsWebView_method_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1, owned: false)
  inst.dragLeaveEvent(slotval1)

method dragMoveEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsWebViewdragMoveEvent(self[], param1)
proc cQGraphicsWebView_method_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1, owned: false)
  inst.dragMoveEvent(slotval1)

method dropEvent*(self: VirtualQGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void {.base.} =
  QGraphicsWebViewdropEvent(self[], param1)
proc cQGraphicsWebView_method_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1, owned: false)
  inst.dropEvent(slotval1)

method focusInEvent*(self: VirtualQGraphicsWebView, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsWebViewfocusInEvent(self[], param1)
proc cQGraphicsWebView_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQGraphicsWebView, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QGraphicsWebViewfocusOutEvent(self[], param1)
proc cQGraphicsWebView_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

method inputMethodEvent*(self: VirtualQGraphicsWebView, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QGraphicsWebViewinputMethodEvent(self[], param1)
proc cQGraphicsWebView_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method focusNextPrevChild*(self: VirtualQGraphicsWebView, next: bool): bool {.base.} =
  QGraphicsWebViewfocusNextPrevChild(self[], next)
proc cQGraphicsWebView_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method sceneEvent*(self: VirtualQGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsWebViewsceneEvent(self[], param1)
proc cQGraphicsWebView_method_callback_sceneEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.sceneEvent(slotval1)
  virtualReturn

method getContentsMargins*(self: VirtualQGraphicsWebView, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.base.} =
  QGraphicsWebViewgetContentsMargins(self[], left, top, right, bottom)
proc cQGraphicsWebView_method_callback_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  inst.getContentsMargins(slotval1, slotval2, slotval3, slotval4)

method typeX*(self: VirtualQGraphicsWebView): cint {.base.} =
  QGraphicsWebViewtypeX(self[])
proc cQGraphicsWebView_method_callback_typeX(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  var virtualReturn = inst.typeX()
  virtualReturn

method paintWindowFrame*(self: VirtualQGraphicsWebView, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void {.base.} =
  QGraphicsWebViewpaintWindowFrame(self[], painter, option, widget)
proc cQGraphicsWebView_method_callback_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option, owned: false)
  let slotval3 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.paintWindowFrame(slotval1, slotval2, slotval3)

method boundingRect*(self: VirtualQGraphicsWebView): gen_qrect_types.QRectF {.base.} =
  QGraphicsWebViewboundingRect(self[])
proc cQGraphicsWebView_method_callback_boundingRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  var virtualReturn = inst.boundingRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method shape*(self: VirtualQGraphicsWebView): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsWebViewshape(self[])
proc cQGraphicsWebView_method_callback_shape(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  var virtualReturn = inst.shape()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method initStyleOption*(self: VirtualQGraphicsWebView, option: gen_qstyleoption_types.QStyleOption): void {.base.} =
  QGraphicsWebViewinitStyleOption(self[], option)
proc cQGraphicsWebView_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option, owned: false)
  inst.initStyleOption(slotval1)

method propertyChange*(self: VirtualQGraphicsWebView, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsWebViewpropertyChange(self[], propertyName, value)
proc cQGraphicsWebView_method_callback_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(toOpenArrayByte(vpropertyName_ms.data, 0, int(vpropertyName_ms.len)-1))
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = inst.propertyChange(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method windowFrameEvent*(self: VirtualQGraphicsWebView, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsWebViewwindowFrameEvent(self[], e)
proc cQGraphicsWebView_method_callback_windowFrameEvent(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.windowFrameEvent(slotval1)
  virtualReturn

method windowFrameSectionAt*(self: VirtualQGraphicsWebView, pos: gen_qpoint_types.QPointF): cint {.base.} =
  QGraphicsWebViewwindowFrameSectionAt(self[], pos)
proc cQGraphicsWebView_method_callback_windowFrameSectionAt(self: pointer, pos: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qpoint_types.QPointF(h: pos, owned: false)
  var virtualReturn = inst.windowFrameSectionAt(slotval1)
  cint(virtualReturn)

method changeEvent*(self: VirtualQGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWebViewchangeEvent(self[], event)
proc cQGraphicsWebView_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method closeEvent*(self: VirtualQGraphicsWebView, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QGraphicsWebViewcloseEvent(self[], event)
proc cQGraphicsWebView_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method hideEvent*(self: VirtualQGraphicsWebView, event: gen_qevent_types.QHideEvent): void {.base.} =
  QGraphicsWebViewhideEvent(self[], event)
proc cQGraphicsWebView_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method moveEvent*(self: VirtualQGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void {.base.} =
  QGraphicsWebViewmoveEvent(self[], event)
proc cQGraphicsWebView_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method polishEvent*(self: VirtualQGraphicsWebView): void {.base.} =
  QGraphicsWebViewpolishEvent(self[])
proc cQGraphicsWebView_method_callback_polishEvent(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  inst.polishEvent()

method resizeEvent*(self: VirtualQGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void {.base.} =
  QGraphicsWebViewresizeEvent(self[], event)
proc cQGraphicsWebView_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method showEvent*(self: VirtualQGraphicsWebView, event: gen_qevent_types.QShowEvent): void {.base.} =
  QGraphicsWebViewshowEvent(self[], event)
proc cQGraphicsWebView_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method grabMouseEvent*(self: VirtualQGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWebViewgrabMouseEvent(self[], event)
proc cQGraphicsWebView_method_callback_grabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.grabMouseEvent(slotval1)

method ungrabMouseEvent*(self: VirtualQGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWebViewungrabMouseEvent(self[], event)
proc cQGraphicsWebView_method_callback_ungrabMouseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.ungrabMouseEvent(slotval1)

method grabKeyboardEvent*(self: VirtualQGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWebViewgrabKeyboardEvent(self[], event)
proc cQGraphicsWebView_method_callback_grabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.grabKeyboardEvent(slotval1)

method ungrabKeyboardEvent*(self: VirtualQGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWebViewungrabKeyboardEvent(self[], event)
proc cQGraphicsWebView_method_callback_ungrabKeyboardEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.ungrabKeyboardEvent(slotval1)

method eventFilter*(self: VirtualQGraphicsWebView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsWebVieweventFilter(self[], watched, event)
proc cQGraphicsWebView_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGraphicsWebView, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsWebViewtimerEvent(self[], event)
proc cQGraphicsWebView_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsWebView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsWebViewchildEvent(self[], event)
proc cQGraphicsWebView_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsWebView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsWebViewcustomEvent(self[], event)
proc cQGraphicsWebView_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsWebView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsWebViewconnectNotify(self[], signal)
proc cQGraphicsWebView_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsWebView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsWebViewdisconnectNotify(self[], signal)
proc cQGraphicsWebView_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

method advance*(self: VirtualQGraphicsWebView, phase: cint): void {.base.} =
  QGraphicsWebViewadvance(self[], phase)
proc cQGraphicsWebView_method_callback_advance(self: pointer, phase: cint): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = phase
  inst.advance(slotval1)

method contains*(self: VirtualQGraphicsWebView, point: gen_qpoint_types.QPointF): bool {.base.} =
  QGraphicsWebViewcontains(self[], point)
proc cQGraphicsWebView_method_callback_contains(self: pointer, point: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)
  var virtualReturn = inst.contains(slotval1)
  virtualReturn

method collidesWithItem*(self: VirtualQGraphicsWebView, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool {.base.} =
  QGraphicsWebViewcollidesWithItem(self[], other, mode)
proc cQGraphicsWebView_method_callback_collidesWithItem(self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = inst.collidesWithItem(slotval1, slotval2)
  virtualReturn

method collidesWithPath*(self: VirtualQGraphicsWebView, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool {.base.} =
  QGraphicsWebViewcollidesWithPath(self[], path, mode)
proc cQGraphicsWebView_method_callback_collidesWithPath(self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path, owned: false)
  let slotval2 = cint(mode)
  var virtualReturn = inst.collidesWithPath(slotval1, slotval2)
  virtualReturn

method isObscuredBy*(self: VirtualQGraphicsWebView, item: gen_qgraphicsitem_types.QGraphicsItem): bool {.base.} =
  QGraphicsWebViewisObscuredBy(self[], item)
proc cQGraphicsWebView_method_callback_isObscuredBy(self: pointer, item: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item, owned: false)
  var virtualReturn = inst.isObscuredBy(slotval1)
  virtualReturn

method opaqueArea*(self: VirtualQGraphicsWebView): gen_qpainterpath_types.QPainterPath {.base.} =
  QGraphicsWebViewopaqueArea(self[])
proc cQGraphicsWebView_method_callback_opaqueArea(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  var virtualReturn = inst.opaqueArea()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sceneEventFilter*(self: VirtualQGraphicsWebView, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsWebViewsceneEventFilter(self[], watched, event)
proc cQGraphicsWebView_method_callback_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.sceneEventFilter(slotval1, slotval2)
  virtualReturn

method hoverEnterEvent*(self: VirtualQGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void {.base.} =
  QGraphicsWebViewhoverEnterEvent(self[], event)
proc cQGraphicsWebView_method_callback_hoverEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event, owned: false)
  inst.hoverEnterEvent(slotval1)

method supportsExtension*(self: VirtualQGraphicsWebView, extension: cint): bool {.base.} =
  QGraphicsWebViewsupportsExtension(self[], extension)
proc cQGraphicsWebView_method_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = cint(extension)
  var virtualReturn = inst.supportsExtension(slotval1)
  virtualReturn

method setExtension*(self: VirtualQGraphicsWebView, extension: cint, variant: gen_qvariant_types.QVariant): void {.base.} =
  QGraphicsWebViewsetExtension(self[], extension, variant)
proc cQGraphicsWebView_method_callback_setExtension(self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant, owned: false)
  inst.setExtension(slotval1, slotval2)

method extension*(self: VirtualQGraphicsWebView, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QGraphicsWebViewextension(self[], variant)
proc cQGraphicsWebView_method_callback_extension(self: pointer, variant: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsWebView](fcQGraphicsWebView_vdata(self))
  let slotval1 = gen_qvariant_types.QVariant(h: variant, owned: false)
  var virtualReturn = inst.extension(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc updateMicroFocus*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_protectedbase_updateMicroFocus(self.h)

proc sender*(self: gen_qgraphicswebview_types.QGraphicsWebView): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsWebView_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicswebview_types.QGraphicsWebView): cint =
  fcQGraphicsWebView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicswebview_types.QGraphicsWebView, signal: cstring): cint =
  fcQGraphicsWebView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicswebview_types.QGraphicsWebView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsWebView_protectedbase_isSignalConnected(self.h, signal.h)

proc addToIndex*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_protectedbase_addToIndex(self.h)

proc removeFromIndex*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_protectedbase_removeFromIndex(self.h)

proc prepareGeometryChange*(self: gen_qgraphicswebview_types.QGraphicsWebView): void =
  fcQGraphicsWebView_protectedbase_prepareGeometryChange(self.h)

proc setGraphicsItem*(self: gen_qgraphicswebview_types.QGraphicsWebView, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsWebView_protectedbase_setGraphicsItem(self.h, item.h)

proc setOwnedByLayout*(self: gen_qgraphicswebview_types.QGraphicsWebView, ownedByLayout: bool): void =
  fcQGraphicsWebView_protectedbase_setOwnedByLayout(self.h, ownedByLayout)

proc create*(T: type gen_qgraphicswebview_types.QGraphicsWebView,
    vtbl: ref QGraphicsWebViewVTable = nil): gen_qgraphicswebview_types.QGraphicsWebView =
  let vtbl = if vtbl == nil: new QGraphicsWebViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsWebView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsWebView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsWebView_vtable_callback_metacall
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQGraphicsWebView_vtable_callback_setGeometry
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = cQGraphicsWebView_vtable_callback_updateGeometry
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = cQGraphicsWebView_vtable_callback_paint
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = cQGraphicsWebView_vtable_callback_itemChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsWebView_vtable_callback_event
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGraphicsWebView_vtable_callback_sizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGraphicsWebView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGraphicsWebView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGraphicsWebView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGraphicsWebView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGraphicsWebView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = cQGraphicsWebView_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = cQGraphicsWebView_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGraphicsWebView_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGraphicsWebView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGraphicsWebView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGraphicsWebView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGraphicsWebView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGraphicsWebView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGraphicsWebView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGraphicsWebView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGraphicsWebView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGraphicsWebView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGraphicsWebView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGraphicsWebView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = cQGraphicsWebView_vtable_callback_sceneEvent
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = cQGraphicsWebView_vtable_callback_getContentsMargins
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = cQGraphicsWebView_vtable_callback_typeX
  if not isNil(vtbl[].paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = cQGraphicsWebView_vtable_callback_paintWindowFrame
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = cQGraphicsWebView_vtable_callback_boundingRect
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = cQGraphicsWebView_vtable_callback_shape
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQGraphicsWebView_vtable_callback_initStyleOption
  if not isNil(vtbl[].propertyChange):
    vtbl[].vtbl.propertyChange = cQGraphicsWebView_vtable_callback_propertyChange
  if not isNil(vtbl[].windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = cQGraphicsWebView_vtable_callback_windowFrameEvent
  if not isNil(vtbl[].windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = cQGraphicsWebView_vtable_callback_windowFrameSectionAt
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGraphicsWebView_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGraphicsWebView_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGraphicsWebView_vtable_callback_hideEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGraphicsWebView_vtable_callback_moveEvent
  if not isNil(vtbl[].polishEvent):
    vtbl[].vtbl.polishEvent = cQGraphicsWebView_vtable_callback_polishEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGraphicsWebView_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGraphicsWebView_vtable_callback_showEvent
  if not isNil(vtbl[].grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = cQGraphicsWebView_vtable_callback_grabMouseEvent
  if not isNil(vtbl[].ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = cQGraphicsWebView_vtable_callback_ungrabMouseEvent
  if not isNil(vtbl[].grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = cQGraphicsWebView_vtable_callback_grabKeyboardEvent
  if not isNil(vtbl[].ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = cQGraphicsWebView_vtable_callback_ungrabKeyboardEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsWebView_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsWebView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsWebView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsWebView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsWebView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsWebView_vtable_callback_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = cQGraphicsWebView_vtable_callback_advance
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = cQGraphicsWebView_vtable_callback_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = cQGraphicsWebView_vtable_callback_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = cQGraphicsWebView_vtable_callback_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = cQGraphicsWebView_vtable_callback_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = cQGraphicsWebView_vtable_callback_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = cQGraphicsWebView_vtable_callback_sceneEventFilter
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = cQGraphicsWebView_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = cQGraphicsWebView_vtable_callback_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = cQGraphicsWebView_vtable_callback_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = cQGraphicsWebView_vtable_callback_extension
  gen_qgraphicswebview_types.QGraphicsWebView(h: fcQGraphicsWebView_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicswebview_types.QGraphicsWebView,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsWebViewVTable = nil): gen_qgraphicswebview_types.QGraphicsWebView =
  let vtbl = if vtbl == nil: new QGraphicsWebViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsWebViewVTable](fcQGraphicsWebView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsWebView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsWebView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsWebView_vtable_callback_metacall
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQGraphicsWebView_vtable_callback_setGeometry
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = cQGraphicsWebView_vtable_callback_updateGeometry
  if not isNil(vtbl[].paint):
    vtbl[].vtbl.paint = cQGraphicsWebView_vtable_callback_paint
  if not isNil(vtbl[].itemChange):
    vtbl[].vtbl.itemChange = cQGraphicsWebView_vtable_callback_itemChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsWebView_vtable_callback_event
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGraphicsWebView_vtable_callback_sizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGraphicsWebView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGraphicsWebView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGraphicsWebView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGraphicsWebView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGraphicsWebView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = cQGraphicsWebView_vtable_callback_hoverMoveEvent
  if not isNil(vtbl[].hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = cQGraphicsWebView_vtable_callback_hoverLeaveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGraphicsWebView_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGraphicsWebView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGraphicsWebView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGraphicsWebView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGraphicsWebView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGraphicsWebView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGraphicsWebView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGraphicsWebView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGraphicsWebView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGraphicsWebView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGraphicsWebView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGraphicsWebView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].sceneEvent):
    vtbl[].vtbl.sceneEvent = cQGraphicsWebView_vtable_callback_sceneEvent
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = cQGraphicsWebView_vtable_callback_getContentsMargins
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = cQGraphicsWebView_vtable_callback_typeX
  if not isNil(vtbl[].paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = cQGraphicsWebView_vtable_callback_paintWindowFrame
  if not isNil(vtbl[].boundingRect):
    vtbl[].vtbl.boundingRect = cQGraphicsWebView_vtable_callback_boundingRect
  if not isNil(vtbl[].shape):
    vtbl[].vtbl.shape = cQGraphicsWebView_vtable_callback_shape
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQGraphicsWebView_vtable_callback_initStyleOption
  if not isNil(vtbl[].propertyChange):
    vtbl[].vtbl.propertyChange = cQGraphicsWebView_vtable_callback_propertyChange
  if not isNil(vtbl[].windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = cQGraphicsWebView_vtable_callback_windowFrameEvent
  if not isNil(vtbl[].windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = cQGraphicsWebView_vtable_callback_windowFrameSectionAt
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGraphicsWebView_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGraphicsWebView_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGraphicsWebView_vtable_callback_hideEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGraphicsWebView_vtable_callback_moveEvent
  if not isNil(vtbl[].polishEvent):
    vtbl[].vtbl.polishEvent = cQGraphicsWebView_vtable_callback_polishEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGraphicsWebView_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGraphicsWebView_vtable_callback_showEvent
  if not isNil(vtbl[].grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = cQGraphicsWebView_vtable_callback_grabMouseEvent
  if not isNil(vtbl[].ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = cQGraphicsWebView_vtable_callback_ungrabMouseEvent
  if not isNil(vtbl[].grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = cQGraphicsWebView_vtable_callback_grabKeyboardEvent
  if not isNil(vtbl[].ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = cQGraphicsWebView_vtable_callback_ungrabKeyboardEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsWebView_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsWebView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsWebView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsWebView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsWebView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsWebView_vtable_callback_disconnectNotify
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = cQGraphicsWebView_vtable_callback_advance
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = cQGraphicsWebView_vtable_callback_contains
  if not isNil(vtbl[].collidesWithItem):
    vtbl[].vtbl.collidesWithItem = cQGraphicsWebView_vtable_callback_collidesWithItem
  if not isNil(vtbl[].collidesWithPath):
    vtbl[].vtbl.collidesWithPath = cQGraphicsWebView_vtable_callback_collidesWithPath
  if not isNil(vtbl[].isObscuredBy):
    vtbl[].vtbl.isObscuredBy = cQGraphicsWebView_vtable_callback_isObscuredBy
  if not isNil(vtbl[].opaqueArea):
    vtbl[].vtbl.opaqueArea = cQGraphicsWebView_vtable_callback_opaqueArea
  if not isNil(vtbl[].sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = cQGraphicsWebView_vtable_callback_sceneEventFilter
  if not isNil(vtbl[].hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = cQGraphicsWebView_vtable_callback_hoverEnterEvent
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = cQGraphicsWebView_vtable_callback_supportsExtension
  if not isNil(vtbl[].setExtension):
    vtbl[].vtbl.setExtension = cQGraphicsWebView_vtable_callback_setExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = cQGraphicsWebView_vtable_callback_extension
  gen_qgraphicswebview_types.QGraphicsWebView(h: fcQGraphicsWebView_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGraphicsWebView_mvtbl = cQGraphicsWebViewVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsWebView()[])](self.fcQGraphicsWebView_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGraphicsWebView_method_callback_metaObject,
  metacast: cQGraphicsWebView_method_callback_metacast,
  metacall: cQGraphicsWebView_method_callback_metacall,
  setGeometry: cQGraphicsWebView_method_callback_setGeometry,
  updateGeometry: cQGraphicsWebView_method_callback_updateGeometry,
  paint: cQGraphicsWebView_method_callback_paint,
  itemChange: cQGraphicsWebView_method_callback_itemChange,
  event: cQGraphicsWebView_method_callback_event,
  sizeHint: cQGraphicsWebView_method_callback_sizeHint,
  inputMethodQuery: cQGraphicsWebView_method_callback_inputMethodQuery,
  mousePressEvent: cQGraphicsWebView_method_callback_mousePressEvent,
  mouseDoubleClickEvent: cQGraphicsWebView_method_callback_mouseDoubleClickEvent,
  mouseReleaseEvent: cQGraphicsWebView_method_callback_mouseReleaseEvent,
  mouseMoveEvent: cQGraphicsWebView_method_callback_mouseMoveEvent,
  hoverMoveEvent: cQGraphicsWebView_method_callback_hoverMoveEvent,
  hoverLeaveEvent: cQGraphicsWebView_method_callback_hoverLeaveEvent,
  wheelEvent: cQGraphicsWebView_method_callback_wheelEvent,
  keyPressEvent: cQGraphicsWebView_method_callback_keyPressEvent,
  keyReleaseEvent: cQGraphicsWebView_method_callback_keyReleaseEvent,
  contextMenuEvent: cQGraphicsWebView_method_callback_contextMenuEvent,
  dragEnterEvent: cQGraphicsWebView_method_callback_dragEnterEvent,
  dragLeaveEvent: cQGraphicsWebView_method_callback_dragLeaveEvent,
  dragMoveEvent: cQGraphicsWebView_method_callback_dragMoveEvent,
  dropEvent: cQGraphicsWebView_method_callback_dropEvent,
  focusInEvent: cQGraphicsWebView_method_callback_focusInEvent,
  focusOutEvent: cQGraphicsWebView_method_callback_focusOutEvent,
  inputMethodEvent: cQGraphicsWebView_method_callback_inputMethodEvent,
  focusNextPrevChild: cQGraphicsWebView_method_callback_focusNextPrevChild,
  sceneEvent: cQGraphicsWebView_method_callback_sceneEvent,
  getContentsMargins: cQGraphicsWebView_method_callback_getContentsMargins,
  typeX: cQGraphicsWebView_method_callback_typeX,
  paintWindowFrame: cQGraphicsWebView_method_callback_paintWindowFrame,
  boundingRect: cQGraphicsWebView_method_callback_boundingRect,
  shape: cQGraphicsWebView_method_callback_shape,
  initStyleOption: cQGraphicsWebView_method_callback_initStyleOption,
  propertyChange: cQGraphicsWebView_method_callback_propertyChange,
  windowFrameEvent: cQGraphicsWebView_method_callback_windowFrameEvent,
  windowFrameSectionAt: cQGraphicsWebView_method_callback_windowFrameSectionAt,
  changeEvent: cQGraphicsWebView_method_callback_changeEvent,
  closeEvent: cQGraphicsWebView_method_callback_closeEvent,
  hideEvent: cQGraphicsWebView_method_callback_hideEvent,
  moveEvent: cQGraphicsWebView_method_callback_moveEvent,
  polishEvent: cQGraphicsWebView_method_callback_polishEvent,
  resizeEvent: cQGraphicsWebView_method_callback_resizeEvent,
  showEvent: cQGraphicsWebView_method_callback_showEvent,
  grabMouseEvent: cQGraphicsWebView_method_callback_grabMouseEvent,
  ungrabMouseEvent: cQGraphicsWebView_method_callback_ungrabMouseEvent,
  grabKeyboardEvent: cQGraphicsWebView_method_callback_grabKeyboardEvent,
  ungrabKeyboardEvent: cQGraphicsWebView_method_callback_ungrabKeyboardEvent,
  eventFilter: cQGraphicsWebView_method_callback_eventFilter,
  timerEvent: cQGraphicsWebView_method_callback_timerEvent,
  childEvent: cQGraphicsWebView_method_callback_childEvent,
  customEvent: cQGraphicsWebView_method_callback_customEvent,
  connectNotify: cQGraphicsWebView_method_callback_connectNotify,
  disconnectNotify: cQGraphicsWebView_method_callback_disconnectNotify,
  advance: cQGraphicsWebView_method_callback_advance,
  contains: cQGraphicsWebView_method_callback_contains,
  collidesWithItem: cQGraphicsWebView_method_callback_collidesWithItem,
  collidesWithPath: cQGraphicsWebView_method_callback_collidesWithPath,
  isObscuredBy: cQGraphicsWebView_method_callback_isObscuredBy,
  opaqueArea: cQGraphicsWebView_method_callback_opaqueArea,
  sceneEventFilter: cQGraphicsWebView_method_callback_sceneEventFilter,
  hoverEnterEvent: cQGraphicsWebView_method_callback_hoverEnterEvent,
  supportsExtension: cQGraphicsWebView_method_callback_supportsExtension,
  setExtension: cQGraphicsWebView_method_callback_setExtension,
  extension: cQGraphicsWebView_method_callback_extension,
)
proc create*(T: type gen_qgraphicswebview_types.QGraphicsWebView,
    inst: VirtualQGraphicsWebView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsWebView_new(addr(cQGraphicsWebView_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicswebview_types.QGraphicsWebView,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    inst: VirtualQGraphicsWebView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsWebView_new2(addr(cQGraphicsWebView_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicswebview_types.QGraphicsWebView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWebView_staticMetaObject())
