import ./qtwebkitwidgets_pkg

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


{.compile("gen_qwebview.cpp", QtWebKitWidgetsCFlags).}


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

proc fcQWebView_metaObject(self: pointer): pointer {.importc: "QWebView_metaObject".}
proc fcQWebView_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebView_metacast".}
proc fcQWebView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebView_metacall".}
proc fcQWebView_tr(s: cstring): struct_miqt_string {.importc: "QWebView_tr".}
proc fcQWebView_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebView_trUtf8".}
proc fcQWebView_page(self: pointer): pointer {.importc: "QWebView_page".}
proc fcQWebView_setPage(self: pointer, page: pointer): void {.importc: "QWebView_setPage".}
proc fcQWebView_load(self: pointer, url: pointer): void {.importc: "QWebView_load".}
proc fcQWebView_loadWithRequest(self: pointer, request: pointer): void {.importc: "QWebView_loadWithRequest".}
proc fcQWebView_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QWebView_setHtml".}
proc fcQWebView_setContent(self: pointer, data: struct_miqt_string): void {.importc: "QWebView_setContent".}
proc fcQWebView_history(self: pointer): pointer {.importc: "QWebView_history".}
proc fcQWebView_settings(self: pointer): pointer {.importc: "QWebView_settings".}
proc fcQWebView_title(self: pointer): struct_miqt_string {.importc: "QWebView_title".}
proc fcQWebView_setUrl(self: pointer, url: pointer): void {.importc: "QWebView_setUrl".}
proc fcQWebView_url(self: pointer): pointer {.importc: "QWebView_url".}
proc fcQWebView_icon(self: pointer): pointer {.importc: "QWebView_icon".}
proc fcQWebView_hasSelection(self: pointer): bool {.importc: "QWebView_hasSelection".}
proc fcQWebView_selectedText(self: pointer): struct_miqt_string {.importc: "QWebView_selectedText".}
proc fcQWebView_selectedHtml(self: pointer): struct_miqt_string {.importc: "QWebView_selectedHtml".}
proc fcQWebView_pageAction(self: pointer, action: cint): pointer {.importc: "QWebView_pageAction".}
proc fcQWebView_triggerPageAction(self: pointer, action: cint): void {.importc: "QWebView_triggerPageAction".}
proc fcQWebView_isModified(self: pointer): bool {.importc: "QWebView_isModified".}
proc fcQWebView_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QWebView_inputMethodQuery".}
proc fcQWebView_sizeHint(self: pointer): pointer {.importc: "QWebView_sizeHint".}
proc fcQWebView_zoomFactor(self: pointer): float64 {.importc: "QWebView_zoomFactor".}
proc fcQWebView_setZoomFactor(self: pointer, factor: float64): void {.importc: "QWebView_setZoomFactor".}
proc fcQWebView_setTextSizeMultiplier(self: pointer, factor: float64): void {.importc: "QWebView_setTextSizeMultiplier".}
proc fcQWebView_textSizeMultiplier(self: pointer): float64 {.importc: "QWebView_textSizeMultiplier".}
proc fcQWebView_renderHints(self: pointer): cint {.importc: "QWebView_renderHints".}
proc fcQWebView_setRenderHints(self: pointer, hints: cint): void {.importc: "QWebView_setRenderHints".}
proc fcQWebView_setRenderHint(self: pointer, hint: cint): void {.importc: "QWebView_setRenderHint".}
proc fcQWebView_findText(self: pointer, subString: struct_miqt_string): bool {.importc: "QWebView_findText".}
proc fcQWebView_event(self: pointer, param1: pointer): bool {.importc: "QWebView_event".}
proc fcQWebView_stop(self: pointer): void {.importc: "QWebView_stop".}
proc fcQWebView_back(self: pointer): void {.importc: "QWebView_back".}
proc fcQWebView_forward(self: pointer): void {.importc: "QWebView_forward".}
proc fcQWebView_reload(self: pointer): void {.importc: "QWebView_reload".}
proc fcQWebView_print(self: pointer, param1: pointer): void {.importc: "QWebView_print".}
proc fcQWebView_loadStarted(self: pointer): void {.importc: "QWebView_loadStarted".}
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
proc fcQWebView_selectionChanged(self: pointer): void {.importc: "QWebView_selectionChanged".}
proc fcQWebView_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebView_connect_selectionChanged".}
proc fcQWebView_iconChanged(self: pointer): void {.importc: "QWebView_iconChanged".}
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
proc fcQWebView_vtbl(self: pointer): pointer {.importc: "QWebView_vtbl".}
proc fcQWebView_vdata(self: pointer): pointer {.importc: "QWebView_vdata".}
type cQWebViewVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, property: cint): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  createWindow*: proc(self: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebView_virtualbase_metaObject(self: pointer): pointer {.importc: "QWebView_virtualbase_metaObject".}
proc fcQWebView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebView_virtualbase_metacast".}
proc fcQWebView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebView_virtualbase_metacall".}
proc fcQWebView_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QWebView_virtualbase_inputMethodQuery".}
proc fcQWebView_virtualbase_sizeHint(self: pointer): pointer {.importc: "QWebView_virtualbase_sizeHint".}
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
proc fcQWebView_virtualbase_devType(self: pointer): cint {.importc: "QWebView_virtualbase_devType".}
proc fcQWebView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QWebView_virtualbase_setVisible".}
proc fcQWebView_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QWebView_virtualbase_minimumSizeHint".}
proc fcQWebView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWebView_virtualbase_heightForWidth".}
proc fcQWebView_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QWebView_virtualbase_hasHeightForWidth".}
proc fcQWebView_virtualbase_paintEngine(self: pointer): pointer {.importc: "QWebView_virtualbase_paintEngine".}
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
proc fcQWebView_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QWebView_virtualbase_sharedPainter".}
proc fcQWebView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebView_virtualbase_eventFilter".}
proc fcQWebView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_timerEvent".}
proc fcQWebView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_childEvent".}
proc fcQWebView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebView_virtualbase_customEvent".}
proc fcQWebView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebView_virtualbase_connectNotify".}
proc fcQWebView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebView_virtualbase_disconnectNotify".}
proc fcQWebView_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QWebView_protectedbase_updateMicroFocus".}
proc fcQWebView_protectedbase_create(self: pointer): void {.importc: "QWebView_protectedbase_create".}
proc fcQWebView_protectedbase_destroy(self: pointer): void {.importc: "QWebView_protectedbase_destroy".}
proc fcQWebView_protectedbase_focusNextChild(self: pointer): bool {.importc: "QWebView_protectedbase_focusNextChild".}
proc fcQWebView_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QWebView_protectedbase_focusPreviousChild".}
proc fcQWebView_protectedbase_sender(self: pointer): pointer {.importc: "QWebView_protectedbase_sender".}
proc fcQWebView_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebView_protectedbase_senderSignalIndex".}
proc fcQWebView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebView_protectedbase_receivers".}
proc fcQWebView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebView_protectedbase_isSignalConnected".}
proc fcQWebView_new(vtbl, vdata: pointer, parent: pointer): ptr cQWebView {.importc: "QWebView_new".}
proc fcQWebView_new2(vtbl, vdata: pointer): ptr cQWebView {.importc: "QWebView_new2".}
proc fcQWebView_staticMetaObject(): pointer {.importc: "QWebView_staticMetaObject".}

proc metaObject*(self: gen_qwebview_types.QWebView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebView_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebview_types.QWebView, param1: cstring): pointer =
  fcQWebView_metacast(self.h, param1)

proc metacall*(self: gen_qwebview_types.QWebView, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebview_types.QWebView, s: cstring): string =
  let v_ms = fcQWebView_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebview_types.QWebView, s: cstring): string =
  let v_ms = fcQWebView_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc page*(self: gen_qwebview_types.QWebView): gen_qwebpage_types.QWebPage =
  gen_qwebpage_types.QWebPage(h: fcQWebView_page(self.h), owned: false)

