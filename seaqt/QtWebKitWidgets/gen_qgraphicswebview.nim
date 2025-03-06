import ./Qt5WebKitWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKitWidgets")  & " -fPIC"
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

proc fcQGraphicsWebView_metaObject(self: pointer, ): pointer {.importc: "QGraphicsWebView_metaObject".}
proc fcQGraphicsWebView_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWebView_metacast".}
proc fcQGraphicsWebView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsWebView_metacall".}
proc fcQGraphicsWebView_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsWebView_tr".}
proc fcQGraphicsWebView_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsWebView_trUtf8".}
proc fcQGraphicsWebView_page(self: pointer, ): pointer {.importc: "QGraphicsWebView_page".}
proc fcQGraphicsWebView_setPage(self: pointer, page: pointer): void {.importc: "QGraphicsWebView_setPage".}
proc fcQGraphicsWebView_url(self: pointer, ): pointer {.importc: "QGraphicsWebView_url".}
proc fcQGraphicsWebView_setUrl(self: pointer, url: pointer): void {.importc: "QGraphicsWebView_setUrl".}
proc fcQGraphicsWebView_title(self: pointer, ): struct_miqt_string {.importc: "QGraphicsWebView_title".}
proc fcQGraphicsWebView_icon(self: pointer, ): pointer {.importc: "QGraphicsWebView_icon".}
proc fcQGraphicsWebView_zoomFactor(self: pointer, ): float64 {.importc: "QGraphicsWebView_zoomFactor".}
proc fcQGraphicsWebView_setZoomFactor(self: pointer, zoomFactor: float64): void {.importc: "QGraphicsWebView_setZoomFactor".}
proc fcQGraphicsWebView_isModified(self: pointer, ): bool {.importc: "QGraphicsWebView_isModified".}
proc fcQGraphicsWebView_load(self: pointer, url: pointer): void {.importc: "QGraphicsWebView_load".}
proc fcQGraphicsWebView_loadWithRequest(self: pointer, request: pointer): void {.importc: "QGraphicsWebView_loadWithRequest".}
proc fcQGraphicsWebView_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QGraphicsWebView_setHtml".}
proc fcQGraphicsWebView_setContent(self: pointer, data: struct_miqt_string): void {.importc: "QGraphicsWebView_setContent".}
proc fcQGraphicsWebView_history(self: pointer, ): pointer {.importc: "QGraphicsWebView_history".}
proc fcQGraphicsWebView_settings(self: pointer, ): pointer {.importc: "QGraphicsWebView_settings".}
proc fcQGraphicsWebView_pageAction(self: pointer, action: cint): pointer {.importc: "QGraphicsWebView_pageAction".}
proc fcQGraphicsWebView_triggerPageAction(self: pointer, action: cint): void {.importc: "QGraphicsWebView_triggerPageAction".}
proc fcQGraphicsWebView_findText(self: pointer, subString: struct_miqt_string): bool {.importc: "QGraphicsWebView_findText".}
proc fcQGraphicsWebView_resizesToContents(self: pointer, ): bool {.importc: "QGraphicsWebView_resizesToContents".}
proc fcQGraphicsWebView_setResizesToContents(self: pointer, enabled: bool): void {.importc: "QGraphicsWebView_setResizesToContents".}
proc fcQGraphicsWebView_isTiledBackingStoreFrozen(self: pointer, ): bool {.importc: "QGraphicsWebView_isTiledBackingStoreFrozen".}
proc fcQGraphicsWebView_setTiledBackingStoreFrozen(self: pointer, frozen: bool): void {.importc: "QGraphicsWebView_setTiledBackingStoreFrozen".}
proc fcQGraphicsWebView_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsWebView_setGeometry".}
proc fcQGraphicsWebView_updateGeometry(self: pointer, ): void {.importc: "QGraphicsWebView_updateGeometry".}
proc fcQGraphicsWebView_paint(self: pointer, param1: pointer, options: pointer, widget: pointer): void {.importc: "QGraphicsWebView_paint".}
proc fcQGraphicsWebView_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsWebView_itemChange".}
proc fcQGraphicsWebView_event(self: pointer, param1: pointer): bool {.importc: "QGraphicsWebView_event".}
proc fcQGraphicsWebView_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsWebView_sizeHint".}
proc fcQGraphicsWebView_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsWebView_inputMethodQuery".}
proc fcQGraphicsWebView_renderHints(self: pointer, ): cint {.importc: "QGraphicsWebView_renderHints".}
proc fcQGraphicsWebView_setRenderHints(self: pointer, renderHints: cint): void {.importc: "QGraphicsWebView_setRenderHints".}
proc fcQGraphicsWebView_setRenderHint(self: pointer, param1: cint): void {.importc: "QGraphicsWebView_setRenderHint".}
proc fcQGraphicsWebView_stop(self: pointer, ): void {.importc: "QGraphicsWebView_stop".}
proc fcQGraphicsWebView_back(self: pointer, ): void {.importc: "QGraphicsWebView_back".}
proc fcQGraphicsWebView_forward(self: pointer, ): void {.importc: "QGraphicsWebView_forward".}
proc fcQGraphicsWebView_reload(self: pointer, ): void {.importc: "QGraphicsWebView_reload".}
proc fcQGraphicsWebView_loadStarted(self: pointer, ): void {.importc: "QGraphicsWebView_loadStarted".}
proc fcQGraphicsWebView_connect_loadStarted(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_loadStarted".}
proc fcQGraphicsWebView_loadFinished(self: pointer, param1: bool): void {.importc: "QGraphicsWebView_loadFinished".}
proc fcQGraphicsWebView_connect_loadFinished(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_loadFinished".}
proc fcQGraphicsWebView_loadProgress(self: pointer, progress: cint): void {.importc: "QGraphicsWebView_loadProgress".}
proc fcQGraphicsWebView_connect_loadProgress(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_loadProgress".}
proc fcQGraphicsWebView_urlChanged(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_urlChanged".}
proc fcQGraphicsWebView_connect_urlChanged(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_urlChanged".}
proc fcQGraphicsWebView_titleChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QGraphicsWebView_titleChanged".}
proc fcQGraphicsWebView_connect_titleChanged(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_titleChanged".}
proc fcQGraphicsWebView_iconChanged(self: pointer, ): void {.importc: "QGraphicsWebView_iconChanged".}
proc fcQGraphicsWebView_connect_iconChanged(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_iconChanged".}
proc fcQGraphicsWebView_statusBarMessage(self: pointer, message: struct_miqt_string): void {.importc: "QGraphicsWebView_statusBarMessage".}
proc fcQGraphicsWebView_connect_statusBarMessage(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_statusBarMessage".}
proc fcQGraphicsWebView_linkClicked(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_linkClicked".}
proc fcQGraphicsWebView_connect_linkClicked(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_linkClicked".}
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
type cQGraphicsWebViewVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsWebViewVTable, self: ptr cQGraphicsWebView) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  updateGeometry*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, param1: pointer, options: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, change: cint, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, which: cint, constraint: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  sceneEvent*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  getContentsMargins*: proc(vtbl, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  paintWindowFrame*: proc(vtbl, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  shape*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  propertyChange*: proc(vtbl, self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl, raises: [], gcsafe.}
  windowFrameEvent*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowFrameSectionAt*: proc(vtbl, self: pointer, pos: pointer): cint {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  polishEvent*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  setExtension*: proc(vtbl, self: pointer, extension: cint, variant: pointer): void {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, variant: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsWebView_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsWebView_virtualbase_metaObject".}
proc fcQGraphicsWebView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWebView_virtualbase_metacast".}
proc fcQGraphicsWebView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsWebView_virtualbase_metacall".}
proc fcQGraphicsWebView_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsWebView_virtualbase_setGeometry".}
proc fcQGraphicsWebView_virtualbase_updateGeometry(self: pointer, ): void {.importc: "QGraphicsWebView_virtualbase_updateGeometry".}
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
proc fcQGraphicsWebView_virtualbase_typeX(self: pointer, ): cint {.importc: "QGraphicsWebView_virtualbase_type".}
proc fcQGraphicsWebView_virtualbase_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWebView_virtualbase_paintWindowFrame".}
proc fcQGraphicsWebView_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsWebView_virtualbase_boundingRect".}
proc fcQGraphicsWebView_virtualbase_shape(self: pointer, ): pointer {.importc: "QGraphicsWebView_virtualbase_shape".}
proc fcQGraphicsWebView_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QGraphicsWebView_virtualbase_initStyleOption".}
proc fcQGraphicsWebView_virtualbase_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.importc: "QGraphicsWebView_virtualbase_propertyChange".}
proc fcQGraphicsWebView_virtualbase_windowFrameEvent(self: pointer, e: pointer): bool {.importc: "QGraphicsWebView_virtualbase_windowFrameEvent".}
proc fcQGraphicsWebView_virtualbase_windowFrameSectionAt(self: pointer, pos: pointer): cint {.importc: "QGraphicsWebView_virtualbase_windowFrameSectionAt".}
proc fcQGraphicsWebView_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_changeEvent".}
proc fcQGraphicsWebView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_closeEvent".}
proc fcQGraphicsWebView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_hideEvent".}
proc fcQGraphicsWebView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_moveEvent".}
proc fcQGraphicsWebView_virtualbase_polishEvent(self: pointer, ): void {.importc: "QGraphicsWebView_virtualbase_polishEvent".}
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
proc fcQGraphicsWebView_virtualbase_opaqueArea(self: pointer, ): pointer {.importc: "QGraphicsWebView_virtualbase_opaqueArea".}
proc fcQGraphicsWebView_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsWebView_virtualbase_sceneEventFilter".}
proc fcQGraphicsWebView_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QGraphicsWebView_virtualbase_hoverEnterEvent".}
proc fcQGraphicsWebView_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QGraphicsWebView_virtualbase_supportsExtension".}
proc fcQGraphicsWebView_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void {.importc: "QGraphicsWebView_virtualbase_setExtension".}
proc fcQGraphicsWebView_virtualbase_extension(self: pointer, variant: pointer): pointer {.importc: "QGraphicsWebView_virtualbase_extension".}
proc fcQGraphicsWebView_new(vtbl: pointer, ): ptr cQGraphicsWebView {.importc: "QGraphicsWebView_new".}
proc fcQGraphicsWebView_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsWebView {.importc: "QGraphicsWebView_new2".}
proc fcQGraphicsWebView_staticMetaObject(): pointer {.importc: "QGraphicsWebView_staticMetaObject".}
proc fcQGraphicsWebView_delete(self: pointer) {.importc: "QGraphicsWebView_delete".}

proc metaObject*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWebView_metaObject(self.h))

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

proc page*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qwebpage_types.QWebPage =
  gen_qwebpage_types.QWebPage(h: fcQGraphicsWebView_page(self.h))

proc setPage*(self: gen_qgraphicswebview_types.QGraphicsWebView, page: gen_qwebpage_types.QWebPage): void =
  fcQGraphicsWebView_setPage(self.h, page.h)

proc url*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQGraphicsWebView_url(self.h))

proc setUrl*(self: gen_qgraphicswebview_types.QGraphicsWebView, url: gen_qurl_types.QUrl): void =
  fcQGraphicsWebView_setUrl(self.h, url.h)

proc title*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): string =
  let v_ms = fcQGraphicsWebView_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc icon*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQGraphicsWebView_icon(self.h))

proc zoomFactor*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): float64 =
  fcQGraphicsWebView_zoomFactor(self.h)

proc setZoomFactor*(self: gen_qgraphicswebview_types.QGraphicsWebView, zoomFactor: float64): void =
  fcQGraphicsWebView_setZoomFactor(self.h, zoomFactor)

proc isModified*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): bool =
  fcQGraphicsWebView_isModified(self.h)

proc load*(self: gen_qgraphicswebview_types.QGraphicsWebView, url: gen_qurl_types.QUrl): void =
  fcQGraphicsWebView_load(self.h, url.h)

proc load*(self: gen_qgraphicswebview_types.QGraphicsWebView, request: gen_qnetworkrequest_types.QNetworkRequest): void =
  fcQGraphicsWebView_loadWithRequest(self.h, request.h)

proc setHtml*(self: gen_qgraphicswebview_types.QGraphicsWebView, html: string): void =
  fcQGraphicsWebView_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc setContent*(self: gen_qgraphicswebview_types.QGraphicsWebView, data: seq[byte]): void =
  fcQGraphicsWebView_setContent(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc history*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qwebhistory_types.QWebHistory =
  gen_qwebhistory_types.QWebHistory(h: fcQGraphicsWebView_history(self.h))

proc settings*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qwebsettings_types.QWebSettings =
  gen_qwebsettings_types.QWebSettings(h: fcQGraphicsWebView_settings(self.h))

proc pageAction*(self: gen_qgraphicswebview_types.QGraphicsWebView, action: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQGraphicsWebView_pageAction(self.h, cint(action)))

proc triggerPageAction*(self: gen_qgraphicswebview_types.QGraphicsWebView, action: cint): void =
  fcQGraphicsWebView_triggerPageAction(self.h, cint(action))

proc findText*(self: gen_qgraphicswebview_types.QGraphicsWebView, subString: string): bool =
  fcQGraphicsWebView_findText(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))))

proc resizesToContents*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): bool =
  fcQGraphicsWebView_resizesToContents(self.h)

proc setResizesToContents*(self: gen_qgraphicswebview_types.QGraphicsWebView, enabled: bool): void =
  fcQGraphicsWebView_setResizesToContents(self.h, enabled)

proc isTiledBackingStoreFrozen*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): bool =
  fcQGraphicsWebView_isTiledBackingStoreFrozen(self.h)

proc setTiledBackingStoreFrozen*(self: gen_qgraphicswebview_types.QGraphicsWebView, frozen: bool): void =
  fcQGraphicsWebView_setTiledBackingStoreFrozen(self.h, frozen)

proc setGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsWebView_setGeometry(self.h, rect.h)

proc updateGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): void =
  fcQGraphicsWebView_updateGeometry(self.h)

proc paint*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWebView_paint(self.h, param1.h, options.h, widget.h)

proc itemChange*(self: gen_qgraphicswebview_types.QGraphicsWebView, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_itemChange(self.h, cint(change), value.h))

proc event*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_event(self.h, param1.h)

proc sizeHint*(self: gen_qgraphicswebview_types.QGraphicsWebView, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsWebView_sizeHint(self.h, cint(which), constraint.h))

proc inputMethodQuery*(self: gen_qgraphicswebview_types.QGraphicsWebView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_inputMethodQuery(self.h, cint(query)))

proc renderHints*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): cint =
  cint(fcQGraphicsWebView_renderHints(self.h))

