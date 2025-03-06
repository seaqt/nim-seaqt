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

const cflags = gorge("pkg-config --cflags Qt6WebEngineWidgets")  & " -fPIC"
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

proc fcQWebEngineView_metaObject(self: pointer, ): pointer {.importc: "QWebEngineView_metaObject".}
proc fcQWebEngineView_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineView_metacast".}
proc fcQWebEngineView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineView_metacall".}
proc fcQWebEngineView_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineView_tr".}
proc fcQWebEngineView_forPage(page: pointer): pointer {.importc: "QWebEngineView_forPage".}
proc fcQWebEngineView_page(self: pointer, ): pointer {.importc: "QWebEngineView_page".}
proc fcQWebEngineView_setPage(self: pointer, page: pointer): void {.importc: "QWebEngineView_setPage".}
proc fcQWebEngineView_load(self: pointer, url: pointer): void {.importc: "QWebEngineView_load".}
proc fcQWebEngineView_loadWithRequest(self: pointer, request: pointer): void {.importc: "QWebEngineView_loadWithRequest".}
proc fcQWebEngineView_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QWebEngineView_setHtml".}
proc fcQWebEngineView_setContent(self: pointer, data: struct_miqt_string): void {.importc: "QWebEngineView_setContent".}
proc fcQWebEngineView_history(self: pointer, ): pointer {.importc: "QWebEngineView_history".}
proc fcQWebEngineView_title(self: pointer, ): struct_miqt_string {.importc: "QWebEngineView_title".}
proc fcQWebEngineView_setUrl(self: pointer, url: pointer): void {.importc: "QWebEngineView_setUrl".}
proc fcQWebEngineView_url(self: pointer, ): pointer {.importc: "QWebEngineView_url".}
proc fcQWebEngineView_iconUrl(self: pointer, ): pointer {.importc: "QWebEngineView_iconUrl".}
proc fcQWebEngineView_icon(self: pointer, ): pointer {.importc: "QWebEngineView_icon".}
proc fcQWebEngineView_hasSelection(self: pointer, ): bool {.importc: "QWebEngineView_hasSelection".}
proc fcQWebEngineView_selectedText(self: pointer, ): struct_miqt_string {.importc: "QWebEngineView_selectedText".}
proc fcQWebEngineView_pageAction(self: pointer, action: cint): pointer {.importc: "QWebEngineView_pageAction".}
proc fcQWebEngineView_triggerPageAction(self: pointer, action: cint): void {.importc: "QWebEngineView_triggerPageAction".}
proc fcQWebEngineView_zoomFactor(self: pointer, ): float64 {.importc: "QWebEngineView_zoomFactor".}
proc fcQWebEngineView_setZoomFactor(self: pointer, factor: float64): void {.importc: "QWebEngineView_setZoomFactor".}
proc fcQWebEngineView_sizeHint(self: pointer, ): pointer {.importc: "QWebEngineView_sizeHint".}
proc fcQWebEngineView_settings(self: pointer, ): pointer {.importc: "QWebEngineView_settings".}
proc fcQWebEngineView_createStandardContextMenu(self: pointer, ): pointer {.importc: "QWebEngineView_createStandardContextMenu".}
proc fcQWebEngineView_lastContextMenuRequest(self: pointer, ): pointer {.importc: "QWebEngineView_lastContextMenuRequest".}
proc fcQWebEngineView_printToPdf(self: pointer, filePath: struct_miqt_string): void {.importc: "QWebEngineView_printToPdf".}
proc fcQWebEngineView_print(self: pointer, printer: pointer): void {.importc: "QWebEngineView_print".}
proc fcQWebEngineView_stop(self: pointer, ): void {.importc: "QWebEngineView_stop".}
proc fcQWebEngineView_back(self: pointer, ): void {.importc: "QWebEngineView_back".}
proc fcQWebEngineView_forward(self: pointer, ): void {.importc: "QWebEngineView_forward".}
proc fcQWebEngineView_reload(self: pointer, ): void {.importc: "QWebEngineView_reload".}
proc fcQWebEngineView_loadStarted(self: pointer, ): void {.importc: "QWebEngineView_loadStarted".}
proc fcQWebEngineView_connect_loadStarted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_loadStarted".}
proc fcQWebEngineView_loadProgress(self: pointer, progress: cint): void {.importc: "QWebEngineView_loadProgress".}
proc fcQWebEngineView_connect_loadProgress(self: pointer, slot: int, callback: proc (slot: int, progress: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_loadProgress".}
proc fcQWebEngineView_loadFinished(self: pointer, param1: bool): void {.importc: "QWebEngineView_loadFinished".}
proc fcQWebEngineView_connect_loadFinished(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_loadFinished".}
proc fcQWebEngineView_titleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWebEngineView_titleChanged".}
proc fcQWebEngineView_connect_titleChanged(self: pointer, slot: int, callback: proc (slot: int, title: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineView_connect_titleChanged".}
proc fcQWebEngineView_selectionChanged(self: pointer, ): void {.importc: "QWebEngineView_selectionChanged".}
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
proc fcQWebEngineView_printRequested(self: pointer, ): void {.importc: "QWebEngineView_printRequested".}
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
type cQWebEngineViewVTable = object
  destructor*: proc(vtbl: ptr cQWebEngineViewVTable, self: ptr cQWebEngineView) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  createWindow*: proc(vtbl, self: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebEngineView_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWebEngineView_virtualbase_metaObject".}
proc fcQWebEngineView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineView_virtualbase_metacast".}
proc fcQWebEngineView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineView_virtualbase_metacall".}
proc fcQWebEngineView_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QWebEngineView_virtualbase_sizeHint".}
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
proc fcQWebEngineView_virtualbase_devType(self: pointer, ): cint {.importc: "QWebEngineView_virtualbase_devType".}
proc fcQWebEngineView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QWebEngineView_virtualbase_setVisible".}
proc fcQWebEngineView_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QWebEngineView_virtualbase_minimumSizeHint".}
proc fcQWebEngineView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWebEngineView_virtualbase_heightForWidth".}
proc fcQWebEngineView_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QWebEngineView_virtualbase_hasHeightForWidth".}
proc fcQWebEngineView_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QWebEngineView_virtualbase_paintEngine".}
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
proc fcQWebEngineView_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QWebEngineView_virtualbase_sharedPainter".}
proc fcQWebEngineView_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QWebEngineView_virtualbase_inputMethodEvent".}
proc fcQWebEngineView_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QWebEngineView_virtualbase_inputMethodQuery".}
proc fcQWebEngineView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QWebEngineView_virtualbase_focusNextPrevChild".}
proc fcQWebEngineView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebEngineView_virtualbase_eventFilter".}
proc fcQWebEngineView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_timerEvent".}
proc fcQWebEngineView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_childEvent".}
proc fcQWebEngineView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebEngineView_virtualbase_customEvent".}
proc fcQWebEngineView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebEngineView_virtualbase_connectNotify".}
proc fcQWebEngineView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebEngineView_virtualbase_disconnectNotify".}
proc fcQWebEngineView_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QWebEngineView_protectedbase_updateMicroFocus".}
proc fcQWebEngineView_protectedbase_create(self: pointer, ): void {.importc: "QWebEngineView_protectedbase_create".}
proc fcQWebEngineView_protectedbase_destroy(self: pointer, ): void {.importc: "QWebEngineView_protectedbase_destroy".}
proc fcQWebEngineView_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QWebEngineView_protectedbase_focusNextChild".}
proc fcQWebEngineView_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QWebEngineView_protectedbase_focusPreviousChild".}
proc fcQWebEngineView_protectedbase_sender(self: pointer, ): pointer {.importc: "QWebEngineView_protectedbase_sender".}
proc fcQWebEngineView_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWebEngineView_protectedbase_senderSignalIndex".}
proc fcQWebEngineView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineView_protectedbase_receivers".}
proc fcQWebEngineView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineView_protectedbase_isSignalConnected".}
proc fcQWebEngineView_new(vtbl: pointer, parent: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new".}
proc fcQWebEngineView_new2(vtbl: pointer, ): ptr cQWebEngineView {.importc: "QWebEngineView_new2".}
proc fcQWebEngineView_new3(vtbl: pointer, profile: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new3".}
proc fcQWebEngineView_new4(vtbl: pointer, page: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new4".}
proc fcQWebEngineView_new5(vtbl: pointer, profile: pointer, parent: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new5".}
proc fcQWebEngineView_new6(vtbl: pointer, page: pointer, parent: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new6".}
proc fcQWebEngineView_staticMetaObject(): pointer {.importc: "QWebEngineView_staticMetaObject".}
proc fcQWebEngineView_delete(self: pointer) {.importc: "QWebEngineView_delete".}

proc metaObject*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineView_metaObject(self.h))

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
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_forPage(page.h))

proc page*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qwebenginepage_types.QWebEnginePage =
  gen_qwebenginepage_types.QWebEnginePage(h: fcQWebEngineView_page(self.h))

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

proc history*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qwebenginehistory_types.QWebEngineHistory =
  gen_qwebenginehistory_types.QWebEngineHistory(h: fcQWebEngineView_history(self.h))

proc title*(self: gen_qwebengineview_types.QWebEngineView, ): string =
  let v_ms = fcQWebEngineView_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUrl*(self: gen_qwebengineview_types.QWebEngineView, url: gen_qurl_types.QUrl): void =
  fcQWebEngineView_setUrl(self.h, url.h)

proc url*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineView_url(self.h))

proc iconUrl*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineView_iconUrl(self.h))

proc icon*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQWebEngineView_icon(self.h))

proc hasSelection*(self: gen_qwebengineview_types.QWebEngineView, ): bool =
  fcQWebEngineView_hasSelection(self.h)

proc selectedText*(self: gen_qwebengineview_types.QWebEngineView, ): string =
  let v_ms = fcQWebEngineView_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pageAction*(self: gen_qwebengineview_types.QWebEngineView, action: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWebEngineView_pageAction(self.h, cint(action)))

proc triggerPageAction*(self: gen_qwebengineview_types.QWebEngineView, action: cint): void =
  fcQWebEngineView_triggerPageAction(self.h, cint(action))

proc zoomFactor*(self: gen_qwebengineview_types.QWebEngineView, ): float64 =
  fcQWebEngineView_zoomFactor(self.h)

proc setZoomFactor*(self: gen_qwebengineview_types.QWebEngineView, factor: float64): void =
  fcQWebEngineView_setZoomFactor(self.h, factor)

proc sizeHint*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebEngineView_sizeHint(self.h))

proc settings*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qwebenginesettings_types.QWebEngineSettings =
  gen_qwebenginesettings_types.QWebEngineSettings(h: fcQWebEngineView_settings(self.h))

proc createStandardContextMenu*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQWebEngineView_createStandardContextMenu(self.h))

proc lastContextMenuRequest*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest =
  gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest(h: fcQWebEngineView_lastContextMenuRequest(self.h))

proc printToPdf*(self: gen_qwebengineview_types.QWebEngineView, filePath: string): void =
  fcQWebEngineView_printToPdf(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc print*(self: gen_qwebengineview_types.QWebEngineView, printer: gen_qprinter_types.QPrinter): void =
  fcQWebEngineView_print(self.h, printer.h)

proc stop*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_stop(self.h)

proc back*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_back(self.h)

proc forward*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_forward(self.h)

proc reload*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_reload(self.h)

proc loadStarted*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_loadStarted(self.h)

type QWebEngineViewloadStartedSlot* = proc()
proc miqt_exec_callback_cQWebEngineView_loadStarted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewloadStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebEngineView_loadStarted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewloadStartedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadStarted*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewloadStartedSlot) =
  var tmp = new QWebEngineViewloadStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_loadStarted(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_loadStarted, miqt_exec_callback_cQWebEngineView_loadStarted_release)

proc loadProgress*(self: gen_qwebengineview_types.QWebEngineView, progress: cint): void =
  fcQWebEngineView_loadProgress(self.h, progress)

type QWebEngineViewloadProgressSlot* = proc(progress: cint)
proc miqt_exec_callback_cQWebEngineView_loadProgress(slot: int, progress: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewloadProgressSlot](cast[pointer](slot))
  let slotval1 = progress

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEngineView_loadProgress_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewloadProgressSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadProgress*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewloadProgressSlot) =
  var tmp = new QWebEngineViewloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_loadProgress(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_loadProgress, miqt_exec_callback_cQWebEngineView_loadProgress_release)

proc loadFinished*(self: gen_qwebengineview_types.QWebEngineView, param1: bool): void =
  fcQWebEngineView_loadFinished(self.h, param1)

type QWebEngineViewloadFinishedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQWebEngineView_loadFinished(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewloadFinishedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEngineView_loadFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewloadFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadFinished*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewloadFinishedSlot) =
  var tmp = new QWebEngineViewloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_loadFinished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_loadFinished, miqt_exec_callback_cQWebEngineView_loadFinished_release)

proc titleChanged*(self: gen_qwebengineview_types.QWebEngineView, title: string): void =
  fcQWebEngineView_titleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

type QWebEngineViewtitleChangedSlot* = proc(title: string)
proc miqt_exec_callback_cQWebEngineView_titleChanged(slot: int, title: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewtitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEngineView_titleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewtitleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontitleChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewtitleChangedSlot) =
  var tmp = new QWebEngineViewtitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_titleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_titleChanged, miqt_exec_callback_cQWebEngineView_titleChanged_release)

proc selectionChanged*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_selectionChanged(self.h)

type QWebEngineViewselectionChangedSlot* = proc()
proc miqt_exec_callback_cQWebEngineView_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebEngineView_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectionChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewselectionChangedSlot) =
  var tmp = new QWebEngineViewselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_selectionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_selectionChanged, miqt_exec_callback_cQWebEngineView_selectionChanged_release)

