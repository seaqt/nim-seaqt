import ./Qt6WebEngineWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebEngineWidgets") & " -fPIC"
{.compile("gen_qwebengineview.cpp", cflags).}


import ./gen_qwebengineview_types
export gen_qwebengineview_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qaction_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpagelayout_types,
  ../QtGui/gen_qpageranges_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtPrintSupport/gen_qprinter_types,
  ../QtWebEngineCore/gen_qwebenginecontextmenurequest_types,
  ../QtWebEngineCore/gen_qwebenginehistory_types,
  ../QtWebEngineCore/gen_qwebenginehttprequest_types,
  ../QtWebEngineCore/gen_qwebenginepage_types,
  ../QtWebEngineCore/gen_qwebengineprofile_types,
  ../QtWebEngineCore/gen_qwebenginesettings_types,
  ../QtWidgets/gen_qmenu_types,
  ../QtWidgets/gen_qwidget
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qaction_types,
  gen_qevent_types,
  gen_qicon_types,
  gen_qpagelayout_types,
  gen_qpageranges_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qprinter_types,
  gen_qwebenginecontextmenurequest_types,
  gen_qwebenginehistory_types,
  gen_qwebenginehttprequest_types,
  gen_qwebenginepage_types,
  gen_qwebengineprofile_types,
  gen_qwebenginesettings_types,
  gen_qmenu_types,
  gen_qwidget

type cQWebEngineView*{.exportc: "QWebEngineView", incompleteStruct.} = object