proc setPage*(self: gen_qwebview_types.QWebView, page: gen_qwebpage_types.QWebPage): void =
  fcQWebView_setPage(self.h, page.h)

proc load*(self: gen_qwebview_types.QWebView, url: gen_qurl_types.QUrl): void =
  fcQWebView_load(self.h, url.h)

proc load*(self: gen_qwebview_types.QWebView, request: gen_qnetworkrequest_types.QNetworkRequest): void =
  fcQWebView_loadWithRequest(self.h, request.h)

proc setHtml*(self: gen_qwebview_types.QWebView, html: openArray[char]): void =
  fcQWebView_setHtml(self.h, struct_miqt_string(data: if len(html) > 0: addr html[0] else: nil, len: csize_t(len(html))))

proc setContent*(self: gen_qwebview_types.QWebView, data: openArray[byte]): void =
  fcQWebView_setContent(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc history*(self: gen_qwebview_types.QWebView): gen_qwebhistory_types.QWebHistory =
  gen_qwebhistory_types.QWebHistory(h: fcQWebView_history(self.h), owned: false)

proc settings*(self: gen_qwebview_types.QWebView): gen_qwebsettings_types.QWebSettings =
  gen_qwebsettings_types.QWebSettings(h: fcQWebView_settings(self.h), owned: false)

proc title*(self: gen_qwebview_types.QWebView): string =
  let v_ms = fcQWebView_title(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setUrl*(self: gen_qwebview_types.QWebView, url: gen_qurl_types.QUrl): void =
  fcQWebView_setUrl(self.h, url.h)

proc url*(self: gen_qwebview_types.QWebView): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebView_url(self.h), owned: true)

proc icon*(self: gen_qwebview_types.QWebView): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQWebView_icon(self.h), owned: true)

proc hasSelection*(self: gen_qwebview_types.QWebView): bool =
  fcQWebView_hasSelection(self.h)