proc urlChanged*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qurl_types.QUrl): void =
  fcQWebEngineView_urlChanged(self.h, param1.h)

type QWebEngineViewurlChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQWebEngineView_urlChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewurlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEngineView_urlChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewurlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onurlChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewurlChangedSlot) =
  var tmp = new QWebEngineViewurlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_urlChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_urlChanged, miqt_exec_callback_cQWebEngineView_urlChanged_release)

proc iconUrlChanged*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qurl_types.QUrl): void =
  fcQWebEngineView_iconUrlChanged(self.h, param1.h)

type QWebEngineViewiconUrlChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQWebEngineView_iconUrlChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewiconUrlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEngineView_iconUrlChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewiconUrlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconUrlChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewiconUrlChangedSlot) =
  var tmp = new QWebEngineViewiconUrlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_iconUrlChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_iconUrlChanged, miqt_exec_callback_cQWebEngineView_iconUrlChanged_release)

proc iconChanged*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qicon_types.QIcon): void =
  fcQWebEngineView_iconChanged(self.h, param1.h)

type QWebEngineViewiconChangedSlot* = proc(param1: gen_qicon_types.QIcon)
proc miqt_exec_callback_cQWebEngineView_iconChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewiconChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qicon_types.QIcon(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEngineView_iconChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewiconChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewiconChangedSlot) =
  var tmp = new QWebEngineViewiconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_iconChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_iconChanged, miqt_exec_callback_cQWebEngineView_iconChanged_release)