proc fcQWebEngineView_metaObject(self: pointer): pointer {.importc: "QWebEngineView_metaObject".}
proc fcQWebEngineView_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineView_metacast".}
proc fcQWebEngineView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineView_metacall".}
proc fcQWebEngineView_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineView_tr".}
proc fcQWebEngineView_forPage(page: pointer): pointer {.importc: "QWebEngineView_forPage".}
proc fcQWebEngineView_page(self: pointer): pointer {.importc: "QWebEngineView_page".}
proc fcQWebEngineView_setPage(self: pointer, page: pointer): void {.importc: "QWebEngineView_setPage".}
proc fcQWebEngineView_load(self: pointer, url: pointer): void {.importc: "QWebEngineView_load".}
proc fcQWebEngineView_loadWithRequest(self: pointer, request: pointer): void {.importc: "QWebEngineView_loadWithRequest".}
proc fcQWebEngineView_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QWebEngineView_setHtml".}
proc fcQWebEngineView_setContent(self: pointer, data: struct_miqt_string): void {.importc: "QWebEngineView_setContent".}
proc fcQWebEngineView_history(self: pointer): pointer {.importc: "QWebEngineView_history".}
proc fcQWebEngineView_title(self: pointer): struct_miqt_string {.importc: "QWebEngineView_title".}
proc fcQWebEngineView_setUrl(self: pointer, url: pointer): void {.importc: "QWebEngineView_setUrl".}
proc fcQWebEngineView_url(self: pointer): pointer {.importc: "QWebEngineView_url".}
proc fcQWebEngineView_iconUrl(self: pointer): pointer {.importc: "QWebEngineView_iconUrl".}
proc fcQWebEngineView_icon(self: pointer): pointer {.importc: "QWebEngineView_icon".}
proc fcQWebEngineView_hasSelection(self: pointer): bool {.importc: "QWebEngineView_hasSelection".}
proc fcQWebEngineView_selectedText(self: pointer): struct_miqt_string {.importc: "QWebEngineView_selectedText".}
proc fcQWebEngineView_pageAction(self: pointer, action: cint): pointer {.importc: "QWebEngineView_pageAction".}
proc fcQWebEngineView_triggerPageAction(self: pointer, action: cint): void {.importc: "QWebEngineView_triggerPageAction".}
proc fcQWebEngineView_zoomFactor(self: pointer): float64 {.importc: "QWebEngineView_zoomFactor".}
proc fcQWebEngineView_setZoomFactor(self: pointer, factor: float64): void {.importc: "QWebEngineView_setZoomFactor".}
proc fcQWebEngineView_sizeHint(self: pointer): pointer {.importc: "QWebEngineView_sizeHint".}
proc fcQWebEngineView_settings(self: pointer): pointer {.importc: "QWebEngineView_settings".}
proc fcQWebEngineView_createStandardContextMenu(self: pointer): pointer {.importc: "QWebEngineView_createStandardContextMenu".}
proc fcQWebEngineView_lastContextMenuRequest(self: pointer): pointer {.importc: "QWebEngineView_lastContextMenuRequest".}
proc fcQWebEngineView_printToPdf(self: pointer, filePath: struct_miqt_string): void {.importc: "QWebEngineView_printToPdf".}
proc fcQWebEngineView_print(self: pointer, printer: pointer): void {.importc: "QWebEngineView_print".}
proc fcQWebEngineView_stop(self: pointer): void {.importc: "QWebEngineView_stop".}
proc fcQWebEngineView_back(self: pointer): void {.importc: "QWebEngineView_back".}
proc fcQWebEngineView_forward(self: pointer): void {.importc: "QWebEngineView_forward".}
proc fcQWebEngineView_reload(self: pointer): void {.importc: "QWebEngineView_reload".}
proc fcQWebEngineView_loadStarted(self: pointer): void {.importc: "QWebEngineView_loadStarted".}
proc fcQWebEngineView_connect_loadStarted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_loadStarted".}
proc fcQWebEngineView_loadProgress(self: pointer, progress: cint): void {.importc: "QWebEngineView_loadProgress".}
proc fcQWebEngineView_connect_loadProgress(self: pointer, slot: int, callback: proc (slot: int, progress: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_loadProgress".}
proc fcQWebEngineView_loadFinished(self: pointer, param1: bool): void {.importc: "QWebEngineView_loadFinished".}
proc fcQWebEngineView_connect_loadFinished(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_loadFinished".}
proc fcQWebEngineView_titleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWebEngineView_titleChanged".}
proc fcQWebEngineView_connect_titleChanged(self: pointer, slot: int, callback: proc (slot: int, title: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_titleChanged".}
proc fcQWebEngineView_selectionChanged(self: pointer): void {.importc: "QWebEngineView_selectionChanged".}
proc fcQWebEngineView_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_selectionChanged".}
proc fcQWebEngineView_urlChanged(self: pointer, param1: pointer): void {.importc: "QWebEngineView_urlChanged".}
proc fcQWebEngineView_connect_urlChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_urlChanged".}
proc fcQWebEngineView_iconUrlChanged(self: pointer, param1: pointer): void {.importc: "QWebEngineView_iconUrlChanged".}
proc fcQWebEngineView_connect_iconUrlChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_iconUrlChanged".}
proc fcQWebEngineView_iconChanged(self: pointer, param1: pointer): void {.importc: "QWebEngineView_iconChanged".}
proc fcQWebEngineView_connect_iconChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_iconChanged".}
proc fcQWebEngineView_renderProcessTerminated(self: pointer, terminationStatus: cint, exitCode: cint): void {.importc: "QWebEngineView_renderProcessTerminated".}
proc fcQWebEngineView_connect_renderProcessTerminated(self: pointer, slot: int, callback: proc (slot: int, terminationStatus: cint, exitCode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_renderProcessTerminated".}
proc fcQWebEngineView_pdfPrintingFinished(self: pointer, filePath: struct_miqt_string, success: bool): void {.importc: "QWebEngineView_pdfPrintingFinished".}
proc fcQWebEngineView_connect_pdfPrintingFinished(self: pointer, slot: int, callback: proc (slot: int, filePath: struct_miqt_string, success: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_pdfPrintingFinished".}
proc fcQWebEngineView_printRequested(self: pointer): void {.importc: "QWebEngineView_printRequested".}
proc fcQWebEngineView_connect_printRequested(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_printRequested".}
proc fcQWebEngineView_printFinished(self: pointer, success: bool): void {.importc: "QWebEngineView_printFinished".}
proc fcQWebEngineView_connect_printFinished(self: pointer, slot: int, callback: proc (slot: int, success: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_printFinished".}
proc fcQWebEngineView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineView_tr2".}
proc fcQWebEngineView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineView_tr3".}
proc fcQWebEngineView_setHtml2(self: pointer, html: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebEngineView_setHtml2".}
proc fcQWebEngineView_setContent2(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QWebEngineView_setContent2".}
proc fcQWebEngineView_setContent3(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebEngineView_setContent3".}
proc fcQWebEngineView_triggerPageAction2(self: pointer, action: cint, checked: bool): void {.importc: "QWebEngineView_triggerPageAction2".}
proc fcQWebEngineView_printToPdf2(self: pointer, filePath: struct_miqt_string, layout: pointer): void {.importc: "QWebEngineView_printToPdf2".}
proc fcQWebEngineView_printToPdf3(self: pointer, filePath: struct_miqt_string, layout: pointer, ranges: pointer): void {.importc: "QWebEngineView_printToPdf3".}
proc fcQWebEngineView_vtbl(self: pointer): pointer {.importc: "QWebEngineView_vtbl".}
proc fcQWebEngineView_vdata(self: pointer): pointer {.importc: "QWebEngineView_vdata".}
type cQWebEngineViewVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  createWindow*: proc(self: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebEngineView_virtualbase_metaObject(self: pointer): pointer {.importc: "QWebEngineView_virtualbase_metaObject".}
proc fcQWebEngineView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineView_virtualbase_metacast".}
proc fcQWebEngineView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineView_virtualbase_metacall".}
proc fcQWebEngineView_virtualbase_sizeHint(self: pointer): pointer {.importc: "QWebEngineView_virtualbase_sizeHint".}
proc fcQWebEngineView_virtualbase_createWindow(self: pointer, typeVal: cint): pointer {.importc: "QWebEngineView_virtualbase_createWindow".}
proc fcQWebEngineView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QWebEngineView_virtualbase_contextMenuEvent".}
proc fcQWebEngineView_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QWebEngineView_virtualbase_event".}
proc fcQWebEngineView_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QWebEngineView_virtualbase_showEvent".}
proc fcQWebEngineView_virtualbase_hideEvent(self: pointer, param1: pointer): void {.importc: "QWebEngineView_virtualbase_hideEvent".}
proc fcQWebEngineView_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QWebEngineView_virtualbase_closeEvent".}
proc fcQWebEngineView_virtualbase_dragEnterEvent(self: pointer, e: pointer): void {.importc: "QWebEngineView_virtualbase_dragEnterEvent".}
proc fcQWebEngineView_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void {.importc: "QWebEngineView_virtualbase_dragLeaveEvent".}
proc fcQWebEngineView_virtualbase_dragMoveEvent(self: pointer, e: pointer): void {.importc: "QWebEngineView_virtualbase_dragMoveEvent".}
proc fcQWebEngineView_virtualbase_dropEvent(self: pointer, e: pointer): void {.importc: "QWebEngineView_virtualbase_dropEvent".}
proc fcQWebEngineView_virtualbase_devType(self: pointer): cint {.importc: "QWebEngineView_virtualbase_devType".}
proc fcQWebEngineView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QWebEngineView_virtualbase_setVisible".}
proc fcQWebEngineView_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QWebEngineView_virtualbase_minimumSizeHint".}
proc fcQWebEngineView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWebEngineView_virtualbase_heightForWidth".}
proc fcQWebEngineView_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QWebEngineView_virtualbase_hasHeightForWidth".}
proc fcQWebEngineView_virtualbase_paintEngine(self: pointer): pointer {.importc: "QWebEngineView_virtualbase_paintEngine".}
proc fcQWebEngineView_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_mousePressEvent".}
proc fcQWebEngineView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_mouseReleaseEvent".}
proc fcQWebEngineView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_mouseDoubleClickEvent".}
proc fcQWebEngineView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_mouseMoveEvent".}
proc fcQWebEngineView_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_wheelEvent".}
proc fcQWebEngineView_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_keyPressEvent".}
proc fcQWebEngineView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_keyReleaseEvent".}
proc fcQWebEngineView_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_focusInEvent".}
proc fcQWebEngineView_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_focusOutEvent".}
proc fcQWebEngineView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_enterEvent".}
proc fcQWebEngineView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_leaveEvent".}
proc fcQWebEngineView_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_paintEvent".}
proc fcQWebEngineView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_moveEvent".}
proc fcQWebEngineView_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_resizeEvent".}
proc fcQWebEngineView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_tabletEvent".}
proc fcQWebEngineView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_actionEvent".}
proc fcQWebEngineView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QWebEngineView_virtualbase_nativeEvent".}
proc fcQWebEngineView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QWebEngineView_virtualbase_changeEvent".}
proc fcQWebEngineView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QWebEngineView_virtualbase_metric".}
proc fcQWebEngineView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QWebEngineView_virtualbase_initPainter".}
proc fcQWebEngineView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QWebEngineView_virtualbase_redirected".}
proc fcQWebEngineView_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QWebEngineView_virtualbase_sharedPainter".}
proc fcQWebEngineView_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QWebEngineView_virtualbase_inputMethodEvent".}
proc fcQWebEngineView_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QWebEngineView_virtualbase_inputMethodQuery".}
proc fcQWebEngineView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QWebEngineView_virtualbase_focusNextPrevChild".}
proc fcQWebEngineView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebEngineView_virtualbase_eventFilter".}
proc fcQWebEngineView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_timerEvent".}
proc fcQWebEngineView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_childEvent".}
proc fcQWebEngineView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_customEvent".}
proc fcQWebEngineView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebEngineView_virtualbase_connectNotify".}
proc fcQWebEngineView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebEngineView_virtualbase_disconnectNotify".}
proc fcQWebEngineView_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QWebEngineView_protectedbase_updateMicroFocus".}
proc fcQWebEngineView_protectedbase_create(self: pointer): void {.importc: "QWebEngineView_protectedbase_create".}
proc fcQWebEngineView_protectedbase_destroy(self: pointer): void {.importc: "QWebEngineView_protectedbase_destroy".}
proc fcQWebEngineView_protectedbase_focusNextChild(self: pointer): bool {.importc: "QWebEngineView_protectedbase_focusNextChild".}
proc fcQWebEngineView_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QWebEngineView_protectedbase_focusPreviousChild".}
proc fcQWebEngineView_protectedbase_sender(self: pointer): pointer {.importc: "QWebEngineView_protectedbase_sender".}
proc fcQWebEngineView_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebEngineView_protectedbase_senderSignalIndex".}
proc fcQWebEngineView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineView_protectedbase_receivers".}
proc fcQWebEngineView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineView_protectedbase_isSignalConnected".}
proc fcQWebEngineView_new(vtbl, vdata: pointer, parent: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new".}
proc fcQWebEngineView_new2(vtbl, vdata: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new2".}
proc fcQWebEngineView_new3(vtbl, vdata: pointer, profile: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new3".}
proc fcQWebEngineView_new4(vtbl, vdata: pointer, page: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new4".}
proc fcQWebEngineView_new5(vtbl, vdata: pointer, profile: pointer, parent: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new5".}
proc fcQWebEngineView_new6(vtbl, vdata: pointer, page: pointer, parent: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new6".}
proc fcQWebEngineView_staticMetaObject(): pointer {.importc: "QWebEngineView_staticMetaObject".}

proc metaObject*(self: gen_qwebengineview_types.QWebEngineView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineView_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebengineview_types.QWebEngineView, param1: cstring): pointer =
  fcQWebEngineView_metacast(self.h, param1)

proc metacall*(self: gen_qwebengineview_types.QWebEngineView, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebengineview_types.QWebEngineView, s: cstring): string =
  let v_ms = fcQWebEngineView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc forPage*(_: type gen_qwebengineview_types.QWebEngineView, page: gen_qwebenginepage_types.QWebEnginePage): gen_qwebengineview_types.QWebEngineView =
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_forPage(page.h), owned: false)

proc page*(self: gen_qwebengineview_types.QWebEngineView): gen_qwebenginepage_types.QWebEnginePage =
  gen_qwebenginepage_types.QWebEnginePage(h: fcQWebEngineView_page(self.h), owned: false)

proc setPage*(self: gen_qwebengineview_types.QWebEngineView, page: gen_qwebenginepage_types.QWebEnginePage): void =
  fcQWebEngineView_setPage(self.h, page.h)

proc load*(self: gen_qwebengineview_types.QWebEngineView, url: gen_qurl_types.QUrl): void =
  fcQWebEngineView_load(self.h, url.h)

proc load*(self: gen_qwebengineview_types.QWebEngineView, request: gen_qwebenginehttprequest_types.QWebEngineHttpRequest): void =
  fcQWebEngineView_loadWithRequest(self.h, request.h)

proc setHtml*(self: gen_qwebengineview_types.QWebEngineView, html: string): void =
  fcQWebEngineView_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc setContent*(self: gen_qwebengineview_types.QWebEngineView, data: seq[byte]): void =
  fcQWebEngineView_setContent(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc history*(self: gen_qwebengineview_types.QWebEngineView): gen_qwebenginehistory_types.QWebEngineHistory =
  gen_qwebenginehistory_types.QWebEngineHistory(h: fcQWebEngineView_history(self.h), owned: false)

proc title*(self: gen_qwebengineview_types.QWebEngineView): string =
  let v_ms = fcQWebEngineView_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUrl*(self: gen_qwebengineview_types.QWebEngineView, url: gen_qurl_types.QUrl): void =
  fcQWebEngineView_setUrl(self.h, url.h)

proc url*(self: gen_qwebengineview_types.QWebEngineView): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineView_url(self.h), owned: true)

proc iconUrl*(self: gen_qwebengineview_types.QWebEngineView): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineView_iconUrl(self.h), owned: true)

proc icon*(self: gen_qwebengineview_types.QWebEngineView): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQWebEngineView_icon(self.h), owned: true)

proc hasSelection*(self: gen_qwebengineview_types.QWebEngineView): bool =
  fcQWebEngineView_hasSelection(self.h)

proc selectedText*(self: gen_qwebengineview_types.QWebEngineView): string =
  let v_ms = fcQWebEngineView_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pageAction*(self: gen_qwebengineview_types.QWebEngineView, action: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWebEngineView_pageAction(self.h, cint(action)), owned: false)

proc triggerPageAction*(self: gen_qwebengineview_types.QWebEngineView, action: cint): void =
  fcQWebEngineView_triggerPageAction(self.h, cint(action))

proc zoomFactor*(self: gen_qwebengineview_types.QWebEngineView): float64 =
  fcQWebEngineView_zoomFactor(self.h)

proc setZoomFactor*(self: gen_qwebengineview_types.QWebEngineView, factor: float64): void =
  fcQWebEngineView_setZoomFactor(self.h, factor)

proc sizeHint*(self: gen_qwebengineview_types.QWebEngineView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebEngineView_sizeHint(self.h), owned: true)

proc settings*(self: gen_qwebengineview_types.QWebEngineView): gen_qwebenginesettings_types.QWebEngineSettings =
  gen_qwebenginesettings_types.QWebEngineSettings(h: fcQWebEngineView_settings(self.h), owned: false)

proc createStandardContextMenu*(self: gen_qwebengineview_types.QWebEngineView): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQWebEngineView_createStandardContextMenu(self.h), owned: false)

proc lastContextMenuRequest*(self: gen_qwebengineview_types.QWebEngineView): gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest =
  gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest(h: fcQWebEngineView_lastContextMenuRequest(self.h), owned: false)

proc printToPdf*(self: gen_qwebengineview_types.QWebEngineView, filePath: string): void =
  fcQWebEngineView_printToPdf(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc print*(self: gen_qwebengineview_types.QWebEngineView, printer: gen_qprinter_types.QPrinter): void =
  fcQWebEngineView_print(self.h, printer.h)

proc stop*(self: gen_qwebengineview_types.QWebEngineView): void =
  fcQWebEngineView_stop(self.h)

proc back*(self: gen_qwebengineview_types.QWebEngineView): void =
  fcQWebEngineView_back(self.h)

proc forward*(self: gen_qwebengineview_types.QWebEngineView): void =
  fcQWebEngineView_forward(self.h)

proc reload*(self: gen_qwebengineview_types.QWebEngineView): void =
  fcQWebEngineView_reload(self.h)

proc loadStarted*(self: gen_qwebengineview_types.QWebEngineView): void =
  fcQWebEngineView_loadStarted(self.h)

type QWebEngineViewloadStartedSlot* = proc()
proc cQWebEngineView_slot_callback_loadStarted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewloadStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQWebEngineView_slot_callback_loadStarted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewloadStartedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadStarted*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewloadStartedSlot) =
  var tmp = new QWebEngineViewloadStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_loadStarted(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_loadStarted, cQWebEngineView_slot_callback_loadStarted_release)

proc loadProgress*(self: gen_qwebengineview_types.QWebEngineView, progress: cint): void =
  fcQWebEngineView_loadProgress(self.h, progress)

type QWebEngineViewloadProgressSlot* = proc(progress: cint)
proc cQWebEngineView_slot_callback_loadProgress(slot: int, progress: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewloadProgressSlot](cast[pointer](slot))
  let slotval1 = progress

  nimfunc[](slotval1)

proc cQWebEngineView_slot_callback_loadProgress_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewloadProgressSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadProgress*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewloadProgressSlot) =
  var tmp = new QWebEngineViewloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_loadProgress(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_loadProgress, cQWebEngineView_slot_callback_loadProgress_release)

proc loadFinished*(self: gen_qwebengineview_types.QWebEngineView, param1: bool): void =
  fcQWebEngineView_loadFinished(self.h, param1)

type QWebEngineViewloadFinishedSlot* = proc(param1: bool)
proc cQWebEngineView_slot_callback_loadFinished(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewloadFinishedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQWebEngineView_slot_callback_loadFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewloadFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadFinished*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewloadFinishedSlot) =
  var tmp = new QWebEngineViewloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_loadFinished(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_loadFinished, cQWebEngineView_slot_callback_loadFinished_release)

proc titleChanged*(self: gen_qwebengineview_types.QWebEngineView, title: string): void =
  fcQWebEngineView_titleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

type QWebEngineViewtitleChangedSlot* = proc(title: string)
proc cQWebEngineView_slot_callback_titleChanged(slot: int, title: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewtitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc cQWebEngineView_slot_callback_titleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewtitleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontitleChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewtitleChangedSlot) =
  var tmp = new QWebEngineViewtitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_titleChanged(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_titleChanged, cQWebEngineView_slot_callback_titleChanged_release)

proc selectionChanged*(self: gen_qwebengineview_types.QWebEngineView): void =
  fcQWebEngineView_selectionChanged(self.h)

type QWebEngineViewselectionChangedSlot* = proc()
proc cQWebEngineView_slot_callback_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQWebEngineView_slot_callback_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectionChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewselectionChangedSlot) =
  var tmp = new QWebEngineViewselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_selectionChanged(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_selectionChanged, cQWebEngineView_slot_callback_selectionChanged_release)

proc urlChanged*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qurl_types.QUrl): void =
  fcQWebEngineView_urlChanged(self.h, param1.h)

type QWebEngineViewurlChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc cQWebEngineView_slot_callback_urlChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewurlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQWebEngineView_slot_callback_urlChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewurlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onurlChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewurlChangedSlot) =
  var tmp = new QWebEngineViewurlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_urlChanged(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_urlChanged, cQWebEngineView_slot_callback_urlChanged_release)

proc iconUrlChanged*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qurl_types.QUrl): void =
  fcQWebEngineView_iconUrlChanged(self.h, param1.h)

type QWebEngineViewiconUrlChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc cQWebEngineView_slot_callback_iconUrlChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewiconUrlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQWebEngineView_slot_callback_iconUrlChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewiconUrlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconUrlChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewiconUrlChangedSlot) =
  var tmp = new QWebEngineViewiconUrlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_iconUrlChanged(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_iconUrlChanged, cQWebEngineView_slot_callback_iconUrlChanged_release)

proc iconChanged*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qicon_types.QIcon): void =
  fcQWebEngineView_iconChanged(self.h, param1.h)

type QWebEngineViewiconChangedSlot* = proc(param1: gen_qicon_types.QIcon)
proc cQWebEngineView_slot_callback_iconChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewiconChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qicon_types.QIcon(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQWebEngineView_slot_callback_iconChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewiconChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewiconChangedSlot) =
  var tmp = new QWebEngineViewiconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_iconChanged(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_iconChanged, cQWebEngineView_slot_callback_iconChanged_release)

proc renderProcessTerminated*(self: gen_qwebengineview_types.QWebEngineView, terminationStatus: cint, exitCode: cint): void =
  fcQWebEngineView_renderProcessTerminated(self.h, cint(terminationStatus), exitCode)

type QWebEngineViewrenderProcessTerminatedSlot* = proc(terminationStatus: cint, exitCode: cint)
proc cQWebEngineView_slot_callback_renderProcessTerminated(slot: int, terminationStatus: cint, exitCode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewrenderProcessTerminatedSlot](cast[pointer](slot))
  let slotval1 = cint(terminationStatus)

  let slotval2 = exitCode

  nimfunc[](slotval1, slotval2)

proc cQWebEngineView_slot_callback_renderProcessTerminated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewrenderProcessTerminatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrenderProcessTerminated*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewrenderProcessTerminatedSlot) =
  var tmp = new QWebEngineViewrenderProcessTerminatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_renderProcessTerminated(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_renderProcessTerminated, cQWebEngineView_slot_callback_renderProcessTerminated_release)

proc pdfPrintingFinished*(self: gen_qwebengineview_types.QWebEngineView, filePath: string, success: bool): void =
  fcQWebEngineView_pdfPrintingFinished(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), success)

type QWebEngineViewpdfPrintingFinishedSlot* = proc(filePath: string, success: bool)
proc cQWebEngineView_slot_callback_pdfPrintingFinished(slot: int, filePath: struct_miqt_string, success: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewpdfPrintingFinishedSlot](cast[pointer](slot))
  let vfilePath_ms = filePath
  let vfilePathx_ret = string.fromBytes(toOpenArrayByte(vfilePath_ms.data, 0, int(vfilePath_ms.len)-1))
  c_free(vfilePath_ms.data)
  let slotval1 = vfilePathx_ret

  let slotval2 = success

  nimfunc[](slotval1, slotval2)

proc cQWebEngineView_slot_callback_pdfPrintingFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewpdfPrintingFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpdfPrintingFinished*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewpdfPrintingFinishedSlot) =
  var tmp = new QWebEngineViewpdfPrintingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_pdfPrintingFinished(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_pdfPrintingFinished, cQWebEngineView_slot_callback_pdfPrintingFinished_release)

proc printRequested*(self: gen_qwebengineview_types.QWebEngineView): void =
  fcQWebEngineView_printRequested(self.h)

type QWebEngineViewprintRequestedSlot* = proc()
proc cQWebEngineView_slot_callback_printRequested(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewprintRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQWebEngineView_slot_callback_printRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewprintRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprintRequested*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewprintRequestedSlot) =
  var tmp = new QWebEngineViewprintRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_printRequested(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_printRequested, cQWebEngineView_slot_callback_printRequested_release)

proc printFinished*(self: gen_qwebengineview_types.QWebEngineView, success: bool): void =
  fcQWebEngineView_printFinished(self.h, success)

type QWebEngineViewprintFinishedSlot* = proc(success: bool)
proc cQWebEngineView_slot_callback_printFinished(slot: int, success: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewprintFinishedSlot](cast[pointer](slot))
  let slotval1 = success

  nimfunc[](slotval1)

proc cQWebEngineView_slot_callback_printFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewprintFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprintFinished*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewprintFinishedSlot) =
  var tmp = new QWebEngineViewprintFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_printFinished(self.h, cast[int](addr tmp[]), cQWebEngineView_slot_callback_printFinished, cQWebEngineView_slot_callback_printFinished_release)

proc tr*(_: type gen_qwebengineview_types.QWebEngineView, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebengineview_types.QWebEngineView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHtml*(self: gen_qwebengineview_types.QWebEngineView, html: string, baseUrl: gen_qurl_types.QUrl): void =
  fcQWebEngineView_setHtml2(self.h, struct_miqt_string(data: html, len: csize_t(len(html))), baseUrl.h)

proc setContent*(self: gen_qwebengineview_types.QWebEngineView, data: seq[byte], mimeType: string): void =
  fcQWebEngineView_setContent2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc setContent*(self: gen_qwebengineview_types.QWebEngineView, data: seq[byte], mimeType: string, baseUrl: gen_qurl_types.QUrl): void =
  fcQWebEngineView_setContent3(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), baseUrl.h)

proc triggerPageAction*(self: gen_qwebengineview_types.QWebEngineView, action: cint, checked: bool): void =
  fcQWebEngineView_triggerPageAction2(self.h, cint(action), checked)

proc printToPdf*(self: gen_qwebengineview_types.QWebEngineView, filePath: string, layout: gen_qpagelayout_types.QPageLayout): void =
  fcQWebEngineView_printToPdf2(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), layout.h)

proc printToPdf*(self: gen_qwebengineview_types.QWebEngineView, filePath: string, layout: gen_qpagelayout_types.QPageLayout, ranges: gen_qpageranges_types.QPageRanges): void =
  fcQWebEngineView_printToPdf3(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), layout.h, ranges.h)

type QWebEngineViewmetaObjectProc* = proc(self: QWebEngineView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebEngineViewmetacastProc* = proc(self: QWebEngineView, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebEngineViewmetacallProc* = proc(self: QWebEngineView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebEngineViewsizeHintProc* = proc(self: QWebEngineView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWebEngineViewcreateWindowProc* = proc(self: QWebEngineView, typeVal: cint): gen_qwebengineview_types.QWebEngineView {.raises: [], gcsafe.}
type QWebEngineViewcontextMenuEventProc* = proc(self: QWebEngineView, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QWebEngineVieweventProc* = proc(self: QWebEngineView, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebEngineViewshowEventProc* = proc(self: QWebEngineView, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QWebEngineViewhideEventProc* = proc(self: QWebEngineView, param1: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QWebEngineViewcloseEventProc* = proc(self: QWebEngineView, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QWebEngineViewdragEnterEventProc* = proc(self: QWebEngineView, e: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QWebEngineViewdragLeaveEventProc* = proc(self: QWebEngineView, e: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QWebEngineViewdragMoveEventProc* = proc(self: QWebEngineView, e: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QWebEngineViewdropEventProc* = proc(self: QWebEngineView, e: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QWebEngineViewdevTypeProc* = proc(self: QWebEngineView): cint {.raises: [], gcsafe.}
type QWebEngineViewsetVisibleProc* = proc(self: QWebEngineView, visible: bool): void {.raises: [], gcsafe.}
type QWebEngineViewminimumSizeHintProc* = proc(self: QWebEngineView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWebEngineViewheightForWidthProc* = proc(self: QWebEngineView, param1: cint): cint {.raises: [], gcsafe.}
type QWebEngineViewhasHeightForWidthProc* = proc(self: QWebEngineView): bool {.raises: [], gcsafe.}
type QWebEngineViewpaintEngineProc* = proc(self: QWebEngineView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QWebEngineViewmousePressEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebEngineViewmouseReleaseEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebEngineViewmouseDoubleClickEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebEngineViewmouseMoveEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebEngineViewwheelEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QWebEngineViewkeyPressEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWebEngineViewkeyReleaseEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWebEngineViewfocusInEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWebEngineViewfocusOutEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWebEngineViewenterEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QWebEngineViewleaveEventProc* = proc(self: QWebEngineView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebEngineViewpaintEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QWebEngineViewmoveEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QWebEngineViewresizeEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QWebEngineViewtabletEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QWebEngineViewactionEventProc* = proc(self: QWebEngineView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QWebEngineViewnativeEventProc* = proc(self: QWebEngineView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QWebEngineViewchangeEventProc* = proc(self: QWebEngineView, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebEngineViewmetricProc* = proc(self: QWebEngineView, param1: cint): cint {.raises: [], gcsafe.}
type QWebEngineViewinitPainterProc* = proc(self: QWebEngineView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QWebEngineViewredirectedProc* = proc(self: QWebEngineView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QWebEngineViewsharedPainterProc* = proc(self: QWebEngineView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QWebEngineViewinputMethodEventProc* = proc(self: QWebEngineView, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QWebEngineViewinputMethodQueryProc* = proc(self: QWebEngineView, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QWebEngineViewfocusNextPrevChildProc* = proc(self: QWebEngineView, next: bool): bool {.raises: [], gcsafe.}
type QWebEngineVieweventFilterProc* = proc(self: QWebEngineView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebEngineViewtimerEventProc* = proc(self: QWebEngineView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebEngineViewchildEventProc* = proc(self: QWebEngineView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebEngineViewcustomEventProc* = proc(self: QWebEngineView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebEngineViewconnectNotifyProc* = proc(self: QWebEngineView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebEngineViewdisconnectNotifyProc* = proc(self: QWebEngineView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebEngineViewVTable* {.inheritable, pure.} = object
  vtbl: cQWebEngineViewVTable
  metaObject*: QWebEngineViewmetaObjectProc
  metacast*: QWebEngineViewmetacastProc
  metacall*: QWebEngineViewmetacallProc
  sizeHint*: QWebEngineViewsizeHintProc
  createWindow*: QWebEngineViewcreateWindowProc
  contextMenuEvent*: QWebEngineViewcontextMenuEventProc
  event*: QWebEngineVieweventProc
  showEvent*: QWebEngineViewshowEventProc
  hideEvent*: QWebEngineViewhideEventProc
  closeEvent*: QWebEngineViewcloseEventProc
  dragEnterEvent*: QWebEngineViewdragEnterEventProc
  dragLeaveEvent*: QWebEngineViewdragLeaveEventProc
  dragMoveEvent*: QWebEngineViewdragMoveEventProc
  dropEvent*: QWebEngineViewdropEventProc
  devType*: QWebEngineViewdevTypeProc
  setVisible*: QWebEngineViewsetVisibleProc
  minimumSizeHint*: QWebEngineViewminimumSizeHintProc
  heightForWidth*: QWebEngineViewheightForWidthProc
  hasHeightForWidth*: QWebEngineViewhasHeightForWidthProc
  paintEngine*: QWebEngineViewpaintEngineProc
  mousePressEvent*: QWebEngineViewmousePressEventProc
  mouseReleaseEvent*: QWebEngineViewmouseReleaseEventProc
  mouseDoubleClickEvent*: QWebEngineViewmouseDoubleClickEventProc
  mouseMoveEvent*: QWebEngineViewmouseMoveEventProc
  wheelEvent*: QWebEngineViewwheelEventProc
  keyPressEvent*: QWebEngineViewkeyPressEventProc
  keyReleaseEvent*: QWebEngineViewkeyReleaseEventProc
  focusInEvent*: QWebEngineViewfocusInEventProc
  focusOutEvent*: QWebEngineViewfocusOutEventProc
  enterEvent*: QWebEngineViewenterEventProc
  leaveEvent*: QWebEngineViewleaveEventProc
  paintEvent*: QWebEngineViewpaintEventProc
  moveEvent*: QWebEngineViewmoveEventProc
  resizeEvent*: QWebEngineViewresizeEventProc
  tabletEvent*: QWebEngineViewtabletEventProc
  actionEvent*: QWebEngineViewactionEventProc
  nativeEvent*: QWebEngineViewnativeEventProc
  changeEvent*: QWebEngineViewchangeEventProc
  metric*: QWebEngineViewmetricProc
  initPainter*: QWebEngineViewinitPainterProc
  redirected*: QWebEngineViewredirectedProc
  sharedPainter*: QWebEngineViewsharedPainterProc
  inputMethodEvent*: QWebEngineViewinputMethodEventProc
  inputMethodQuery*: QWebEngineViewinputMethodQueryProc
  focusNextPrevChild*: QWebEngineViewfocusNextPrevChildProc
  eventFilter*: QWebEngineVieweventFilterProc
  timerEvent*: QWebEngineViewtimerEventProc
  childEvent*: QWebEngineViewchildEventProc
  customEvent*: QWebEngineViewcustomEventProc
  connectNotify*: QWebEngineViewconnectNotifyProc
  disconnectNotify*: QWebEngineViewdisconnectNotifyProc
proc QWebEngineViewmetaObject*(self: gen_qwebengineview_types.QWebEngineView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineView_virtualbase_metaObject(self.h), owned: false)

proc cQWebEngineView_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebEngineViewmetacast*(self: gen_qwebengineview_types.QWebEngineView, param1: cstring): pointer =
  fcQWebEngineView_virtualbase_metacast(self.h, param1)

proc cQWebEngineView_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebEngineViewmetacall*(self: gen_qwebengineview_types.QWebEngineView, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQWebEngineView_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebEngineViewsizeHint*(self: gen_qwebengineview_types.QWebEngineView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebEngineView_virtualbase_sizeHint(self.h), owned: true)

proc cQWebEngineView_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebEngineViewcreateWindow*(self: gen_qwebengineview_types.QWebEngineView, typeVal: cint): gen_qwebengineview_types.QWebEngineView =
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_virtualbase_createWindow(self.h, cint(typeVal)), owned: false)

proc cQWebEngineView_vtable_callback_createWindow(self: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = cint(typeVal)
  var virtualReturn = vtbl[].createWindow(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebEngineViewcontextMenuEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQWebEngineView_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQWebEngineView_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QWebEngineViewevent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebEngineView_virtualbase_event(self.h, param1.h)

proc cQWebEngineView_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebEngineViewshowEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QShowEvent): void =
  fcQWebEngineView_virtualbase_showEvent(self.h, param1.h)

proc cQWebEngineView_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QWebEngineViewhideEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QHideEvent): void =
  fcQWebEngineView_virtualbase_hideEvent(self.h, param1.h)

proc cQWebEngineView_vtable_callback_hideEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QWebEngineViewcloseEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QCloseEvent): void =
  fcQWebEngineView_virtualbase_closeEvent(self.h, param1.h)

proc cQWebEngineView_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QWebEngineViewdragEnterEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDragEnterEvent): void =
  fcQWebEngineView_virtualbase_dragEnterEvent(self.h, e.h)

proc cQWebEngineView_vtable_callback_dragEnterEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QWebEngineViewdragLeaveEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQWebEngineView_virtualbase_dragLeaveEvent(self.h, e.h)

proc cQWebEngineView_vtable_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QWebEngineViewdragMoveEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDragMoveEvent): void =
  fcQWebEngineView_virtualbase_dragMoveEvent(self.h, e.h)

proc cQWebEngineView_vtable_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QWebEngineViewdropEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDropEvent): void =
  fcQWebEngineView_virtualbase_dropEvent(self.h, e.h)

proc cQWebEngineView_vtable_callback_dropEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: e, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QWebEngineViewdevType*(self: gen_qwebengineview_types.QWebEngineView): cint =
  fcQWebEngineView_virtualbase_devType(self.h)

proc cQWebEngineView_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QWebEngineViewsetVisible*(self: gen_qwebengineview_types.QWebEngineView, visible: bool): void =
  fcQWebEngineView_virtualbase_setVisible(self.h, visible)

proc cQWebEngineView_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QWebEngineViewminimumSizeHint*(self: gen_qwebengineview_types.QWebEngineView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebEngineView_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQWebEngineView_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebEngineViewheightForWidth*(self: gen_qwebengineview_types.QWebEngineView, param1: cint): cint =
  fcQWebEngineView_virtualbase_heightForWidth(self.h, param1)

proc cQWebEngineView_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QWebEngineViewhasHeightForWidth*(self: gen_qwebengineview_types.QWebEngineView): bool =
  fcQWebEngineView_virtualbase_hasHeightForWidth(self.h)

proc cQWebEngineView_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QWebEngineViewpaintEngine*(self: gen_qwebengineview_types.QWebEngineView): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQWebEngineView_virtualbase_paintEngine(self.h), owned: false)

proc cQWebEngineView_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebEngineViewmousePressEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fcQWebEngineView_virtualbase_mousePressEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QWebEngineViewmouseReleaseEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fcQWebEngineView_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QWebEngineViewmouseDoubleClickEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fcQWebEngineView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QWebEngineViewmouseMoveEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fcQWebEngineView_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QWebEngineViewwheelEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QWheelEvent): void =
  fcQWebEngineView_virtualbase_wheelEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QWebEngineViewkeyPressEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QKeyEvent): void =
  fcQWebEngineView_virtualbase_keyPressEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QWebEngineViewkeyReleaseEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QKeyEvent): void =
  fcQWebEngineView_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QWebEngineViewfocusInEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QFocusEvent): void =
  fcQWebEngineView_virtualbase_focusInEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QWebEngineViewfocusOutEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QFocusEvent): void =
  fcQWebEngineView_virtualbase_focusOutEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QWebEngineViewenterEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QEnterEvent): void =
  fcQWebEngineView_virtualbase_enterEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QWebEngineViewleaveEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QEvent): void =
  fcQWebEngineView_virtualbase_leaveEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QWebEngineViewpaintEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QPaintEvent): void =
  fcQWebEngineView_virtualbase_paintEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QWebEngineViewmoveEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMoveEvent): void =
  fcQWebEngineView_virtualbase_moveEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QWebEngineViewresizeEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QResizeEvent): void =
  fcQWebEngineView_virtualbase_resizeEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QWebEngineViewtabletEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QTabletEvent): void =
  fcQWebEngineView_virtualbase_tabletEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QWebEngineViewactionEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QActionEvent): void =
  fcQWebEngineView_virtualbase_actionEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QWebEngineViewnativeEvent*(self: gen_qwebengineview_types.QWebEngineView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQWebEngineView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQWebEngineView_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebEngineViewchangeEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qcoreevent_types.QEvent): void =
  fcQWebEngineView_virtualbase_changeEvent(self.h, param1.h)

proc cQWebEngineView_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QWebEngineViewmetric*(self: gen_qwebengineview_types.QWebEngineView, param1: cint): cint =
  fcQWebEngineView_virtualbase_metric(self.h, cint(param1))

proc cQWebEngineView_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QWebEngineViewinitPainter*(self: gen_qwebengineview_types.QWebEngineView, painter: gen_qpainter_types.QPainter): void =
  fcQWebEngineView_virtualbase_initPainter(self.h, painter.h)

proc cQWebEngineView_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QWebEngineViewredirected*(self: gen_qwebengineview_types.QWebEngineView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQWebEngineView_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQWebEngineView_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebEngineViewsharedPainter*(self: gen_qwebengineview_types.QWebEngineView): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQWebEngineView_virtualbase_sharedPainter(self.h), owned: false)

proc cQWebEngineView_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebEngineViewinputMethodEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQWebEngineView_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQWebEngineView_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QWebEngineViewinputMethodQuery*(self: gen_qwebengineview_types.QWebEngineView, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebEngineView_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQWebEngineView_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebEngineViewfocusNextPrevChild*(self: gen_qwebengineview_types.QWebEngineView, next: bool): bool =
  fcQWebEngineView_virtualbase_focusNextPrevChild(self.h, next)

proc cQWebEngineView_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QWebEngineVieweventFilter*(self: gen_qwebengineview_types.QWebEngineView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebEngineView_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQWebEngineView_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebEngineViewtimerEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebEngineView_virtualbase_timerEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWebEngineViewchildEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebEngineView_virtualbase_childEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWebEngineViewcustomEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QEvent): void =
  fcQWebEngineView_virtualbase_customEvent(self.h, event.h)

proc cQWebEngineView_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWebEngineViewconnectNotify*(self: gen_qwebengineview_types.QWebEngineView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEngineView_virtualbase_connectNotify(self.h, signal.h)

proc cQWebEngineView_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWebEngineViewdisconnectNotify*(self: gen_qwebengineview_types.QWebEngineView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEngineView_virtualbase_disconnectNotify(self.h, signal.h)

proc cQWebEngineView_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](fcQWebEngineView_vdata(self))
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebEngineView* {.inheritable.} = ref object of QWebEngineView
  vtbl*: cQWebEngineViewVTable
method metaObject*(self: VirtualQWebEngineView): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebEngineViewmetaObject(self[])
proc cQWebEngineView_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWebEngineView, param1: cstring): pointer {.base.} =
  QWebEngineViewmetacast(self[], param1)
proc cQWebEngineView_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWebEngineView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebEngineViewmetacall(self[], param1, param2, param3)
proc cQWebEngineView_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQWebEngineView): gen_qsize_types.QSize {.base.} =
  QWebEngineViewsizeHint(self[])
proc cQWebEngineView_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method createWindow*(self: VirtualQWebEngineView, typeVal: cint): gen_qwebengineview_types.QWebEngineView {.base.} =
  QWebEngineViewcreateWindow(self[], typeVal)
proc cQWebEngineView_method_callback_createWindow(self: pointer, typeVal: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = cint(typeVal)
  var virtualReturn = inst.createWindow(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method contextMenuEvent*(self: VirtualQWebEngineView, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QWebEngineViewcontextMenuEvent(self[], param1)
proc cQWebEngineView_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method event*(self: VirtualQWebEngineView, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebEngineViewevent(self[], param1)
proc cQWebEngineView_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method showEvent*(self: VirtualQWebEngineView, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QWebEngineViewshowEvent(self[], param1)
proc cQWebEngineView_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQWebEngineView, param1: gen_qevent_types.QHideEvent): void {.base.} =
  QWebEngineViewhideEvent(self[], param1)
proc cQWebEngineView_method_callback_hideEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  inst.hideEvent(slotval1)

method closeEvent*(self: VirtualQWebEngineView, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QWebEngineViewcloseEvent(self[], param1)
proc cQWebEngineView_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

method dragEnterEvent*(self: VirtualQWebEngineView, e: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QWebEngineViewdragEnterEvent(self[], e)
proc cQWebEngineView_method_callback_dragEnterEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e, owned: false)
  inst.dragEnterEvent(slotval1)

method dragLeaveEvent*(self: VirtualQWebEngineView, e: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QWebEngineViewdragLeaveEvent(self[], e)
proc cQWebEngineView_method_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  inst.dragLeaveEvent(slotval1)

method dragMoveEvent*(self: VirtualQWebEngineView, e: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QWebEngineViewdragMoveEvent(self[], e)
proc cQWebEngineView_method_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  inst.dragMoveEvent(slotval1)

method dropEvent*(self: VirtualQWebEngineView, e: gen_qevent_types.QDropEvent): void {.base.} =
  QWebEngineViewdropEvent(self[], e)
proc cQWebEngineView_method_callback_dropEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: e, owned: false)
  inst.dropEvent(slotval1)

method devType*(self: VirtualQWebEngineView): cint {.base.} =
  QWebEngineViewdevType(self[])
proc cQWebEngineView_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQWebEngineView, visible: bool): void {.base.} =
  QWebEngineViewsetVisible(self[], visible)
proc cQWebEngineView_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method minimumSizeHint*(self: VirtualQWebEngineView): gen_qsize_types.QSize {.base.} =
  QWebEngineViewminimumSizeHint(self[])
proc cQWebEngineView_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQWebEngineView, param1: cint): cint {.base.} =
  QWebEngineViewheightForWidth(self[], param1)
proc cQWebEngineView_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQWebEngineView): bool {.base.} =
  QWebEngineViewhasHeightForWidth(self[])
proc cQWebEngineView_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQWebEngineView): gen_qpaintengine_types.QPaintEngine {.base.} =
  QWebEngineViewpaintEngine(self[])
proc cQWebEngineView_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebEngineViewmousePressEvent(self[], event)
proc cQWebEngineView_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebEngineViewmouseReleaseEvent(self[], event)
proc cQWebEngineView_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebEngineViewmouseDoubleClickEvent(self[], event)
proc cQWebEngineView_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebEngineViewmouseMoveEvent(self[], event)
proc cQWebEngineView_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QWebEngineViewwheelEvent(self[], event)
proc cQWebEngineView_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QWebEngineViewkeyPressEvent(self[], event)
proc cQWebEngineView_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QWebEngineViewkeyReleaseEvent(self[], event)
proc cQWebEngineView_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QWebEngineViewfocusInEvent(self[], event)
proc cQWebEngineView_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QWebEngineViewfocusOutEvent(self[], event)
proc cQWebEngineView_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QWebEngineViewenterEvent(self[], event)
proc cQWebEngineView_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQWebEngineView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebEngineViewleaveEvent(self[], event)
proc cQWebEngineView_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QWebEngineViewpaintEvent(self[], event)
proc cQWebEngineView_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QWebEngineViewmoveEvent(self[], event)
proc cQWebEngineView_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QWebEngineViewresizeEvent(self[], event)
proc cQWebEngineView_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method tabletEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QWebEngineViewtabletEvent(self[], event)
proc cQWebEngineView_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQWebEngineView, event: gen_qevent_types.QActionEvent): void {.base.} =
  QWebEngineViewactionEvent(self[], event)
proc cQWebEngineView_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method nativeEvent*(self: VirtualQWebEngineView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QWebEngineViewnativeEvent(self[], eventType, message, resultVal)
proc cQWebEngineView_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQWebEngineView, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebEngineViewchangeEvent(self[], param1)
proc cQWebEngineView_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQWebEngineView, param1: cint): cint {.base.} =
  QWebEngineViewmetric(self[], param1)
proc cQWebEngineView_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQWebEngineView, painter: gen_qpainter_types.QPainter): void {.base.} =
  QWebEngineViewinitPainter(self[], painter)
proc cQWebEngineView_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQWebEngineView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QWebEngineViewredirected(self[], offset)
proc cQWebEngineView_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQWebEngineView): gen_qpainter_types.QPainter {.base.} =
  QWebEngineViewsharedPainter(self[])
proc cQWebEngineView_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQWebEngineView, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QWebEngineViewinputMethodEvent(self[], param1)
proc cQWebEngineView_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQWebEngineView, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QWebEngineViewinputMethodQuery(self[], param1)
proc cQWebEngineView_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQWebEngineView, next: bool): bool {.base.} =
  QWebEngineViewfocusNextPrevChild(self[], next)
proc cQWebEngineView_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWebEngineView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebEngineVieweventFilter(self[], watched, event)
proc cQWebEngineView_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWebEngineView, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebEngineViewtimerEvent(self[], event)
proc cQWebEngineView_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQWebEngineView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebEngineViewchildEvent(self[], event)
proc cQWebEngineView_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQWebEngineView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebEngineViewcustomEvent(self[], event)
proc cQWebEngineView_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQWebEngineView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebEngineViewconnectNotify(self[], signal)
proc cQWebEngineView_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWebEngineView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebEngineViewdisconnectNotify(self[], signal)
proc cQWebEngineView_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineView](fcQWebEngineView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qwebengineview_types.QWebEngineView): void =
  fcQWebEngineView_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qwebengineview_types.QWebEngineView): void =
  fcQWebEngineView_protectedbase_create(self.h)

proc destroy*(self: gen_qwebengineview_types.QWebEngineView): void =
  fcQWebEngineView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qwebengineview_types.QWebEngineView): bool =
  fcQWebEngineView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qwebengineview_types.QWebEngineView): bool =
  fcQWebEngineView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qwebengineview_types.QWebEngineView): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineView_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebengineview_types.QWebEngineView): cint =
  fcQWebEngineView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebengineview_types.QWebEngineView, signal: cstring): cint =
  fcQWebEngineView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebengineview_types.QWebEngineView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineView_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QWebEngineViewVTable = nil): gen_qwebengineview_types.QWebEngineView =
  let vtbl = if vtbl == nil: new QWebEngineViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](fcQWebEngineView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineView_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQWebEngineView_vtable_callback_sizeHint
  if not isNil(vtbl[].createWindow):
    vtbl[].vtbl.createWindow = cQWebEngineView_vtable_callback_createWindow
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQWebEngineView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineView_vtable_callback_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQWebEngineView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQWebEngineView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQWebEngineView_vtable_callback_closeEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQWebEngineView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQWebEngineView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQWebEngineView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQWebEngineView_vtable_callback_dropEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQWebEngineView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQWebEngineView_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQWebEngineView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQWebEngineView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQWebEngineView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQWebEngineView_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQWebEngineView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQWebEngineView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQWebEngineView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQWebEngineView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQWebEngineView_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQWebEngineView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQWebEngineView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQWebEngineView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQWebEngineView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQWebEngineView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQWebEngineView_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQWebEngineView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQWebEngineView_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQWebEngineView_vtable_callback_resizeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQWebEngineView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQWebEngineView_vtable_callback_actionEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQWebEngineView_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQWebEngineView_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQWebEngineView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQWebEngineView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQWebEngineView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQWebEngineView_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQWebEngineView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQWebEngineView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQWebEngineView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineView_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineView_vtable_callback_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    vtbl: ref QWebEngineViewVTable = nil): gen_qwebengineview_types.QWebEngineView =
  let vtbl = if vtbl == nil: new QWebEngineViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](fcQWebEngineView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineView_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQWebEngineView_vtable_callback_sizeHint
  if not isNil(vtbl[].createWindow):
    vtbl[].vtbl.createWindow = cQWebEngineView_vtable_callback_createWindow
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQWebEngineView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineView_vtable_callback_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQWebEngineView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQWebEngineView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQWebEngineView_vtable_callback_closeEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQWebEngineView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQWebEngineView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQWebEngineView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQWebEngineView_vtable_callback_dropEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQWebEngineView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQWebEngineView_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQWebEngineView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQWebEngineView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQWebEngineView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQWebEngineView_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQWebEngineView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQWebEngineView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQWebEngineView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQWebEngineView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQWebEngineView_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQWebEngineView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQWebEngineView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQWebEngineView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQWebEngineView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQWebEngineView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQWebEngineView_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQWebEngineView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQWebEngineView_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQWebEngineView_vtable_callback_resizeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQWebEngineView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQWebEngineView_vtable_callback_actionEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQWebEngineView_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQWebEngineView_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQWebEngineView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQWebEngineView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQWebEngineView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQWebEngineView_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQWebEngineView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQWebEngineView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQWebEngineView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineView_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineView_vtable_callback_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    profile: gen_qwebengineprofile_types.QWebEngineProfile,
    vtbl: ref QWebEngineViewVTable = nil): gen_qwebengineview_types.QWebEngineView =
  let vtbl = if vtbl == nil: new QWebEngineViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](fcQWebEngineView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineView_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQWebEngineView_vtable_callback_sizeHint
  if not isNil(vtbl[].createWindow):
    vtbl[].vtbl.createWindow = cQWebEngineView_vtable_callback_createWindow
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQWebEngineView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineView_vtable_callback_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQWebEngineView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQWebEngineView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQWebEngineView_vtable_callback_closeEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQWebEngineView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQWebEngineView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQWebEngineView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQWebEngineView_vtable_callback_dropEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQWebEngineView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQWebEngineView_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQWebEngineView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQWebEngineView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQWebEngineView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQWebEngineView_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQWebEngineView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQWebEngineView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQWebEngineView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQWebEngineView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQWebEngineView_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQWebEngineView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQWebEngineView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQWebEngineView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQWebEngineView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQWebEngineView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQWebEngineView_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQWebEngineView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQWebEngineView_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQWebEngineView_vtable_callback_resizeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQWebEngineView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQWebEngineView_vtable_callback_actionEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQWebEngineView_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQWebEngineView_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQWebEngineView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQWebEngineView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQWebEngineView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQWebEngineView_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQWebEngineView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQWebEngineView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQWebEngineView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineView_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineView_vtable_callback_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new3(addr(vtbl[].vtbl), addr(vtbl[]), profile.h), owned: true)

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    page: gen_qwebenginepage_types.QWebEnginePage,
    vtbl: ref QWebEngineViewVTable = nil): gen_qwebengineview_types.QWebEngineView =
  let vtbl = if vtbl == nil: new QWebEngineViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](fcQWebEngineView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineView_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQWebEngineView_vtable_callback_sizeHint
  if not isNil(vtbl[].createWindow):
    vtbl[].vtbl.createWindow = cQWebEngineView_vtable_callback_createWindow
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQWebEngineView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineView_vtable_callback_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQWebEngineView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQWebEngineView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQWebEngineView_vtable_callback_closeEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQWebEngineView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQWebEngineView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQWebEngineView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQWebEngineView_vtable_callback_dropEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQWebEngineView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQWebEngineView_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQWebEngineView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQWebEngineView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQWebEngineView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQWebEngineView_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQWebEngineView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQWebEngineView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQWebEngineView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQWebEngineView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQWebEngineView_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQWebEngineView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQWebEngineView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQWebEngineView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQWebEngineView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQWebEngineView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQWebEngineView_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQWebEngineView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQWebEngineView_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQWebEngineView_vtable_callback_resizeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQWebEngineView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQWebEngineView_vtable_callback_actionEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQWebEngineView_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQWebEngineView_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQWebEngineView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQWebEngineView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQWebEngineView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQWebEngineView_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQWebEngineView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQWebEngineView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQWebEngineView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineView_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineView_vtable_callback_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new4(addr(vtbl[].vtbl), addr(vtbl[]), page.h), owned: true)

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    profile: gen_qwebengineprofile_types.QWebEngineProfile, parent: gen_qwidget_types.QWidget,
    vtbl: ref QWebEngineViewVTable = nil): gen_qwebengineview_types.QWebEngineView =
  let vtbl = if vtbl == nil: new QWebEngineViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](fcQWebEngineView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineView_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQWebEngineView_vtable_callback_sizeHint
  if not isNil(vtbl[].createWindow):
    vtbl[].vtbl.createWindow = cQWebEngineView_vtable_callback_createWindow
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQWebEngineView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineView_vtable_callback_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQWebEngineView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQWebEngineView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQWebEngineView_vtable_callback_closeEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQWebEngineView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQWebEngineView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQWebEngineView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQWebEngineView_vtable_callback_dropEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQWebEngineView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQWebEngineView_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQWebEngineView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQWebEngineView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQWebEngineView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQWebEngineView_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQWebEngineView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQWebEngineView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQWebEngineView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQWebEngineView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQWebEngineView_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQWebEngineView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQWebEngineView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQWebEngineView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQWebEngineView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQWebEngineView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQWebEngineView_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQWebEngineView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQWebEngineView_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQWebEngineView_vtable_callback_resizeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQWebEngineView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQWebEngineView_vtable_callback_actionEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQWebEngineView_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQWebEngineView_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQWebEngineView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQWebEngineView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQWebEngineView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQWebEngineView_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQWebEngineView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQWebEngineView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQWebEngineView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineView_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineView_vtable_callback_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new5(addr(vtbl[].vtbl), addr(vtbl[]), profile.h, parent.h), owned: true)

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    page: gen_qwebenginepage_types.QWebEnginePage, parent: gen_qwidget_types.QWidget,
    vtbl: ref QWebEngineViewVTable = nil): gen_qwebengineview_types.QWebEngineView =
  let vtbl = if vtbl == nil: new QWebEngineViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](fcQWebEngineView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineView_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQWebEngineView_vtable_callback_sizeHint
  if not isNil(vtbl[].createWindow):
    vtbl[].vtbl.createWindow = cQWebEngineView_vtable_callback_createWindow
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQWebEngineView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineView_vtable_callback_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQWebEngineView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQWebEngineView_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQWebEngineView_vtable_callback_closeEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQWebEngineView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQWebEngineView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQWebEngineView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQWebEngineView_vtable_callback_dropEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQWebEngineView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQWebEngineView_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQWebEngineView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQWebEngineView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQWebEngineView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQWebEngineView_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQWebEngineView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQWebEngineView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQWebEngineView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQWebEngineView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQWebEngineView_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQWebEngineView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQWebEngineView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQWebEngineView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQWebEngineView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQWebEngineView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQWebEngineView_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQWebEngineView_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQWebEngineView_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQWebEngineView_vtable_callback_resizeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQWebEngineView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQWebEngineView_vtable_callback_actionEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQWebEngineView_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQWebEngineView_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQWebEngineView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQWebEngineView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQWebEngineView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQWebEngineView_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQWebEngineView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQWebEngineView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQWebEngineView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineView_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineView_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineView_vtable_callback_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new6(addr(vtbl[].vtbl), addr(vtbl[]), page.h, parent.h), owned: true)