proc setRenderHints*(self: gen_qgraphicswebview_types.QGraphicsWebView, renderHints: cint): void =
  fcQGraphicsWebView_setRenderHints(self.h, cint(renderHints))

proc setRenderHint*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: cint): void =
  fcQGraphicsWebView_setRenderHint(self.h, cint(param1))

proc stop*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): void =
  fcQGraphicsWebView_stop(self.h)

proc back*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): void =
  fcQGraphicsWebView_back(self.h)

proc forward*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): void =
  fcQGraphicsWebView_forward(self.h)

proc reload*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): void =
  fcQGraphicsWebView_reload(self.h)

proc loadStarted*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): void =
  fcQGraphicsWebView_loadStarted(self.h)

type QGraphicsWebViewloadStartedSlot* = proc()
proc miqt_exec_callback_cQGraphicsWebView_loadStarted(slot: int) {.exportc: "miqt_exec_callback_QGraphicsWebView_loadStarted".} =
  let nimfunc = cast[ptr QGraphicsWebViewloadStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc onloadStarted*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewloadStartedSlot) =
  var tmp = new QGraphicsWebViewloadStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_loadStarted(self.h, cast[int](addr tmp[]))

proc loadFinished*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: bool): void =
  fcQGraphicsWebView_loadFinished(self.h, param1)

type QGraphicsWebViewloadFinishedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQGraphicsWebView_loadFinished(slot: int, param1: bool) {.exportc: "miqt_exec_callback_QGraphicsWebView_loadFinished".} =
  let nimfunc = cast[ptr QGraphicsWebViewloadFinishedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onloadFinished*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewloadFinishedSlot) =
  var tmp = new QGraphicsWebViewloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_loadFinished(self.h, cast[int](addr tmp[]))

proc loadProgress*(self: gen_qgraphicswebview_types.QGraphicsWebView, progress: cint): void =
  fcQGraphicsWebView_loadProgress(self.h, progress)

type QGraphicsWebViewloadProgressSlot* = proc(progress: cint)
proc miqt_exec_callback_cQGraphicsWebView_loadProgress(slot: int, progress: cint) {.exportc: "miqt_exec_callback_QGraphicsWebView_loadProgress".} =
  let nimfunc = cast[ptr QGraphicsWebViewloadProgressSlot](cast[pointer](slot))
  let slotval1 = progress

  nimfunc[](slotval1)

proc onloadProgress*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewloadProgressSlot) =
  var tmp = new QGraphicsWebViewloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_loadProgress(self.h, cast[int](addr tmp[]))

proc urlChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qurl_types.QUrl): void =
  fcQGraphicsWebView_urlChanged(self.h, param1.h)

type QGraphicsWebViewurlChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQGraphicsWebView_urlChanged(slot: int, param1: pointer) {.exportc: "miqt_exec_callback_QGraphicsWebView_urlChanged".} =
  let nimfunc = cast[ptr QGraphicsWebViewurlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc onurlChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewurlChangedSlot) =
  var tmp = new QGraphicsWebViewurlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_urlChanged(self.h, cast[int](addr tmp[]))

proc titleChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: string): void =
  fcQGraphicsWebView_titleChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QGraphicsWebViewtitleChangedSlot* = proc(param1: string)
proc miqt_exec_callback_cQGraphicsWebView_titleChanged(slot: int, param1: struct_miqt_string) {.exportc: "miqt_exec_callback_QGraphicsWebView_titleChanged".} =
  let nimfunc = cast[ptr QGraphicsWebViewtitleChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc ontitleChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewtitleChangedSlot) =
  var tmp = new QGraphicsWebViewtitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_titleChanged(self.h, cast[int](addr tmp[]))

proc iconChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): void =
  fcQGraphicsWebView_iconChanged(self.h)

type QGraphicsWebViewiconChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsWebView_iconChanged(slot: int) {.exportc: "miqt_exec_callback_QGraphicsWebView_iconChanged".} =
  let nimfunc = cast[ptr QGraphicsWebViewiconChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oniconChanged*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewiconChangedSlot) =
  var tmp = new QGraphicsWebViewiconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_iconChanged(self.h, cast[int](addr tmp[]))

proc statusBarMessage*(self: gen_qgraphicswebview_types.QGraphicsWebView, message: string): void =
  fcQGraphicsWebView_statusBarMessage(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

type QGraphicsWebViewstatusBarMessageSlot* = proc(message: string)
proc miqt_exec_callback_cQGraphicsWebView_statusBarMessage(slot: int, message: struct_miqt_string) {.exportc: "miqt_exec_callback_QGraphicsWebView_statusBarMessage".} =
  let nimfunc = cast[ptr QGraphicsWebViewstatusBarMessageSlot](cast[pointer](slot))
  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval1 = vmessagex_ret

  nimfunc[](slotval1)

proc onstatusBarMessage*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewstatusBarMessageSlot) =
  var tmp = new QGraphicsWebViewstatusBarMessageSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_statusBarMessage(self.h, cast[int](addr tmp[]))

proc linkClicked*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qurl_types.QUrl): void =
  fcQGraphicsWebView_linkClicked(self.h, param1.h)

type QGraphicsWebViewlinkClickedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQGraphicsWebView_linkClicked(slot: int, param1: pointer) {.exportc: "miqt_exec_callback_QGraphicsWebView_linkClicked".} =
  let nimfunc = cast[ptr QGraphicsWebViewlinkClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc onlinkClicked*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewlinkClickedSlot) =
  var tmp = new QGraphicsWebViewlinkClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_connect_linkClicked(self.h, cast[int](addr tmp[]))

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
type QGraphicsWebViewVTable* = object
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
proc QGraphicsWebViewmetaObject*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWebView_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsWebView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsWebViewmetacast*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: cstring): pointer =
  fcQGraphicsWebView_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsWebView_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsWebViewmetacall*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsWebView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsWebView_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsWebViewsetGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsWebView_virtualbase_setGeometry(self.h, rect.h)

proc miqt_exec_callback_cQGraphicsWebView_setGeometry(vtbl: pointer, self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect)
  vtbl[].setGeometry(self, slotval1)

proc QGraphicsWebViewupdateGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): void =
  fcQGraphicsWebView_virtualbase_updateGeometry(self.h)

proc miqt_exec_callback_cQGraphicsWebView_updateGeometry(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  vtbl[].updateGeometry(self)

proc QGraphicsWebViewpaint*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWebView_virtualbase_paint(self.h, param1.h, options.h, widget.h)

proc miqt_exec_callback_cQGraphicsWebView_paint(vtbl: pointer, self: pointer, param1: pointer, options: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: param1)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: options)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paint(self, slotval1, slotval2, slotval3)

proc QGraphicsWebViewitemChange*(self: gen_qgraphicswebview_types.QGraphicsWebView, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_virtualbase_itemChange(self.h, cint(change), value.h))

proc miqt_exec_callback_cQGraphicsWebView_itemChange(vtbl: pointer, self: pointer, change: cint, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(change)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].itemChange(self, slotval1, slotval2)
  virtualReturn.h

proc QGraphicsWebViewevent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsWebViewsizeHint*(self: gen_qgraphicswebview_types.QGraphicsWebView, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsWebView_virtualbase_sizeHint(self.h, cint(which), constraint.h))

proc miqt_exec_callback_cQGraphicsWebView_sizeHint(vtbl: pointer, self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.h

proc QGraphicsWebViewinputMethodQuery*(self: gen_qgraphicswebview_types.QGraphicsWebView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQGraphicsWebView_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGraphicsWebViewmousePressEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWebView_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QGraphicsWebViewmouseDoubleClickEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWebView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGraphicsWebViewmouseReleaseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWebView_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGraphicsWebViewmouseMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fcQGraphicsWebView_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGraphicsWebViewhoverMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWebView_virtualbase_hoverMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_hoverMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: param1)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QGraphicsWebViewhoverLeaveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWebView_virtualbase_hoverLeaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_hoverLeaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: param1)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QGraphicsWebViewwheelEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fcQGraphicsWebView_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QGraphicsWebViewkeyPressEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsWebView_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QGraphicsWebViewkeyReleaseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QKeyEvent): void =
  fcQGraphicsWebView_virtualbase_keyReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_keyReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGraphicsWebViewcontextMenuEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fcQGraphicsWebView_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGraphicsWebViewdragEnterEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWebView_virtualbase_dragEnterEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_dragEnterEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGraphicsWebViewdragLeaveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWebView_virtualbase_dragLeaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_dragLeaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGraphicsWebViewdragMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWebView_virtualbase_dragMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_dragMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGraphicsWebViewdropEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fcQGraphicsWebView_virtualbase_dropEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_dropEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1)
  vtbl[].dropEvent(self, slotval1)

proc QGraphicsWebViewfocusInEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsWebView_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusInEvent(self, slotval1)

proc QGraphicsWebViewfocusOutEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QFocusEvent): void =
  fcQGraphicsWebView_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusOutEvent(self, slotval1)

proc QGraphicsWebViewinputMethodEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQGraphicsWebView_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGraphicsWebViewfocusNextPrevChild*(self: gen_qgraphicswebview_types.QGraphicsWebView, next: bool): bool =
  fcQGraphicsWebView_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQGraphicsWebView_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QGraphicsWebViewsceneEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_virtualbase_sceneEvent(self.h, param1.h)

proc miqt_exec_callback_cQGraphicsWebView_sceneEvent(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].sceneEvent(self, slotval1)
  virtualReturn