proc renderProcessTerminated*(self: gen_qwebengineview_types.QWebEngineView, terminationStatus: cint, exitCode: cint): void =
  fcQWebEngineView_renderProcessTerminated(self.h, cint(terminationStatus), exitCode)

type QWebEngineViewrenderProcessTerminatedSlot* = proc(terminationStatus: cint, exitCode: cint)
proc miqt_exec_callback_cQWebEngineView_renderProcessTerminated(slot: int, terminationStatus: cint, exitCode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewrenderProcessTerminatedSlot](cast[pointer](slot))
  let slotval1 = cint(terminationStatus)

  let slotval2 = exitCode

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQWebEngineView_renderProcessTerminated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewrenderProcessTerminatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrenderProcessTerminated*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewrenderProcessTerminatedSlot) =
  var tmp = new QWebEngineViewrenderProcessTerminatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_renderProcessTerminated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_renderProcessTerminated, miqt_exec_callback_cQWebEngineView_renderProcessTerminated_release)

proc pdfPrintingFinished*(self: gen_qwebengineview_types.QWebEngineView, filePath: string, success: bool): void =
  fcQWebEngineView_pdfPrintingFinished(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), success)

type QWebEngineViewpdfPrintingFinishedSlot* = proc(filePath: string, success: bool)
proc miqt_exec_callback_cQWebEngineView_pdfPrintingFinished(slot: int, filePath: struct_miqt_string, success: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewpdfPrintingFinishedSlot](cast[pointer](slot))
  let vfilePath_ms = filePath
  let vfilePathx_ret = string.fromBytes(toOpenArrayByte(vfilePath_ms.data, 0, int(vfilePath_ms.len)-1))
  c_free(vfilePath_ms.data)
  let slotval1 = vfilePathx_ret

  let slotval2 = success

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQWebEngineView_pdfPrintingFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewpdfPrintingFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpdfPrintingFinished*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewpdfPrintingFinishedSlot) =
  var tmp = new QWebEngineViewpdfPrintingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_pdfPrintingFinished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_pdfPrintingFinished, miqt_exec_callback_cQWebEngineView_pdfPrintingFinished_release)

