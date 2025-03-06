import ./Qt6WebEngineWidgets_libs

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

proc fcQWebEngineView_new(parent: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new".}
proc fcQWebEngineView_new2(): ptr cQWebEngineView {.importc: "QWebEngineView_new2".}
proc fcQWebEngineView_new3(profile: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new3".}
proc fcQWebEngineView_new4(page: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new4".}
proc fcQWebEngineView_new5(profile: pointer, parent: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new5".}
proc fcQWebEngineView_new6(page: pointer, parent: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new6".}
proc fcQWebEngineView_metaObject(self: pointer, ): pointer {.importc: "QWebEngineView_metaObject".}
proc fcQWebEngineView_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineView_metacast".}
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
proc fcQWebEngineView_connect_loadStarted(self: pointer, slot: int) {.importc: "QWebEngineView_connect_loadStarted".}
proc fcQWebEngineView_loadProgress(self: pointer, progress: cint): void {.importc: "QWebEngineView_loadProgress".}
proc fcQWebEngineView_connect_loadProgress(self: pointer, slot: int) {.importc: "QWebEngineView_connect_loadProgress".}
proc fcQWebEngineView_loadFinished(self: pointer, param1: bool): void {.importc: "QWebEngineView_loadFinished".}
proc fcQWebEngineView_connect_loadFinished(self: pointer, slot: int) {.importc: "QWebEngineView_connect_loadFinished".}
proc fcQWebEngineView_titleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWebEngineView_titleChanged".}
proc fcQWebEngineView_connect_titleChanged(self: pointer, slot: int) {.importc: "QWebEngineView_connect_titleChanged".}
proc fcQWebEngineView_selectionChanged(self: pointer, ): void {.importc: "QWebEngineView_selectionChanged".}
proc fcQWebEngineView_connect_selectionChanged(self: pointer, slot: int) {.importc: "QWebEngineView_connect_selectionChanged".}
proc fcQWebEngineView_urlChanged(self: pointer, param1: pointer): void {.importc: "QWebEngineView_urlChanged".}
proc fcQWebEngineView_connect_urlChanged(self: pointer, slot: int) {.importc: "QWebEngineView_connect_urlChanged".}
proc fcQWebEngineView_iconUrlChanged(self: pointer, param1: pointer): void {.importc: "QWebEngineView_iconUrlChanged".}
proc fcQWebEngineView_connect_iconUrlChanged(self: pointer, slot: int) {.importc: "QWebEngineView_connect_iconUrlChanged".}
proc fcQWebEngineView_iconChanged(self: pointer, param1: pointer): void {.importc: "QWebEngineView_iconChanged".}
proc fcQWebEngineView_connect_iconChanged(self: pointer, slot: int) {.importc: "QWebEngineView_connect_iconChanged".}
proc fcQWebEngineView_renderProcessTerminated(self: pointer, terminationStatus: cint, exitCode: cint): void {.importc: "QWebEngineView_renderProcessTerminated".}
proc fcQWebEngineView_connect_renderProcessTerminated(self: pointer, slot: int) {.importc: "QWebEngineView_connect_renderProcessTerminated".}
proc fcQWebEngineView_pdfPrintingFinished(self: pointer, filePath: struct_miqt_string, success: bool): void {.importc: "QWebEngineView_pdfPrintingFinished".}
proc fcQWebEngineView_connect_pdfPrintingFinished(self: pointer, slot: int) {.importc: "QWebEngineView_connect_pdfPrintingFinished".}
proc fcQWebEngineView_printRequested(self: pointer, ): void {.importc: "QWebEngineView_printRequested".}
proc fcQWebEngineView_connect_printRequested(self: pointer, slot: int) {.importc: "QWebEngineView_connect_printRequested".}
proc fcQWebEngineView_printFinished(self: pointer, success: bool): void {.importc: "QWebEngineView_printFinished".}
proc fcQWebEngineView_connect_printFinished(self: pointer, slot: int) {.importc: "QWebEngineView_connect_printFinished".}
proc fcQWebEngineView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineView_tr2".}
proc fcQWebEngineView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineView_tr3".}
proc fcQWebEngineView_setHtml2(self: pointer, html: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebEngineView_setHtml2".}
proc fcQWebEngineView_setContent2(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QWebEngineView_setContent2".}
proc fcQWebEngineView_setContent3(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebEngineView_setContent3".}
proc fcQWebEngineView_triggerPageAction2(self: pointer, action: cint, checked: bool): void {.importc: "QWebEngineView_triggerPageAction2".}
proc fcQWebEngineView_printToPdf2(self: pointer, filePath: struct_miqt_string, layout: pointer): void {.importc: "QWebEngineView_printToPdf2".}
proc fcQWebEngineView_printToPdf3(self: pointer, filePath: struct_miqt_string, layout: pointer, ranges: pointer): void {.importc: "QWebEngineView_printToPdf3".}
proc fQWebEngineView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWebEngineView_virtualbase_sizeHint".}
proc fcQWebEngineView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_sizeHint".}
proc fQWebEngineView_virtualbase_createWindow(self: pointer, typeVal: cint): pointer{.importc: "QWebEngineView_virtualbase_createWindow".}
proc fcQWebEngineView_override_virtual_createWindow(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_createWindow".}
proc fQWebEngineView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_contextMenuEvent".}
proc fcQWebEngineView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_contextMenuEvent".}
proc fQWebEngineView_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWebEngineView_virtualbase_event".}
proc fcQWebEngineView_override_virtual_event(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_event".}
proc fQWebEngineView_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_showEvent".}
proc fcQWebEngineView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_showEvent".}
proc fQWebEngineView_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_hideEvent".}
proc fcQWebEngineView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_hideEvent".}
proc fQWebEngineView_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_closeEvent".}
proc fcQWebEngineView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_closeEvent".}
proc fQWebEngineView_virtualbase_dragEnterEvent(self: pointer, e: pointer): void{.importc: "QWebEngineView_virtualbase_dragEnterEvent".}
proc fcQWebEngineView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_dragEnterEvent".}
proc fQWebEngineView_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QWebEngineView_virtualbase_dragLeaveEvent".}
proc fcQWebEngineView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_dragLeaveEvent".}
proc fQWebEngineView_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QWebEngineView_virtualbase_dragMoveEvent".}
proc fcQWebEngineView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_dragMoveEvent".}
proc fQWebEngineView_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QWebEngineView_virtualbase_dropEvent".}
proc fcQWebEngineView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_dropEvent".}
proc fQWebEngineView_virtualbase_devType(self: pointer, ): cint{.importc: "QWebEngineView_virtualbase_devType".}
proc fcQWebEngineView_override_virtual_devType(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_devType".}
proc fQWebEngineView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWebEngineView_virtualbase_setVisible".}
proc fcQWebEngineView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_setVisible".}
proc fQWebEngineView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWebEngineView_virtualbase_minimumSizeHint".}
proc fcQWebEngineView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_minimumSizeHint".}
proc fQWebEngineView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWebEngineView_virtualbase_heightForWidth".}
proc fcQWebEngineView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_heightForWidth".}
proc fQWebEngineView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWebEngineView_virtualbase_hasHeightForWidth".}
proc fcQWebEngineView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_hasHeightForWidth".}
proc fQWebEngineView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWebEngineView_virtualbase_paintEngine".}
proc fcQWebEngineView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_paintEngine".}
proc fQWebEngineView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_mousePressEvent".}
proc fcQWebEngineView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_mousePressEvent".}
proc fQWebEngineView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_mouseReleaseEvent".}
proc fcQWebEngineView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_mouseReleaseEvent".}
proc fQWebEngineView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_mouseDoubleClickEvent".}
proc fcQWebEngineView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_mouseDoubleClickEvent".}
proc fQWebEngineView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_mouseMoveEvent".}
proc fcQWebEngineView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_mouseMoveEvent".}
proc fQWebEngineView_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_wheelEvent".}
proc fcQWebEngineView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_wheelEvent".}
proc fQWebEngineView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_keyPressEvent".}
proc fcQWebEngineView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_keyPressEvent".}
proc fQWebEngineView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_keyReleaseEvent".}
proc fcQWebEngineView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_keyReleaseEvent".}
proc fQWebEngineView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_focusInEvent".}
proc fcQWebEngineView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_focusInEvent".}
proc fQWebEngineView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_focusOutEvent".}
proc fcQWebEngineView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_focusOutEvent".}
proc fQWebEngineView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_enterEvent".}
proc fcQWebEngineView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_enterEvent".}
proc fQWebEngineView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_leaveEvent".}
proc fcQWebEngineView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_leaveEvent".}
proc fQWebEngineView_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_paintEvent".}
proc fcQWebEngineView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_paintEvent".}
proc fQWebEngineView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_moveEvent".}
proc fcQWebEngineView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_moveEvent".}
proc fQWebEngineView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_resizeEvent".}
proc fcQWebEngineView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_resizeEvent".}
proc fQWebEngineView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_tabletEvent".}
proc fcQWebEngineView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_tabletEvent".}
proc fQWebEngineView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_actionEvent".}
proc fcQWebEngineView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_actionEvent".}
proc fQWebEngineView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QWebEngineView_virtualbase_nativeEvent".}
proc fcQWebEngineView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_nativeEvent".}
proc fQWebEngineView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_changeEvent".}
proc fcQWebEngineView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_changeEvent".}
proc fQWebEngineView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWebEngineView_virtualbase_metric".}
proc fcQWebEngineView_override_virtual_metric(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_metric".}
proc fQWebEngineView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWebEngineView_virtualbase_initPainter".}
proc fcQWebEngineView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_initPainter".}
proc fQWebEngineView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWebEngineView_virtualbase_redirected".}
proc fcQWebEngineView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_redirected".}
proc fQWebEngineView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWebEngineView_virtualbase_sharedPainter".}
proc fcQWebEngineView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_sharedPainter".}
proc fQWebEngineView_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_inputMethodEvent".}
proc fcQWebEngineView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_inputMethodEvent".}
proc fQWebEngineView_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QWebEngineView_virtualbase_inputMethodQuery".}
proc fcQWebEngineView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_inputMethodQuery".}
proc fQWebEngineView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWebEngineView_virtualbase_focusNextPrevChild".}
proc fcQWebEngineView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_focusNextPrevChild".}
proc fQWebEngineView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebEngineView_virtualbase_eventFilter".}
proc fcQWebEngineView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_eventFilter".}
proc fQWebEngineView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_timerEvent".}
proc fcQWebEngineView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_timerEvent".}
proc fQWebEngineView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_childEvent".}
proc fcQWebEngineView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_childEvent".}
proc fQWebEngineView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_customEvent".}
proc fcQWebEngineView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_customEvent".}
proc fQWebEngineView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineView_virtualbase_connectNotify".}
proc fcQWebEngineView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_connectNotify".}
proc fQWebEngineView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineView_virtualbase_disconnectNotify".}
proc fcQWebEngineView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_disconnectNotify".}
proc fcQWebEngineView_delete(self: pointer) {.importc: "QWebEngineView_delete".}


func init*(T: type gen_qwebengineview_types.QWebEngineView, h: ptr cQWebEngineView): gen_qwebengineview_types.QWebEngineView =
  T(h: h)
proc create*(T: type gen_qwebengineview_types.QWebEngineView, parent: gen_qwidget_types.QWidget): gen_qwebengineview_types.QWebEngineView =
  gen_qwebengineview_types.QWebEngineView.init(fcQWebEngineView_new(parent.h))

proc create*(T: type gen_qwebengineview_types.QWebEngineView, ): gen_qwebengineview_types.QWebEngineView =
  gen_qwebengineview_types.QWebEngineView.init(fcQWebEngineView_new2())

proc create*(T: type gen_qwebengineview_types.QWebEngineView, profile: gen_qwebengineprofile_types.QWebEngineProfile): gen_qwebengineview_types.QWebEngineView =
  gen_qwebengineview_types.QWebEngineView.init(fcQWebEngineView_new3(profile.h))

proc create*(T: type gen_qwebengineview_types.QWebEngineView, page: gen_qwebenginepage_types.QWebEnginePage): gen_qwebengineview_types.QWebEngineView =
  gen_qwebengineview_types.QWebEngineView.init(fcQWebEngineView_new4(page.h))

proc create*(T: type gen_qwebengineview_types.QWebEngineView, profile: gen_qwebengineprofile_types.QWebEngineProfile, parent: gen_qwidget_types.QWidget): gen_qwebengineview_types.QWebEngineView =
  gen_qwebengineview_types.QWebEngineView.init(fcQWebEngineView_new5(profile.h, parent.h))

proc create*(T: type gen_qwebengineview_types.QWebEngineView, page: gen_qwebenginepage_types.QWebEnginePage, parent: gen_qwidget_types.QWidget): gen_qwebengineview_types.QWebEngineView =
  gen_qwebengineview_types.QWebEngineView.init(fcQWebEngineView_new6(page.h, parent.h))

proc metaObject*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineView_metaObject(self.h))

proc metacast*(self: gen_qwebengineview_types.QWebEngineView, param1: cstring): pointer =
  fcQWebEngineView_metacast(self.h, param1)

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
proc miqt_exec_callback_QWebEngineView_loadStarted(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewloadStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc onloadStarted*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewloadStartedSlot) =
  var tmp = new QWebEngineViewloadStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_loadStarted(self.h, cast[int](addr tmp[]))

proc loadProgress*(self: gen_qwebengineview_types.QWebEngineView, progress: cint): void =
  fcQWebEngineView_loadProgress(self.h, progress)

type QWebEngineViewloadProgressSlot* = proc(progress: cint)
proc miqt_exec_callback_QWebEngineView_loadProgress(slot: int, progress: cint) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewloadProgressSlot](cast[pointer](slot))
  let slotval1 = progress

  nimfunc[](slotval1)

proc onloadProgress*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewloadProgressSlot) =
  var tmp = new QWebEngineViewloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_loadProgress(self.h, cast[int](addr tmp[]))

proc loadFinished*(self: gen_qwebengineview_types.QWebEngineView, param1: bool): void =
  fcQWebEngineView_loadFinished(self.h, param1)

type QWebEngineViewloadFinishedSlot* = proc(param1: bool)
proc miqt_exec_callback_QWebEngineView_loadFinished(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewloadFinishedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onloadFinished*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewloadFinishedSlot) =
  var tmp = new QWebEngineViewloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_loadFinished(self.h, cast[int](addr tmp[]))

proc titleChanged*(self: gen_qwebengineview_types.QWebEngineView, title: string): void =
  fcQWebEngineView_titleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

type QWebEngineViewtitleChangedSlot* = proc(title: string)
proc miqt_exec_callback_QWebEngineView_titleChanged(slot: int, title: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewtitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc ontitleChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewtitleChangedSlot) =
  var tmp = new QWebEngineViewtitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_titleChanged(self.h, cast[int](addr tmp[]))

proc selectionChanged*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_selectionChanged(self.h)

type QWebEngineViewselectionChangedSlot* = proc()
proc miqt_exec_callback_QWebEngineView_selectionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onselectionChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewselectionChangedSlot) =
  var tmp = new QWebEngineViewselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_selectionChanged(self.h, cast[int](addr tmp[]))

proc urlChanged*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qurl_types.QUrl): void =
  fcQWebEngineView_urlChanged(self.h, param1.h)

type QWebEngineViewurlChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_QWebEngineView_urlChanged(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewurlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc onurlChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewurlChangedSlot) =
  var tmp = new QWebEngineViewurlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_urlChanged(self.h, cast[int](addr tmp[]))

proc iconUrlChanged*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qurl_types.QUrl): void =
  fcQWebEngineView_iconUrlChanged(self.h, param1.h)

type QWebEngineViewiconUrlChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_QWebEngineView_iconUrlChanged(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewiconUrlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc oniconUrlChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewiconUrlChangedSlot) =
  var tmp = new QWebEngineViewiconUrlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_iconUrlChanged(self.h, cast[int](addr tmp[]))

proc iconChanged*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qicon_types.QIcon): void =
  fcQWebEngineView_iconChanged(self.h, param1.h)

type QWebEngineViewiconChangedSlot* = proc(param1: gen_qicon_types.QIcon)
proc miqt_exec_callback_QWebEngineView_iconChanged(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewiconChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qicon_types.QIcon(h: param1)

  nimfunc[](slotval1)

proc oniconChanged*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewiconChangedSlot) =
  var tmp = new QWebEngineViewiconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_iconChanged(self.h, cast[int](addr tmp[]))

proc renderProcessTerminated*(self: gen_qwebengineview_types.QWebEngineView, terminationStatus: cint, exitCode: cint): void =
  fcQWebEngineView_renderProcessTerminated(self.h, cint(terminationStatus), exitCode)

type QWebEngineViewrenderProcessTerminatedSlot* = proc(terminationStatus: cint, exitCode: cint)
proc miqt_exec_callback_QWebEngineView_renderProcessTerminated(slot: int, terminationStatus: cint, exitCode: cint) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewrenderProcessTerminatedSlot](cast[pointer](slot))
  let slotval1 = cint(terminationStatus)

  let slotval2 = exitCode

  nimfunc[](slotval1, slotval2)

proc onrenderProcessTerminated*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewrenderProcessTerminatedSlot) =
  var tmp = new QWebEngineViewrenderProcessTerminatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_renderProcessTerminated(self.h, cast[int](addr tmp[]))

proc pdfPrintingFinished*(self: gen_qwebengineview_types.QWebEngineView, filePath: string, success: bool): void =
  fcQWebEngineView_pdfPrintingFinished(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), success)

type QWebEngineViewpdfPrintingFinishedSlot* = proc(filePath: string, success: bool)
proc miqt_exec_callback_QWebEngineView_pdfPrintingFinished(slot: int, filePath: struct_miqt_string, success: bool) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewpdfPrintingFinishedSlot](cast[pointer](slot))
  let vfilePath_ms = filePath
  let vfilePathx_ret = string.fromBytes(toOpenArrayByte(vfilePath_ms.data, 0, int(vfilePath_ms.len)-1))
  c_free(vfilePath_ms.data)
  let slotval1 = vfilePathx_ret

  let slotval2 = success

  nimfunc[](slotval1, slotval2)

proc onpdfPrintingFinished*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewpdfPrintingFinishedSlot) =
  var tmp = new QWebEngineViewpdfPrintingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_pdfPrintingFinished(self.h, cast[int](addr tmp[]))

