import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qtextbrowser.cpp", cflags).}


import ./gen_qtextbrowser_types
export gen_qtextbrowser_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qtextcursor_types,
  ./gen_qtextedit,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qtextcursor_types,
  gen_qtextedit,
  gen_qwidget_types

type cQTextBrowser*{.exportc: "QTextBrowser", incompleteStruct.} = object

proc fcQTextBrowser_new(parent: pointer): ptr cQTextBrowser {.importc: "QTextBrowser_new".}
proc fcQTextBrowser_new2(): ptr cQTextBrowser {.importc: "QTextBrowser_new2".}
proc fcQTextBrowser_metaObject(self: pointer, ): pointer {.importc: "QTextBrowser_metaObject".}
proc fcQTextBrowser_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextBrowser_metacast".}
proc fcQTextBrowser_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextBrowser_metacall".}
proc fcQTextBrowser_tr(s: cstring): struct_miqt_string {.importc: "QTextBrowser_tr".}
proc fcQTextBrowser_trUtf8(s: cstring): struct_miqt_string {.importc: "QTextBrowser_trUtf8".}
proc fcQTextBrowser_source(self: pointer, ): pointer {.importc: "QTextBrowser_source".}
proc fcQTextBrowser_sourceType(self: pointer, ): cint {.importc: "QTextBrowser_sourceType".}
proc fcQTextBrowser_searchPaths(self: pointer, ): struct_miqt_array {.importc: "QTextBrowser_searchPaths".}
proc fcQTextBrowser_setSearchPaths(self: pointer, paths: struct_miqt_array): void {.importc: "QTextBrowser_setSearchPaths".}
proc fcQTextBrowser_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QTextBrowser_loadResource".}
proc fcQTextBrowser_isBackwardAvailable(self: pointer, ): bool {.importc: "QTextBrowser_isBackwardAvailable".}
proc fcQTextBrowser_isForwardAvailable(self: pointer, ): bool {.importc: "QTextBrowser_isForwardAvailable".}
proc fcQTextBrowser_clearHistory(self: pointer, ): void {.importc: "QTextBrowser_clearHistory".}
proc fcQTextBrowser_historyTitle(self: pointer, param1: cint): struct_miqt_string {.importc: "QTextBrowser_historyTitle".}
proc fcQTextBrowser_historyUrl(self: pointer, param1: cint): pointer {.importc: "QTextBrowser_historyUrl".}
proc fcQTextBrowser_backwardHistoryCount(self: pointer, ): cint {.importc: "QTextBrowser_backwardHistoryCount".}
proc fcQTextBrowser_forwardHistoryCount(self: pointer, ): cint {.importc: "QTextBrowser_forwardHistoryCount".}
proc fcQTextBrowser_openExternalLinks(self: pointer, ): bool {.importc: "QTextBrowser_openExternalLinks".}
proc fcQTextBrowser_setOpenExternalLinks(self: pointer, open: bool): void {.importc: "QTextBrowser_setOpenExternalLinks".}
proc fcQTextBrowser_openLinks(self: pointer, ): bool {.importc: "QTextBrowser_openLinks".}
proc fcQTextBrowser_setOpenLinks(self: pointer, open: bool): void {.importc: "QTextBrowser_setOpenLinks".}
proc fcQTextBrowser_setSource(self: pointer, name: pointer): void {.importc: "QTextBrowser_setSource".}
proc fcQTextBrowser_setSource2(self: pointer, name: pointer, typeVal: cint): void {.importc: "QTextBrowser_setSource2".}
proc fcQTextBrowser_backward(self: pointer, ): void {.importc: "QTextBrowser_backward".}
proc fcQTextBrowser_forward(self: pointer, ): void {.importc: "QTextBrowser_forward".}
proc fcQTextBrowser_home(self: pointer, ): void {.importc: "QTextBrowser_home".}
proc fcQTextBrowser_reload(self: pointer, ): void {.importc: "QTextBrowser_reload".}
proc fcQTextBrowser_backwardAvailable(self: pointer, param1: bool): void {.importc: "QTextBrowser_backwardAvailable".}
proc fcQTextBrowser_connect_backwardAvailable(self: pointer, slot: int) {.importc: "QTextBrowser_connect_backwardAvailable".}
proc fcQTextBrowser_forwardAvailable(self: pointer, param1: bool): void {.importc: "QTextBrowser_forwardAvailable".}
proc fcQTextBrowser_connect_forwardAvailable(self: pointer, slot: int) {.importc: "QTextBrowser_connect_forwardAvailable".}
proc fcQTextBrowser_historyChanged(self: pointer, ): void {.importc: "QTextBrowser_historyChanged".}
proc fcQTextBrowser_connect_historyChanged(self: pointer, slot: int) {.importc: "QTextBrowser_connect_historyChanged".}
proc fcQTextBrowser_sourceChanged(self: pointer, param1: pointer): void {.importc: "QTextBrowser_sourceChanged".}
proc fcQTextBrowser_connect_sourceChanged(self: pointer, slot: int) {.importc: "QTextBrowser_connect_sourceChanged".}
proc fcQTextBrowser_highlighted(self: pointer, param1: pointer): void {.importc: "QTextBrowser_highlighted".}
proc fcQTextBrowser_connect_highlighted(self: pointer, slot: int) {.importc: "QTextBrowser_connect_highlighted".}
proc fcQTextBrowser_highlightedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QTextBrowser_highlightedWithQString".}
proc fcQTextBrowser_connect_highlightedWithQString(self: pointer, slot: int) {.importc: "QTextBrowser_connect_highlightedWithQString".}
proc fcQTextBrowser_anchorClicked(self: pointer, param1: pointer): void {.importc: "QTextBrowser_anchorClicked".}
proc fcQTextBrowser_connect_anchorClicked(self: pointer, slot: int) {.importc: "QTextBrowser_connect_anchorClicked".}
proc fcQTextBrowser_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextBrowser_tr2".}
proc fcQTextBrowser_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextBrowser_tr3".}
proc fcQTextBrowser_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextBrowser_trUtf82".}
proc fcQTextBrowser_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextBrowser_trUtf83".}
proc fQTextBrowser_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_metaObject".}
proc fcQTextBrowser_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_metaObject".}
proc fQTextBrowser_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTextBrowser_virtualbase_metacast".}
proc fcQTextBrowser_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_metacast".}
proc fQTextBrowser_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTextBrowser_virtualbase_metacall".}
proc fcQTextBrowser_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_metacall".}
proc fQTextBrowser_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer{.importc: "QTextBrowser_virtualbase_loadResource".}
proc fcQTextBrowser_override_virtual_loadResource(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_loadResource".}
proc fQTextBrowser_virtualbase_setSource(self: pointer, name: pointer): void{.importc: "QTextBrowser_virtualbase_setSource".}
proc fcQTextBrowser_override_virtual_setSource(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_setSource".}
proc fQTextBrowser_virtualbase_backward(self: pointer, ): void{.importc: "QTextBrowser_virtualbase_backward".}
proc fcQTextBrowser_override_virtual_backward(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_backward".}
proc fQTextBrowser_virtualbase_forward(self: pointer, ): void{.importc: "QTextBrowser_virtualbase_forward".}
proc fcQTextBrowser_override_virtual_forward(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_forward".}
proc fQTextBrowser_virtualbase_home(self: pointer, ): void{.importc: "QTextBrowser_virtualbase_home".}
proc fcQTextBrowser_override_virtual_home(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_home".}
proc fQTextBrowser_virtualbase_reload(self: pointer, ): void{.importc: "QTextBrowser_virtualbase_reload".}
proc fcQTextBrowser_override_virtual_reload(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_reload".}
proc fQTextBrowser_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QTextBrowser_virtualbase_event".}
proc fcQTextBrowser_override_virtual_event(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_event".}
proc fQTextBrowser_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QTextBrowser_virtualbase_keyPressEvent".}
proc fcQTextBrowser_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_keyPressEvent".}
proc fQTextBrowser_virtualbase_mouseMoveEvent(self: pointer, ev: pointer): void{.importc: "QTextBrowser_virtualbase_mouseMoveEvent".}
proc fcQTextBrowser_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_mouseMoveEvent".}
proc fQTextBrowser_virtualbase_mousePressEvent(self: pointer, ev: pointer): void{.importc: "QTextBrowser_virtualbase_mousePressEvent".}
proc fcQTextBrowser_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_mousePressEvent".}
proc fQTextBrowser_virtualbase_mouseReleaseEvent(self: pointer, ev: pointer): void{.importc: "QTextBrowser_virtualbase_mouseReleaseEvent".}
proc fcQTextBrowser_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_mouseReleaseEvent".}
proc fQTextBrowser_virtualbase_focusOutEvent(self: pointer, ev: pointer): void{.importc: "QTextBrowser_virtualbase_focusOutEvent".}
proc fcQTextBrowser_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_focusOutEvent".}
proc fQTextBrowser_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTextBrowser_virtualbase_focusNextPrevChild".}
proc fcQTextBrowser_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_focusNextPrevChild".}
proc fQTextBrowser_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_paintEvent".}
proc fcQTextBrowser_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_paintEvent".}
proc fQTextBrowser_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer{.importc: "QTextBrowser_virtualbase_inputMethodQuery".}
proc fcQTextBrowser_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_inputMethodQuery".}
proc fQTextBrowser_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_timerEvent".}
proc fcQTextBrowser_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_timerEvent".}
proc fQTextBrowser_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_keyReleaseEvent".}
proc fcQTextBrowser_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_keyReleaseEvent".}
proc fQTextBrowser_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_resizeEvent".}
proc fcQTextBrowser_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_resizeEvent".}
proc fQTextBrowser_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_mouseDoubleClickEvent".}
proc fcQTextBrowser_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_mouseDoubleClickEvent".}
proc fQTextBrowser_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_contextMenuEvent".}
proc fcQTextBrowser_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_contextMenuEvent".}
proc fQTextBrowser_virtualbase_dragEnterEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_dragEnterEvent".}
proc fcQTextBrowser_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_dragEnterEvent".}
proc fQTextBrowser_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_dragLeaveEvent".}
proc fcQTextBrowser_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_dragLeaveEvent".}
proc fQTextBrowser_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_dragMoveEvent".}
proc fcQTextBrowser_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_dragMoveEvent".}
proc fQTextBrowser_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_dropEvent".}
proc fcQTextBrowser_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_dropEvent".}
proc fQTextBrowser_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_focusInEvent".}
proc fcQTextBrowser_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_focusInEvent".}
proc fQTextBrowser_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QTextBrowser_virtualbase_showEvent".}
proc fcQTextBrowser_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_showEvent".}
proc fQTextBrowser_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_changeEvent".}
proc fcQTextBrowser_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_changeEvent".}
proc fQTextBrowser_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_wheelEvent".}
proc fcQTextBrowser_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_wheelEvent".}
proc fQTextBrowser_virtualbase_createMimeDataFromSelection(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_createMimeDataFromSelection".}
proc fcQTextBrowser_override_virtual_createMimeDataFromSelection(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_createMimeDataFromSelection".}
proc fQTextBrowser_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool{.importc: "QTextBrowser_virtualbase_canInsertFromMimeData".}
proc fcQTextBrowser_override_virtual_canInsertFromMimeData(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_canInsertFromMimeData".}
proc fQTextBrowser_virtualbase_insertFromMimeData(self: pointer, source: pointer): void{.importc: "QTextBrowser_virtualbase_insertFromMimeData".}
proc fcQTextBrowser_override_virtual_insertFromMimeData(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_insertFromMimeData".}
proc fQTextBrowser_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QTextBrowser_virtualbase_inputMethodEvent".}
proc fcQTextBrowser_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_inputMethodEvent".}
proc fQTextBrowser_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTextBrowser_virtualbase_scrollContentsBy".}
proc fcQTextBrowser_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_scrollContentsBy".}
proc fQTextBrowser_virtualbase_doSetTextCursor(self: pointer, cursor: pointer): void{.importc: "QTextBrowser_virtualbase_doSetTextCursor".}
proc fcQTextBrowser_override_virtual_doSetTextCursor(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_doSetTextCursor".}
proc fQTextBrowser_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_minimumSizeHint".}
proc fcQTextBrowser_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_minimumSizeHint".}
proc fQTextBrowser_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_sizeHint".}
proc fcQTextBrowser_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_sizeHint".}
proc fQTextBrowser_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTextBrowser_virtualbase_setupViewport".}
proc fcQTextBrowser_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_setupViewport".}
proc fQTextBrowser_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QTextBrowser_virtualbase_eventFilter".}
proc fcQTextBrowser_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_eventFilter".}
proc fQTextBrowser_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QTextBrowser_virtualbase_viewportEvent".}
proc fcQTextBrowser_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_viewportEvent".}
proc fQTextBrowser_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_viewportSizeHint".}
proc fcQTextBrowser_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_viewportSizeHint".}
proc fQTextBrowser_virtualbase_devType(self: pointer, ): cint{.importc: "QTextBrowser_virtualbase_devType".}
proc fcQTextBrowser_override_virtual_devType(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_devType".}
proc fQTextBrowser_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTextBrowser_virtualbase_setVisible".}
proc fcQTextBrowser_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_setVisible".}
proc fQTextBrowser_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTextBrowser_virtualbase_heightForWidth".}
proc fcQTextBrowser_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_heightForWidth".}
proc fQTextBrowser_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTextBrowser_virtualbase_hasHeightForWidth".}
proc fcQTextBrowser_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_hasHeightForWidth".}
proc fQTextBrowser_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_paintEngine".}
proc fcQTextBrowser_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_paintEngine".}
proc fQTextBrowser_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_enterEvent".}
proc fcQTextBrowser_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_enterEvent".}
proc fQTextBrowser_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_leaveEvent".}
proc fcQTextBrowser_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_leaveEvent".}
proc fQTextBrowser_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_moveEvent".}
proc fcQTextBrowser_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_moveEvent".}
proc fQTextBrowser_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_closeEvent".}
proc fcQTextBrowser_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_closeEvent".}
proc fQTextBrowser_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_tabletEvent".}
proc fcQTextBrowser_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_tabletEvent".}
proc fQTextBrowser_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_actionEvent".}
proc fcQTextBrowser_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_actionEvent".}
proc fQTextBrowser_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_hideEvent".}
proc fcQTextBrowser_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_hideEvent".}
proc fQTextBrowser_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QTextBrowser_virtualbase_nativeEvent".}
proc fcQTextBrowser_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_nativeEvent".}
proc fQTextBrowser_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTextBrowser_virtualbase_metric".}
proc fcQTextBrowser_override_virtual_metric(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_metric".}
proc fQTextBrowser_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTextBrowser_virtualbase_initPainter".}
proc fcQTextBrowser_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_initPainter".}
proc fQTextBrowser_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTextBrowser_virtualbase_redirected".}
proc fcQTextBrowser_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_redirected".}
proc fQTextBrowser_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_sharedPainter".}
proc fcQTextBrowser_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_sharedPainter".}
proc fQTextBrowser_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_childEvent".}
proc fcQTextBrowser_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_childEvent".}
proc fQTextBrowser_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_customEvent".}
proc fcQTextBrowser_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_customEvent".}
proc fQTextBrowser_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTextBrowser_virtualbase_connectNotify".}
proc fcQTextBrowser_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_connectNotify".}
proc fQTextBrowser_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTextBrowser_virtualbase_disconnectNotify".}
proc fcQTextBrowser_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_disconnectNotify".}
proc fcQTextBrowser_staticMetaObject(): pointer {.importc: "QTextBrowser_staticMetaObject".}
proc fcQTextBrowser_delete(self: pointer) {.importc: "QTextBrowser_delete".}


func init*(T: type gen_qtextbrowser_types.QTextBrowser, h: ptr cQTextBrowser): gen_qtextbrowser_types.QTextBrowser =
  T(h: h)
proc create*(T: type gen_qtextbrowser_types.QTextBrowser, parent: gen_qwidget_types.QWidget): gen_qtextbrowser_types.QTextBrowser =
  gen_qtextbrowser_types.QTextBrowser.init(fcQTextBrowser_new(parent.h))

proc create*(T: type gen_qtextbrowser_types.QTextBrowser, ): gen_qtextbrowser_types.QTextBrowser =
  gen_qtextbrowser_types.QTextBrowser.init(fcQTextBrowser_new2())

proc metaObject*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextBrowser_metaObject(self.h))

proc metacast*(self: gen_qtextbrowser_types.QTextBrowser, param1: cstring): pointer =
  fcQTextBrowser_metacast(self.h, param1)

proc metacall*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextBrowser_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtextbrowser_types.QTextBrowser, s: cstring): string =
  let v_ms = fcQTextBrowser_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextbrowser_types.QTextBrowser, s: cstring): string =
  let v_ms = fcQTextBrowser_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc source*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQTextBrowser_source(self.h))

proc sourceType*(self: gen_qtextbrowser_types.QTextBrowser, ): cint =
  cint(fcQTextBrowser_sourceType(self.h))

proc searchPaths*(self: gen_qtextbrowser_types.QTextBrowser, ): seq[string] =
  var v_ma = fcQTextBrowser_searchPaths(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setSearchPaths*(self: gen_qtextbrowser_types.QTextBrowser, paths: seq[string]): void =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  fcQTextBrowser_setSearchPaths(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc loadResource*(self: gen_qtextbrowser_types.QTextBrowser, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextBrowser_loadResource(self.h, typeVal, name.h))

proc isBackwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, ): bool =
  fcQTextBrowser_isBackwardAvailable(self.h)

proc isForwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, ): bool =
  fcQTextBrowser_isForwardAvailable(self.h)

proc clearHistory*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fcQTextBrowser_clearHistory(self.h)

proc historyTitle*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint): string =
  let v_ms = fcQTextBrowser_historyTitle(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc historyUrl*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQTextBrowser_historyUrl(self.h, param1))

proc backwardHistoryCount*(self: gen_qtextbrowser_types.QTextBrowser, ): cint =
  fcQTextBrowser_backwardHistoryCount(self.h)

proc forwardHistoryCount*(self: gen_qtextbrowser_types.QTextBrowser, ): cint =
  fcQTextBrowser_forwardHistoryCount(self.h)

proc openExternalLinks*(self: gen_qtextbrowser_types.QTextBrowser, ): bool =
  fcQTextBrowser_openExternalLinks(self.h)

proc setOpenExternalLinks*(self: gen_qtextbrowser_types.QTextBrowser, open: bool): void =
  fcQTextBrowser_setOpenExternalLinks(self.h, open)

proc openLinks*(self: gen_qtextbrowser_types.QTextBrowser, ): bool =
  fcQTextBrowser_openLinks(self.h)

proc setOpenLinks*(self: gen_qtextbrowser_types.QTextBrowser, open: bool): void =
  fcQTextBrowser_setOpenLinks(self.h, open)

proc setSource*(self: gen_qtextbrowser_types.QTextBrowser, name: gen_qurl_types.QUrl): void =
  fcQTextBrowser_setSource(self.h, name.h)

proc setSource*(self: gen_qtextbrowser_types.QTextBrowser, name: gen_qurl_types.QUrl, typeVal: cint): void =
  fcQTextBrowser_setSource2(self.h, name.h, cint(typeVal))

proc backward*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fcQTextBrowser_backward(self.h)

proc forward*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fcQTextBrowser_forward(self.h)

proc home*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fcQTextBrowser_home(self.h)

proc reload*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fcQTextBrowser_reload(self.h)

proc backwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, param1: bool): void =
  fcQTextBrowser_backwardAvailable(self.h, param1)

type QTextBrowserbackwardAvailableSlot* = proc(param1: bool)
proc miqt_exec_callback_QTextBrowser_backwardAvailable(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QTextBrowserbackwardAvailableSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onbackwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserbackwardAvailableSlot) =
  var tmp = new QTextBrowserbackwardAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_backwardAvailable(self.h, cast[int](addr tmp[]))

proc forwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, param1: bool): void =
  fcQTextBrowser_forwardAvailable(self.h, param1)

type QTextBrowserforwardAvailableSlot* = proc(param1: bool)
proc miqt_exec_callback_QTextBrowser_forwardAvailable(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QTextBrowserforwardAvailableSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onforwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserforwardAvailableSlot) =
  var tmp = new QTextBrowserforwardAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_forwardAvailable(self.h, cast[int](addr tmp[]))

proc historyChanged*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fcQTextBrowser_historyChanged(self.h)

type QTextBrowserhistoryChangedSlot* = proc()
proc miqt_exec_callback_QTextBrowser_historyChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QTextBrowserhistoryChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onhistoryChanged*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserhistoryChangedSlot) =
  var tmp = new QTextBrowserhistoryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_historyChanged(self.h, cast[int](addr tmp[]))

proc sourceChanged*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qurl_types.QUrl): void =
  fcQTextBrowser_sourceChanged(self.h, param1.h)

type QTextBrowsersourceChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_QTextBrowser_sourceChanged(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QTextBrowsersourceChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc onsourceChanged*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsersourceChangedSlot) =
  var tmp = new QTextBrowsersourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_sourceChanged(self.h, cast[int](addr tmp[]))

proc highlighted*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qurl_types.QUrl): void =
  fcQTextBrowser_highlighted(self.h, param1.h)

type QTextBrowserhighlightedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_QTextBrowser_highlighted(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QTextBrowserhighlightedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc onhighlighted*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserhighlightedSlot) =
  var tmp = new QTextBrowserhighlightedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_highlighted(self.h, cast[int](addr tmp[]))

proc highlighted*(self: gen_qtextbrowser_types.QTextBrowser, param1: string): void =
  fcQTextBrowser_highlightedWithQString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QTextBrowserhighlightedWithQStringSlot* = proc(param1: string)
proc miqt_exec_callback_QTextBrowser_highlightedWithQString(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QTextBrowserhighlightedWithQStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc onhighlighted*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserhighlightedWithQStringSlot) =
  var tmp = new QTextBrowserhighlightedWithQStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_highlightedWithQString(self.h, cast[int](addr tmp[]))

proc anchorClicked*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qurl_types.QUrl): void =
  fcQTextBrowser_anchorClicked(self.h, param1.h)

type QTextBrowseranchorClickedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_QTextBrowser_anchorClicked(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QTextBrowseranchorClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc onanchorClicked*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowseranchorClickedSlot) =
  var tmp = new QTextBrowseranchorClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_anchorClicked(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qtextbrowser_types.QTextBrowser, s: cstring, c: cstring): string =
  let v_ms = fcQTextBrowser_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtextbrowser_types.QTextBrowser, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextBrowser_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextbrowser_types.QTextBrowser, s: cstring, c: cstring): string =
  let v_ms = fcQTextBrowser_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextbrowser_types.QTextBrowser, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextBrowser_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QTextBrowsermetaObject*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTextBrowser_virtualbase_metaObject(self.h))

type QTextBrowsermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsermetaObjectProc) =
  # TODO check subclass
  var tmp = new QTextBrowsermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_metaObject(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_metaObject ".} =
  var nimfunc = cast[ptr QTextBrowsermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextBrowsermetacast*(self: gen_qtextbrowser_types.QTextBrowser, param1: cstring): pointer =
  fQTextBrowser_virtualbase_metacast(self.h, param1)

type QTextBrowsermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsermetacastProc) =
  # TODO check subclass
  var tmp = new QTextBrowsermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_metacast(self: ptr cQTextBrowser, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTextBrowser_metacast ".} =
  var nimfunc = cast[ptr QTextBrowsermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextBrowsermetacall*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint, param2: cint, param3: pointer): cint =
  fQTextBrowser_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTextBrowsermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsermetacallProc) =
  # TODO check subclass
  var tmp = new QTextBrowsermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_metacall(self: ptr cQTextBrowser, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTextBrowser_metacall ".} =
  var nimfunc = cast[ptr QTextBrowsermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTextBrowserloadResource*(self: gen_qtextbrowser_types.QTextBrowser, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTextBrowser_virtualbase_loadResource(self.h, typeVal, name.h))

type QTextBrowserloadResourceProc* = proc(typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant
proc onloadResource*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserloadResourceProc) =
  # TODO check subclass
  var tmp = new QTextBrowserloadResourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_loadResource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_loadResource(self: ptr cQTextBrowser, slot: int, typeVal: cint, name: pointer): pointer {.exportc: "miqt_exec_callback_QTextBrowser_loadResource ".} =
  var nimfunc = cast[ptr QTextBrowserloadResourceProc](cast[pointer](slot))
  let slotval1 = typeVal

  let slotval2 = gen_qurl_types.QUrl(h: name)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QTextBrowsersetSource*(self: gen_qtextbrowser_types.QTextBrowser, name: gen_qurl_types.QUrl): void =
  fQTextBrowser_virtualbase_setSource(self.h, name.h)

type QTextBrowsersetSourceProc* = proc(name: gen_qurl_types.QUrl): void
proc onsetSource*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsersetSourceProc) =
  # TODO check subclass
  var tmp = new QTextBrowsersetSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_setSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_setSource(self: ptr cQTextBrowser, slot: int, name: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_setSource ".} =
  var nimfunc = cast[ptr QTextBrowsersetSourceProc](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: name)


  nimfunc[](slotval1)
proc QTextBrowserbackward*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fQTextBrowser_virtualbase_backward(self.h)

type QTextBrowserbackwardProc* = proc(): void
proc onbackward*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserbackwardProc) =
  # TODO check subclass
  var tmp = new QTextBrowserbackwardProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_backward(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_backward(self: ptr cQTextBrowser, slot: int): void {.exportc: "miqt_exec_callback_QTextBrowser_backward ".} =
  var nimfunc = cast[ptr QTextBrowserbackwardProc](cast[pointer](slot))

  nimfunc[]()
proc QTextBrowserforward*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fQTextBrowser_virtualbase_forward(self.h)

type QTextBrowserforwardProc* = proc(): void
proc onforward*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserforwardProc) =
  # TODO check subclass
  var tmp = new QTextBrowserforwardProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_forward(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_forward(self: ptr cQTextBrowser, slot: int): void {.exportc: "miqt_exec_callback_QTextBrowser_forward ".} =
  var nimfunc = cast[ptr QTextBrowserforwardProc](cast[pointer](slot))

  nimfunc[]()
proc QTextBrowserhome*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fQTextBrowser_virtualbase_home(self.h)

type QTextBrowserhomeProc* = proc(): void
proc onhome*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserhomeProc) =
  # TODO check subclass
  var tmp = new QTextBrowserhomeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_home(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_home(self: ptr cQTextBrowser, slot: int): void {.exportc: "miqt_exec_callback_QTextBrowser_home ".} =
  var nimfunc = cast[ptr QTextBrowserhomeProc](cast[pointer](slot))

  nimfunc[]()
proc QTextBrowserreload*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fQTextBrowser_virtualbase_reload(self.h)

type QTextBrowserreloadProc* = proc(): void
proc onreload*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserreloadProc) =
  # TODO check subclass
  var tmp = new QTextBrowserreloadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_reload(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_reload(self: ptr cQTextBrowser, slot: int): void {.exportc: "miqt_exec_callback_QTextBrowser_reload ".} =
  var nimfunc = cast[ptr QTextBrowserreloadProc](cast[pointer](slot))

  nimfunc[]()
proc QTextBrowserevent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qcoreevent_types.QEvent): bool =
  fQTextBrowser_virtualbase_event(self.h, e.h)

type QTextBrowsereventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsereventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_event(self: ptr cQTextBrowser, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QTextBrowser_event ".} =
  var nimfunc = cast[ptr QTextBrowsereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextBrowserkeyPressEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QKeyEvent): void =
  fQTextBrowser_virtualbase_keyPressEvent(self.h, ev.h)

type QTextBrowserkeyPressEventProc* = proc(ev: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_keyPressEvent(self: ptr cQTextBrowser, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_keyPressEvent ".} =
  var nimfunc = cast[ptr QTextBrowserkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev)


  nimfunc[](slotval1)
proc QTextBrowsermouseMoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QMouseEvent): void =
  fQTextBrowser_virtualbase_mouseMoveEvent(self.h, ev.h)

type QTextBrowsermouseMoveEventProc* = proc(ev: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsermouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsermouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_mouseMoveEvent(self: ptr cQTextBrowser, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QTextBrowsermouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)


  nimfunc[](slotval1)
proc QTextBrowsermousePressEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QMouseEvent): void =
  fQTextBrowser_virtualbase_mousePressEvent(self.h, ev.h)

type QTextBrowsermousePressEventProc* = proc(ev: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsermousePressEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsermousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_mousePressEvent(self: ptr cQTextBrowser, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_mousePressEvent ".} =
  var nimfunc = cast[ptr QTextBrowsermousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)


  nimfunc[](slotval1)
proc QTextBrowsermouseReleaseEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QMouseEvent): void =
  fQTextBrowser_virtualbase_mouseReleaseEvent(self.h, ev.h)

type QTextBrowsermouseReleaseEventProc* = proc(ev: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsermouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsermouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_mouseReleaseEvent(self: ptr cQTextBrowser, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QTextBrowsermouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)


  nimfunc[](slotval1)
proc QTextBrowserfocusOutEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QFocusEvent): void =
  fQTextBrowser_virtualbase_focusOutEvent(self.h, ev.h)

type QTextBrowserfocusOutEventProc* = proc(ev: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_focusOutEvent(self: ptr cQTextBrowser, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_focusOutEvent ".} =
  var nimfunc = cast[ptr QTextBrowserfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: ev)


  nimfunc[](slotval1)
proc QTextBrowserfocusNextPrevChild*(self: gen_qtextbrowser_types.QTextBrowser, next: bool): bool =
  fQTextBrowser_virtualbase_focusNextPrevChild(self.h, next)

type QTextBrowserfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QTextBrowserfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_focusNextPrevChild(self: ptr cQTextBrowser, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTextBrowser_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QTextBrowserfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextBrowserpaintEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QPaintEvent): void =
  fQTextBrowser_virtualbase_paintEvent(self.h, e.h)

type QTextBrowserpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserpaintEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_paintEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_paintEvent ".} =
  var nimfunc = cast[ptr QTextBrowserpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowserinputMethodQuery*(self: gen_qtextbrowser_types.QTextBrowser, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTextBrowser_virtualbase_inputMethodQuery(self.h, cint(property)))

type QTextBrowserinputMethodQueryProc* = proc(property: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QTextBrowserinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_inputMethodQuery(self: ptr cQTextBrowser, slot: int, property: cint): pointer {.exportc: "miqt_exec_callback_QTextBrowser_inputMethodQuery ".} =
  var nimfunc = cast[ptr QTextBrowserinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(property)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTextBrowsertimerEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qcoreevent_types.QTimerEvent): void =
  fQTextBrowser_virtualbase_timerEvent(self.h, e.h)

type QTextBrowsertimerEventProc* = proc(e: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsertimerEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_timerEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_timerEvent ".} =
  var nimfunc = cast[ptr QTextBrowsertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowserkeyReleaseEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QKeyEvent): void =
  fQTextBrowser_virtualbase_keyReleaseEvent(self.h, e.h)

type QTextBrowserkeyReleaseEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_keyReleaseEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QTextBrowserkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowserresizeEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QResizeEvent): void =
  fQTextBrowser_virtualbase_resizeEvent(self.h, e.h)

type QTextBrowserresizeEventProc* = proc(e: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserresizeEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_resizeEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_resizeEvent ".} =
  var nimfunc = cast[ptr QTextBrowserresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowsermouseDoubleClickEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QMouseEvent): void =
  fQTextBrowser_virtualbase_mouseDoubleClickEvent(self.h, e.h)

type QTextBrowsermouseDoubleClickEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsermouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsermouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_mouseDoubleClickEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QTextBrowsermouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowsercontextMenuEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QContextMenuEvent): void =
  fQTextBrowser_virtualbase_contextMenuEvent(self.h, e.h)

type QTextBrowsercontextMenuEventProc* = proc(e: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsercontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsercontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_contextMenuEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_contextMenuEvent ".} =
  var nimfunc = cast[ptr QTextBrowsercontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowserdragEnterEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDragEnterEvent): void =
  fQTextBrowser_virtualbase_dragEnterEvent(self.h, e.h)

type QTextBrowserdragEnterEventProc* = proc(e: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_dragEnterEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_dragEnterEvent ".} =
  var nimfunc = cast[ptr QTextBrowserdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowserdragLeaveEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDragLeaveEvent): void =
  fQTextBrowser_virtualbase_dragLeaveEvent(self.h, e.h)

type QTextBrowserdragLeaveEventProc* = proc(e: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_dragLeaveEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QTextBrowserdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowserdragMoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDragMoveEvent): void =
  fQTextBrowser_virtualbase_dragMoveEvent(self.h, e.h)

type QTextBrowserdragMoveEventProc* = proc(e: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_dragMoveEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_dragMoveEvent ".} =
  var nimfunc = cast[ptr QTextBrowserdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowserdropEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDropEvent): void =
  fQTextBrowser_virtualbase_dropEvent(self.h, e.h)

type QTextBrowserdropEventProc* = proc(e: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserdropEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_dropEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_dropEvent ".} =
  var nimfunc = cast[ptr QTextBrowserdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowserfocusInEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QFocusEvent): void =
  fQTextBrowser_virtualbase_focusInEvent(self.h, e.h)

type QTextBrowserfocusInEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserfocusInEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_focusInEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_focusInEvent ".} =
  var nimfunc = cast[ptr QTextBrowserfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowsershowEvent*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qevent_types.QShowEvent): void =
  fQTextBrowser_virtualbase_showEvent(self.h, param1.h)

type QTextBrowsershowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsershowEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsershowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_showEvent(self: ptr cQTextBrowser, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_showEvent ".} =
  var nimfunc = cast[ptr QTextBrowsershowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QTextBrowserchangeEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qcoreevent_types.QEvent): void =
  fQTextBrowser_virtualbase_changeEvent(self.h, e.h)

type QTextBrowserchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserchangeEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_changeEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_changeEvent ".} =
  var nimfunc = cast[ptr QTextBrowserchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowserwheelEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QWheelEvent): void =
  fQTextBrowser_virtualbase_wheelEvent(self.h, e.h)

type QTextBrowserwheelEventProc* = proc(e: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserwheelEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_wheelEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_wheelEvent ".} =
  var nimfunc = cast[ptr QTextBrowserwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QTextBrowsercreateMimeDataFromSelection*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fQTextBrowser_virtualbase_createMimeDataFromSelection(self.h))

type QTextBrowsercreateMimeDataFromSelectionProc* = proc(): gen_qmimedata_types.QMimeData
proc oncreateMimeDataFromSelection*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsercreateMimeDataFromSelectionProc) =
  # TODO check subclass
  var tmp = new QTextBrowsercreateMimeDataFromSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_createMimeDataFromSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_createMimeDataFromSelection(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_createMimeDataFromSelection ".} =
  var nimfunc = cast[ptr QTextBrowsercreateMimeDataFromSelectionProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextBrowsercanInsertFromMimeData*(self: gen_qtextbrowser_types.QTextBrowser, source: gen_qmimedata_types.QMimeData): bool =
  fQTextBrowser_virtualbase_canInsertFromMimeData(self.h, source.h)

type QTextBrowsercanInsertFromMimeDataProc* = proc(source: gen_qmimedata_types.QMimeData): bool
proc oncanInsertFromMimeData*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsercanInsertFromMimeDataProc) =
  # TODO check subclass
  var tmp = new QTextBrowsercanInsertFromMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_canInsertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_canInsertFromMimeData(self: ptr cQTextBrowser, slot: int, source: pointer): bool {.exportc: "miqt_exec_callback_QTextBrowser_canInsertFromMimeData ".} =
  var nimfunc = cast[ptr QTextBrowsercanInsertFromMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextBrowserinsertFromMimeData*(self: gen_qtextbrowser_types.QTextBrowser, source: gen_qmimedata_types.QMimeData): void =
  fQTextBrowser_virtualbase_insertFromMimeData(self.h, source.h)

type QTextBrowserinsertFromMimeDataProc* = proc(source: gen_qmimedata_types.QMimeData): void
proc oninsertFromMimeData*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserinsertFromMimeDataProc) =
  # TODO check subclass
  var tmp = new QTextBrowserinsertFromMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_insertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_insertFromMimeData(self: ptr cQTextBrowser, slot: int, source: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_insertFromMimeData ".} =
  var nimfunc = cast[ptr QTextBrowserinsertFromMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)


  nimfunc[](slotval1)
proc QTextBrowserinputMethodEvent*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qevent_types.QInputMethodEvent): void =
  fQTextBrowser_virtualbase_inputMethodEvent(self.h, param1.h)

type QTextBrowserinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_inputMethodEvent(self: ptr cQTextBrowser, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_inputMethodEvent ".} =
  var nimfunc = cast[ptr QTextBrowserinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QTextBrowserscrollContentsBy*(self: gen_qtextbrowser_types.QTextBrowser, dx: cint, dy: cint): void =
  fQTextBrowser_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTextBrowserscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QTextBrowserscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_scrollContentsBy(self: ptr cQTextBrowser, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTextBrowser_scrollContentsBy ".} =
  var nimfunc = cast[ptr QTextBrowserscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QTextBrowserdoSetTextCursor*(self: gen_qtextbrowser_types.QTextBrowser, cursor: gen_qtextcursor_types.QTextCursor): void =
  fQTextBrowser_virtualbase_doSetTextCursor(self.h, cursor.h)

type QTextBrowserdoSetTextCursorProc* = proc(cursor: gen_qtextcursor_types.QTextCursor): void
proc ondoSetTextCursor*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserdoSetTextCursorProc) =
  # TODO check subclass
  var tmp = new QTextBrowserdoSetTextCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_doSetTextCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_doSetTextCursor(self: ptr cQTextBrowser, slot: int, cursor: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_doSetTextCursor ".} =
  var nimfunc = cast[ptr QTextBrowserdoSetTextCursorProc](cast[pointer](slot))
  let slotval1 = gen_qtextcursor_types.QTextCursor(h: cursor)


  nimfunc[](slotval1)
proc QTextBrowserminimumSizeHint*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTextBrowser_virtualbase_minimumSizeHint(self.h))

type QTextBrowserminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QTextBrowserminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_minimumSizeHint(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_minimumSizeHint ".} =
  var nimfunc = cast[ptr QTextBrowserminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextBrowsersizeHint*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTextBrowser_virtualbase_sizeHint(self.h))

type QTextBrowsersizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsersizeHintProc) =
  # TODO check subclass
  var tmp = new QTextBrowsersizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_sizeHint(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_sizeHint ".} =
  var nimfunc = cast[ptr QTextBrowsersizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextBrowsersetupViewport*(self: gen_qtextbrowser_types.QTextBrowser, viewport: gen_qwidget_types.QWidget): void =
  fQTextBrowser_virtualbase_setupViewport(self.h, viewport.h)

type QTextBrowsersetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsersetupViewportProc) =
  # TODO check subclass
  var tmp = new QTextBrowsersetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_setupViewport(self: ptr cQTextBrowser, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_setupViewport ".} =
  var nimfunc = cast[ptr QTextBrowsersetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QTextBrowsereventFilter*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQTextBrowser_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QTextBrowsereventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsereventFilterProc) =
  # TODO check subclass
  var tmp = new QTextBrowsereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_eventFilter(self: ptr cQTextBrowser, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QTextBrowser_eventFilter ".} =
  var nimfunc = cast[ptr QTextBrowsereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTextBrowserviewportEvent*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qcoreevent_types.QEvent): bool =
  fQTextBrowser_virtualbase_viewportEvent(self.h, param1.h)

type QTextBrowserviewportEventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserviewportEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_viewportEvent(self: ptr cQTextBrowser, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QTextBrowser_viewportEvent ".} =
  var nimfunc = cast[ptr QTextBrowserviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextBrowserviewportSizeHint*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTextBrowser_virtualbase_viewportSizeHint(self.h))

type QTextBrowserviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QTextBrowserviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_viewportSizeHint(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_viewportSizeHint ".} =
  var nimfunc = cast[ptr QTextBrowserviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextBrowserdevType*(self: gen_qtextbrowser_types.QTextBrowser, ): cint =
  fQTextBrowser_virtualbase_devType(self.h)

type QTextBrowserdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserdevTypeProc) =
  # TODO check subclass
  var tmp = new QTextBrowserdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_devType(self: ptr cQTextBrowser, slot: int): cint {.exportc: "miqt_exec_callback_QTextBrowser_devType ".} =
  var nimfunc = cast[ptr QTextBrowserdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTextBrowsersetVisible*(self: gen_qtextbrowser_types.QTextBrowser, visible: bool): void =
  fQTextBrowser_virtualbase_setVisible(self.h, visible)

type QTextBrowsersetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsersetVisibleProc) =
  # TODO check subclass
  var tmp = new QTextBrowsersetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_setVisible(self: ptr cQTextBrowser, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTextBrowser_setVisible ".} =
  var nimfunc = cast[ptr QTextBrowsersetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QTextBrowserheightForWidth*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint): cint =
  fQTextBrowser_virtualbase_heightForWidth(self.h, param1)

type QTextBrowserheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserheightForWidthProc) =
  # TODO check subclass
  var tmp = new QTextBrowserheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_heightForWidth(self: ptr cQTextBrowser, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTextBrowser_heightForWidth ".} =
  var nimfunc = cast[ptr QTextBrowserheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextBrowserhasHeightForWidth*(self: gen_qtextbrowser_types.QTextBrowser, ): bool =
  fQTextBrowser_virtualbase_hasHeightForWidth(self.h)

type QTextBrowserhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QTextBrowserhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_hasHeightForWidth(self: ptr cQTextBrowser, slot: int): bool {.exportc: "miqt_exec_callback_QTextBrowser_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QTextBrowserhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTextBrowserpaintEngine*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQTextBrowser_virtualbase_paintEngine(self.h))

type QTextBrowserpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserpaintEngineProc) =
  # TODO check subclass
  var tmp = new QTextBrowserpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_paintEngine(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_paintEngine ".} =
  var nimfunc = cast[ptr QTextBrowserpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextBrowserenterEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qcoreevent_types.QEvent): void =
  fQTextBrowser_virtualbase_enterEvent(self.h, event.h)

type QTextBrowserenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserenterEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_enterEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_enterEvent ".} =
  var nimfunc = cast[ptr QTextBrowserenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTextBrowserleaveEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qcoreevent_types.QEvent): void =
  fQTextBrowser_virtualbase_leaveEvent(self.h, event.h)

type QTextBrowserleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserleaveEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_leaveEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_leaveEvent ".} =
  var nimfunc = cast[ptr QTextBrowserleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTextBrowsermoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QMoveEvent): void =
  fQTextBrowser_virtualbase_moveEvent(self.h, event.h)

type QTextBrowsermoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsermoveEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsermoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_moveEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_moveEvent ".} =
  var nimfunc = cast[ptr QTextBrowsermoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTextBrowsercloseEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QCloseEvent): void =
  fQTextBrowser_virtualbase_closeEvent(self.h, event.h)

type QTextBrowsercloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsercloseEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsercloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_closeEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_closeEvent ".} =
  var nimfunc = cast[ptr QTextBrowsercloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QTextBrowsertabletEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QTabletEvent): void =
  fQTextBrowser_virtualbase_tabletEvent(self.h, event.h)

type QTextBrowsertabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsertabletEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsertabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_tabletEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_tabletEvent ".} =
  var nimfunc = cast[ptr QTextBrowsertabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QTextBrowseractionEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QActionEvent): void =
  fQTextBrowser_virtualbase_actionEvent(self.h, event.h)

type QTextBrowseractionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowseractionEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowseractionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_actionEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_actionEvent ".} =
  var nimfunc = cast[ptr QTextBrowseractionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QTextBrowserhideEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QHideEvent): void =
  fQTextBrowser_virtualbase_hideEvent(self.h, event.h)

type QTextBrowserhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserhideEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_hideEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_hideEvent ".} =
  var nimfunc = cast[ptr QTextBrowserhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QTextBrowsernativeEvent*(self: gen_qtextbrowser_types.QTextBrowser, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQTextBrowser_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTextBrowsernativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsernativeEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsernativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_nativeEvent(self: ptr cQTextBrowser, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QTextBrowser_nativeEvent ".} =
  var nimfunc = cast[ptr QTextBrowsernativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTextBrowsermetric*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint): cint =
  fQTextBrowser_virtualbase_metric(self.h, cint(param1))

type QTextBrowsermetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsermetricProc) =
  # TODO check subclass
  var tmp = new QTextBrowsermetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_metric(self: ptr cQTextBrowser, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTextBrowser_metric ".} =
  var nimfunc = cast[ptr QTextBrowsermetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTextBrowserinitPainter*(self: gen_qtextbrowser_types.QTextBrowser, painter: gen_qpainter_types.QPainter): void =
  fQTextBrowser_virtualbase_initPainter(self.h, painter.h)

type QTextBrowserinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserinitPainterProc) =
  # TODO check subclass
  var tmp = new QTextBrowserinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_initPainter(self: ptr cQTextBrowser, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_initPainter ".} =
  var nimfunc = cast[ptr QTextBrowserinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QTextBrowserredirected*(self: gen_qtextbrowser_types.QTextBrowser, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQTextBrowser_virtualbase_redirected(self.h, offset.h))

type QTextBrowserredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserredirectedProc) =
  # TODO check subclass
  var tmp = new QTextBrowserredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_redirected(self: ptr cQTextBrowser, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTextBrowser_redirected ".} =
  var nimfunc = cast[ptr QTextBrowserredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTextBrowsersharedPainter*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQTextBrowser_virtualbase_sharedPainter(self.h))

type QTextBrowsersharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsersharedPainterProc) =
  # TODO check subclass
  var tmp = new QTextBrowsersharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_sharedPainter(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_sharedPainter ".} =
  var nimfunc = cast[ptr QTextBrowsersharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTextBrowserchildEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qcoreevent_types.QChildEvent): void =
  fQTextBrowser_virtualbase_childEvent(self.h, event.h)

type QTextBrowserchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserchildEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowserchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_childEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_childEvent ".} =
  var nimfunc = cast[ptr QTextBrowserchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTextBrowsercustomEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qcoreevent_types.QEvent): void =
  fQTextBrowser_virtualbase_customEvent(self.h, event.h)

type QTextBrowsercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsercustomEventProc) =
  # TODO check subclass
  var tmp = new QTextBrowsercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_customEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_customEvent ".} =
  var nimfunc = cast[ptr QTextBrowsercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTextBrowserconnectNotify*(self: gen_qtextbrowser_types.QTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTextBrowser_virtualbase_connectNotify(self.h, signal.h)

type QTextBrowserconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTextBrowserconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_connectNotify(self: ptr cQTextBrowser, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_connectNotify ".} =
  var nimfunc = cast[ptr QTextBrowserconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTextBrowserdisconnectNotify*(self: gen_qtextbrowser_types.QTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTextBrowser_virtualbase_disconnectNotify(self.h, signal.h)

type QTextBrowserdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTextBrowserdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_disconnectNotify(self: ptr cQTextBrowser, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_disconnectNotify ".} =
  var nimfunc = cast[ptr QTextBrowserdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtextbrowser_types.QTextBrowser): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextBrowser_staticMetaObject())
proc delete*(self: gen_qtextbrowser_types.QTextBrowser) =
  fcQTextBrowser_delete(self.h)