proc printRequested*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_printRequested(self.h)

type QWebEngineViewprintRequestedSlot* = proc()
proc miqt_exec_callback_cQWebEngineView_printRequested(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewprintRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebEngineView_printRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewprintRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprintRequested*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewprintRequestedSlot) =
  var tmp = new QWebEngineViewprintRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_printRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_printRequested, miqt_exec_callback_cQWebEngineView_printRequested_release)

proc printFinished*(self: gen_qwebengineview_types.QWebEngineView, success: bool): void =
  fcQWebEngineView_printFinished(self.h, success)

type QWebEngineViewprintFinishedSlot* = proc(success: bool)
proc miqt_exec_callback_cQWebEngineView_printFinished(slot: int, success: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineViewprintFinishedSlot](cast[pointer](slot))
  let slotval1 = success

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEngineView_printFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineViewprintFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprintFinished*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewprintFinishedSlot) =
  var tmp = new QWebEngineViewprintFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_printFinished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineView_printFinished, miqt_exec_callback_cQWebEngineView_printFinished_release)

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
type QWebEngineViewVTable* = object
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
proc QWebEngineViewmetaObject*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineView_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQWebEngineView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QWebEngineViewmetacast*(self: gen_qwebengineview_types.QWebEngineView, param1: cstring): pointer =
  fcQWebEngineView_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWebEngineView_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebEngineViewmetacall*(self: gen_qwebengineview_types.QWebEngineView, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWebEngineView_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebEngineViewsizeHint*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebEngineView_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQWebEngineView_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QWebEngineViewcreateWindow*(self: gen_qwebengineview_types.QWebEngineView, typeVal: cint): gen_qwebengineview_types.QWebEngineView =
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_virtualbase_createWindow(self.h, cint(typeVal)))