proc printRequested*(self: gen_qwebengineview_types.QWebEngineView, ): void =
  fcQWebEngineView_printRequested(self.h)

type QWebEngineViewprintRequestedSlot* = proc()
proc miqt_exec_callback_QWebEngineView_printRequested(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewprintRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc onprintRequested*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewprintRequestedSlot) =
  var tmp = new QWebEngineViewprintRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_printRequested(self.h, cast[int](addr tmp[]))

proc printFinished*(self: gen_qwebengineview_types.QWebEngineView, success: bool): void =
  fcQWebEngineView_printFinished(self.h, success)

type QWebEngineViewprintFinishedSlot* = proc(success: bool)
proc miqt_exec_callback_QWebEngineView_printFinished(slot: int, success: bool) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineViewprintFinishedSlot](cast[pointer](slot))
  let slotval1 = success

  nimfunc[](slotval1)

proc onprintFinished*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewprintFinishedSlot) =
  var tmp = new QWebEngineViewprintFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_connect_printFinished(self.h, cast[int](addr tmp[]))

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

proc QWebEngineViewsizeHint*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWebEngineView_virtualbase_sizeHint(self.h))

type QWebEngineViewsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewsizeHintProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_sizeHint(self: ptr cQWebEngineView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEngineView_sizeHint ".} =
  var nimfunc = cast[ptr QWebEngineViewsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebEngineViewcreateWindow*(self: gen_qwebengineview_types.QWebEngineView, typeVal: cint): gen_qwebengineview_types.QWebEngineView =
  gen_qwebengineview_types.QWebEngineView(h: fQWebEngineView_virtualbase_createWindow(self.h, cint(typeVal)))

type QWebEngineViewcreateWindowProc* = proc(typeVal: cint): gen_qwebengineview_types.QWebEngineView
proc oncreateWindow*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewcreateWindowProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewcreateWindowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_createWindow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_createWindow(self: ptr cQWebEngineView, slot: int, typeVal: cint): pointer {.exportc: "miqt_exec_callback_QWebEngineView_createWindow ".} =
  var nimfunc = cast[ptr QWebEngineViewcreateWindowProc](cast[pointer](slot))
  let slotval1 = cint(typeVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWebEngineViewcontextMenuEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QContextMenuEvent): void =
  fQWebEngineView_virtualbase_contextMenuEvent(self.h, param1.h)

type QWebEngineViewcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_contextMenuEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_contextMenuEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QWebEngineViewevent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qcoreevent_types.QEvent): bool =
  fQWebEngineView_virtualbase_event(self.h, param1.h)

type QWebEngineVieweventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineVieweventProc) =
  # TODO check subclass
  var tmp = new QWebEngineVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_event(self: ptr cQWebEngineView, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineView_event ".} =
  var nimfunc = cast[ptr QWebEngineVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEngineViewshowEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QShowEvent): void =
  fQWebEngineView_virtualbase_showEvent(self.h, param1.h)

type QWebEngineViewshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewshowEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_showEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_showEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QWebEngineViewhideEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QHideEvent): void =
  fQWebEngineView_virtualbase_hideEvent(self.h, param1.h)