proc selectedText*(self: gen_qwebview_types.QWebView): string =
  let v_ms = fcQWebView_selectedText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc selectedHtml*(self: gen_qwebview_types.QWebView): string =
  let v_ms = fcQWebView_selectedHtml(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc pageAction*(self: gen_qwebview_types.QWebView, action: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWebView_pageAction(self.h, cint(action)), owned: false)

proc triggerPageAction*(self: gen_qwebview_types.QWebView, action: cint): void =
  fcQWebView_triggerPageAction(self.h, cint(action))

proc isModified*(self: gen_qwebview_types.QWebView): bool =
  fcQWebView_isModified(self.h)

proc inputMethodQuery*(self: gen_qwebview_types.QWebView, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebView_inputMethodQuery(self.h, cint(property)), owned: true)

proc sizeHint*(self: gen_qwebview_types.QWebView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebView_sizeHint(self.h), owned: true)

proc zoomFactor*(self: gen_qwebview_types.QWebView): float64 =
  fcQWebView_zoomFactor(self.h)

proc setZoomFactor*(self: gen_qwebview_types.QWebView, factor: float64): void =
  fcQWebView_setZoomFactor(self.h, factor)

proc setTextSizeMultiplier*(self: gen_qwebview_types.QWebView, factor: float64): void =
  fcQWebView_setTextSizeMultiplier(self.h, factor)

proc textSizeMultiplier*(self: gen_qwebview_types.QWebView): float64 =
  fcQWebView_textSizeMultiplier(self.h)

proc renderHints*(self: gen_qwebview_types.QWebView): cint =
  cint(fcQWebView_renderHints(self.h))

proc setRenderHints*(self: gen_qwebview_types.QWebView, hints: cint): void =
  fcQWebView_setRenderHints(self.h, cint(hints))

proc setRenderHint*(self: gen_qwebview_types.QWebView, hint: cint): void =
  fcQWebView_setRenderHint(self.h, cint(hint))

proc findText*(self: gen_qwebview_types.QWebView, subString: openArray[char]): bool =
  fcQWebView_findText(self.h, struct_miqt_string(data: if len(subString) > 0: addr subString[0] else: nil, len: csize_t(len(subString))))

proc event*(self: gen_qwebview_types.QWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebView_event(self.h, param1.h)

proc stop*(self: gen_qwebview_types.QWebView): void =
  fcQWebView_stop(self.h)

proc back*(self: gen_qwebview_types.QWebView): void =
  fcQWebView_back(self.h)

proc forward*(self: gen_qwebview_types.QWebView): void =
  fcQWebView_forward(self.h)

proc reload*(self: gen_qwebview_types.QWebView): void =
  fcQWebView_reload(self.h)

proc print*(self: gen_qwebview_types.QWebView, param1: gen_qprinter_types.QPrinter): void =
  fcQWebView_print(self.h, param1.h)

proc loadStarted*(self: gen_qwebview_types.QWebView): void =
  fcQWebView_loadStarted(self.h)

type QWebViewloadStartedSlot* = proc()
proc cQWebView_slot_callback_loadStarted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewloadStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQWebView_slot_callback_loadStarted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewloadStartedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadStarted*(self: gen_qwebview_types.QWebView, slot: QWebViewloadStartedSlot) =
  var tmp = new QWebViewloadStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_loadStarted(self.h, cast[int](addr tmp[]), cQWebView_slot_callback_loadStarted, cQWebView_slot_callback_loadStarted_release)

proc loadProgress*(self: gen_qwebview_types.QWebView, progress: cint): void =
  fcQWebView_loadProgress(self.h, progress)

type QWebViewloadProgressSlot* = proc(progress: cint)
proc cQWebView_slot_callback_loadProgress(slot: int, progress: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewloadProgressSlot](cast[pointer](slot))
  let slotval1 = progress

  nimfunc[](slotval1)

proc cQWebView_slot_callback_loadProgress_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewloadProgressSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadProgress*(self: gen_qwebview_types.QWebView, slot: QWebViewloadProgressSlot) =
  var tmp = new QWebViewloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_loadProgress(self.h, cast[int](addr tmp[]), cQWebView_slot_callback_loadProgress, cQWebView_slot_callback_loadProgress_release)

proc loadFinished*(self: gen_qwebview_types.QWebView, param1: bool): void =
  fcQWebView_loadFinished(self.h, param1)

type QWebViewloadFinishedSlot* = proc(param1: bool)
proc cQWebView_slot_callback_loadFinished(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewloadFinishedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQWebView_slot_callback_loadFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewloadFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadFinished*(self: gen_qwebview_types.QWebView, slot: QWebViewloadFinishedSlot) =
  var tmp = new QWebViewloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_loadFinished(self.h, cast[int](addr tmp[]), cQWebView_slot_callback_loadFinished, cQWebView_slot_callback_loadFinished_release)

proc titleChanged*(self: gen_qwebview_types.QWebView, title: openArray[char]): void =
  fcQWebView_titleChanged(self.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))))

type QWebViewtitleChangedSlot* = proc(title: openArray[char])
proc cQWebView_slot_callback_titleChanged(slot: int, title: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewtitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(vtitle_ms)
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc cQWebView_slot_callback_titleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewtitleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontitleChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewtitleChangedSlot) =
  var tmp = new QWebViewtitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_titleChanged(self.h, cast[int](addr tmp[]), cQWebView_slot_callback_titleChanged, cQWebView_slot_callback_titleChanged_release)

