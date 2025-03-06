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

const cflags = gorge("pkg-config --cflags Qt5WebKitWidgets")  & " -fPIC"
{.compile("gen_qwebview.cpp", cflags).}


import ./gen_qwebview_types
export gen_qwebview_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtNetwork/gen_qnetworkrequest_types,
  ../QtPrintSupport/gen_qprinter_types,
  ../QtWebKit/gen_qwebhistory_types,
  ../QtWebKit/gen_qwebsettings_types,
  ../QtWidgets/gen_qaction_types,
  ../QtWidgets/gen_qwidget,
  ./gen_qwebpage_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qnetworkrequest_types,
  gen_qprinter_types,
  gen_qwebhistory_types,
  gen_qwebsettings_types,
  gen_qaction_types,
  gen_qwidget,
  gen_qwebpage_types

type cQWebView*{.exportc: "QWebView", incompleteStruct.} = object

proc fcQWebView_metaObject(self: pointer, ): pointer {.importc: "QWebView_metaObject".}
proc fcQWebView_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebView_metacast".}
proc fcQWebView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebView_metacall".}
proc fcQWebView_tr(s: cstring): struct_miqt_string {.importc: "QWebView_tr".}
proc fcQWebView_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebView_trUtf8".}
proc fcQWebView_page(self: pointer, ): pointer {.importc: "QWebView_page".}
proc fcQWebView_setPage(self: pointer, page: pointer): void {.importc: "QWebView_setPage".}
proc fcQWebView_load(self: pointer, url: pointer): void {.importc: "QWebView_load".}
proc fcQWebView_loadWithRequest(self: pointer, request: pointer): void {.importc: "QWebView_loadWithRequest".}
proc fcQWebView_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QWebView_setHtml".}
proc fcQWebView_setContent(self: pointer, data: struct_miqt_string): void {.importc: "QWebView_setContent".}
proc fcQWebView_history(self: pointer, ): pointer {.importc: "QWebView_history".}
proc fcQWebView_settings(self: pointer, ): pointer {.importc: "QWebView_settings".}
proc fcQWebView_title(self: pointer, ): struct_miqt_string {.importc: "QWebView_title".}
proc fcQWebView_setUrl(self: pointer, url: pointer): void {.importc: "QWebView_setUrl".}
proc fcQWebView_url(self: pointer, ): pointer {.importc: "QWebView_url".}
proc fcQWebView_icon(self: pointer, ): pointer {.importc: "QWebView_icon".}
proc fcQWebView_hasSelection(self: pointer, ): bool {.importc: "QWebView_hasSelection".}
proc fcQWebView_selectedText(self: pointer, ): struct_miqt_string {.importc: "QWebView_selectedText".}
proc fcQWebView_selectedHtml(self: pointer, ): struct_miqt_string {.importc: "QWebView_selectedHtml".}
proc fcQWebView_pageAction(self: pointer, action: cint): pointer {.importc: "QWebView_pageAction".}
proc fcQWebView_triggerPageAction(self: pointer, action: cint): void {.importc: "QWebView_triggerPageAction".}
proc fcQWebView_isModified(self: pointer, ): bool {.importc: "QWebView_isModified".}
proc fcQWebView_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QWebView_inputMethodQuery".}
proc fcQWebView_sizeHint(self: pointer, ): pointer {.importc: "QWebView_sizeHint".}
proc fcQWebView_zoomFactor(self: pointer, ): float64 {.importc: "QWebView_zoomFactor".}
proc fcQWebView_setZoomFactor(self: pointer, factor: float64): void {.importc: "QWebView_setZoomFactor".}
proc fcQWebView_setTextSizeMultiplier(self: pointer, factor: float64): void {.importc: "QWebView_setTextSizeMultiplier".}
proc fcQWebView_textSizeMultiplier(self: pointer, ): float64 {.importc: "QWebView_textSizeMultiplier".}
proc fcQWebView_renderHints(self: pointer, ): cint {.importc: "QWebView_renderHints".}
proc fcQWebView_setRenderHints(self: pointer, hints: cint): void {.importc: "QWebView_setRenderHints".}
proc fcQWebView_setRenderHint(self: pointer, hint: cint): void {.importc: "QWebView_setRenderHint".}
proc fcQWebView_findText(self: pointer, subString: struct_miqt_string): bool {.importc: "QWebView_findText".}
proc fcQWebView_event(self: pointer, param1: pointer): bool {.importc: "QWebView_event".}
proc fcQWebView_stop(self: pointer, ): void {.importc: "QWebView_stop".}
proc fcQWebView_back(self: pointer, ): void {.importc: "QWebView_back".}
proc fcQWebView_forward(self: pointer, ): void {.importc: "QWebView_forward".}
proc fcQWebView_reload(self: pointer, ): void {.importc: "QWebView_reload".}
proc fcQWebView_print(self: pointer, param1: pointer): void {.importc: "QWebView_print".}
proc fcQWebView_loadStarted(self: pointer, ): void {.importc: "QWebView_loadStarted".}
proc fcQWebView_connect_loadStarted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebView_connect_loadStarted".}
proc fcQWebView_loadProgress(self: pointer, progress: cint): void {.importc: "QWebView_loadProgress".}
proc fcQWebView_connect_loadProgress(self: pointer, slot: int, callback: proc (slot: int, progress: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebView_connect_loadProgress".}
proc fcQWebView_loadFinished(self: pointer, param1: bool): void {.importc: "QWebView_loadFinished".}
proc fcQWebView_connect_loadFinished(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebView_connect_loadFinished".}
proc fcQWebView_titleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWebView_titleChanged".}
proc fcQWebView_connect_titleChanged(self: pointer, slot: int, callback: proc (slot: int, title: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebView_connect_titleChanged".}
proc fcQWebView_statusBarMessage(self: pointer, text: struct_miqt_string): void {.importc: "QWebView_statusBarMessage".}
proc fcQWebView_connect_statusBarMessage(self: pointer, slot: int, callback: proc (slot: int, text: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebView_connect_statusBarMessage".}
proc fcQWebView_linkClicked(self: pointer, param1: pointer): void {.importc: "QWebView_linkClicked".}
proc fcQWebView_connect_linkClicked(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebView_connect_linkClicked".}
proc fcQWebView_selectionChanged(self: pointer, ): void {.importc: "QWebView_selectionChanged".}
proc fcQWebView_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebView_connect_selectionChanged".}
proc fcQWebView_iconChanged(self: pointer, ): void {.importc: "QWebView_iconChanged".}
proc fcQWebView_connect_iconChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebView_connect_iconChanged".}
proc fcQWebView_urlChanged(self: pointer, param1: pointer): void {.importc: "QWebView_urlChanged".}
proc fcQWebView_connect_urlChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebView_connect_urlChanged".}
proc fcQWebView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebView_tr2".}
proc fcQWebView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebView_tr3".}
proc fcQWebView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebView_trUtf82".}
proc fcQWebView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebView_trUtf83".}
proc fcQWebView_load2(self: pointer, request: pointer, operation: cint): void {.importc: "QWebView_load2".}
proc fcQWebView_load3(self: pointer, request: pointer, operation: cint, body: struct_miqt_string): void {.importc: "QWebView_load3".}
proc fcQWebView_setHtml2(self: pointer, html: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebView_setHtml2".}
proc fcQWebView_setContent2(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QWebView_setContent2".}
proc fcQWebView_setContent3(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebView_setContent3".}
proc fcQWebView_triggerPageAction2(self: pointer, action: cint, checked: bool): void {.importc: "QWebView_triggerPageAction2".}
proc fcQWebView_setRenderHint2(self: pointer, hint: cint, enabled: bool): void {.importc: "QWebView_setRenderHint2".}
proc fcQWebView_findText2(self: pointer, subString: struct_miqt_string, options: cint): bool {.importc: "QWebView_findText2".}
type cQWebViewVTable = object
  destructor*: proc(vtbl: ptr cQWebViewVTable, self: ptr cQWebView) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, property: cint): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  createWindow*: proc(vtbl, self: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebView_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWebView_virtualbase_metaObject".}
proc fcQWebView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebView_virtualbase_metacast".}
proc fcQWebView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebView_virtualbase_metacall".}
proc fcQWebView_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QWebView_virtualbase_inputMethodQuery".}
proc fcQWebView_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QWebView_virtualbase_sizeHint".}
proc fcQWebView_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QWebView_virtualbase_event".}
proc fcQWebView_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_resizeEvent".}
proc fcQWebView_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_paintEvent".}
proc fcQWebView_virtualbase_createWindow(self: pointer, typeVal: cint): pointer {.importc: "QWebView_virtualbase_createWindow".}
proc fcQWebView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_changeEvent".}
proc fcQWebView_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_mouseMoveEvent".}
proc fcQWebView_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_mousePressEvent".}
proc fcQWebView_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_mouseDoubleClickEvent".}
proc fcQWebView_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_mouseReleaseEvent".}
proc fcQWebView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_contextMenuEvent".}
proc fcQWebView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_wheelEvent".}
proc fcQWebView_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_keyPressEvent".}
proc fcQWebView_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_keyReleaseEvent".}
proc fcQWebView_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_dragEnterEvent".}
proc fcQWebView_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_dragLeaveEvent".}
proc fcQWebView_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_dragMoveEvent".}
proc fcQWebView_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_dropEvent".}
proc fcQWebView_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_focusInEvent".}
proc fcQWebView_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_focusOutEvent".}
proc fcQWebView_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QWebView_virtualbase_inputMethodEvent".}
proc fcQWebView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QWebView_virtualbase_focusNextPrevChild".}
proc fcQWebView_virtualbase_devType(self: pointer, ): cint {.importc: "QWebView_virtualbase_devType".}
proc fcQWebView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QWebView_virtualbase_setVisible".}
proc fcQWebView_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QWebView_virtualbase_minimumSizeHint".}
proc fcQWebView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWebView_virtualbase_heightForWidth".}
proc fcQWebView_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QWebView_virtualbase_hasHeightForWidth".}
proc fcQWebView_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QWebView_virtualbase_paintEngine".}
proc fcQWebView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_enterEvent".}
proc fcQWebView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_leaveEvent".}
proc fcQWebView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_moveEvent".}
proc fcQWebView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_closeEvent".}
proc fcQWebView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_tabletEvent".}
proc fcQWebView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_actionEvent".}
proc fcQWebView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_showEvent".}
proc fcQWebView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_hideEvent".}
proc fcQWebView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QWebView_virtualbase_nativeEvent".}
proc fcQWebView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QWebView_virtualbase_metric".}
proc fcQWebView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QWebView_virtualbase_initPainter".}
proc fcQWebView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QWebView_virtualbase_redirected".}
proc fcQWebView_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QWebView_virtualbase_sharedPainter".}
proc fcQWebView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebView_virtualbase_eventFilter".}
proc fcQWebView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_timerEvent".}
proc fcQWebView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_childEvent".}
proc fcQWebView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_customEvent".}
proc fcQWebView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebView_virtualbase_connectNotify".}
proc fcQWebView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebView_virtualbase_disconnectNotify".}
proc fcQWebView_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QWebView_protectedbase_updateMicroFocus".}
proc fcQWebView_protectedbase_create(self: pointer, ): void {.importc: "QWebView_protectedbase_create".}
proc fcQWebView_protectedbase_destroy(self: pointer, ): void {.importc: "QWebView_protectedbase_destroy".}
proc fcQWebView_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QWebView_protectedbase_focusNextChild".}
proc fcQWebView_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QWebView_protectedbase_focusPreviousChild".}
proc fcQWebView_protectedbase_sender(self: pointer, ): pointer {.importc: "QWebView_protectedbase_sender".}
proc fcQWebView_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWebView_protectedbase_senderSignalIndex".}
proc fcQWebView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebView_protectedbase_receivers".}
proc fcQWebView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebView_protectedbase_isSignalConnected".}
proc fcQWebView_new(vtbl: pointer, parent: pointer): ptr cQWebView {.importc: "QWebView_new".}
proc fcQWebView_new2(vtbl: pointer, ): ptr cQWebView {.importc: "QWebView_new2".}
proc fcQWebView_staticMetaObject(): pointer {.importc: "QWebView_staticMetaObject".}
proc fcQWebView_delete(self: pointer) {.importc: "QWebView_delete".}

proc metaObject*(self: gen_qwebview_types.QWebView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebView_metaObject(self.h))

proc metacast*(self: gen_qwebview_types.QWebView, param1: cstring): pointer =
  fcQWebView_metacast(self.h, param1)

proc metacall*(self: gen_qwebview_types.QWebView, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebview_types.QWebView, s: cstring): string =
  let v_ms = fcQWebView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebview_types.QWebView, s: cstring): string =
  let v_ms = fcQWebView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc page*(self: gen_qwebview_types.QWebView, ): gen_qwebpage_types.QWebPage =
  gen_qwebpage_types.QWebPage(h: fcQWebView_page(self.h))

proc setPage*(self: gen_qwebview_types.QWebView, page: gen_qwebpage_types.QWebPage): void =
  fcQWebView_setPage(self.h, page.h)

proc load*(self: gen_qwebview_types.QWebView, url: gen_qurl_types.QUrl): void =
  fcQWebView_load(self.h, url.h)

proc load*(self: gen_qwebview_types.QWebView, request: gen_qnetworkrequest_types.QNetworkRequest): void =
  fcQWebView_loadWithRequest(self.h, request.h)

proc setHtml*(self: gen_qwebview_types.QWebView, html: string): void =
  fcQWebView_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc setContent*(self: gen_qwebview_types.QWebView, data: seq[byte]): void =
  fcQWebView_setContent(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc history*(self: gen_qwebview_types.QWebView, ): gen_qwebhistory_types.QWebHistory =
  gen_qwebhistory_types.QWebHistory(h: fcQWebView_history(self.h))

proc settings*(self: gen_qwebview_types.QWebView, ): gen_qwebsettings_types.QWebSettings =
  gen_qwebsettings_types.QWebSettings(h: fcQWebView_settings(self.h))

proc title*(self: gen_qwebview_types.QWebView, ): string =
  let v_ms = fcQWebView_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUrl*(self: gen_qwebview_types.QWebView, url: gen_qurl_types.QUrl): void =
  fcQWebView_setUrl(self.h, url.h)

proc url*(self: gen_qwebview_types.QWebView, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebView_url(self.h))

proc icon*(self: gen_qwebview_types.QWebView, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQWebView_icon(self.h))

proc hasSelection*(self: gen_qwebview_types.QWebView, ): bool =
  fcQWebView_hasSelection(self.h)

proc selectedText*(self: gen_qwebview_types.QWebView, ): string =
  let v_ms = fcQWebView_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectedHtml*(self: gen_qwebview_types.QWebView, ): string =
  let v_ms = fcQWebView_selectedHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pageAction*(self: gen_qwebview_types.QWebView, action: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWebView_pageAction(self.h, cint(action)))

proc triggerPageAction*(self: gen_qwebview_types.QWebView, action: cint): void =
  fcQWebView_triggerPageAction(self.h, cint(action))

proc isModified*(self: gen_qwebview_types.QWebView, ): bool =
  fcQWebView_isModified(self.h)

proc inputMethodQuery*(self: gen_qwebview_types.QWebView, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebView_inputMethodQuery(self.h, cint(property)))

proc sizeHint*(self: gen_qwebview_types.QWebView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebView_sizeHint(self.h))

proc zoomFactor*(self: gen_qwebview_types.QWebView, ): float64 =
  fcQWebView_zoomFactor(self.h)

proc setZoomFactor*(self: gen_qwebview_types.QWebView, factor: float64): void =
  fcQWebView_setZoomFactor(self.h, factor)

proc setTextSizeMultiplier*(self: gen_qwebview_types.QWebView, factor: float64): void =
  fcQWebView_setTextSizeMultiplier(self.h, factor)

proc textSizeMultiplier*(self: gen_qwebview_types.QWebView, ): float64 =
  fcQWebView_textSizeMultiplier(self.h)

proc renderHints*(self: gen_qwebview_types.QWebView, ): cint =
  cint(fcQWebView_renderHints(self.h))

proc setRenderHints*(self: gen_qwebview_types.QWebView, hints: cint): void =
  fcQWebView_setRenderHints(self.h, cint(hints))

proc setRenderHint*(self: gen_qwebview_types.QWebView, hint: cint): void =
  fcQWebView_setRenderHint(self.h, cint(hint))

proc findText*(self: gen_qwebview_types.QWebView, subString: string): bool =
  fcQWebView_findText(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))))

proc event*(self: gen_qwebview_types.QWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebView_event(self.h, param1.h)

proc stop*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_stop(self.h)

proc back*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_back(self.h)

proc forward*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_forward(self.h)

proc reload*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_reload(self.h)

proc print*(self: gen_qwebview_types.QWebView, param1: gen_qprinter_types.QPrinter): void =
  fcQWebView_print(self.h, param1.h)

proc loadStarted*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_loadStarted(self.h)

type QWebViewloadStartedSlot* = proc()
proc miqt_exec_callback_cQWebView_loadStarted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewloadStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebView_loadStarted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewloadStartedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadStarted*(self: gen_qwebview_types.QWebView, slot: QWebViewloadStartedSlot) =
  var tmp = new QWebViewloadStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_loadStarted(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebView_loadStarted, miqt_exec_callback_cQWebView_loadStarted_release)

proc loadProgress*(self: gen_qwebview_types.QWebView, progress: cint): void =
  fcQWebView_loadProgress(self.h, progress)

type QWebViewloadProgressSlot* = proc(progress: cint)
proc miqt_exec_callback_cQWebView_loadProgress(slot: int, progress: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewloadProgressSlot](cast[pointer](slot))
  let slotval1 = progress

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebView_loadProgress_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewloadProgressSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadProgress*(self: gen_qwebview_types.QWebView, slot: QWebViewloadProgressSlot) =
  var tmp = new QWebViewloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_loadProgress(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebView_loadProgress, miqt_exec_callback_cQWebView_loadProgress_release)

proc loadFinished*(self: gen_qwebview_types.QWebView, param1: bool): void =
  fcQWebView_loadFinished(self.h, param1)

type QWebViewloadFinishedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQWebView_loadFinished(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewloadFinishedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebView_loadFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewloadFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadFinished*(self: gen_qwebview_types.QWebView, slot: QWebViewloadFinishedSlot) =
  var tmp = new QWebViewloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_loadFinished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebView_loadFinished, miqt_exec_callback_cQWebView_loadFinished_release)

proc titleChanged*(self: gen_qwebview_types.QWebView, title: string): void =
  fcQWebView_titleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

type QWebViewtitleChangedSlot* = proc(title: string)
proc miqt_exec_callback_cQWebView_titleChanged(slot: int, title: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewtitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebView_titleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewtitleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontitleChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewtitleChangedSlot) =
  var tmp = new QWebViewtitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_titleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebView_titleChanged, miqt_exec_callback_cQWebView_titleChanged_release)

proc statusBarMessage*(self: gen_qwebview_types.QWebView, text: string): void =
  fcQWebView_statusBarMessage(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QWebViewstatusBarMessageSlot* = proc(text: string)
proc miqt_exec_callback_cQWebView_statusBarMessage(slot: int, text: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewstatusBarMessageSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebView_statusBarMessage_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewstatusBarMessageSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusBarMessage*(self: gen_qwebview_types.QWebView, slot: QWebViewstatusBarMessageSlot) =
  var tmp = new QWebViewstatusBarMessageSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_statusBarMessage(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebView_statusBarMessage, miqt_exec_callback_cQWebView_statusBarMessage_release)

proc linkClicked*(self: gen_qwebview_types.QWebView, param1: gen_qurl_types.QUrl): void =
  fcQWebView_linkClicked(self.h, param1.h)

type QWebViewlinkClickedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQWebView_linkClicked(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewlinkClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebView_linkClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewlinkClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlinkClicked*(self: gen_qwebview_types.QWebView, slot: QWebViewlinkClickedSlot) =
  var tmp = new QWebViewlinkClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_linkClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebView_linkClicked, miqt_exec_callback_cQWebView_linkClicked_release)

proc selectionChanged*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_selectionChanged(self.h)

type QWebViewselectionChangedSlot* = proc()
proc miqt_exec_callback_cQWebView_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebView_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectionChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewselectionChangedSlot) =
  var tmp = new QWebViewselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_selectionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebView_selectionChanged, miqt_exec_callback_cQWebView_selectionChanged_release)

proc iconChanged*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_iconChanged(self.h)

type QWebViewiconChangedSlot* = proc()
proc miqt_exec_callback_cQWebView_iconChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewiconChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebView_iconChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewiconChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewiconChangedSlot) =
  var tmp = new QWebViewiconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_iconChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebView_iconChanged, miqt_exec_callback_cQWebView_iconChanged_release)

proc urlChanged*(self: gen_qwebview_types.QWebView, param1: gen_qurl_types.QUrl): void =
  fcQWebView_urlChanged(self.h, param1.h)

type QWebViewurlChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQWebView_urlChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewurlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebView_urlChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewurlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onurlChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewurlChangedSlot) =
  var tmp = new QWebViewurlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_urlChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebView_urlChanged, miqt_exec_callback_cQWebView_urlChanged_release)

proc tr*(_: type gen_qwebview_types.QWebView, s: cstring, c: cstring): string =
  let v_ms = fcQWebView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebview_types.QWebView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebview_types.QWebView, s: cstring, c: cstring): string =
  let v_ms = fcQWebView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebview_types.QWebView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qwebview_types.QWebView, request: gen_qnetworkrequest_types.QNetworkRequest, operation: cint): void =
  fcQWebView_load2(self.h, request.h, cint(operation))

proc load*(self: gen_qwebview_types.QWebView, request: gen_qnetworkrequest_types.QNetworkRequest, operation: cint, body: seq[byte]): void =
  fcQWebView_load3(self.h, request.h, cint(operation), struct_miqt_string(data: cast[cstring](if len(body) == 0: nil else: unsafeAddr body[0]), len: csize_t(len(body))))

proc setHtml*(self: gen_qwebview_types.QWebView, html: string, baseUrl: gen_qurl_types.QUrl): void =
  fcQWebView_setHtml2(self.h, struct_miqt_string(data: html, len: csize_t(len(html))), baseUrl.h)

proc setContent*(self: gen_qwebview_types.QWebView, data: seq[byte], mimeType: string): void =
  fcQWebView_setContent2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc setContent*(self: gen_qwebview_types.QWebView, data: seq[byte], mimeType: string, baseUrl: gen_qurl_types.QUrl): void =
  fcQWebView_setContent3(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), baseUrl.h)

proc triggerPageAction*(self: gen_qwebview_types.QWebView, action: cint, checked: bool): void =
  fcQWebView_triggerPageAction2(self.h, cint(action), checked)

proc setRenderHint*(self: gen_qwebview_types.QWebView, hint: cint, enabled: bool): void =
  fcQWebView_setRenderHint2(self.h, cint(hint), enabled)

proc findText*(self: gen_qwebview_types.QWebView, subString: string, options: cint): bool =
  fcQWebView_findText2(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cint(options))

type QWebViewmetaObjectProc* = proc(self: QWebView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebViewmetacastProc* = proc(self: QWebView, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebViewmetacallProc* = proc(self: QWebView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebViewinputMethodQueryProc* = proc(self: QWebView, property: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QWebViewsizeHintProc* = proc(self: QWebView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWebVieweventProc* = proc(self: QWebView, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebViewresizeEventProc* = proc(self: QWebView, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QWebViewpaintEventProc* = proc(self: QWebView, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QWebViewcreateWindowProc* = proc(self: QWebView, typeVal: cint): gen_qwebview_types.QWebView {.raises: [], gcsafe.}
type QWebViewchangeEventProc* = proc(self: QWebView, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebViewmouseMoveEventProc* = proc(self: QWebView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebViewmousePressEventProc* = proc(self: QWebView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebViewmouseDoubleClickEventProc* = proc(self: QWebView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebViewmouseReleaseEventProc* = proc(self: QWebView, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebViewcontextMenuEventProc* = proc(self: QWebView, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QWebViewwheelEventProc* = proc(self: QWebView, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QWebViewkeyPressEventProc* = proc(self: QWebView, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWebViewkeyReleaseEventProc* = proc(self: QWebView, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWebViewdragEnterEventProc* = proc(self: QWebView, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QWebViewdragLeaveEventProc* = proc(self: QWebView, param1: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QWebViewdragMoveEventProc* = proc(self: QWebView, param1: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QWebViewdropEventProc* = proc(self: QWebView, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QWebViewfocusInEventProc* = proc(self: QWebView, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWebViewfocusOutEventProc* = proc(self: QWebView, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWebViewinputMethodEventProc* = proc(self: QWebView, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QWebViewfocusNextPrevChildProc* = proc(self: QWebView, next: bool): bool {.raises: [], gcsafe.}
type QWebViewdevTypeProc* = proc(self: QWebView): cint {.raises: [], gcsafe.}
type QWebViewsetVisibleProc* = proc(self: QWebView, visible: bool): void {.raises: [], gcsafe.}
type QWebViewminimumSizeHintProc* = proc(self: QWebView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWebViewheightForWidthProc* = proc(self: QWebView, param1: cint): cint {.raises: [], gcsafe.}
type QWebViewhasHeightForWidthProc* = proc(self: QWebView): bool {.raises: [], gcsafe.}
type QWebViewpaintEngineProc* = proc(self: QWebView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QWebViewenterEventProc* = proc(self: QWebView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebViewleaveEventProc* = proc(self: QWebView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebViewmoveEventProc* = proc(self: QWebView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QWebViewcloseEventProc* = proc(self: QWebView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QWebViewtabletEventProc* = proc(self: QWebView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QWebViewactionEventProc* = proc(self: QWebView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QWebViewshowEventProc* = proc(self: QWebView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QWebViewhideEventProc* = proc(self: QWebView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QWebViewnativeEventProc* = proc(self: QWebView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QWebViewmetricProc* = proc(self: QWebView, param1: cint): cint {.raises: [], gcsafe.}
type QWebViewinitPainterProc* = proc(self: QWebView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QWebViewredirectedProc* = proc(self: QWebView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QWebViewsharedPainterProc* = proc(self: QWebView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QWebVieweventFilterProc* = proc(self: QWebView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebViewtimerEventProc* = proc(self: QWebView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebViewchildEventProc* = proc(self: QWebView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebViewcustomEventProc* = proc(self: QWebView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebViewconnectNotifyProc* = proc(self: QWebView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebViewdisconnectNotifyProc* = proc(self: QWebView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebViewVTable* = object
  vtbl: cQWebViewVTable
  metaObject*: QWebViewmetaObjectProc
  metacast*: QWebViewmetacastProc
  metacall*: QWebViewmetacallProc
  inputMethodQuery*: QWebViewinputMethodQueryProc
  sizeHint*: QWebViewsizeHintProc
  event*: QWebVieweventProc
  resizeEvent*: QWebViewresizeEventProc
  paintEvent*: QWebViewpaintEventProc
  createWindow*: QWebViewcreateWindowProc
  changeEvent*: QWebViewchangeEventProc
  mouseMoveEvent*: QWebViewmouseMoveEventProc
  mousePressEvent*: QWebViewmousePressEventProc
  mouseDoubleClickEvent*: QWebViewmouseDoubleClickEventProc
  mouseReleaseEvent*: QWebViewmouseReleaseEventProc
  contextMenuEvent*: QWebViewcontextMenuEventProc
  wheelEvent*: QWebViewwheelEventProc
  keyPressEvent*: QWebViewkeyPressEventProc
  keyReleaseEvent*: QWebViewkeyReleaseEventProc
  dragEnterEvent*: QWebViewdragEnterEventProc
  dragLeaveEvent*: QWebViewdragLeaveEventProc
  dragMoveEvent*: QWebViewdragMoveEventProc
  dropEvent*: QWebViewdropEventProc
  focusInEvent*: QWebViewfocusInEventProc
  focusOutEvent*: QWebViewfocusOutEventProc
  inputMethodEvent*: QWebViewinputMethodEventProc
  focusNextPrevChild*: QWebViewfocusNextPrevChildProc
  devType*: QWebViewdevTypeProc
  setVisible*: QWebViewsetVisibleProc
  minimumSizeHint*: QWebViewminimumSizeHintProc
  heightForWidth*: QWebViewheightForWidthProc
  hasHeightForWidth*: QWebViewhasHeightForWidthProc
  paintEngine*: QWebViewpaintEngineProc
  enterEvent*: QWebViewenterEventProc
  leaveEvent*: QWebViewleaveEventProc
  moveEvent*: QWebViewmoveEventProc
  closeEvent*: QWebViewcloseEventProc
  tabletEvent*: QWebViewtabletEventProc
  actionEvent*: QWebViewactionEventProc
  showEvent*: QWebViewshowEventProc
  hideEvent*: QWebViewhideEventProc
  nativeEvent*: QWebViewnativeEventProc
  metric*: QWebViewmetricProc
  initPainter*: QWebViewinitPainterProc
  redirected*: QWebViewredirectedProc
  sharedPainter*: QWebViewsharedPainterProc
  eventFilter*: QWebVieweventFilterProc
  timerEvent*: QWebViewtimerEventProc
  childEvent*: QWebViewchildEventProc
  customEvent*: QWebViewcustomEventProc
  connectNotify*: QWebViewconnectNotifyProc
  disconnectNotify*: QWebViewdisconnectNotifyProc
proc QWebViewmetaObject*(self: gen_qwebview_types.QWebView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebView_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQWebView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QWebViewmetacast*(self: gen_qwebview_types.QWebView, param1: cstring): pointer =
  fcQWebView_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWebView_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebViewmetacall*(self: gen_qwebview_types.QWebView, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWebView_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebViewinputMethodQuery*(self: gen_qwebview_types.QWebView, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebView_virtualbase_inputMethodQuery(self.h, cint(property)))

proc miqt_exec_callback_cQWebView_inputMethodQuery(vtbl: pointer, self: pointer, property: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = cint(property)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QWebViewsizeHint*(self: gen_qwebview_types.QWebView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebView_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQWebView_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QWebViewevent*(self: gen_qwebview_types.QWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebView_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQWebView_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebViewresizeEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QResizeEvent): void =
  fcQWebView_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QWebViewpaintEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QPaintEvent): void =
  fcQWebView_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QWebViewcreateWindow*(self: gen_qwebview_types.QWebView, typeVal: cint): gen_qwebview_types.QWebView =
  gen_qwebview_types.QWebView(h: fcQWebView_virtualbase_createWindow(self.h, cint(typeVal)))

proc miqt_exec_callback_cQWebView_createWindow(vtbl: pointer, self: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = cint(typeVal)
  var virtualReturn = vtbl[].createWindow(self, slotval1)
  virtualReturn.h

proc QWebViewchangeEvent*(self: gen_qwebview_types.QWebView, param1: gen_qcoreevent_types.QEvent): void =
  fcQWebView_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QWebViewmouseMoveEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fcQWebView_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QWebViewmousePressEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fcQWebView_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QWebViewmouseDoubleClickEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fcQWebView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QWebViewmouseReleaseEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fcQWebView_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QWebViewcontextMenuEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQWebView_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QWebViewwheelEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QWheelEvent): void =
  fcQWebView_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QWebViewkeyPressEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QKeyEvent): void =
  fcQWebView_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QWebViewkeyReleaseEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QKeyEvent): void =
  fcQWebView_virtualbase_keyReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_keyReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QWebViewdragEnterEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQWebView_virtualbase_dragEnterEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_dragEnterEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)
  vtbl[].dragEnterEvent(self, slotval1)

proc QWebViewdragLeaveEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQWebView_virtualbase_dragLeaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_dragLeaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QWebViewdragMoveEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQWebView_virtualbase_dragMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_dragMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)
  vtbl[].dragMoveEvent(self, slotval1)

proc QWebViewdropEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDropEvent): void =
  fcQWebView_virtualbase_dropEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_dropEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)
  vtbl[].dropEvent(self, slotval1)

proc QWebViewfocusInEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QFocusEvent): void =
  fcQWebView_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusInEvent(self, slotval1)

proc QWebViewfocusOutEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QFocusEvent): void =
  fcQWebView_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusOutEvent(self, slotval1)

proc QWebViewinputMethodEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQWebView_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebView_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QWebViewfocusNextPrevChild*(self: gen_qwebview_types.QWebView, next: bool): bool =
  fcQWebView_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQWebView_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QWebViewdevType*(self: gen_qwebview_types.QWebView, ): cint =
  fcQWebView_virtualbase_devType(self.h)

proc miqt_exec_callback_cQWebView_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QWebViewsetVisible*(self: gen_qwebview_types.QWebView, visible: bool): void =
  fcQWebView_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQWebView_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QWebViewminimumSizeHint*(self: gen_qwebview_types.QWebView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebView_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQWebView_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QWebViewheightForWidth*(self: gen_qwebview_types.QWebView, param1: cint): cint =
  fcQWebView_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQWebView_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QWebViewhasHeightForWidth*(self: gen_qwebview_types.QWebView, ): bool =
  fcQWebView_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQWebView_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QWebViewpaintEngine*(self: gen_qwebview_types.QWebView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQWebView_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQWebView_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QWebViewenterEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQWebView_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQWebView_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QWebViewleaveEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQWebView_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQWebView_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QWebViewmoveEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QMoveEvent): void =
  fcQWebView_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQWebView_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QWebViewcloseEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QCloseEvent): void =
  fcQWebView_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQWebView_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QWebViewtabletEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QTabletEvent): void =
  fcQWebView_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQWebView_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QWebViewactionEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QActionEvent): void =
  fcQWebView_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQWebView_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QWebViewshowEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QShowEvent): void =
  fcQWebView_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQWebView_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QWebViewhideEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QHideEvent): void =
  fcQWebView_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQWebView_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QWebViewnativeEvent*(self: gen_qwebview_types.QWebView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQWebView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQWebView_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebViewmetric*(self: gen_qwebview_types.QWebView, param1: cint): cint =
  fcQWebView_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQWebView_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QWebViewinitPainter*(self: gen_qwebview_types.QWebView, painter: gen_qpainter_types.QPainter): void =
  fcQWebView_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQWebView_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QWebViewredirected*(self: gen_qwebview_types.QWebView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQWebView_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQWebView_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QWebViewsharedPainter*(self: gen_qwebview_types.QWebView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQWebView_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQWebView_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QWebVieweventFilter*(self: gen_qwebview_types.QWebView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebView_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWebView_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebViewtimerEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebView_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWebView_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QWebViewchildEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWebView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QWebViewcustomEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQWebView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWebView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QWebViewconnectNotify*(self: gen_qwebview_types.QWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QWebViewdisconnectNotify*(self: gen_qwebview_types.QWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](vtbl)
  let self = QWebView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateMicroFocus*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_protectedbase_create(self.h)

proc destroy*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qwebview_types.QWebView, ): bool =
  fcQWebView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qwebview_types.QWebView, ): bool =
  fcQWebView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qwebview_types.QWebView, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebView_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qwebview_types.QWebView, ): cint =
  fcQWebView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebview_types.QWebView, signal: cstring): cint =
  fcQWebView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebview_types.QWebView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebView_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebview_types.QWebView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QWebViewVTable = nil): gen_qwebview_types.QWebView =
  let vtbl = if vtbl == nil: new QWebViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebViewVTable, _: ptr cQWebView) {.cdecl.} =
    let vtbl = cast[ref QWebViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebView_metacall
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWebView_inputMethodQuery
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWebView_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebView_event
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWebView_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWebView_paintEvent
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebView_createWindow
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWebView_changeEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWebView_mouseMoveEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWebView_mousePressEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWebView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWebView_mouseReleaseEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWebView_contextMenuEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWebView_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWebView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWebView_keyReleaseEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWebView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWebView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWebView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWebView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWebView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWebView_focusOutEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWebView_inputMethodEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWebView_focusNextPrevChild
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWebView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWebView_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWebView_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWebView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWebView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWebView_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWebView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWebView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWebView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWebView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWebView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWebView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWebView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWebView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWebView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWebView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWebView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWebView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWebView_sharedPainter
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebView_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebView_disconnectNotify
  gen_qwebview_types.QWebView(h: fcQWebView_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qwebview_types.QWebView,
    vtbl: ref QWebViewVTable = nil): gen_qwebview_types.QWebView =
  let vtbl = if vtbl == nil: new QWebViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebViewVTable, _: ptr cQWebView) {.cdecl.} =
    let vtbl = cast[ref QWebViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebView_metacall
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWebView_inputMethodQuery
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWebView_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebView_event
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWebView_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWebView_paintEvent
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebView_createWindow
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWebView_changeEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWebView_mouseMoveEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWebView_mousePressEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWebView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWebView_mouseReleaseEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWebView_contextMenuEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWebView_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWebView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWebView_keyReleaseEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWebView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWebView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWebView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWebView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWebView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWebView_focusOutEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWebView_inputMethodEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWebView_focusNextPrevChild
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWebView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWebView_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWebView_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWebView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWebView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWebView_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWebView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWebView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWebView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWebView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWebView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWebView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWebView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWebView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWebView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWebView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWebView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWebView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWebView_sharedPainter
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebView_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebView_disconnectNotify
  gen_qwebview_types.QWebView(h: fcQWebView_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qwebview_types.QWebView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebView_staticMetaObject())
proc delete*(self: gen_qwebview_types.QWebView) =
  fcQWebView_delete(self.h)