type QWebEngineViewhideEventProc* = proc(param1: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewhideEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_hideEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_hideEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)


  nimfunc[](slotval1)
proc QWebEngineViewcloseEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QCloseEvent): void =
  fQWebEngineView_virtualbase_closeEvent(self.h, param1.h)

type QWebEngineViewcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_closeEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_closeEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QWebEngineViewdragEnterEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDragEnterEvent): void =
  fQWebEngineView_virtualbase_dragEnterEvent(self.h, e.h)

type QWebEngineViewdragEnterEventProc* = proc(e: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_dragEnterEvent(self: ptr cQWebEngineView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_dragEnterEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e)


  nimfunc[](slotval1)
proc QWebEngineViewdragLeaveEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDragLeaveEvent): void =
  fQWebEngineView_virtualbase_dragLeaveEvent(self.h, e.h)

type QWebEngineViewdragLeaveEventProc* = proc(e: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_dragLeaveEvent(self: ptr cQWebEngineView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)


  nimfunc[](slotval1)
proc QWebEngineViewdragMoveEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDragMoveEvent): void =
  fQWebEngineView_virtualbase_dragMoveEvent(self.h, e.h)

type QWebEngineViewdragMoveEventProc* = proc(e: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_dragMoveEvent(self: ptr cQWebEngineView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_dragMoveEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)


  nimfunc[](slotval1)
proc QWebEngineViewdropEvent*(self: gen_qwebengineview_types.QWebEngineView, e: gen_qevent_types.QDropEvent): void =
  fQWebEngineView_virtualbase_dropEvent(self.h, e.h)

type QWebEngineViewdropEventProc* = proc(e: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewdropEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_dropEvent(self: ptr cQWebEngineView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_dropEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: e)


  nimfunc[](slotval1)
proc QWebEngineViewdevType*(self: gen_qwebengineview_types.QWebEngineView, ): cint =
  fQWebEngineView_virtualbase_devType(self.h)

type QWebEngineViewdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewdevTypeProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_devType(self: ptr cQWebEngineView, slot: int): cint {.exportc: "miqt_exec_callback_QWebEngineView_devType ".} =
  var nimfunc = cast[ptr QWebEngineViewdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWebEngineViewsetVisible*(self: gen_qwebengineview_types.QWebEngineView, visible: bool): void =
  fQWebEngineView_virtualbase_setVisible(self.h, visible)

type QWebEngineViewsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewsetVisibleProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_setVisible(self: ptr cQWebEngineView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWebEngineView_setVisible ".} =
  var nimfunc = cast[ptr QWebEngineViewsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QWebEngineViewminimumSizeHint*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWebEngineView_virtualbase_minimumSizeHint(self.h))

type QWebEngineViewminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_minimumSizeHint(self: ptr cQWebEngineView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEngineView_minimumSizeHint ".} =
  var nimfunc = cast[ptr QWebEngineViewminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebEngineViewheightForWidth*(self: gen_qwebengineview_types.QWebEngineView, param1: cint): cint =
  fQWebEngineView_virtualbase_heightForWidth(self.h, param1)

type QWebEngineViewheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewheightForWidthProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_heightForWidth(self: ptr cQWebEngineView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebEngineView_heightForWidth ".} =
  var nimfunc = cast[ptr QWebEngineViewheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEngineViewhasHeightForWidth*(self: gen_qwebengineview_types.QWebEngineView, ): bool =
  fQWebEngineView_virtualbase_hasHeightForWidth(self.h)

type QWebEngineViewhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_hasHeightForWidth(self: ptr cQWebEngineView, slot: int): bool {.exportc: "miqt_exec_callback_QWebEngineView_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QWebEngineViewhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWebEngineViewpaintEngine*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQWebEngineView_virtualbase_paintEngine(self.h))

type QWebEngineViewpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewpaintEngineProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_paintEngine(self: ptr cQWebEngineView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEngineView_paintEngine ".} =
  var nimfunc = cast[ptr QWebEngineViewpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebEngineViewmousePressEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fQWebEngineView_virtualbase_mousePressEvent(self.h, event.h)

type QWebEngineViewmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_mousePressEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_mousePressEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewmouseReleaseEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fQWebEngineView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QWebEngineViewmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_mouseReleaseEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewmouseDoubleClickEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fQWebEngineView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QWebEngineViewmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_mouseDoubleClickEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewmouseMoveEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMouseEvent): void =
  fQWebEngineView_virtualbase_mouseMoveEvent(self.h, event.h)

type QWebEngineViewmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_mouseMoveEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewwheelEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QWheelEvent): void =
  fQWebEngineView_virtualbase_wheelEvent(self.h, event.h)

type QWebEngineViewwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_wheelEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_wheelEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewkeyPressEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QKeyEvent): void =
  fQWebEngineView_virtualbase_keyPressEvent(self.h, event.h)

type QWebEngineViewkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_keyPressEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_keyPressEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewkeyReleaseEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QKeyEvent): void =
  fQWebEngineView_virtualbase_keyReleaseEvent(self.h, event.h)

type QWebEngineViewkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_keyReleaseEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewfocusInEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QFocusEvent): void =
  fQWebEngineView_virtualbase_focusInEvent(self.h, event.h)

type QWebEngineViewfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_focusInEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_focusInEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewfocusOutEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QFocusEvent): void =
  fQWebEngineView_virtualbase_focusOutEvent(self.h, event.h)

type QWebEngineViewfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_focusOutEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_focusOutEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewenterEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QEnterEvent): void =
  fQWebEngineView_virtualbase_enterEvent(self.h, event.h)

type QWebEngineViewenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewenterEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_enterEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_enterEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewleaveEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QEvent): void =
  fQWebEngineView_virtualbase_leaveEvent(self.h, event.h)

type QWebEngineViewleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewleaveEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_leaveEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_leaveEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewpaintEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QPaintEvent): void =
  fQWebEngineView_virtualbase_paintEvent(self.h, event.h)

type QWebEngineViewpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewpaintEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_paintEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_paintEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewmoveEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QMoveEvent): void =
  fQWebEngineView_virtualbase_moveEvent(self.h, event.h)

type QWebEngineViewmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_moveEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_moveEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewresizeEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QResizeEvent): void =
  fQWebEngineView_virtualbase_resizeEvent(self.h, event.h)

type QWebEngineViewresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_resizeEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_resizeEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewtabletEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QTabletEvent): void =
  fQWebEngineView_virtualbase_tabletEvent(self.h, event.h)

type QWebEngineViewtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewtabletEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_tabletEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_tabletEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewactionEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qevent_types.QActionEvent): void =
  fQWebEngineView_virtualbase_actionEvent(self.h, event.h)

type QWebEngineViewactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewactionEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_actionEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_actionEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewnativeEvent*(self: gen_qwebengineview_types.QWebEngineView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQWebEngineView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWebEngineViewnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewnativeEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_nativeEvent(self: ptr cQWebEngineView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QWebEngineView_nativeEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWebEngineViewchangeEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qcoreevent_types.QEvent): void =
  fQWebEngineView_virtualbase_changeEvent(self.h, param1.h)

type QWebEngineViewchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewchangeEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_changeEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_changeEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QWebEngineViewmetric*(self: gen_qwebengineview_types.QWebEngineView, param1: cint): cint =
  fQWebEngineView_virtualbase_metric(self.h, cint(param1))

type QWebEngineViewmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewmetricProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_metric(self: ptr cQWebEngineView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebEngineView_metric ".} =
  var nimfunc = cast[ptr QWebEngineViewmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEngineViewinitPainter*(self: gen_qwebengineview_types.QWebEngineView, painter: gen_qpainter_types.QPainter): void =
  fQWebEngineView_virtualbase_initPainter(self.h, painter.h)

type QWebEngineViewinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewinitPainterProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_initPainter(self: ptr cQWebEngineView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_initPainter ".} =
  var nimfunc = cast[ptr QWebEngineViewinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QWebEngineViewredirected*(self: gen_qwebengineview_types.QWebEngineView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQWebEngineView_virtualbase_redirected(self.h, offset.h))

type QWebEngineViewredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewredirectedProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_redirected(self: ptr cQWebEngineView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWebEngineView_redirected ".} =
  var nimfunc = cast[ptr QWebEngineViewredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWebEngineViewsharedPainter*(self: gen_qwebengineview_types.QWebEngineView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQWebEngineView_virtualbase_sharedPainter(self.h))

type QWebEngineViewsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewsharedPainterProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_sharedPainter(self: ptr cQWebEngineView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEngineView_sharedPainter ".} =
  var nimfunc = cast[ptr QWebEngineViewsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebEngineViewinputMethodEvent*(self: gen_qwebengineview_types.QWebEngineView, param1: gen_qevent_types.QInputMethodEvent): void =
  fQWebEngineView_virtualbase_inputMethodEvent(self.h, param1.h)

type QWebEngineViewinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_inputMethodEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_inputMethodEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QWebEngineViewinputMethodQuery*(self: gen_qwebengineview_types.QWebEngineView, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQWebEngineView_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QWebEngineViewinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_inputMethodQuery(self: ptr cQWebEngineView, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QWebEngineView_inputMethodQuery ".} =
  var nimfunc = cast[ptr QWebEngineViewinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWebEngineViewfocusNextPrevChild*(self: gen_qwebengineview_types.QWebEngineView, next: bool): bool =
  fQWebEngineView_virtualbase_focusNextPrevChild(self.h, next)

type QWebEngineViewfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_focusNextPrevChild(self: ptr cQWebEngineView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWebEngineView_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QWebEngineViewfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEngineVieweventFilter*(self: gen_qwebengineview_types.QWebEngineView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWebEngineView_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebEngineVieweventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QWebEngineVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_eventFilter(self: ptr cQWebEngineView, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineView_eventFilter ".} =
  var nimfunc = cast[ptr QWebEngineVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebEngineViewtimerEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWebEngineView_virtualbase_timerEvent(self.h, event.h)

type QWebEngineViewtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_timerEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_timerEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewchildEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QChildEvent): void =
  fQWebEngineView_virtualbase_childEvent(self.h, event.h)

type QWebEngineViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewchildEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_childEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_childEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewcustomEvent*(self: gen_qwebengineview_types.QWebEngineView, event: gen_qcoreevent_types.QEvent): void =
  fQWebEngineView_virtualbase_customEvent(self.h, event.h)

type QWebEngineViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_customEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_customEvent ".} =
  var nimfunc = cast[ptr QWebEngineViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineViewconnectNotify*(self: gen_qwebengineview_types.QWebEngineView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebEngineView_virtualbase_connectNotify(self.h, signal.h)

type QWebEngineViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_connectNotify(self: ptr cQWebEngineView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_connectNotify ".} =
  var nimfunc = cast[ptr QWebEngineViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebEngineViewdisconnectNotify*(self: gen_qwebengineview_types.QWebEngineView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebEngineView_virtualbase_disconnectNotify(self.h, signal.h)

type QWebEngineViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebengineview_types.QWebEngineView, slot: QWebEngineViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEngineViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_disconnectNotify(self: ptr cQWebEngineView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebEngineViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qwebengineview_types.QWebEngineView) =
  fcQWebEngineView_delete(self.h)
