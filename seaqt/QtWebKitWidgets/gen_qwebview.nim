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

proc fcQWebView_new(parent: pointer): ptr cQWebView {.importc: "QWebView_new".}
proc fcQWebView_new2(): ptr cQWebView {.importc: "QWebView_new2".}
proc fcQWebView_metaObject(self: pointer, ): pointer {.importc: "QWebView_metaObject".}
proc fcQWebView_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebView_metacast".}
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
proc fcQWebView_connect_loadStarted(self: pointer, slot: int) {.importc: "QWebView_connect_loadStarted".}
proc fcQWebView_loadProgress(self: pointer, progress: cint): void {.importc: "QWebView_loadProgress".}
proc fcQWebView_connect_loadProgress(self: pointer, slot: int) {.importc: "QWebView_connect_loadProgress".}
proc fcQWebView_loadFinished(self: pointer, param1: bool): void {.importc: "QWebView_loadFinished".}
proc fcQWebView_connect_loadFinished(self: pointer, slot: int) {.importc: "QWebView_connect_loadFinished".}
proc fcQWebView_titleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWebView_titleChanged".}
proc fcQWebView_connect_titleChanged(self: pointer, slot: int) {.importc: "QWebView_connect_titleChanged".}
proc fcQWebView_statusBarMessage(self: pointer, text: struct_miqt_string): void {.importc: "QWebView_statusBarMessage".}
proc fcQWebView_connect_statusBarMessage(self: pointer, slot: int) {.importc: "QWebView_connect_statusBarMessage".}
proc fcQWebView_linkClicked(self: pointer, param1: pointer): void {.importc: "QWebView_linkClicked".}
proc fcQWebView_connect_linkClicked(self: pointer, slot: int) {.importc: "QWebView_connect_linkClicked".}
proc fcQWebView_selectionChanged(self: pointer, ): void {.importc: "QWebView_selectionChanged".}
proc fcQWebView_connect_selectionChanged(self: pointer, slot: int) {.importc: "QWebView_connect_selectionChanged".}
proc fcQWebView_iconChanged(self: pointer, ): void {.importc: "QWebView_iconChanged".}
proc fcQWebView_connect_iconChanged(self: pointer, slot: int) {.importc: "QWebView_connect_iconChanged".}
proc fcQWebView_urlChanged(self: pointer, param1: pointer): void {.importc: "QWebView_urlChanged".}
proc fcQWebView_connect_urlChanged(self: pointer, slot: int) {.importc: "QWebView_connect_urlChanged".}
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
proc fQWebView_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer{.importc: "QWebView_virtualbase_inputMethodQuery".}
proc fcQWebView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWebView_override_virtual_inputMethodQuery".}
proc fQWebView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWebView_virtualbase_sizeHint".}
proc fcQWebView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWebView_override_virtual_sizeHint".}
proc fQWebView_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWebView_virtualbase_event".}
proc fcQWebView_override_virtual_event(self: pointer, slot: int) {.importc: "QWebView_override_virtual_event".}
proc fQWebView_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_resizeEvent".}
proc fcQWebView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_resizeEvent".}
proc fQWebView_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_paintEvent".}
proc fcQWebView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_paintEvent".}
proc fQWebView_virtualbase_createWindow(self: pointer, typeVal: cint): pointer{.importc: "QWebView_virtualbase_createWindow".}
proc fcQWebView_override_virtual_createWindow(self: pointer, slot: int) {.importc: "QWebView_override_virtual_createWindow".}
proc fQWebView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_changeEvent".}
proc fcQWebView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_changeEvent".}
proc fQWebView_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_mouseMoveEvent".}
proc fcQWebView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_mouseMoveEvent".}
proc fQWebView_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_mousePressEvent".}
proc fcQWebView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_mousePressEvent".}
proc fQWebView_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_mouseDoubleClickEvent".}
proc fcQWebView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_mouseDoubleClickEvent".}
proc fQWebView_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_mouseReleaseEvent".}
proc fcQWebView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_mouseReleaseEvent".}
proc fQWebView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_contextMenuEvent".}
proc fcQWebView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_contextMenuEvent".}
proc fQWebView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_wheelEvent".}
proc fcQWebView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_wheelEvent".}
proc fQWebView_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_keyPressEvent".}
proc fcQWebView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_keyPressEvent".}
proc fQWebView_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_keyReleaseEvent".}
proc fcQWebView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_keyReleaseEvent".}
proc fQWebView_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_dragEnterEvent".}
proc fcQWebView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_dragEnterEvent".}
proc fQWebView_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_dragLeaveEvent".}
proc fcQWebView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_dragLeaveEvent".}
proc fQWebView_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_dragMoveEvent".}
proc fcQWebView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_dragMoveEvent".}
proc fQWebView_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_dropEvent".}
proc fcQWebView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_dropEvent".}
proc fQWebView_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_focusInEvent".}
proc fcQWebView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_focusInEvent".}
proc fQWebView_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_focusOutEvent".}
proc fcQWebView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_focusOutEvent".}
proc fQWebView_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_inputMethodEvent".}
proc fcQWebView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_inputMethodEvent".}
proc fQWebView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWebView_virtualbase_focusNextPrevChild".}
proc fcQWebView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWebView_override_virtual_focusNextPrevChild".}
proc fQWebView_virtualbase_devType(self: pointer, ): cint{.importc: "QWebView_virtualbase_devType".}
proc fcQWebView_override_virtual_devType(self: pointer, slot: int) {.importc: "QWebView_override_virtual_devType".}
proc fQWebView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWebView_virtualbase_setVisible".}
proc fcQWebView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWebView_override_virtual_setVisible".}
proc fQWebView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWebView_virtualbase_minimumSizeHint".}
proc fcQWebView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWebView_override_virtual_minimumSizeHint".}
proc fQWebView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWebView_virtualbase_heightForWidth".}
proc fcQWebView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWebView_override_virtual_heightForWidth".}
proc fQWebView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWebView_virtualbase_hasHeightForWidth".}
proc fcQWebView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWebView_override_virtual_hasHeightForWidth".}
proc fQWebView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWebView_virtualbase_paintEngine".}
proc fcQWebView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWebView_override_virtual_paintEngine".}
proc fQWebView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_enterEvent".}
proc fcQWebView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_enterEvent".}
proc fQWebView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_leaveEvent".}
proc fcQWebView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_leaveEvent".}
proc fQWebView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_moveEvent".}
proc fcQWebView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_moveEvent".}
proc fQWebView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_closeEvent".}
proc fcQWebView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_closeEvent".}
proc fQWebView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_tabletEvent".}
proc fcQWebView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_tabletEvent".}
proc fQWebView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_actionEvent".}
proc fcQWebView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_actionEvent".}
proc fQWebView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_showEvent".}
proc fcQWebView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_showEvent".}
proc fQWebView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_hideEvent".}
proc fcQWebView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_hideEvent".}
proc fQWebView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QWebView_virtualbase_nativeEvent".}
proc fcQWebView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_nativeEvent".}
proc fQWebView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWebView_virtualbase_metric".}
proc fcQWebView_override_virtual_metric(self: pointer, slot: int) {.importc: "QWebView_override_virtual_metric".}
proc fQWebView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWebView_virtualbase_initPainter".}
proc fcQWebView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWebView_override_virtual_initPainter".}
proc fQWebView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWebView_virtualbase_redirected".}
proc fcQWebView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWebView_override_virtual_redirected".}
proc fQWebView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWebView_virtualbase_sharedPainter".}
proc fcQWebView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWebView_override_virtual_sharedPainter".}
proc fQWebView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebView_virtualbase_eventFilter".}
proc fcQWebView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebView_override_virtual_eventFilter".}
proc fQWebView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_timerEvent".}
proc fcQWebView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_timerEvent".}
proc fQWebView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_childEvent".}
proc fcQWebView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_childEvent".}
proc fQWebView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_customEvent".}
proc fcQWebView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_customEvent".}
proc fQWebView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebView_virtualbase_connectNotify".}
proc fcQWebView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebView_override_virtual_connectNotify".}
proc fQWebView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebView_virtualbase_disconnectNotify".}
proc fcQWebView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebView_override_virtual_disconnectNotify".}
proc fcQWebView_delete(self: pointer) {.importc: "QWebView_delete".}