proc statusBarMessage*(self: gen_qwebview_types.QWebView, text: openArray[char]): void =
  fcQWebView_statusBarMessage(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

type QWebViewstatusBarMessageSlot* = proc(text: openArray[char])
proc cQWebView_slot_callback_statusBarMessage(slot: int, text: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewstatusBarMessageSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc cQWebView_slot_callback_statusBarMessage_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewstatusBarMessageSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusBarMessage*(self: gen_qwebview_types.QWebView, slot: QWebViewstatusBarMessageSlot) =
  var tmp = new QWebViewstatusBarMessageSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_statusBarMessage(self.h, cast[int](addr tmp[]), cQWebView_slot_callback_statusBarMessage, cQWebView_slot_callback_statusBarMessage_release)

proc linkClicked*(self: gen_qwebview_types.QWebView, param1: gen_qurl_types.QUrl): void =
  fcQWebView_linkClicked(self.h, param1.h)

type QWebViewlinkClickedSlot* = proc(param1: gen_qurl_types.QUrl)
proc cQWebView_slot_callback_linkClicked(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewlinkClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQWebView_slot_callback_linkClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewlinkClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlinkClicked*(self: gen_qwebview_types.QWebView, slot: QWebViewlinkClickedSlot) =
  var tmp = new QWebViewlinkClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_linkClicked(self.h, cast[int](addr tmp[]), cQWebView_slot_callback_linkClicked, cQWebView_slot_callback_linkClicked_release)

proc selectionChanged*(self: gen_qwebview_types.QWebView): void =
  fcQWebView_selectionChanged(self.h)

type QWebViewselectionChangedSlot* = proc()
proc cQWebView_slot_callback_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQWebView_slot_callback_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectionChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewselectionChangedSlot) =
  var tmp = new QWebViewselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_selectionChanged(self.h, cast[int](addr tmp[]), cQWebView_slot_callback_selectionChanged, cQWebView_slot_callback_selectionChanged_release)

proc iconChanged*(self: gen_qwebview_types.QWebView): void =
  fcQWebView_iconChanged(self.h)

type QWebViewiconChangedSlot* = proc()
proc cQWebView_slot_callback_iconChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewiconChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQWebView_slot_callback_iconChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewiconChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewiconChangedSlot) =
  var tmp = new QWebViewiconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_iconChanged(self.h, cast[int](addr tmp[]), cQWebView_slot_callback_iconChanged, cQWebView_slot_callback_iconChanged_release)

proc urlChanged*(self: gen_qwebview_types.QWebView, param1: gen_qurl_types.QUrl): void =
  fcQWebView_urlChanged(self.h, param1.h)

type QWebViewurlChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc cQWebView_slot_callback_urlChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebViewurlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQWebView_slot_callback_urlChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebViewurlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onurlChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewurlChangedSlot) =
  var tmp = new QWebViewurlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_urlChanged(self.h, cast[int](addr tmp[]), cQWebView_slot_callback_urlChanged, cQWebView_slot_callback_urlChanged_release)

proc tr*(_: type gen_qwebview_types.QWebView, s: cstring, c: cstring): string =
  let v_ms = fcQWebView_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebview_types.QWebView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebView_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebview_types.QWebView, s: cstring, c: cstring): string =
  let v_ms = fcQWebView_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebview_types.QWebView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qwebview_types.QWebView, request: gen_qnetworkrequest_types.QNetworkRequest, operation: cint): void =
  fcQWebView_load2(self.h, request.h, cint(operation))

proc load*(self: gen_qwebview_types.QWebView, request: gen_qnetworkrequest_types.QNetworkRequest, operation: cint, body: openArray[byte]): void =
  fcQWebView_load3(self.h, request.h, cint(operation), struct_miqt_string(data: cast[cstring](if len(body) == 0: nil else: unsafeAddr body[0]), len: csize_t(len(body))))

proc setHtml*(self: gen_qwebview_types.QWebView, html: openArray[char], baseUrl: gen_qurl_types.QUrl): void =
  fcQWebView_setHtml2(self.h, struct_miqt_string(data: if len(html) > 0: addr html[0] else: nil, len: csize_t(len(html))), baseUrl.h)

proc setContent*(self: gen_qwebview_types.QWebView, data: openArray[byte], mimeType: openArray[char]): void =
  fcQWebView_setContent2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType))))

proc setContent*(self: gen_qwebview_types.QWebView, data: openArray[byte], mimeType: openArray[char], baseUrl: gen_qurl_types.QUrl): void =
  fcQWebView_setContent3(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType))), baseUrl.h)

proc triggerPageAction*(self: gen_qwebview_types.QWebView, action: cint, checked: bool): void =
  fcQWebView_triggerPageAction2(self.h, cint(action), checked)

proc setRenderHint*(self: gen_qwebview_types.QWebView, hint: cint, enabled: bool): void =
  fcQWebView_setRenderHint2(self.h, cint(hint), enabled)