proc QGraphicsWebViewgetContentsMargins*(self: gen_qgraphicswebview_types.QGraphicsWebView, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsWebView_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

proc miqt_exec_callback_cQGraphicsWebView_getContentsMargins(vtbl: pointer, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl[].getContentsMargins(self, slotval1, slotval2, slotval3, slotval4)

proc QGraphicsWebViewtypeX*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): cint =
  fcQGraphicsWebView_virtualbase_typeX(self.h)

proc miqt_exec_callback_cQGraphicsWebView_typeX(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc QGraphicsWebViewpaintWindowFrame*(self: gen_qgraphicswebview_types.QGraphicsWebView, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsWebView_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

proc miqt_exec_callback_cQGraphicsWebView_paintWindowFrame(vtbl: pointer, self: pointer, painter: pointer, option: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].paintWindowFrame(self, slotval1, slotval2, slotval3)

proc QGraphicsWebViewboundingRect*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsWebView_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQGraphicsWebView_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  var virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QGraphicsWebViewshape*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsWebView_virtualbase_shape(self.h))

proc miqt_exec_callback_cQGraphicsWebView_shape(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  var virtualReturn = vtbl[].shape(self)
  virtualReturn.h

proc QGraphicsWebViewinitStyleOption*(self: gen_qgraphicswebview_types.QGraphicsWebView, option: gen_qstyleoption_types.QStyleOption): void =
  fcQGraphicsWebView_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQGraphicsWebView_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QGraphicsWebViewpropertyChange*(self: gen_qgraphicswebview_types.QGraphicsWebView, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_virtualbase_propertyChange(self.h, struct_miqt_string(data: propertyName, len: csize_t(len(propertyName))), value.h))

proc miqt_exec_callback_cQGraphicsWebView_propertyChange(vtbl: pointer, self: pointer, propertyName: struct_miqt_string, value: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(toOpenArrayByte(vpropertyName_ms.data, 0, int(vpropertyName_ms.len)-1))
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].propertyChange(self, slotval1, slotval2)
  virtualReturn.h

proc QGraphicsWebViewwindowFrameEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, e: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_virtualbase_windowFrameEvent(self.h, e.h)

proc miqt_exec_callback_cQGraphicsWebView_windowFrameEvent(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].windowFrameEvent(self, slotval1)
  virtualReturn

proc QGraphicsWebViewwindowFrameSectionAt*(self: gen_qgraphicswebview_types.QGraphicsWebView, pos: gen_qpoint_types.QPointF): cint =
  cint(fcQGraphicsWebView_virtualbase_windowFrameSectionAt(self.h, pos.h))

proc miqt_exec_callback_cQGraphicsWebView_windowFrameSectionAt(vtbl: pointer, self: pointer, pos: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: pos)
  var virtualReturn = vtbl[].windowFrameSectionAt(self, slotval1)
  cint(virtualReturn)

proc QGraphicsWebViewchangeEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QGraphicsWebViewcloseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qevent_types.QCloseEvent): void =
  fcQGraphicsWebView_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QGraphicsWebViewhideEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qevent_types.QHideEvent): void =
  fcQGraphicsWebView_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QGraphicsWebViewmoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void =
  fcQGraphicsWebView_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QGraphicsWebViewpolishEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): void =
  fcQGraphicsWebView_virtualbase_polishEvent(self.h)

proc miqt_exec_callback_cQGraphicsWebView_polishEvent(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  vtbl[].polishEvent(self)

proc QGraphicsWebViewresizeEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void =
  fcQGraphicsWebView_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QGraphicsWebViewshowEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qevent_types.QShowEvent): void =
  fcQGraphicsWebView_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QGraphicsWebViewgrabMouseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_grabMouseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_grabMouseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].grabMouseEvent(self, slotval1)

proc QGraphicsWebViewungrabMouseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_ungrabMouseEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_ungrabMouseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].ungrabMouseEvent(self, slotval1)

proc QGraphicsWebViewgrabKeyboardEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_grabKeyboardEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_grabKeyboardEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].grabKeyboardEvent(self, slotval1)

proc QGraphicsWebViewungrabKeyboardEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_ungrabKeyboardEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_ungrabKeyboardEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].ungrabKeyboardEvent(self, slotval1)