proc miqt_exec_callback_cQWebEngineView_createWindow(vtbl: pointer, self: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = cint(typeVal)
  var virtualReturn = vtbl[].createWindow(self, slotval1)
  virtualReturn.h

proc QWebEngineViewcontextMenuEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQWebEngineView_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebEngineView_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QWebEngineViewevent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebEngineView_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQWebEngineView_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebEngineViewshowEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QShowEvent): void =
  fcQWebEngineView_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebEngineView_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QWebEngineViewhideEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QHideEvent): void =
  fcQWebEngineView_virtualbase_hideEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebEngineView_hideEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)
  vtbl[].hideEvent(self, slotval1)

proc QWebEngineViewcloseEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QCloseEvent): void =
  fcQWebEngineView_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebEngineView_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)
  vtbl[].closeEvent(self, slotval1)

proc QWebEngineViewdragEnterEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDragEnterEvent): void =
  fcQWebEngineView_virtualbase_dragEnterEvent(self.h, e.h)

proc miqt_exec_callback_cQWebEngineView_dragEnterEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e)
  vtbl[].dragEnterEvent(self, slotval1)

proc QWebEngineViewdragLeaveEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQWebEngineView_virtualbase_dragLeaveEvent(self.h, e.h)

proc miqt_exec_callback_cQWebEngineView_dragLeaveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QWebEngineViewdragMoveEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDragMoveEvent): void =
  fcQWebEngineView_virtualbase_dragMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQWebEngineView_dragMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)
  vtbl[].dragMoveEvent(self, slotval1)

proc QWebEngineViewdropEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDropEvent): void =
  fcQWebEngineView_virtualbase_dropEvent(self.h, e.h)

proc miqt_exec_callback_cQWebEngineView_dropEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: e)
  vtbl[].dropEvent(self, slotval1)

