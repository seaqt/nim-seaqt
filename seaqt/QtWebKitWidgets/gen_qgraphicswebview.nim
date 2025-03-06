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

proc fcQGraphicsWebView_new(): ptr cQGraphicsWebView {.importc: "QGraphicsWebView_new".}
proc fcQGraphicsWebView_new2(parent: pointer): ptr cQGraphicsWebView {.importc: "QGraphicsWebView_new2".}
proc fcQGraphicsWebView_metaObject(self: pointer, ): pointer {.importc: "QGraphicsWebView_metaObject".}
proc fcQGraphicsWebView_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWebView_metacast".}
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
proc fQGraphicsWebView_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsWebView_virtualbase_setGeometry".}
proc fcQGraphicsWebView_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_setGeometry".}
proc fQGraphicsWebView_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsWebView_virtualbase_updateGeometry".}
proc fcQGraphicsWebView_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_updateGeometry".}
proc fQGraphicsWebView_virtualbase_paint(self: pointer, param1: pointer, options: pointer, widget: pointer): void{.importc: "QGraphicsWebView_virtualbase_paint".}
proc fcQGraphicsWebView_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_paint".}
proc fQGraphicsWebView_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsWebView_virtualbase_itemChange".}
proc fcQGraphicsWebView_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_itemChange".}
proc fQGraphicsWebView_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QGraphicsWebView_virtualbase_event".}
proc fcQGraphicsWebView_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_event".}
proc fQGraphicsWebView_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsWebView_virtualbase_sizeHint".}
proc fcQGraphicsWebView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_sizeHint".}
proc fQGraphicsWebView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsWebView_virtualbase_inputMethodQuery".}
proc fcQGraphicsWebView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_inputMethodQuery".}
proc fQGraphicsWebView_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_mousePressEvent".}
proc fcQGraphicsWebView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_mousePressEvent".}
proc fQGraphicsWebView_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsWebView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsWebView_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsWebView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_mouseReleaseEvent".}
proc fQGraphicsWebView_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_mouseMoveEvent".}
proc fcQGraphicsWebView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_mouseMoveEvent".}
proc fQGraphicsWebView_virtualbase_hoverMoveEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_hoverMoveEvent".}
proc fcQGraphicsWebView_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_hoverMoveEvent".}
proc fQGraphicsWebView_virtualbase_hoverLeaveEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsWebView_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_hoverLeaveEvent".}
proc fQGraphicsWebView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_wheelEvent".}
proc fcQGraphicsWebView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_wheelEvent".}
proc fQGraphicsWebView_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_keyPressEvent".}
proc fcQGraphicsWebView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_keyPressEvent".}
proc fQGraphicsWebView_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_keyReleaseEvent".}
proc fcQGraphicsWebView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_keyReleaseEvent".}
proc fQGraphicsWebView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_contextMenuEvent".}
proc fcQGraphicsWebView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_contextMenuEvent".}
proc fQGraphicsWebView_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_dragEnterEvent".}
proc fcQGraphicsWebView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_dragEnterEvent".}
proc fQGraphicsWebView_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_dragLeaveEvent".}
proc fcQGraphicsWebView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_dragLeaveEvent".}
proc fQGraphicsWebView_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_dragMoveEvent".}
proc fcQGraphicsWebView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_dragMoveEvent".}
proc fQGraphicsWebView_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_dropEvent".}
proc fcQGraphicsWebView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_dropEvent".}
proc fQGraphicsWebView_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_focusInEvent".}
proc fcQGraphicsWebView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_focusInEvent".}
proc fQGraphicsWebView_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_focusOutEvent".}
proc fcQGraphicsWebView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_focusOutEvent".}
proc fQGraphicsWebView_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_inputMethodEvent".}
proc fcQGraphicsWebView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_inputMethodEvent".}
proc fQGraphicsWebView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QGraphicsWebView_virtualbase_focusNextPrevChild".}
proc fcQGraphicsWebView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_focusNextPrevChild".}
proc fQGraphicsWebView_virtualbase_sceneEvent(self: pointer, param1: pointer): bool{.importc: "QGraphicsWebView_virtualbase_sceneEvent".}
proc fcQGraphicsWebView_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_sceneEvent".}
proc fQGraphicsWebView_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsWebView_virtualbase_getContentsMargins".}
proc fcQGraphicsWebView_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_getContentsMargins".}
proc fQGraphicsWebView_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsWebView_virtualbase_type".}
proc fcQGraphicsWebView_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_type".}
proc fQGraphicsWebView_virtualbase_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsWebView_virtualbase_paintWindowFrame".}
proc fcQGraphicsWebView_override_virtual_paintWindowFrame(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_paintWindowFrame".}
proc fQGraphicsWebView_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsWebView_virtualbase_boundingRect".}
proc fcQGraphicsWebView_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_boundingRect".}
proc fQGraphicsWebView_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsWebView_virtualbase_shape".}
proc fcQGraphicsWebView_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_shape".}
proc fQGraphicsWebView_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QGraphicsWebView_virtualbase_initStyleOption".}
proc fcQGraphicsWebView_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_initStyleOption".}
proc fQGraphicsWebView_virtualbase_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer{.importc: "QGraphicsWebView_virtualbase_propertyChange".}
proc fcQGraphicsWebView_override_virtual_propertyChange(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_propertyChange".}
proc fQGraphicsWebView_virtualbase_windowFrameEvent(self: pointer, e: pointer): bool{.importc: "QGraphicsWebView_virtualbase_windowFrameEvent".}
proc fcQGraphicsWebView_override_virtual_windowFrameEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_windowFrameEvent".}
proc fQGraphicsWebView_virtualbase_windowFrameSectionAt(self: pointer, pos: pointer): cint{.importc: "QGraphicsWebView_virtualbase_windowFrameSectionAt".}
proc fcQGraphicsWebView_override_virtual_windowFrameSectionAt(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_windowFrameSectionAt".}
proc fQGraphicsWebView_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_changeEvent".}
proc fcQGraphicsWebView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_changeEvent".}
proc fQGraphicsWebView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_closeEvent".}
proc fcQGraphicsWebView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_closeEvent".}
proc fQGraphicsWebView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_hideEvent".}
proc fcQGraphicsWebView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_hideEvent".}
proc fQGraphicsWebView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_moveEvent".}
proc fcQGraphicsWebView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_moveEvent".}
proc fQGraphicsWebView_virtualbase_polishEvent(self: pointer, ): void{.importc: "QGraphicsWebView_virtualbase_polishEvent".}
proc fcQGraphicsWebView_override_virtual_polishEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_polishEvent".}
proc fQGraphicsWebView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_resizeEvent".}
proc fcQGraphicsWebView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_resizeEvent".}
proc fQGraphicsWebView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_showEvent".}
proc fcQGraphicsWebView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_showEvent".}
proc fQGraphicsWebView_virtualbase_grabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_grabMouseEvent".}
proc fcQGraphicsWebView_override_virtual_grabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_grabMouseEvent".}
proc fQGraphicsWebView_virtualbase_ungrabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_ungrabMouseEvent".}
proc fcQGraphicsWebView_override_virtual_ungrabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_ungrabMouseEvent".}
proc fQGraphicsWebView_virtualbase_grabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_grabKeyboardEvent".}
proc fcQGraphicsWebView_override_virtual_grabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_grabKeyboardEvent".}
proc fQGraphicsWebView_virtualbase_ungrabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_ungrabKeyboardEvent".}
proc fcQGraphicsWebView_override_virtual_ungrabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_ungrabKeyboardEvent".}
proc fQGraphicsWebView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsWebView_virtualbase_eventFilter".}
proc fcQGraphicsWebView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_eventFilter".}
proc fQGraphicsWebView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_timerEvent".}
proc fcQGraphicsWebView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_timerEvent".}
proc fQGraphicsWebView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_childEvent".}
proc fcQGraphicsWebView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_childEvent".}
proc fQGraphicsWebView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_customEvent".}
proc fcQGraphicsWebView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_customEvent".}
proc fQGraphicsWebView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsWebView_virtualbase_connectNotify".}
proc fcQGraphicsWebView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_connectNotify".}
proc fQGraphicsWebView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsWebView_virtualbase_disconnectNotify".}
proc fcQGraphicsWebView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_disconnectNotify".}
proc fQGraphicsWebView_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsWebView_virtualbase_advance".}
proc fcQGraphicsWebView_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_advance".}
proc fQGraphicsWebView_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsWebView_virtualbase_contains".}
proc fcQGraphicsWebView_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_contains".}
proc fQGraphicsWebView_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsWebView_virtualbase_collidesWithItem".}
proc fcQGraphicsWebView_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_collidesWithItem".}
proc fQGraphicsWebView_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsWebView_virtualbase_collidesWithPath".}
proc fcQGraphicsWebView_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_collidesWithPath".}
proc fQGraphicsWebView_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsWebView_virtualbase_isObscuredBy".}
proc fcQGraphicsWebView_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_isObscuredBy".}
proc fQGraphicsWebView_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsWebView_virtualbase_opaqueArea".}
proc fcQGraphicsWebView_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_opaqueArea".}
proc fQGraphicsWebView_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsWebView_virtualbase_sceneEventFilter".}
proc fcQGraphicsWebView_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_sceneEventFilter".}
proc fQGraphicsWebView_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_hoverEnterEvent".}
proc fcQGraphicsWebView_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_hoverEnterEvent".}
proc fQGraphicsWebView_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsWebView_virtualbase_supportsExtension".}
proc fcQGraphicsWebView_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_supportsExtension".}
proc fQGraphicsWebView_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsWebView_virtualbase_setExtension".}
proc fcQGraphicsWebView_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_setExtension".}
proc fQGraphicsWebView_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsWebView_virtualbase_extension".}
proc fcQGraphicsWebView_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_extension".}
proc fcQGraphicsWebView_delete(self: pointer) {.importc: "QGraphicsWebView_delete".}


func init*(T: type gen_qgraphicswebview_types.QGraphicsWebView, h: ptr cQGraphicsWebView): gen_qgraphicswebview_types.QGraphicsWebView =
  T(h: h)
proc create*(T: type gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qgraphicswebview_types.QGraphicsWebView =
  gen_qgraphicswebview_types.QGraphicsWebView.init(fcQGraphicsWebView_new())

proc create*(T: type gen_qgraphicswebview_types.QGraphicsWebView, parent: gen_qgraphicsitem_types.QGraphicsItem): gen_qgraphicswebview_types.QGraphicsWebView =
  gen_qgraphicswebview_types.QGraphicsWebView.init(fcQGraphicsWebView_new2(parent.h))

proc metaObject*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsWebView_metaObject(self.h))

proc metacast*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: cstring): pointer =
  fcQGraphicsWebView_metacast(self.h, param1)

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
proc miqt_exec_callback_QGraphicsWebView_loadStarted(slot: int) {.exportc.} =
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
proc miqt_exec_callback_QGraphicsWebView_loadFinished(slot: int, param1: bool) {.exportc.} =
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
proc miqt_exec_callback_QGraphicsWebView_loadProgress(slot: int, progress: cint) {.exportc.} =
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
proc miqt_exec_callback_QGraphicsWebView_urlChanged(slot: int, param1: pointer) {.exportc.} =
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
proc miqt_exec_callback_QGraphicsWebView_titleChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
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
proc miqt_exec_callback_QGraphicsWebView_iconChanged(slot: int) {.exportc.} =
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
proc miqt_exec_callback_QGraphicsWebView_statusBarMessage(slot: int, message: struct_miqt_string) {.exportc.} =
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
proc miqt_exec_callback_QGraphicsWebView_linkClicked(slot: int, param1: pointer) {.exportc.} =
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

proc QGraphicsWebViewsetGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView, rect: gen_qrect_types.QRectF): void =
  fQGraphicsWebView_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsWebViewsetGeometryProc* = proc(rect: gen_qrect_types.QRectF): void
proc onsetGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewsetGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_setGeometry(self: ptr cQGraphicsWebView, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_setGeometry ".} =
  var nimfunc = cast[ptr QGraphicsWebViewsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rect)


  nimfunc[](slotval1)
proc QGraphicsWebViewupdateGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): void =
  fQGraphicsWebView_virtualbase_updateGeometry(self.h)

type QGraphicsWebViewupdateGeometryProc* = proc(): void
proc onupdateGeometry*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewupdateGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewupdateGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_updateGeometry(self: ptr cQGraphicsWebView, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsWebView_updateGeometry ".} =
  var nimfunc = cast[ptr QGraphicsWebViewupdateGeometryProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsWebViewpaint*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsWebView_virtualbase_paint(self.h, param1.h, options.h, widget.h)

type QGraphicsWebViewpaintProc* = proc(param1: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaint*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewpaintProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewpaintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_paint(self: ptr cQGraphicsWebView, slot: int, param1: pointer, options: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_paint ".} =
  var nimfunc = cast[ptr QGraphicsWebViewpaintProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: param1)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: options)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsWebViewitemChange*(self: gen_qgraphicswebview_types.QGraphicsWebView, change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsWebView_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsWebViewitemChangeProc* = proc(change: cint, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onitemChange*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewitemChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewitemChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_itemChange(self: ptr cQGraphicsWebView, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_itemChange ".} =
  var nimfunc = cast[ptr QGraphicsWebViewitemChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsWebViewevent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsWebView_virtualbase_event(self.h, param1.h)

type QGraphicsWebVieweventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebVieweventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_event(self: ptr cQGraphicsWebView, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_event ".} =
  var nimfunc = cast[ptr QGraphicsWebVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWebViewsizeHint*(self: gen_qgraphicswebview_types.QGraphicsWebView, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fQGraphicsWebView_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsWebViewsizeHintProc* = proc(which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF
proc onsizeHint*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewsizeHintProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_sizeHint(self: ptr cQGraphicsWebView, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_sizeHint ".} =
  var nimfunc = cast[ptr QGraphicsWebViewsizeHintProc](cast[pointer](slot))
  let slotval1 = cint(which)

  let slotval2 = gen_qsize_types.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsWebViewinputMethodQuery*(self: gen_qgraphicswebview_types.QGraphicsWebView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsWebView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsWebViewinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_inputMethodQuery(self: ptr cQGraphicsWebView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGraphicsWebViewinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsWebViewmousePressEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsWebView_virtualbase_mousePressEvent(self.h, param1.h)

type QGraphicsWebViewmousePressEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_mousePressEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_mousePressEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewmouseDoubleClickEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsWebView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QGraphicsWebViewmouseDoubleClickEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_mouseDoubleClickEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewmouseReleaseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsWebView_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QGraphicsWebViewmouseReleaseEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_mouseReleaseEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewmouseMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void =
  fQGraphicsWebView_virtualbase_mouseMoveEvent(self.h, param1.h)

type QGraphicsWebViewmouseMoveEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_mouseMoveEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewhoverMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsWebView_virtualbase_hoverMoveEvent(self.h, param1.h)

type QGraphicsWebViewhoverMoveEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewhoverMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewhoverMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_hoverMoveEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_hoverMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewhoverMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewhoverLeaveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsWebView_virtualbase_hoverLeaveEvent(self.h, param1.h)

type QGraphicsWebViewhoverLeaveEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewhoverLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewhoverLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_hoverLeaveEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_hoverLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewhoverLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewwheelEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void =
  fQGraphicsWebView_virtualbase_wheelEvent(self.h, param1.h)

type QGraphicsWebViewwheelEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_wheelEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_wheelEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewkeyPressEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QKeyEvent): void =
  fQGraphicsWebView_virtualbase_keyPressEvent(self.h, param1.h)

type QGraphicsWebViewkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_keyPressEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_keyPressEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewkeyReleaseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QKeyEvent): void =
  fQGraphicsWebView_virtualbase_keyReleaseEvent(self.h, param1.h)

type QGraphicsWebViewkeyReleaseEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_keyReleaseEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewcontextMenuEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void =
  fQGraphicsWebView_virtualbase_contextMenuEvent(self.h, param1.h)

type QGraphicsWebViewcontextMenuEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_contextMenuEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewdragEnterEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsWebView_virtualbase_dragEnterEvent(self.h, param1.h)

type QGraphicsWebViewdragEnterEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_dragEnterEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewdragLeaveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsWebView_virtualbase_dragLeaveEvent(self.h, param1.h)

type QGraphicsWebViewdragLeaveEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_dragLeaveEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewdragMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsWebView_virtualbase_dragMoveEvent(self.h, param1.h)

type QGraphicsWebViewdragMoveEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_dragMoveEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewdropEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void =
  fQGraphicsWebView_virtualbase_dropEvent(self.h, param1.h)

type QGraphicsWebViewdropEventProc* = proc(param1: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewdropEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_dropEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_dropEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewfocusInEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QFocusEvent): void =
  fQGraphicsWebView_virtualbase_focusInEvent(self.h, param1.h)

type QGraphicsWebViewfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_focusInEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_focusInEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewfocusOutEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QFocusEvent): void =
  fQGraphicsWebView_virtualbase_focusOutEvent(self.h, param1.h)

type QGraphicsWebViewfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_focusOutEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_focusOutEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewinputMethodEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qevent_types.QInputMethodEvent): void =
  fQGraphicsWebView_virtualbase_inputMethodEvent(self.h, param1.h)

type QGraphicsWebViewinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_inputMethodEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QGraphicsWebViewfocusNextPrevChild*(self: gen_qgraphicswebview_types.QGraphicsWebView, next: bool): bool =
  fQGraphicsWebView_virtualbase_focusNextPrevChild(self.h, next)

type QGraphicsWebViewfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_focusNextPrevChild(self: ptr cQGraphicsWebView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QGraphicsWebViewfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWebViewsceneEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, param1: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsWebView_virtualbase_sceneEvent(self.h, param1.h)

type QGraphicsWebViewsceneEventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onsceneEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewsceneEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewsceneEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_sceneEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_sceneEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewsceneEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWebViewgetContentsMargins*(self: gen_qgraphicswebview_types.QGraphicsWebView, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fQGraphicsWebView_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsWebViewgetContentsMarginsProc* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewgetContentsMarginsProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewgetContentsMarginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_getContentsMargins(self: ptr cQGraphicsWebView, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsWebView_getContentsMargins ".} =
  var nimfunc = cast[ptr QGraphicsWebViewgetContentsMarginsProc](cast[pointer](slot))
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QGraphicsWebViewtypeX*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): cint =
  fQGraphicsWebView_virtualbase_type(self.h)

type QGraphicsWebViewtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewtypeXProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_type(self: ptr cQGraphicsWebView, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsWebView_type ".} =
  var nimfunc = cast[ptr QGraphicsWebViewtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsWebViewpaintWindowFrame*(self: gen_qgraphicswebview_types.QGraphicsWebView, painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void =
  fQGraphicsWebView_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

type QGraphicsWebViewpaintWindowFrameProc* = proc(painter: gen_qpainter_types.QPainter, option: gen_qstyleoption_types.QStyleOptionGraphicsItem, widget: gen_qwidget_types.QWidget): void
proc onpaintWindowFrame*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewpaintWindowFrameProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewpaintWindowFrameProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_paintWindowFrame(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_paintWindowFrame(self: ptr cQGraphicsWebView, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_paintWindowFrame ".} =
  var nimfunc = cast[ptr QGraphicsWebViewpaintWindowFrameProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3)
proc QGraphicsWebViewboundingRect*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsWebView_virtualbase_boundingRect(self.h))

type QGraphicsWebViewboundingRectProc* = proc(): gen_qrect_types.QRectF
proc onboundingRect*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewboundingRectProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewboundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_boundingRect(self: ptr cQGraphicsWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_boundingRect ".} =
  var nimfunc = cast[ptr QGraphicsWebViewboundingRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsWebViewshape*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsWebView_virtualbase_shape(self.h))

type QGraphicsWebViewshapeProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onshape*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewshapeProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewshapeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_shape(self: ptr cQGraphicsWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_shape ".} =
  var nimfunc = cast[ptr QGraphicsWebViewshapeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsWebViewinitStyleOption*(self: gen_qgraphicswebview_types.QGraphicsWebView, option: gen_qstyleoption_types.QStyleOption): void =
  fQGraphicsWebView_virtualbase_initStyleOption(self.h, option.h)

type QGraphicsWebViewinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOption): void
proc oninitStyleOption*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_initStyleOption(self: ptr cQGraphicsWebView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_initStyleOption ".} =
  var nimfunc = cast[ptr QGraphicsWebViewinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOption(h: option)


  nimfunc[](slotval1)
proc QGraphicsWebViewpropertyChange*(self: gen_qgraphicswebview_types.QGraphicsWebView, propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsWebView_virtualbase_propertyChange(self.h, struct_miqt_string(data: propertyName, len: csize_t(len(propertyName))), value.h))

type QGraphicsWebViewpropertyChangeProc* = proc(propertyName: string, value: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onpropertyChange*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewpropertyChangeProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewpropertyChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_propertyChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_propertyChange(self: ptr cQGraphicsWebView, slot: int, propertyName: struct_miqt_string, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_propertyChange ".} =
  var nimfunc = cast[ptr QGraphicsWebViewpropertyChangeProc](cast[pointer](slot))
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(toOpenArrayByte(vpropertyName_ms.data, 0, int(vpropertyName_ms.len)-1))
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsWebViewwindowFrameEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, e: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsWebView_virtualbase_windowFrameEvent(self.h, e.h)

type QGraphicsWebViewwindowFrameEventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onwindowFrameEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewwindowFrameEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewwindowFrameEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_windowFrameEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_windowFrameEvent(self: ptr cQGraphicsWebView, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_windowFrameEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewwindowFrameEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWebViewwindowFrameSectionAt*(self: gen_qgraphicswebview_types.QGraphicsWebView, pos: gen_qpoint_types.QPointF): cint =
  cint(fQGraphicsWebView_virtualbase_windowFrameSectionAt(self.h, pos.h))

type QGraphicsWebViewwindowFrameSectionAtProc* = proc(pos: gen_qpoint_types.QPointF): cint
proc onwindowFrameSectionAt*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewwindowFrameSectionAtProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewwindowFrameSectionAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_windowFrameSectionAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_windowFrameSectionAt(self: ptr cQGraphicsWebView, slot: int, pos: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsWebView_windowFrameSectionAt ".} =
  var nimfunc = cast[ptr QGraphicsWebViewwindowFrameSectionAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: pos)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QGraphicsWebViewchangeEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWebView_virtualbase_changeEvent(self.h, event.h)

type QGraphicsWebViewchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewchangeEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_changeEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_changeEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewcloseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qevent_types.QCloseEvent): void =
  fQGraphicsWebView_virtualbase_closeEvent(self.h, event.h)

type QGraphicsWebViewcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_closeEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_closeEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewhideEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qevent_types.QHideEvent): void =
  fQGraphicsWebView_virtualbase_hideEvent(self.h, event.h)

type QGraphicsWebViewhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewhideEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_hideEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_hideEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewmoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void =
  fQGraphicsWebView_virtualbase_moveEvent(self.h, event.h)

type QGraphicsWebViewmoveEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent): void
proc onmoveEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_moveEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_moveEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewpolishEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): void =
  fQGraphicsWebView_virtualbase_polishEvent(self.h)

type QGraphicsWebViewpolishEventProc* = proc(): void
proc onpolishEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewpolishEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewpolishEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_polishEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_polishEvent(self: ptr cQGraphicsWebView, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsWebView_polishEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewpolishEventProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsWebViewresizeEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void =
  fQGraphicsWebView_virtualbase_resizeEvent(self.h, event.h)

type QGraphicsWebViewresizeEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent): void
proc onresizeEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_resizeEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_resizeEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewshowEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qevent_types.QShowEvent): void =
  fQGraphicsWebView_virtualbase_showEvent(self.h, event.h)

type QGraphicsWebViewshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewshowEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_showEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_showEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewgrabMouseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWebView_virtualbase_grabMouseEvent(self.h, event.h)

type QGraphicsWebViewgrabMouseEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ongrabMouseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewgrabMouseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewgrabMouseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_grabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_grabMouseEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_grabMouseEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewgrabMouseEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewungrabMouseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWebView_virtualbase_ungrabMouseEvent(self.h, event.h)

type QGraphicsWebViewungrabMouseEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onungrabMouseEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewungrabMouseEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewungrabMouseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_ungrabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_ungrabMouseEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_ungrabMouseEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewungrabMouseEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewgrabKeyboardEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWebView_virtualbase_grabKeyboardEvent(self.h, event.h)

type QGraphicsWebViewgrabKeyboardEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ongrabKeyboardEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewgrabKeyboardEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewgrabKeyboardEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_grabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_grabKeyboardEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_grabKeyboardEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewgrabKeyboardEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewungrabKeyboardEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWebView_virtualbase_ungrabKeyboardEvent(self.h, event.h)

type QGraphicsWebViewungrabKeyboardEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onungrabKeyboardEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewungrabKeyboardEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewungrabKeyboardEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_ungrabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_ungrabKeyboardEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_ungrabKeyboardEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewungrabKeyboardEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebVieweventFilter*(self: gen_qgraphicswebview_types.QGraphicsWebView, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsWebView_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsWebVieweventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_eventFilter(self: ptr cQGraphicsWebView, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsWebVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsWebViewtimerEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsWebView_virtualbase_timerEvent(self.h, event.h)

type QGraphicsWebViewtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_timerEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewchildEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsWebView_virtualbase_childEvent(self.h, event.h)

type QGraphicsWebViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_childEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewcustomEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsWebView_virtualbase_customEvent(self.h, event.h)

type QGraphicsWebViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_customEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewconnectNotify*(self: gen_qgraphicswebview_types.QGraphicsWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsWebView_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsWebViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_connectNotify(self: ptr cQGraphicsWebView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsWebViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsWebViewdisconnectNotify*(self: gen_qgraphicswebview_types.QGraphicsWebView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsWebView_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsWebViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_disconnectNotify(self: ptr cQGraphicsWebView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsWebViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsWebViewadvance*(self: gen_qgraphicswebview_types.QGraphicsWebView, phase: cint): void =
  fQGraphicsWebView_virtualbase_advance(self.h, phase)

type QGraphicsWebViewadvanceProc* = proc(phase: cint): void
proc onadvance*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewadvanceProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewadvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_advance(self: ptr cQGraphicsWebView, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsWebView_advance ".} =
  var nimfunc = cast[ptr QGraphicsWebViewadvanceProc](cast[pointer](slot))
  let slotval1 = phase


  nimfunc[](slotval1)
proc QGraphicsWebViewcontains*(self: gen_qgraphicswebview_types.QGraphicsWebView, point: gen_qpoint_types.QPointF): bool =
  fQGraphicsWebView_virtualbase_contains(self.h, point.h)

type QGraphicsWebViewcontainsProc* = proc(point: gen_qpoint_types.QPointF): bool
proc oncontains*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewcontainsProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewcontainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_contains(self: ptr cQGraphicsWebView, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_contains ".} =
  var nimfunc = cast[ptr QGraphicsWebViewcontainsProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWebViewcollidesWithItem*(self: gen_qgraphicswebview_types.QGraphicsWebView, other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool =
  fQGraphicsWebView_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsWebViewcollidesWithItemProc* = proc(other: gen_qgraphicsitem_types.QGraphicsItem, mode: cint): bool
proc oncollidesWithItem*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewcollidesWithItemProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewcollidesWithItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_collidesWithItem(self: ptr cQGraphicsWebView, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_collidesWithItem ".} =
  var nimfunc = cast[ptr QGraphicsWebViewcollidesWithItemProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: other)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsWebViewcollidesWithPath*(self: gen_qgraphicswebview_types.QGraphicsWebView, path: gen_qpainterpath_types.QPainterPath, mode: cint): bool =
  fQGraphicsWebView_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsWebViewcollidesWithPathProc* = proc(path: gen_qpainterpath_types.QPainterPath, mode: cint): bool
proc oncollidesWithPath*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewcollidesWithPathProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewcollidesWithPathProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_collidesWithPath(self: ptr cQGraphicsWebView, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_collidesWithPath ".} =
  var nimfunc = cast[ptr QGraphicsWebViewcollidesWithPathProc](cast[pointer](slot))
  let slotval1 = gen_qpainterpath_types.QPainterPath(h: path)

  let slotval2 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsWebViewisObscuredBy*(self: gen_qgraphicswebview_types.QGraphicsWebView, item: gen_qgraphicsitem_types.QGraphicsItem): bool =
  fQGraphicsWebView_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsWebViewisObscuredByProc* = proc(item: gen_qgraphicsitem_types.QGraphicsItem): bool
proc onisObscuredBy*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewisObscuredByProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewisObscuredByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_isObscuredBy(self: ptr cQGraphicsWebView, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_isObscuredBy ".} =
  var nimfunc = cast[ptr QGraphicsWebViewisObscuredByProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWebViewopaqueArea*(self: gen_qgraphicswebview_types.QGraphicsWebView, ): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fQGraphicsWebView_virtualbase_opaqueArea(self.h))

type QGraphicsWebViewopaqueAreaProc* = proc(): gen_qpainterpath_types.QPainterPath
proc onopaqueArea*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewopaqueAreaProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewopaqueAreaProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_opaqueArea(self: ptr cQGraphicsWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_opaqueArea ".} =
  var nimfunc = cast[ptr QGraphicsWebViewopaqueAreaProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsWebViewsceneEventFilter*(self: gen_qgraphicswebview_types.QGraphicsWebView, watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsWebView_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsWebViewsceneEventFilterProc* = proc(watched: gen_qgraphicsitem_types.QGraphicsItem, event: gen_qcoreevent_types.QEvent): bool
proc onsceneEventFilter*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewsceneEventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewsceneEventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_sceneEventFilter(self: ptr cQGraphicsWebView, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_sceneEventFilter ".} =
  var nimfunc = cast[ptr QGraphicsWebViewsceneEventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicsitem_types.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsWebViewhoverEnterEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void =
  fQGraphicsWebView_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsWebViewhoverEnterEventProc* = proc(event: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewhoverEnterEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewhoverEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_hoverEnterEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_hoverEnterEvent ".} =
  var nimfunc = cast[ptr QGraphicsWebViewhoverEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsWebViewsupportsExtension*(self: gen_qgraphicswebview_types.QGraphicsWebView, extension: cint): bool =
  fQGraphicsWebView_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsWebViewsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_supportsExtension(self: ptr cQGraphicsWebView, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_supportsExtension ".} =
  var nimfunc = cast[ptr QGraphicsWebViewsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsWebViewsetExtension*(self: gen_qgraphicswebview_types.QGraphicsWebView, extension: cint, variant: gen_qvariant_types.QVariant): void =
  fQGraphicsWebView_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsWebViewsetExtensionProc* = proc(extension: cint, variant: gen_qvariant_types.QVariant): void
proc onsetExtension*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewsetExtensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewsetExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_setExtension(self: ptr cQGraphicsWebView, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_setExtension ".} =
  var nimfunc = cast[ptr QGraphicsWebViewsetExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: variant)


  nimfunc[](slotval1, slotval2)
proc QGraphicsWebViewextension*(self: gen_qgraphicswebview_types.QGraphicsWebView, variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGraphicsWebView_virtualbase_extension(self.h, variant.h))

type QGraphicsWebViewextensionProc* = proc(variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qgraphicswebview_types.QGraphicsWebView, slot: QGraphicsWebViewextensionProc) =
  # TODO check subclass
  var tmp = new QGraphicsWebViewextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_extension(self: ptr cQGraphicsWebView, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_extension ".} =
  var nimfunc = cast[ptr QGraphicsWebViewextensionProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: variant)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc delete*(self: gen_qgraphicswebview_types.QGraphicsWebView) =
  fcQGraphicsWebView_delete(self.h)