proc QGraphicsWebVieweventFilter*(self: gen_qgraphicswebview_types.QGraphicsWebView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWebViewtimerEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsWebView_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsWebViewchildEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsWebView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsWebViewcustomEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsWebView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsWebViewconnectNotify*(self: gen_qgraphicswebview_types.QGraphicsWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsWebView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsWebView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsWebViewdisconnectNotify*(self: gen_qgraphicswebview_types.QGraphicsWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsWebView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsWebView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc QGraphicsWebViewadvance*(self: gen_qgraphicswebview_types.QGraphicsWebView, phase: cint): void =
  fcQGraphicsWebView_virtualbase_advance(self.h, phase)

proc miqt_exec_callback_cQGraphicsWebView_advance(vtbl: pointer, self: pointer, phase: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = phase
  vtbl[].advance(self, slotval1)

proc QGraphicsWebViewcontains*(self: gen_qgraphicswebview_types.QGraphicsWebView, point: gen_qpoint_types.QPointF): bool =
  fcQGraphicsWebView_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQGraphicsWebView_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QGraphicsWebViewcollidesWithItem*(self: gen_qgraphicswebview_types.QGraphicsWebView, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fcQGraphicsWebView_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

proc miqt_exec_callback_cQGraphicsWebView_collidesWithItem(vtbl: pointer, self: pointer, other: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithItem(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWebViewcollidesWithPath*(self: gen_qgraphicswebview_types.QGraphicsWebView, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fcQGraphicsWebView_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

proc miqt_exec_callback_cQGraphicsWebView_collidesWithPath(vtbl: pointer, self: pointer, path: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].collidesWithPath(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWebViewisObscuredBy*(self: gen_qgraphicswebview_types.QGraphicsWebView, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fcQGraphicsWebView_virtualbase_isObscuredBy(self.h, item.h)

proc miqt_exec_callback_cQGraphicsWebView_isObscuredBy(vtbl: pointer, self: pointer, item: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)
  var virtualReturn = vtbl[].isObscuredBy(self, slotval1)
  virtualReturn

proc QGraphicsWebViewopaqueArea*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQGraphicsWebView_virtualbase_opaqueArea(self.h))

proc miqt_exec_callback_cQGraphicsWebView_opaqueArea(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  var virtualReturn = vtbl[].opaqueArea(self)
  virtualReturn.h

proc QGraphicsWebViewsceneEventFilter*(self: gen_qgraphicswebview_types.QGraphicsWebView, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsWebView_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_sceneEventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].sceneEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsWebViewhoverEnterEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fcQGraphicsWebView_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsWebView_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QGraphicsWebViewsupportsExtension*(self: gen_qgraphicswebview_types.QGraphicsWebView, extension: cint): bool =
  fcQGraphicsWebView_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQGraphicsWebView_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QGraphicsWebViewsetExtension*(self: gen_qgraphicswebview_types.QGraphicsWebView, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fcQGraphicsWebView_virtualbase_setExtension(self.h, cint(extension), variant.h)

proc miqt_exec_callback_cQGraphicsWebView_setExtension(vtbl: pointer, self: pointer, extension: cint, variant: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: variant)
  vtbl[].setExtension(self, slotval1, slotval2)

proc QGraphicsWebViewextension*(self: gen_qgraphicswebview_types.QGraphicsWebView, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGraphicsWebView_virtualbase_extension(self.h, variant.h))

proc miqt_exec_callback_cQGraphicsWebView_extension(vtbl: pointer, self: pointer, variant: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsWebViewVTable](vtbl)
  let self = QGraphicsWebView(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: variant)
  var virtualReturn = vtbl[].extension(self, slotval1)
  virtualReturn.h

proc create*(T: type gen_qgraphicswebview_types.QGraphicsWebView,
    vtbl: ref QGraphicsWebViewVTable = nil): gen_qgraphicswebview_types.QGraphicsWebView =
  let vtbl = if vtbl == nil: new QGraphicsWebViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsWebViewVTable, _: ptr cQGraphicsWebView) {.cdecl.} =
    let vtbl = cast[ref QGraphicsWebViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsWebView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsWebView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsWebView_metacall
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsWebView_setGeometry
  if not isNil(vtbl.updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsWebView_updateGeometry
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsWebView_paint
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsWebView_itemChange
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsWebView_event
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsWebView_sizeHint
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsWebView_inputMethodQuery
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsWebView_mousePressEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsWebView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsWebView_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsWebView_mouseMoveEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsWebView_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsWebView_hoverLeaveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsWebView_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsWebView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsWebView_keyReleaseEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsWebView_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsWebView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsWebView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsWebView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsWebView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsWebView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsWebView_focusOutEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsWebView_inputMethodEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsWebView_focusNextPrevChild
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsWebView_sceneEvent
  if not isNil(vtbl.getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsWebView_getContentsMargins
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsWebView_typeX
  if not isNil(vtbl.paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = miqt_exec_callback_cQGraphicsWebView_paintWindowFrame
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsWebView_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsWebView_shape
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsWebView_initStyleOption
  if not isNil(vtbl.propertyChange):
    vtbl[].vtbl.propertyChange = miqt_exec_callback_cQGraphicsWebView_propertyChange
  if not isNil(vtbl.windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = miqt_exec_callback_cQGraphicsWebView_windowFrameEvent
  if not isNil(vtbl.windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = miqt_exec_callback_cQGraphicsWebView_windowFrameSectionAt
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsWebView_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsWebView_closeEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsWebView_hideEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsWebView_moveEvent
  if not isNil(vtbl.polishEvent):
    vtbl[].vtbl.polishEvent = miqt_exec_callback_cQGraphicsWebView_polishEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsWebView_resizeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsWebView_showEvent
  if not isNil(vtbl.grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = miqt_exec_callback_cQGraphicsWebView_grabMouseEvent
  if not isNil(vtbl.ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = miqt_exec_callback_cQGraphicsWebView_ungrabMouseEvent
  if not isNil(vtbl.grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = miqt_exec_callback_cQGraphicsWebView_grabKeyboardEvent
  if not isNil(vtbl.ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = miqt_exec_callback_cQGraphicsWebView_ungrabKeyboardEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsWebView_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsWebView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsWebView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsWebView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsWebView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsWebView_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsWebView_advance
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsWebView_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsWebView_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsWebView_collidesWithPath
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsWebView_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsWebView_opaqueArea
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsWebView_sceneEventFilter
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsWebView_hoverEnterEvent
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsWebView_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsWebView_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsWebView_extension
  gen_qgraphicswebview_types.QGraphicsWebView(h: fcQGraphicsWebView_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicswebview_types.QGraphicsWebView,
    parent: gen_qgraphicsitem_types.QGraphicsItem,
    vtbl: ref QGraphicsWebViewVTable = nil): gen_qgraphicswebview_types.QGraphicsWebView =
  let vtbl = if vtbl == nil: new QGraphicsWebViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsWebViewVTable, _: ptr cQGraphicsWebView) {.cdecl.} =
    let vtbl = cast[ref QGraphicsWebViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsWebView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsWebView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsWebView_metacall
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsWebView_setGeometry
  if not isNil(vtbl.updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsWebView_updateGeometry
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQGraphicsWebView_paint
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQGraphicsWebView_itemChange
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsWebView_event
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsWebView_sizeHint
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGraphicsWebView_inputMethodQuery
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGraphicsWebView_mousePressEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGraphicsWebView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGraphicsWebView_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGraphicsWebView_mouseMoveEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQGraphicsWebView_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQGraphicsWebView_hoverLeaveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGraphicsWebView_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGraphicsWebView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGraphicsWebView_keyReleaseEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGraphicsWebView_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGraphicsWebView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGraphicsWebView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGraphicsWebView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGraphicsWebView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGraphicsWebView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGraphicsWebView_focusOutEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGraphicsWebView_inputMethodEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGraphicsWebView_focusNextPrevChild
  if not isNil(vtbl.sceneEvent):
    vtbl[].vtbl.sceneEvent = miqt_exec_callback_cQGraphicsWebView_sceneEvent
  if not isNil(vtbl.getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsWebView_getContentsMargins
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQGraphicsWebView_typeX
  if not isNil(vtbl.paintWindowFrame):
    vtbl[].vtbl.paintWindowFrame = miqt_exec_callback_cQGraphicsWebView_paintWindowFrame
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQGraphicsWebView_boundingRect
  if not isNil(vtbl.shape):
    vtbl[].vtbl.shape = miqt_exec_callback_cQGraphicsWebView_shape
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQGraphicsWebView_initStyleOption
  if not isNil(vtbl.propertyChange):
    vtbl[].vtbl.propertyChange = miqt_exec_callback_cQGraphicsWebView_propertyChange
  if not isNil(vtbl.windowFrameEvent):
    vtbl[].vtbl.windowFrameEvent = miqt_exec_callback_cQGraphicsWebView_windowFrameEvent
  if not isNil(vtbl.windowFrameSectionAt):
    vtbl[].vtbl.windowFrameSectionAt = miqt_exec_callback_cQGraphicsWebView_windowFrameSectionAt
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGraphicsWebView_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGraphicsWebView_closeEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGraphicsWebView_hideEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGraphicsWebView_moveEvent
  if not isNil(vtbl.polishEvent):
    vtbl[].vtbl.polishEvent = miqt_exec_callback_cQGraphicsWebView_polishEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGraphicsWebView_resizeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGraphicsWebView_showEvent
  if not isNil(vtbl.grabMouseEvent):
    vtbl[].vtbl.grabMouseEvent = miqt_exec_callback_cQGraphicsWebView_grabMouseEvent
  if not isNil(vtbl.ungrabMouseEvent):
    vtbl[].vtbl.ungrabMouseEvent = miqt_exec_callback_cQGraphicsWebView_ungrabMouseEvent
  if not isNil(vtbl.grabKeyboardEvent):
    vtbl[].vtbl.grabKeyboardEvent = miqt_exec_callback_cQGraphicsWebView_grabKeyboardEvent
  if not isNil(vtbl.ungrabKeyboardEvent):
    vtbl[].vtbl.ungrabKeyboardEvent = miqt_exec_callback_cQGraphicsWebView_ungrabKeyboardEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsWebView_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsWebView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsWebView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsWebView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsWebView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsWebView_disconnectNotify
  if not isNil(vtbl.advance):
    vtbl[].vtbl.advance = miqt_exec_callback_cQGraphicsWebView_advance
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQGraphicsWebView_contains
  if not isNil(vtbl.collidesWithItem):
    vtbl[].vtbl.collidesWithItem = miqt_exec_callback_cQGraphicsWebView_collidesWithItem
  if not isNil(vtbl.collidesWithPath):
    vtbl[].vtbl.collidesWithPath = miqt_exec_callback_cQGraphicsWebView_collidesWithPath
  if not isNil(vtbl.isObscuredBy):
    vtbl[].vtbl.isObscuredBy = miqt_exec_callback_cQGraphicsWebView_isObscuredBy
  if not isNil(vtbl.opaqueArea):
    vtbl[].vtbl.opaqueArea = miqt_exec_callback_cQGraphicsWebView_opaqueArea
  if not isNil(vtbl.sceneEventFilter):
    vtbl[].vtbl.sceneEventFilter = miqt_exec_callback_cQGraphicsWebView_sceneEventFilter
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQGraphicsWebView_hoverEnterEvent
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQGraphicsWebView_supportsExtension
  if not isNil(vtbl.setExtension):
    vtbl[].vtbl.setExtension = miqt_exec_callback_cQGraphicsWebView_setExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQGraphicsWebView_extension
  gen_qgraphicswebview_types.QGraphicsWebView(h: fcQGraphicsWebView_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicswebview_types.QGraphicsWebView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWebView_staticMetaObject())
proc delete*(self: gen_qgraphicswebview_types.QGraphicsWebView) =
  fcQGraphicsWebView_delete(self.h)