proc findText*(self: gen_qwebview_types.QWebView, subString: openArray[char], options: cint): bool =
  fcQWebView_findText2(self.h, struct_miqt_string(data: if len(subString) > 0: addr subString[0] else: nil, len: csize_t(len(subString))), cint(options))

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
type QWebViewnativeEventProc* = proc(self: QWebView, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QWebViewVTable* {.inheritable, pure.} = object
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
proc QWebViewmetaObject*(self: gen_qwebview_types.QWebView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebView_virtualbase_metaObject(self.h), owned: false)

proc cQWebView_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebViewmetacast*(self: gen_qwebview_types.QWebView, param1: cstring): pointer =
  fcQWebView_virtualbase_metacast(self.h, param1)

proc cQWebView_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebViewmetacall*(self: gen_qwebview_types.QWebView, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQWebView_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebViewinputMethodQuery*(self: gen_qwebview_types.QWebView, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebView_virtualbase_inputMethodQuery(self.h, cint(property)), owned: true)

proc cQWebView_vtable_callback_inputMethodQuery(self: pointer, property: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = cint(property)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebViewsizeHint*(self: gen_qwebview_types.QWebView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebView_virtualbase_sizeHint(self.h), owned: true)

proc cQWebView_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebViewevent*(self: gen_qwebview_types.QWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebView_virtualbase_event(self.h, param1.h)

proc cQWebView_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebViewresizeEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QResizeEvent): void =
  fcQWebView_virtualbase_resizeEvent(self.h, param1.h)

proc cQWebView_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QWebViewpaintEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QPaintEvent): void =
  fcQWebView_virtualbase_paintEvent(self.h, param1.h)

proc cQWebView_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QWebViewcreateWindow*(self: gen_qwebview_types.QWebView, typeVal: cint): gen_qwebview_types.QWebView =
  gen_qwebview_types.QWebView(h: fcQWebView_virtualbase_createWindow(self.h, cint(typeVal)), owned: false)

proc cQWebView_vtable_callback_createWindow(self: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = cint(typeVal)
  var virtualReturn = vtbl[].createWindow(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebViewchangeEvent*(self: gen_qwebview_types.QWebView, param1: gen_qcoreevent_types.QEvent): void =
  fcQWebView_virtualbase_changeEvent(self.h, param1.h)

proc cQWebView_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QWebViewmouseMoveEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fcQWebView_virtualbase_mouseMoveEvent(self.h, param1.h)

proc cQWebView_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QWebViewmousePressEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fcQWebView_virtualbase_mousePressEvent(self.h, param1.h)

proc cQWebView_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QWebViewmouseDoubleClickEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fcQWebView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc cQWebView_vtable_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QWebViewmouseReleaseEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fcQWebView_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc cQWebView_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QWebViewcontextMenuEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQWebView_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQWebView_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QWebViewwheelEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QWheelEvent): void =
  fcQWebView_virtualbase_wheelEvent(self.h, param1.h)

proc cQWebView_vtable_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QWebViewkeyPressEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QKeyEvent): void =
  fcQWebView_virtualbase_keyPressEvent(self.h, param1.h)

proc cQWebView_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QWebViewkeyReleaseEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QKeyEvent): void =
  fcQWebView_virtualbase_keyReleaseEvent(self.h, param1.h)

proc cQWebView_vtable_callback_keyReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QWebViewdragEnterEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQWebView_virtualbase_dragEnterEvent(self.h, param1.h)

proc cQWebView_vtable_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QWebViewdragLeaveEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQWebView_virtualbase_dragLeaveEvent(self.h, param1.h)

proc cQWebView_vtable_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QWebViewdragMoveEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQWebView_virtualbase_dragMoveEvent(self.h, param1.h)

proc cQWebView_vtable_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QWebViewdropEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDropEvent): void =
  fcQWebView_virtualbase_dropEvent(self.h, param1.h)

proc cQWebView_vtable_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QWebViewfocusInEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QFocusEvent): void =
  fcQWebView_virtualbase_focusInEvent(self.h, param1.h)

proc cQWebView_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QWebViewfocusOutEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QFocusEvent): void =
  fcQWebView_virtualbase_focusOutEvent(self.h, param1.h)

proc cQWebView_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QWebViewinputMethodEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQWebView_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQWebView_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QWebViewfocusNextPrevChild*(self: gen_qwebview_types.QWebView, next: bool): bool =
  fcQWebView_virtualbase_focusNextPrevChild(self.h, next)

proc cQWebView_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QWebViewdevType*(self: gen_qwebview_types.QWebView): cint =
  fcQWebView_virtualbase_devType(self.h)

proc cQWebView_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QWebViewsetVisible*(self: gen_qwebview_types.QWebView, visible: bool): void =
  fcQWebView_virtualbase_setVisible(self.h, visible)

proc cQWebView_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QWebViewminimumSizeHint*(self: gen_qwebview_types.QWebView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebView_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQWebView_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebViewheightForWidth*(self: gen_qwebview_types.QWebView, param1: cint): cint =
  fcQWebView_virtualbase_heightForWidth(self.h, param1)

proc cQWebView_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QWebViewhasHeightForWidth*(self: gen_qwebview_types.QWebView): bool =
  fcQWebView_virtualbase_hasHeightForWidth(self.h)

proc cQWebView_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QWebViewpaintEngine*(self: gen_qwebview_types.QWebView): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQWebView_virtualbase_paintEngine(self.h), owned: false)

proc cQWebView_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebViewenterEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQWebView_virtualbase_enterEvent(self.h, event.h)