const cQWebEngineView_mvtbl = cQWebEngineViewVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWebEngineView()[])](self.fcQWebEngineView_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQWebEngineView_method_callback_metaObject,
  metacast: cQWebEngineView_method_callback_metacast,
  metacall: cQWebEngineView_method_callback_metacall,
  sizeHint: cQWebEngineView_method_callback_sizeHint,
  createWindow: cQWebEngineView_method_callback_createWindow,
  contextMenuEvent: cQWebEngineView_method_callback_contextMenuEvent,
  event: cQWebEngineView_method_callback_event,
  showEvent: cQWebEngineView_method_callback_showEvent,
  hideEvent: cQWebEngineView_method_callback_hideEvent,
  closeEvent: cQWebEngineView_method_callback_closeEvent,
  dragEnterEvent: cQWebEngineView_method_callback_dragEnterEvent,
  dragLeaveEvent: cQWebEngineView_method_callback_dragLeaveEvent,
  dragMoveEvent: cQWebEngineView_method_callback_dragMoveEvent,
  dropEvent: cQWebEngineView_method_callback_dropEvent,
  devType: cQWebEngineView_method_callback_devType,
  setVisible: cQWebEngineView_method_callback_setVisible,
  minimumSizeHint: cQWebEngineView_method_callback_minimumSizeHint,
  heightForWidth: cQWebEngineView_method_callback_heightForWidth,
  hasHeightForWidth: cQWebEngineView_method_callback_hasHeightForWidth,
  paintEngine: cQWebEngineView_method_callback_paintEngine,
  mousePressEvent: cQWebEngineView_method_callback_mousePressEvent,
  mouseReleaseEvent: cQWebEngineView_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQWebEngineView_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQWebEngineView_method_callback_mouseMoveEvent,
  wheelEvent: cQWebEngineView_method_callback_wheelEvent,
  keyPressEvent: cQWebEngineView_method_callback_keyPressEvent,
  keyReleaseEvent: cQWebEngineView_method_callback_keyReleaseEvent,
  focusInEvent: cQWebEngineView_method_callback_focusInEvent,
  focusOutEvent: cQWebEngineView_method_callback_focusOutEvent,
  enterEvent: cQWebEngineView_method_callback_enterEvent,
  leaveEvent: cQWebEngineView_method_callback_leaveEvent,
  paintEvent: cQWebEngineView_method_callback_paintEvent,
  moveEvent: cQWebEngineView_method_callback_moveEvent,
  resizeEvent: cQWebEngineView_method_callback_resizeEvent,
  tabletEvent: cQWebEngineView_method_callback_tabletEvent,
  actionEvent: cQWebEngineView_method_callback_actionEvent,
  nativeEvent: cQWebEngineView_method_callback_nativeEvent,
  changeEvent: cQWebEngineView_method_callback_changeEvent,
  metric: cQWebEngineView_method_callback_metric,
  initPainter: cQWebEngineView_method_callback_initPainter,
  redirected: cQWebEngineView_method_callback_redirected,
  sharedPainter: cQWebEngineView_method_callback_sharedPainter,
  inputMethodEvent: cQWebEngineView_method_callback_inputMethodEvent,
  inputMethodQuery: cQWebEngineView_method_callback_inputMethodQuery,
  focusNextPrevChild: cQWebEngineView_method_callback_focusNextPrevChild,
  eventFilter: cQWebEngineView_method_callback_eventFilter,
  timerEvent: cQWebEngineView_method_callback_timerEvent,
  childEvent: cQWebEngineView_method_callback_childEvent,
  customEvent: cQWebEngineView_method_callback_customEvent,
  connectNotify: cQWebEngineView_method_callback_connectNotify,
  disconnectNotify: cQWebEngineView_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQWebEngineView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineView_new(addr(cQWebEngineView_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    inst: VirtualQWebEngineView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineView_new2(addr(cQWebEngineView_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    profile: gen_qwebengineprofile_types.QWebEngineProfile,
    inst: VirtualQWebEngineView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineView_new3(addr(cQWebEngineView_mvtbl), addr(inst[]), profile.h)
  inst[].owned = true

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    page: gen_qwebenginepage_types.QWebEnginePage,
    inst: VirtualQWebEngineView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineView_new4(addr(cQWebEngineView_mvtbl), addr(inst[]), page.h)
  inst[].owned = true

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    profile: gen_qwebengineprofile_types.QWebEngineProfile, parent: gen_qwidget_types.QWidget,
    inst: VirtualQWebEngineView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineView_new5(addr(cQWebEngineView_mvtbl), addr(inst[]), profile.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    page: gen_qwebenginepage_types.QWebEnginePage, parent: gen_qwidget_types.QWidget,
    inst: VirtualQWebEngineView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineView_new6(addr(cQWebEngineView_mvtbl), addr(inst[]), page.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwebengineview_types.QWebEngineView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineView_staticMetaObject())