func init*(T: type gen_qwebview_types.QWebView, h: ptr cQWebView): gen_qwebview_types.QWebView =
  T(h: h)
proc create*(T: type gen_qwebview_types.QWebView, parent: gen_qwidget_types.QWidget): gen_qwebview_types.QWebView =
  gen_qwebview_types.QWebView.init(fcQWebView_new(parent.h))

proc create*(T: type gen_qwebview_types.QWebView, ): gen_qwebview_types.QWebView =
  gen_qwebview_types.QWebView.init(fcQWebView_new2())

proc metaObject*(self: gen_qwebview_types.QWebView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebView_metaObject(self.h))

proc metacast*(self: gen_qwebview_types.QWebView, param1: cstring): pointer =
  fcQWebView_metacast(self.h, param1)

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
proc miqt_exec_callback_QWebView_loadStarted(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebViewloadStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc onloadStarted*(self: gen_qwebview_types.QWebView, slot: QWebViewloadStartedSlot) =
  var tmp = new QWebViewloadStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_loadStarted(self.h, cast[int](addr tmp[]))

proc loadProgress*(self: gen_qwebview_types.QWebView, progress: cint): void =
  fcQWebView_loadProgress(self.h, progress)

type QWebViewloadProgressSlot* = proc(progress: cint)
proc miqt_exec_callback_QWebView_loadProgress(slot: int, progress: cint) {.exportc.} =
  let nimfunc = cast[ptr QWebViewloadProgressSlot](cast[pointer](slot))
  let slotval1 = progress

  nimfunc[](slotval1)

proc onloadProgress*(self: gen_qwebview_types.QWebView, slot: QWebViewloadProgressSlot) =
  var tmp = new QWebViewloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_loadProgress(self.h, cast[int](addr tmp[]))

proc loadFinished*(self: gen_qwebview_types.QWebView, param1: bool): void =
  fcQWebView_loadFinished(self.h, param1)

type QWebViewloadFinishedSlot* = proc(param1: bool)
proc miqt_exec_callback_QWebView_loadFinished(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QWebViewloadFinishedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onloadFinished*(self: gen_qwebview_types.QWebView, slot: QWebViewloadFinishedSlot) =
  var tmp = new QWebViewloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_loadFinished(self.h, cast[int](addr tmp[]))

proc titleChanged*(self: gen_qwebview_types.QWebView, title: string): void =
  fcQWebView_titleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

type QWebViewtitleChangedSlot* = proc(title: string)
proc miqt_exec_callback_QWebView_titleChanged(slot: int, title: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QWebViewtitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc ontitleChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewtitleChangedSlot) =
  var tmp = new QWebViewtitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_titleChanged(self.h, cast[int](addr tmp[]))

proc statusBarMessage*(self: gen_qwebview_types.QWebView, text: string): void =
  fcQWebView_statusBarMessage(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QWebViewstatusBarMessageSlot* = proc(text: string)
proc miqt_exec_callback_QWebView_statusBarMessage(slot: int, text: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QWebViewstatusBarMessageSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc onstatusBarMessage*(self: gen_qwebview_types.QWebView, slot: QWebViewstatusBarMessageSlot) =
  var tmp = new QWebViewstatusBarMessageSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_statusBarMessage(self.h, cast[int](addr tmp[]))

proc linkClicked*(self: gen_qwebview_types.QWebView, param1: gen_qurl_types.QUrl): void =
  fcQWebView_linkClicked(self.h, param1.h)

type QWebViewlinkClickedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_QWebView_linkClicked(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWebViewlinkClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc onlinkClicked*(self: gen_qwebview_types.QWebView, slot: QWebViewlinkClickedSlot) =
  var tmp = new QWebViewlinkClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_linkClicked(self.h, cast[int](addr tmp[]))

proc selectionChanged*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_selectionChanged(self.h)

type QWebViewselectionChangedSlot* = proc()
proc miqt_exec_callback_QWebView_selectionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebViewselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onselectionChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewselectionChangedSlot) =
  var tmp = new QWebViewselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_selectionChanged(self.h, cast[int](addr tmp[]))

proc iconChanged*(self: gen_qwebview_types.QWebView, ): void =
  fcQWebView_iconChanged(self.h)

type QWebViewiconChangedSlot* = proc()
proc miqt_exec_callback_QWebView_iconChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebViewiconChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oniconChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewiconChangedSlot) =
  var tmp = new QWebViewiconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_iconChanged(self.h, cast[int](addr tmp[]))

proc urlChanged*(self: gen_qwebview_types.QWebView, param1: gen_qurl_types.QUrl): void =
  fcQWebView_urlChanged(self.h, param1.h)

type QWebViewurlChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_QWebView_urlChanged(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWebViewurlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc onurlChanged*(self: gen_qwebview_types.QWebView, slot: QWebViewurlChangedSlot) =
  var tmp = new QWebViewurlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_connect_urlChanged(self.h, cast[int](addr tmp[]))

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

proc QWebViewinputMethodQuery*(self: gen_qwebview_types.QWebView, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQWebView_virtualbase_inputMethodQuery(self.h, cint(property)))

type QWebViewinputMethodQueryProc* = proc(property: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qwebview_types.QWebView, slot: QWebViewinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QWebViewinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_inputMethodQuery(self: ptr cQWebView, slot: int, property: cint): pointer {.exportc: "miqt_exec_callback_QWebView_inputMethodQuery ".} =
  var nimfunc = cast[ptr QWebViewinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(property)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWebViewsizeHint*(self: gen_qwebview_types.QWebView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWebView_virtualbase_sizeHint(self.h))

type QWebViewsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qwebview_types.QWebView, slot: QWebViewsizeHintProc) =
  # TODO check subclass
  var tmp = new QWebViewsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_sizeHint(self: ptr cQWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebView_sizeHint ".} =
  var nimfunc = cast[ptr QWebViewsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebViewevent*(self: gen_qwebview_types.QWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fQWebView_virtualbase_event(self.h, param1.h)

type QWebVieweventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwebview_types.QWebView, slot: QWebVieweventProc) =
  # TODO check subclass
  var tmp = new QWebVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_event(self: ptr cQWebView, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWebView_event ".} =
  var nimfunc = cast[ptr QWebVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebViewresizeEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QResizeEvent): void =
  fQWebView_virtualbase_resizeEvent(self.h, param1.h)

type QWebViewresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QWebViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_resizeEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_resizeEvent ".} =
  var nimfunc = cast[ptr QWebViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewpaintEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QPaintEvent): void =
  fQWebView_virtualbase_paintEvent(self.h, param1.h)

type QWebViewpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewpaintEventProc) =
  # TODO check subclass
  var tmp = new QWebViewpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_paintEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_paintEvent ".} =
  var nimfunc = cast[ptr QWebViewpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewcreateWindow*(self: gen_qwebview_types.QWebView, typeVal: cint): gen_qwebview_types.QWebView =
  gen_qwebview_types.QWebView(h: fQWebView_virtualbase_createWindow(self.h, cint(typeVal)))

type QWebViewcreateWindowProc* = proc(typeVal: cint): gen_qwebview_types.QWebView
proc oncreateWindow*(self: gen_qwebview_types.QWebView, slot: QWebViewcreateWindowProc) =
  # TODO check subclass
  var tmp = new QWebViewcreateWindowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_createWindow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_createWindow(self: ptr cQWebView, slot: int, typeVal: cint): pointer {.exportc: "miqt_exec_callback_QWebView_createWindow ".} =
  var nimfunc = cast[ptr QWebViewcreateWindowProc](cast[pointer](slot))
  let slotval1 = cint(typeVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWebViewchangeEvent*(self: gen_qwebview_types.QWebView, param1: gen_qcoreevent_types.QEvent): void =
  fQWebView_virtualbase_changeEvent(self.h, param1.h)

type QWebViewchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewchangeEventProc) =
  # TODO check subclass
  var tmp = new QWebViewchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_changeEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_changeEvent ".} =
  var nimfunc = cast[ptr QWebViewchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewmouseMoveEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fQWebView_virtualbase_mouseMoveEvent(self.h, param1.h)

type QWebViewmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QWebViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_mouseMoveEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QWebViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewmousePressEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fQWebView_virtualbase_mousePressEvent(self.h, param1.h)

type QWebViewmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QWebViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_mousePressEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_mousePressEvent ".} =
  var nimfunc = cast[ptr QWebViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewmouseDoubleClickEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fQWebView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QWebViewmouseDoubleClickEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QWebViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_mouseDoubleClickEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QWebViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewmouseReleaseEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QMouseEvent): void =
  fQWebView_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QWebViewmouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWebViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_mouseReleaseEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QWebViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewcontextMenuEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QContextMenuEvent): void =
  fQWebView_virtualbase_contextMenuEvent(self.h, param1.h)

type QWebViewcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QWebViewcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_contextMenuEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_contextMenuEvent ".} =
  var nimfunc = cast[ptr QWebViewcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewwheelEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QWheelEvent): void =
  fQWebView_virtualbase_wheelEvent(self.h, param1.h)

type QWebViewwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QWebViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_wheelEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_wheelEvent ".} =
  var nimfunc = cast[ptr QWebViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewkeyPressEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QKeyEvent): void =
  fQWebView_virtualbase_keyPressEvent(self.h, param1.h)

type QWebViewkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QWebViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_keyPressEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_keyPressEvent ".} =
  var nimfunc = cast[ptr QWebViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewkeyReleaseEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QKeyEvent): void =
  fQWebView_virtualbase_keyReleaseEvent(self.h, param1.h)

type QWebViewkeyReleaseEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWebViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_keyReleaseEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QWebViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewdragEnterEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDragEnterEvent): void =
  fQWebView_virtualbase_dragEnterEvent(self.h, param1.h)

type QWebViewdragEnterEventProc* = proc(param1: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QWebViewdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_dragEnterEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_dragEnterEvent ".} =
  var nimfunc = cast[ptr QWebViewdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewdragLeaveEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDragLeaveEvent): void =
  fQWebView_virtualbase_dragLeaveEvent(self.h, param1.h)

type QWebViewdragLeaveEventProc* = proc(param1: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QWebViewdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_dragLeaveEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QWebViewdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewdragMoveEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDragMoveEvent): void =
  fQWebView_virtualbase_dragMoveEvent(self.h, param1.h)

type QWebViewdragMoveEventProc* = proc(param1: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QWebViewdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_dragMoveEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_dragMoveEvent ".} =
  var nimfunc = cast[ptr QWebViewdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewdropEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QDropEvent): void =
  fQWebView_virtualbase_dropEvent(self.h, param1.h)

type QWebViewdropEventProc* = proc(param1: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewdropEventProc) =
  # TODO check subclass
  var tmp = new QWebViewdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_dropEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_dropEvent ".} =
  var nimfunc = cast[ptr QWebViewdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewfocusInEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QFocusEvent): void =
  fQWebView_virtualbase_focusInEvent(self.h, param1.h)

type QWebViewfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QWebViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_focusInEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_focusInEvent ".} =
  var nimfunc = cast[ptr QWebViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewfocusOutEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QFocusEvent): void =
  fQWebView_virtualbase_focusOutEvent(self.h, param1.h)

type QWebViewfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QWebViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_focusOutEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_focusOutEvent ".} =
  var nimfunc = cast[ptr QWebViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewinputMethodEvent*(self: gen_qwebview_types.QWebView, param1: gen_qevent_types.QInputMethodEvent): void =
  fQWebView_virtualbase_inputMethodEvent(self.h, param1.h)

type QWebViewinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QWebViewinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_inputMethodEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_inputMethodEvent ".} =
  var nimfunc = cast[ptr QWebViewinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QWebViewfocusNextPrevChild*(self: gen_qwebview_types.QWebView, next: bool): bool =
  fQWebView_virtualbase_focusNextPrevChild(self.h, next)

type QWebViewfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qwebview_types.QWebView, slot: QWebViewfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QWebViewfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_focusNextPrevChild(self: ptr cQWebView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWebView_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QWebViewfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebViewdevType*(self: gen_qwebview_types.QWebView, ): cint =
  fQWebView_virtualbase_devType(self.h)

type QWebViewdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qwebview_types.QWebView, slot: QWebViewdevTypeProc) =
  # TODO check subclass
  var tmp = new QWebViewdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_devType(self: ptr cQWebView, slot: int): cint {.exportc: "miqt_exec_callback_QWebView_devType ".} =
  var nimfunc = cast[ptr QWebViewdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWebViewsetVisible*(self: gen_qwebview_types.QWebView, visible: bool): void =
  fQWebView_virtualbase_setVisible(self.h, visible)

type QWebViewsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qwebview_types.QWebView, slot: QWebViewsetVisibleProc) =
  # TODO check subclass
  var tmp = new QWebViewsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_setVisible(self: ptr cQWebView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWebView_setVisible ".} =
  var nimfunc = cast[ptr QWebViewsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QWebViewminimumSizeHint*(self: gen_qwebview_types.QWebView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWebView_virtualbase_minimumSizeHint(self.h))

type QWebViewminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qwebview_types.QWebView, slot: QWebViewminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QWebViewminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_minimumSizeHint(self: ptr cQWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebView_minimumSizeHint ".} =
  var nimfunc = cast[ptr QWebViewminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebViewheightForWidth*(self: gen_qwebview_types.QWebView, param1: cint): cint =
  fQWebView_virtualbase_heightForWidth(self.h, param1)

type QWebViewheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qwebview_types.QWebView, slot: QWebViewheightForWidthProc) =
  # TODO check subclass
  var tmp = new QWebViewheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_heightForWidth(self: ptr cQWebView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebView_heightForWidth ".} =
  var nimfunc = cast[ptr QWebViewheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebViewhasHeightForWidth*(self: gen_qwebview_types.QWebView, ): bool =
  fQWebView_virtualbase_hasHeightForWidth(self.h)

type QWebViewhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qwebview_types.QWebView, slot: QWebViewhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QWebViewhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_hasHeightForWidth(self: ptr cQWebView, slot: int): bool {.exportc: "miqt_exec_callback_QWebView_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QWebViewhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWebViewpaintEngine*(self: gen_qwebview_types.QWebView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQWebView_virtualbase_paintEngine(self.h))

type QWebViewpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qwebview_types.QWebView, slot: QWebViewpaintEngineProc) =
  # TODO check subclass
  var tmp = new QWebViewpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_paintEngine(self: ptr cQWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebView_paintEngine ".} =
  var nimfunc = cast[ptr QWebViewpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebViewenterEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QEvent): void =
  fQWebView_virtualbase_enterEvent(self.h, event.h)

type QWebViewenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewenterEventProc) =
  # TODO check subclass
  var tmp = new QWebViewenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_enterEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_enterEvent ".} =
  var nimfunc = cast[ptr QWebViewenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebViewleaveEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QEvent): void =
  fQWebView_virtualbase_leaveEvent(self.h, event.h)

type QWebViewleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewleaveEventProc) =
  # TODO check subclass
  var tmp = new QWebViewleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_leaveEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_leaveEvent ".} =
  var nimfunc = cast[ptr QWebViewleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebViewmoveEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QMoveEvent): void =
  fQWebView_virtualbase_moveEvent(self.h, event.h)

type QWebViewmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QWebViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_moveEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_moveEvent ".} =
  var nimfunc = cast[ptr QWebViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QWebViewcloseEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QCloseEvent): void =
  fQWebView_virtualbase_closeEvent(self.h, event.h)

type QWebViewcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QWebViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_closeEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_closeEvent ".} =
  var nimfunc = cast[ptr QWebViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QWebViewtabletEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QTabletEvent): void =
  fQWebView_virtualbase_tabletEvent(self.h, event.h)

type QWebViewtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewtabletEventProc) =
  # TODO check subclass
  var tmp = new QWebViewtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_tabletEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_tabletEvent ".} =
  var nimfunc = cast[ptr QWebViewtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QWebViewactionEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QActionEvent): void =
  fQWebView_virtualbase_actionEvent(self.h, event.h)

type QWebViewactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewactionEventProc) =
  # TODO check subclass
  var tmp = new QWebViewactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_actionEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_actionEvent ".} =
  var nimfunc = cast[ptr QWebViewactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QWebViewshowEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QShowEvent): void =
  fQWebView_virtualbase_showEvent(self.h, event.h)

type QWebViewshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewshowEventProc) =
  # TODO check subclass
  var tmp = new QWebViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_showEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_showEvent ".} =
  var nimfunc = cast[ptr QWebViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QWebViewhideEvent*(self: gen_qwebview_types.QWebView, event: gen_qevent_types.QHideEvent): void =
  fQWebView_virtualbase_hideEvent(self.h, event.h)

type QWebViewhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewhideEventProc) =
  # TODO check subclass
  var tmp = new QWebViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_hideEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_hideEvent ".} =
  var nimfunc = cast[ptr QWebViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QWebViewnativeEvent*(self: gen_qwebview_types.QWebView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQWebView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWebViewnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewnativeEventProc) =
  # TODO check subclass
  var tmp = new QWebViewnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_nativeEvent(self: ptr cQWebView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QWebView_nativeEvent ".} =
  var nimfunc = cast[ptr QWebViewnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWebViewmetric*(self: gen_qwebview_types.QWebView, param1: cint): cint =
  fQWebView_virtualbase_metric(self.h, cint(param1))

type QWebViewmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qwebview_types.QWebView, slot: QWebViewmetricProc) =
  # TODO check subclass
  var tmp = new QWebViewmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_metric(self: ptr cQWebView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebView_metric ".} =
  var nimfunc = cast[ptr QWebViewmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebViewinitPainter*(self: gen_qwebview_types.QWebView, painter: gen_qpainter_types.QPainter): void =
  fQWebView_virtualbase_initPainter(self.h, painter.h)

type QWebViewinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qwebview_types.QWebView, slot: QWebViewinitPainterProc) =
  # TODO check subclass
  var tmp = new QWebViewinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_initPainter(self: ptr cQWebView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWebView_initPainter ".} =
  var nimfunc = cast[ptr QWebViewinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QWebViewredirected*(self: gen_qwebview_types.QWebView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQWebView_virtualbase_redirected(self.h, offset.h))

type QWebViewredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qwebview_types.QWebView, slot: QWebViewredirectedProc) =
  # TODO check subclass
  var tmp = new QWebViewredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_redirected(self: ptr cQWebView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWebView_redirected ".} =
  var nimfunc = cast[ptr QWebViewredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWebViewsharedPainter*(self: gen_qwebview_types.QWebView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQWebView_virtualbase_sharedPainter(self.h))

type QWebViewsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qwebview_types.QWebView, slot: QWebViewsharedPainterProc) =
  # TODO check subclass
  var tmp = new QWebViewsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_sharedPainter(self: ptr cQWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebView_sharedPainter ".} =
  var nimfunc = cast[ptr QWebViewsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebVieweventFilter*(self: gen_qwebview_types.QWebView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWebView_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebVieweventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwebview_types.QWebView, slot: QWebVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QWebVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_eventFilter(self: ptr cQWebView, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebView_eventFilter ".} =
  var nimfunc = cast[ptr QWebVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebViewtimerEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWebView_virtualbase_timerEvent(self.h, event.h)

type QWebViewtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QWebViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_timerEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_timerEvent ".} =
  var nimfunc = cast[ptr QWebViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebViewchildEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QChildEvent): void =
  fQWebView_virtualbase_childEvent(self.h, event.h)

type QWebViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewchildEventProc) =
  # TODO check subclass
  var tmp = new QWebViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_childEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_childEvent ".} =
  var nimfunc = cast[ptr QWebViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebViewcustomEvent*(self: gen_qwebview_types.QWebView, event: gen_qcoreevent_types.QEvent): void =
  fQWebView_virtualbase_customEvent(self.h, event.h)

type QWebViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwebview_types.QWebView, slot: QWebViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QWebViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_customEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_customEvent ".} =
  var nimfunc = cast[ptr QWebViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebViewconnectNotify*(self: gen_qwebview_types.QWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebView_virtualbase_connectNotify(self.h, signal.h)

type QWebViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebview_types.QWebView, slot: QWebViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_connectNotify(self: ptr cQWebView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebView_connectNotify ".} =
  var nimfunc = cast[ptr QWebViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebViewdisconnectNotify*(self: gen_qwebview_types.QWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebView_virtualbase_disconnectNotify(self.h, signal.h)

type QWebViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebview_types.QWebView, slot: QWebViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_disconnectNotify(self: ptr cQWebView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebView_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qwebview_types.QWebView) =
  fcQWebView_delete(self.h)