proc cQWebView_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QWebViewleaveEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQWebView_virtualbase_leaveEvent(self.h, event.h)

proc cQWebView_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QWebViewmoveEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QMoveEvent): void =
  fcQWebView_virtualbase_moveEvent(self.h, event.h)

proc cQWebView_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QWebViewcloseEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QCloseEvent): void =
  fcQWebView_virtualbase_closeEvent(self.h, event.h)

proc cQWebView_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QWebViewtabletEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QTabletEvent): void =
  fcQWebView_virtualbase_tabletEvent(self.h, event.h)

proc cQWebView_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QWebViewactionEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QActionEvent): void =
  fcQWebView_virtualbase_actionEvent(self.h, event.h)

proc cQWebView_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QWebViewshowEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QShowEvent): void =
  fcQWebView_virtualbase_showEvent(self.h, event.h)

proc cQWebView_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QWebViewhideEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QHideEvent): void =
  fcQWebView_virtualbase_hideEvent(self.h, event.h)

proc cQWebView_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QWebViewnativeEvent*(self: gen_qwebview_types.QWebView, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQWebView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQWebView_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebViewmetric*(self: gen_qwebview_types.QWebView, param1: cint): cint =
  fcQWebView_virtualbase_metric(self.h, cint(param1))

proc cQWebView_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QWebViewinitPainter*(self: gen_qwebview_types.QWebView, painter: gen_qpainter_types.QPainter): void =
  fcQWebView_virtualbase_initPainter(self.h, painter.h)

proc cQWebView_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QWebViewredirected*(self: gen_qwebview_types.QWebView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQWebView_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQWebView_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebViewsharedPainter*(self: gen_qwebview_types.QWebView): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQWebView_virtualbase_sharedPainter(self.h), owned: false)

proc cQWebView_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebVieweventFilter*(self: gen_qwebview_types.QWebView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebView_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQWebView_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebViewtimerEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebView_virtualbase_timerEvent(self.h, event.h)

proc cQWebView_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWebViewchildEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebView_virtualbase_childEvent(self.h, event.h)

proc cQWebView_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWebViewcustomEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QEvent): void =
  fcQWebView_virtualbase_customEvent(self.h, event.h)

proc cQWebView_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWebViewconnectNotify*(self: gen_qwebview_types.QWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebView_virtualbase_connectNotify(self.h, signal.h)

proc cQWebView_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWebViewdisconnectNotify*(self: gen_qwebview_types.QWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebView_virtualbase_disconnectNotify(self.h, signal.h)

proc cQWebView_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebViewVTable](fcQWebView_vdata(self))
  let self = QWebView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebView* {.inheritable.} = ref object of QWebView
  vtbl*: cQWebViewVTable
method metaObject*(self: VirtualQWebView): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebViewmetaObject(self[])
proc cQWebView_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWebView, param1: cstring): pointer {.base.} =
  QWebViewmetacast(self[], param1)
proc cQWebView_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWebView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebViewmetacall(self[], param1, param2, param3)
proc cQWebView_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method inputMethodQuery*(self: VirtualQWebView, property: cint): gen_qvariant_types.QVariant {.base.} =
  QWebViewinputMethodQuery(self[], property)
proc cQWebView_method_callback_inputMethodQuery(self: pointer, property: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = cint(property)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHint*(self: VirtualQWebView): gen_qsize_types.QSize {.base.} =
  QWebViewsizeHint(self[])
proc cQWebView_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQWebView, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebViewevent(self[], param1)
proc cQWebView_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method resizeEvent*(self: VirtualQWebView, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QWebViewresizeEvent(self[], param1)
proc cQWebView_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method paintEvent*(self: VirtualQWebView, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QWebViewpaintEvent(self[], param1)
proc cQWebView_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method createWindow*(self: VirtualQWebView, typeVal: cint): gen_qwebview_types.QWebView {.base.} =
  QWebViewcreateWindow(self[], typeVal)
proc cQWebView_method_callback_createWindow(self: pointer, typeVal: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = cint(typeVal)
  var virtualReturn = inst.createWindow(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method changeEvent*(self: VirtualQWebView, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebViewchangeEvent(self[], param1)
proc cQWebView_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method mouseMoveEvent*(self: VirtualQWebView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebViewmouseMoveEvent(self[], param1)
proc cQWebView_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

method mousePressEvent*(self: VirtualQWebView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebViewmousePressEvent(self[], param1)
proc cQWebView_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQWebView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebViewmouseDoubleClickEvent(self[], param1)
proc cQWebView_method_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQWebView, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebViewmouseReleaseEvent(self[], param1)
proc cQWebView_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

method contextMenuEvent*(self: VirtualQWebView, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QWebViewcontextMenuEvent(self[], param1)
proc cQWebView_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method wheelEvent*(self: VirtualQWebView, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QWebViewwheelEvent(self[], param1)
proc cQWebView_method_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQWebView, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QWebViewkeyPressEvent(self[], param1)
proc cQWebView_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQWebView, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QWebViewkeyReleaseEvent(self[], param1)
proc cQWebView_method_callback_keyReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyReleaseEvent(slotval1)

method dragEnterEvent*(self: VirtualQWebView, param1: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QWebViewdragEnterEvent(self[], param1)
proc cQWebView_method_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  inst.dragEnterEvent(slotval1)

method dragLeaveEvent*(self: VirtualQWebView, param1: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QWebViewdragLeaveEvent(self[], param1)
proc cQWebView_method_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  inst.dragLeaveEvent(slotval1)

method dragMoveEvent*(self: VirtualQWebView, param1: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QWebViewdragMoveEvent(self[], param1)
proc cQWebView_method_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  inst.dragMoveEvent(slotval1)

method dropEvent*(self: VirtualQWebView, param1: gen_qevent_types.QDropEvent): void {.base.} =
  QWebViewdropEvent(self[], param1)
proc cQWebView_method_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  inst.dropEvent(slotval1)

method focusInEvent*(self: VirtualQWebView, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QWebViewfocusInEvent(self[], param1)
proc cQWebView_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQWebView, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QWebViewfocusOutEvent(self[], param1)
proc cQWebView_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

method inputMethodEvent*(self: VirtualQWebView, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QWebViewinputMethodEvent(self[], param1)
proc cQWebView_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method focusNextPrevChild*(self: VirtualQWebView, next: bool): bool {.base.} =
  QWebViewfocusNextPrevChild(self[], next)
proc cQWebView_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method devType*(self: VirtualQWebView): cint {.base.} =
  QWebViewdevType(self[])
proc cQWebView_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQWebView, visible: bool): void {.base.} =
  QWebViewsetVisible(self[], visible)
proc cQWebView_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method minimumSizeHint*(self: VirtualQWebView): gen_qsize_types.QSize {.base.} =
  QWebViewminimumSizeHint(self[])
proc cQWebView_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQWebView, param1: cint): cint {.base.} =
  QWebViewheightForWidth(self[], param1)
proc cQWebView_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQWebView): bool {.base.} =
  QWebViewhasHeightForWidth(self[])
proc cQWebView_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQWebView): gen_qpaintengine_types.QPaintEngine {.base.} =
  QWebViewpaintEngine(self[])
proc cQWebView_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method enterEvent*(self: VirtualQWebView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebViewenterEvent(self[], event)
proc cQWebView_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQWebView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebViewleaveEvent(self[], event)
proc cQWebView_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQWebView, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QWebViewmoveEvent(self[], event)
proc cQWebView_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQWebView, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QWebViewcloseEvent(self[], event)
proc cQWebView_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQWebView, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QWebViewtabletEvent(self[], event)
proc cQWebView_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQWebView, event: gen_qevent_types.QActionEvent): void {.base.} =
  QWebViewactionEvent(self[], event)
proc cQWebView_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method showEvent*(self: VirtualQWebView, event: gen_qevent_types.QShowEvent): void {.base.} =
  QWebViewshowEvent(self[], event)
proc cQWebView_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQWebView, event: gen_qevent_types.QHideEvent): void {.base.} =
  QWebViewhideEvent(self[], event)
proc cQWebView_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQWebView, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QWebViewnativeEvent(self[], eventType, message, resultVal)
proc cQWebView_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQWebView, param1: cint): cint {.base.} =
  QWebViewmetric(self[], param1)
proc cQWebView_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQWebView, painter: gen_qpainter_types.QPainter): void {.base.} =
  QWebViewinitPainter(self[], painter)
proc cQWebView_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQWebView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QWebViewredirected(self[], offset)
proc cQWebView_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQWebView): gen_qpainter_types.QPainter {.base.} =
  QWebViewsharedPainter(self[])
proc cQWebView_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method eventFilter*(self: VirtualQWebView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebVieweventFilter(self[], watched, event)
proc cQWebView_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWebView, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebViewtimerEvent(self[], event)
proc cQWebView_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQWebView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebViewchildEvent(self[], event)
proc cQWebView_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQWebView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebViewcustomEvent(self[], event)
proc cQWebView_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQWebView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebViewconnectNotify(self[], signal)
proc cQWebView_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWebView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebViewdisconnectNotify(self[], signal)
proc cQWebView_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebView](fcQWebView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qwebview_types.QWebView): void =
  fcQWebView_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qwebview_types.QWebView): void =
  fcQWebView_protectedbase_create(self.h)

proc destroy*(self: gen_qwebview_types.QWebView): void =
  fcQWebView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qwebview_types.QWebView): bool =
  fcQWebView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qwebview_types.QWebView): bool =
  fcQWebView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qwebview_types.QWebView): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebView_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebview_types.QWebView): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebViewVTable](fcQWebView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebView_vtable_callback_metacall
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQWebView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQWebView_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebView_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQWebView_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQWebView_vtable_callback_paintEvent
  if not isNil(vtbl[].createWindow):
    vtbl[].vtbl.createWindow = cQWebView_vtable_callback_createWindow
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQWebView_vtable_callback_changeEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQWebView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQWebView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQWebView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQWebView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQWebView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQWebView_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQWebView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQWebView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQWebView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQWebView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQWebView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQWebView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQWebView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQWebView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQWebView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQWebView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQWebView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQWebView_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQWebView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQWebView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQWebView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQWebView_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQWebView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQWebView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQWebView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQWebView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQWebView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQWebView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQWebView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQWebView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQWebView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQWebView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQWebView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQWebView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQWebView_vtable_callback_sharedPainter
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebView_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebView_vtable_callback_disconnectNotify
  gen_qwebview_types.QWebView(h: fcQWebView_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qwebview_types.QWebView,
    vtbl: ref QWebViewVTable = nil): gen_qwebview_types.QWebView =
  let vtbl = if vtbl == nil: new QWebViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebViewVTable](fcQWebView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebView_vtable_callback_metacall
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQWebView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQWebView_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebView_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQWebView_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQWebView_vtable_callback_paintEvent
  if not isNil(vtbl[].createWindow):
    vtbl[].vtbl.createWindow = cQWebView_vtable_callback_createWindow
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQWebView_vtable_callback_changeEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQWebView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQWebView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQWebView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQWebView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQWebView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQWebView_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQWebView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQWebView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQWebView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQWebView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQWebView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQWebView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQWebView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQWebView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQWebView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQWebView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQWebView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQWebView_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQWebView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQWebView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQWebView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQWebView_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQWebView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQWebView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQWebView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQWebView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQWebView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQWebView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQWebView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQWebView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQWebView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQWebView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQWebView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQWebView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQWebView_vtable_callback_sharedPainter
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebView_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebView_vtable_callback_disconnectNotify
  gen_qwebview_types.QWebView(h: fcQWebView_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQWebView_mvtbl = cQWebViewVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWebView()[])](self.fcQWebView_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQWebView_method_callback_metaObject,
  metacast: cQWebView_method_callback_metacast,
  metacall: cQWebView_method_callback_metacall,
  inputMethodQuery: cQWebView_method_callback_inputMethodQuery,
  sizeHint: cQWebView_method_callback_sizeHint,
  event: cQWebView_method_callback_event,
  resizeEvent: cQWebView_method_callback_resizeEvent,
  paintEvent: cQWebView_method_callback_paintEvent,
  createWindow: cQWebView_method_callback_createWindow,
  changeEvent: cQWebView_method_callback_changeEvent,
  mouseMoveEvent: cQWebView_method_callback_mouseMoveEvent,
  mousePressEvent: cQWebView_method_callback_mousePressEvent,
  mouseDoubleClickEvent: cQWebView_method_callback_mouseDoubleClickEvent,
  mouseReleaseEvent: cQWebView_method_callback_mouseReleaseEvent,
  contextMenuEvent: cQWebView_method_callback_contextMenuEvent,
  wheelEvent: cQWebView_method_callback_wheelEvent,
  keyPressEvent: cQWebView_method_callback_keyPressEvent,
  keyReleaseEvent: cQWebView_method_callback_keyReleaseEvent,
  dragEnterEvent: cQWebView_method_callback_dragEnterEvent,
  dragLeaveEvent: cQWebView_method_callback_dragLeaveEvent,
  dragMoveEvent: cQWebView_method_callback_dragMoveEvent,
  dropEvent: cQWebView_method_callback_dropEvent,
  focusInEvent: cQWebView_method_callback_focusInEvent,
  focusOutEvent: cQWebView_method_callback_focusOutEvent,
  inputMethodEvent: cQWebView_method_callback_inputMethodEvent,
  focusNextPrevChild: cQWebView_method_callback_focusNextPrevChild,
  devType: cQWebView_method_callback_devType,
  setVisible: cQWebView_method_callback_setVisible,
  minimumSizeHint: cQWebView_method_callback_minimumSizeHint,
  heightForWidth: cQWebView_method_callback_heightForWidth,
  hasHeightForWidth: cQWebView_method_callback_hasHeightForWidth,
  paintEngine: cQWebView_method_callback_paintEngine,
  enterEvent: cQWebView_method_callback_enterEvent,
  leaveEvent: cQWebView_method_callback_leaveEvent,
  moveEvent: cQWebView_method_callback_moveEvent,
  closeEvent: cQWebView_method_callback_closeEvent,
  tabletEvent: cQWebView_method_callback_tabletEvent,
  actionEvent: cQWebView_method_callback_actionEvent,
  showEvent: cQWebView_method_callback_showEvent,
  hideEvent: cQWebView_method_callback_hideEvent,
  nativeEvent: cQWebView_method_callback_nativeEvent,
  metric: cQWebView_method_callback_metric,
  initPainter: cQWebView_method_callback_initPainter,
  redirected: cQWebView_method_callback_redirected,
  sharedPainter: cQWebView_method_callback_sharedPainter,
  eventFilter: cQWebView_method_callback_eventFilter,
  timerEvent: cQWebView_method_callback_timerEvent,
  childEvent: cQWebView_method_callback_childEvent,
  customEvent: cQWebView_method_callback_customEvent,
  connectNotify: cQWebView_method_callback_connectNotify,
  disconnectNotify: cQWebView_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwebview_types.QWebView,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQWebView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebView_new(addr(cQWebView_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qwebview_types.QWebView,
    inst: VirtualQWebView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebView_new2(addr(cQWebView_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwebview_types.QWebView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebView_staticMetaObject())