proc QWebEngineViewdevType*(self: gen_qwebengineview_types.QWebEngineView, ): cint =
  fcQWebEngineView_virtualbase_devType(self.h)

proc miqt_exec_callback_cQWebEngineView_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QWebEngineViewsetVisible*(self: gen_qwebengineview_types.QWebEngineView, visible: bool): void =
  fcQWebEngineView_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQWebEngineView_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QWebEngineViewminimumSizeHint*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebEngineView_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQWebEngineView_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QWebEngineViewheightForWidth*(self: gen_qwebengineview_types.QWebEngineView, param1: cint): cint =
  fcQWebEngineView_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQWebEngineView_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QWebEngineViewhasHeightForWidth*(self: gen_qwebengineview_types.QWebEngineView, ): bool =
  fcQWebEngineView_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQWebEngineView_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QWebEngineViewpaintEngine*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQWebEngineView_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQWebEngineView_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QWebEngineViewmousePressEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fcQWebEngineView_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QWebEngineViewmouseReleaseEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fcQWebEngineView_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QWebEngineViewmouseDoubleClickEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fcQWebEngineView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QWebEngineViewmouseMoveEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fcQWebEngineView_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QWebEngineViewwheelEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QWheelEvent): void =
  fcQWebEngineView_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QWebEngineViewkeyPressEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QKeyEvent): void =
  fcQWebEngineView_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QWebEngineViewkeyReleaseEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QKeyEvent): void =
  fcQWebEngineView_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QWebEngineViewfocusInEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QFocusEvent): void =
  fcQWebEngineView_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QWebEngineViewfocusOutEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QFocusEvent): void =
  fcQWebEngineView_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QWebEngineViewenterEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QEnterEvent): void =
  fcQWebEngineView_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QWebEngineViewleaveEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QEvent): void =
  fcQWebEngineView_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QWebEngineViewpaintEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QPaintEvent): void =
  fcQWebEngineView_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QWebEngineViewmoveEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMoveEvent): void =
  fcQWebEngineView_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QWebEngineViewresizeEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QResizeEvent): void =
  fcQWebEngineView_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QWebEngineViewtabletEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QTabletEvent): void =
  fcQWebEngineView_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QWebEngineViewactionEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QActionEvent): void =
  fcQWebEngineView_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QWebEngineViewnativeEvent*(self: gen_qwebengineview_types.QWebEngineView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQWebEngineView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQWebEngineView_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
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

proc miqt_exec_callback_cQWebEngineView_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QWebEngineViewmetric*(self: gen_qwebengineview_types.QWebEngineView, param1: cint): cint =
  fcQWebEngineView_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQWebEngineView_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QWebEngineViewinitPainter*(self: gen_qwebengineview_types.QWebEngineView, painter: gen_qpainter_types.QPainter): void =
  fcQWebEngineView_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQWebEngineView_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QWebEngineViewredirected*(self: gen_qwebengineview_types.QWebEngineView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQWebEngineView_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQWebEngineView_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QWebEngineViewsharedPainter*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQWebEngineView_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQWebEngineView_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QWebEngineViewinputMethodEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQWebEngineView_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebEngineView_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QWebEngineViewinputMethodQuery*(self: gen_qwebengineview_types.QWebEngineView, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebEngineView_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQWebEngineView_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QWebEngineViewfocusNextPrevChild*(self: gen_qwebengineview_types.QWebEngineView, next: bool): bool =
  fcQWebEngineView_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQWebEngineView_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QWebEngineVieweventFilter*(self: gen_qwebengineview_types.QWebEngineView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebEngineView_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWebEngineView_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebEngineViewtimerEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebEngineView_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QWebEngineViewchildEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebEngineView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QWebEngineViewcustomEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QEvent): void =
  fcQWebEngineView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QWebEngineViewconnectNotify*(self: gen_qwebengineview_types.QWebEngineView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEngineView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebEngineView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QWebEngineViewdisconnectNotify*(self: gen_qwebengineview_types.QWebEngineView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEngineView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebEngineView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineViewVTable](vtbl)
  let self = QWebEngineView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateMicroFocus*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_protectedbase_create(self.h)

proc destroy*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qwebengineview_types.QWebEngineView, ): bool =
  fcQWebEngineView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qwebengineview_types.QWebEngineView, ): bool =
  fcQWebEngineView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineView_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qwebengineview_types.QWebEngineView, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebEngineViewVTable, _: ptr cQWebEngineView) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEngineView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEngineView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEngineView_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWebEngineView_sizeHint
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebEngineView_createWindow
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWebEngineView_contextMenuEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEngineView_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWebEngineView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWebEngineView_hideEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWebEngineView_closeEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWebEngineView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWebEngineView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWebEngineView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWebEngineView_dropEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWebEngineView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWebEngineView_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWebEngineView_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWebEngineView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWebEngineView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWebEngineView_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWebEngineView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWebEngineView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWebEngineView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWebEngineView_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWebEngineView_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWebEngineView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWebEngineView_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWebEngineView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWebEngineView_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWebEngineView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWebEngineView_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWebEngineView_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWebEngineView_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWebEngineView_resizeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWebEngineView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWebEngineView_actionEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWebEngineView_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWebEngineView_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWebEngineView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWebEngineView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWebEngineView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWebEngineView_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWebEngineView_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWebEngineView_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWebEngineView_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEngineView_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEngineView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEngineView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEngineView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEngineView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEngineView_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    vtbl: ref QWebEngineViewVTable = nil): gen_qwebengineview_types.QWebEngineView =
  let vtbl = if vtbl == nil: new QWebEngineViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebEngineViewVTable, _: ptr cQWebEngineView) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEngineView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEngineView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEngineView_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWebEngineView_sizeHint
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebEngineView_createWindow
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWebEngineView_contextMenuEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEngineView_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWebEngineView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWebEngineView_hideEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWebEngineView_closeEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWebEngineView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWebEngineView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWebEngineView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWebEngineView_dropEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWebEngineView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWebEngineView_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWebEngineView_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWebEngineView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWebEngineView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWebEngineView_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWebEngineView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWebEngineView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWebEngineView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWebEngineView_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWebEngineView_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWebEngineView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWebEngineView_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWebEngineView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWebEngineView_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWebEngineView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWebEngineView_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWebEngineView_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWebEngineView_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWebEngineView_resizeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWebEngineView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWebEngineView_actionEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWebEngineView_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWebEngineView_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWebEngineView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWebEngineView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWebEngineView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWebEngineView_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWebEngineView_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWebEngineView_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWebEngineView_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEngineView_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEngineView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEngineView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEngineView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEngineView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEngineView_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new2(addr(vtbl[]), ))

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    profile: gen_qwebengineprofile_types.QWebEngineProfile,
    vtbl: ref QWebEngineViewVTable = nil): gen_qwebengineview_types.QWebEngineView =
  let vtbl = if vtbl == nil: new QWebEngineViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebEngineViewVTable, _: ptr cQWebEngineView) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEngineView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEngineView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEngineView_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWebEngineView_sizeHint
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebEngineView_createWindow
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWebEngineView_contextMenuEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEngineView_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWebEngineView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWebEngineView_hideEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWebEngineView_closeEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWebEngineView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWebEngineView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWebEngineView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWebEngineView_dropEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWebEngineView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWebEngineView_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWebEngineView_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWebEngineView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWebEngineView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWebEngineView_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWebEngineView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWebEngineView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWebEngineView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWebEngineView_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWebEngineView_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWebEngineView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWebEngineView_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWebEngineView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWebEngineView_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWebEngineView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWebEngineView_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWebEngineView_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWebEngineView_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWebEngineView_resizeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWebEngineView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWebEngineView_actionEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWebEngineView_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWebEngineView_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWebEngineView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWebEngineView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWebEngineView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWebEngineView_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWebEngineView_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWebEngineView_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWebEngineView_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEngineView_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEngineView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEngineView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEngineView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEngineView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEngineView_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new3(addr(vtbl[]), profile.h))

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    page: gen_qwebenginepage_types.QWebEnginePage,
    vtbl: ref QWebEngineViewVTable = nil): gen_qwebengineview_types.QWebEngineView =
  let vtbl = if vtbl == nil: new QWebEngineViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebEngineViewVTable, _: ptr cQWebEngineView) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEngineView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEngineView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEngineView_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWebEngineView_sizeHint
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebEngineView_createWindow
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWebEngineView_contextMenuEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEngineView_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWebEngineView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWebEngineView_hideEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWebEngineView_closeEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWebEngineView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWebEngineView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWebEngineView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWebEngineView_dropEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWebEngineView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWebEngineView_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWebEngineView_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWebEngineView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWebEngineView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWebEngineView_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWebEngineView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWebEngineView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWebEngineView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWebEngineView_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWebEngineView_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWebEngineView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWebEngineView_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWebEngineView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWebEngineView_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWebEngineView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWebEngineView_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWebEngineView_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWebEngineView_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWebEngineView_resizeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWebEngineView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWebEngineView_actionEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWebEngineView_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWebEngineView_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWebEngineView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWebEngineView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWebEngineView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWebEngineView_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWebEngineView_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWebEngineView_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWebEngineView_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEngineView_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEngineView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEngineView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEngineView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEngineView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEngineView_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new4(addr(vtbl[]), page.h))

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    profile: gen_qwebengineprofile_types.QWebEngineProfile, parent: gen_qwidget_types.QWidget,
    vtbl: ref QWebEngineViewVTable = nil): gen_qwebengineview_types.QWebEngineView =
  let vtbl = if vtbl == nil: new QWebEngineViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebEngineViewVTable, _: ptr cQWebEngineView) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEngineView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEngineView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEngineView_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWebEngineView_sizeHint
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebEngineView_createWindow
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWebEngineView_contextMenuEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEngineView_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWebEngineView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWebEngineView_hideEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWebEngineView_closeEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWebEngineView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWebEngineView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWebEngineView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWebEngineView_dropEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWebEngineView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWebEngineView_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWebEngineView_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWebEngineView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWebEngineView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWebEngineView_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWebEngineView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWebEngineView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWebEngineView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWebEngineView_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWebEngineView_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWebEngineView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWebEngineView_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWebEngineView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWebEngineView_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWebEngineView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWebEngineView_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWebEngineView_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWebEngineView_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWebEngineView_resizeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWebEngineView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWebEngineView_actionEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWebEngineView_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWebEngineView_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWebEngineView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWebEngineView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWebEngineView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWebEngineView_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWebEngineView_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWebEngineView_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWebEngineView_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEngineView_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEngineView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEngineView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEngineView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEngineView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEngineView_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new5(addr(vtbl[]), profile.h, parent.h))

proc create*(T: type gen_qwebengineview_types.QWebEngineView,
    page: gen_qwebenginepage_types.QWebEnginePage, parent: gen_qwidget_types.QWidget,
    vtbl: ref QWebEngineViewVTable = nil): gen_qwebengineview_types.QWebEngineView =
  let vtbl = if vtbl == nil: new QWebEngineViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebEngineViewVTable, _: ptr cQWebEngineView) {.cdecl.} =
    let vtbl = cast[ref QWebEngineViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEngineView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEngineView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEngineView_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWebEngineView_sizeHint
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebEngineView_createWindow
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWebEngineView_contextMenuEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEngineView_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWebEngineView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWebEngineView_hideEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWebEngineView_closeEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWebEngineView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWebEngineView_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWebEngineView_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWebEngineView_dropEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWebEngineView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWebEngineView_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWebEngineView_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWebEngineView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWebEngineView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWebEngineView_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWebEngineView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWebEngineView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWebEngineView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWebEngineView_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWebEngineView_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWebEngineView_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWebEngineView_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWebEngineView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWebEngineView_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWebEngineView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWebEngineView_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWebEngineView_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWebEngineView_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWebEngineView_resizeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWebEngineView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWebEngineView_actionEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWebEngineView_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWebEngineView_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWebEngineView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWebEngineView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWebEngineView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWebEngineView_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWebEngineView_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWebEngineView_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWebEngineView_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEngineView_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEngineView_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEngineView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEngineView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEngineView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEngineView_disconnectNotify
  gen_qwebengineview_types.QWebEngineView(h: fcQWebEngineView_new6(addr(vtbl[]), page.h, parent.h))

proc staticMetaObject*(_: type gen_qwebengineview_types.QWebEngineView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineView_staticMetaObject())
proc delete*(self: gen_qwebengineview_types.QWebEngineView) =
  fcQWebEngineView_delete(self.h)
