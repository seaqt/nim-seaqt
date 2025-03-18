import ./qtwidgets_pkg

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


{.compile("gen_qtextbrowser.cpp", QtWidgetsCFlags).}


import ./gen_qtextbrowser_types
export gen_qtextbrowser_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmargins_types,
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
  ./gen_qstyleoption_types,
  ./gen_qtextedit,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmargins_types,
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
  gen_qstyleoption_types,
  gen_qtextedit,
  gen_qwidget_types

type cQTextBrowser*{.exportc: "QTextBrowser", incompleteStruct.} = object

proc fcQTextBrowser_metaObject(self: pointer): pointer {.importc: "QTextBrowser_metaObject".}
proc fcQTextBrowser_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextBrowser_metacast".}
proc fcQTextBrowser_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextBrowser_metacall".}
proc fcQTextBrowser_tr(s: cstring): struct_miqt_string {.importc: "QTextBrowser_tr".}
proc fcQTextBrowser_source(self: pointer): pointer {.importc: "QTextBrowser_source".}
proc fcQTextBrowser_sourceType(self: pointer): cint {.importc: "QTextBrowser_sourceType".}
proc fcQTextBrowser_searchPaths(self: pointer): struct_miqt_array {.importc: "QTextBrowser_searchPaths".}
proc fcQTextBrowser_setSearchPaths(self: pointer, paths: struct_miqt_array): void {.importc: "QTextBrowser_setSearchPaths".}
proc fcQTextBrowser_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QTextBrowser_loadResource".}
proc fcQTextBrowser_isBackwardAvailable(self: pointer): bool {.importc: "QTextBrowser_isBackwardAvailable".}
proc fcQTextBrowser_isForwardAvailable(self: pointer): bool {.importc: "QTextBrowser_isForwardAvailable".}
proc fcQTextBrowser_clearHistory(self: pointer): void {.importc: "QTextBrowser_clearHistory".}
proc fcQTextBrowser_historyTitle(self: pointer, param1: cint): struct_miqt_string {.importc: "QTextBrowser_historyTitle".}
proc fcQTextBrowser_historyUrl(self: pointer, param1: cint): pointer {.importc: "QTextBrowser_historyUrl".}
proc fcQTextBrowser_backwardHistoryCount(self: pointer): cint {.importc: "QTextBrowser_backwardHistoryCount".}
proc fcQTextBrowser_forwardHistoryCount(self: pointer): cint {.importc: "QTextBrowser_forwardHistoryCount".}
proc fcQTextBrowser_openExternalLinks(self: pointer): bool {.importc: "QTextBrowser_openExternalLinks".}
proc fcQTextBrowser_setOpenExternalLinks(self: pointer, open: bool): void {.importc: "QTextBrowser_setOpenExternalLinks".}
proc fcQTextBrowser_openLinks(self: pointer): bool {.importc: "QTextBrowser_openLinks".}
proc fcQTextBrowser_setOpenLinks(self: pointer, open: bool): void {.importc: "QTextBrowser_setOpenLinks".}
proc fcQTextBrowser_setSource(self: pointer, name: pointer): void {.importc: "QTextBrowser_setSource".}
proc fcQTextBrowser_backward(self: pointer): void {.importc: "QTextBrowser_backward".}
proc fcQTextBrowser_forward(self: pointer): void {.importc: "QTextBrowser_forward".}
proc fcQTextBrowser_home(self: pointer): void {.importc: "QTextBrowser_home".}
proc fcQTextBrowser_reload(self: pointer): void {.importc: "QTextBrowser_reload".}
proc fcQTextBrowser_backwardAvailable(self: pointer, param1: bool): void {.importc: "QTextBrowser_backwardAvailable".}
proc fcQTextBrowser_connect_backwardAvailable(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_backwardAvailable".}
proc fcQTextBrowser_forwardAvailable(self: pointer, param1: bool): void {.importc: "QTextBrowser_forwardAvailable".}
proc fcQTextBrowser_connect_forwardAvailable(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_forwardAvailable".}
proc fcQTextBrowser_historyChanged(self: pointer): void {.importc: "QTextBrowser_historyChanged".}
proc fcQTextBrowser_connect_historyChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_historyChanged".}
proc fcQTextBrowser_sourceChanged(self: pointer, param1: pointer): void {.importc: "QTextBrowser_sourceChanged".}
proc fcQTextBrowser_connect_sourceChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_sourceChanged".}
proc fcQTextBrowser_highlighted(self: pointer, param1: pointer): void {.importc: "QTextBrowser_highlighted".}
proc fcQTextBrowser_connect_highlighted(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_highlighted".}
proc fcQTextBrowser_anchorClicked(self: pointer, param1: pointer): void {.importc: "QTextBrowser_anchorClicked".}
proc fcQTextBrowser_connect_anchorClicked(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_anchorClicked".}
proc fcQTextBrowser_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextBrowser_tr2".}
proc fcQTextBrowser_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextBrowser_tr3".}
proc fcQTextBrowser_setSource2(self: pointer, name: pointer, typeVal: cint): void {.importc: "QTextBrowser_setSource2".}
proc fcQTextBrowser_vtbl(self: pointer): pointer {.importc: "QTextBrowser_vtbl".}
proc fcQTextBrowser_vdata(self: pointer): pointer {.importc: "QTextBrowser_vdata".}

type cQTextBrowserVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  loadResource*: proc(self: pointer, typeVal: cint, name: pointer): pointer {.cdecl, raises: [], gcsafe.}
  backward*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  forward*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  home*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reload*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  doSetSource*: proc(self: pointer, name: pointer, typeVal: cint): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, property: cint): pointer {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  createMimeDataFromSelection*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  canInsertFromMimeData*: proc(self: pointer, source: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertFromMimeData*: proc(self: pointer, source: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  doSetTextCursor*: proc(self: pointer, cursor: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTextBrowser_virtualbase_metaObject(self: pointer): pointer {.importc: "QTextBrowser_virtualbase_metaObject".}
proc fcQTextBrowser_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextBrowser_virtualbase_metacast".}
proc fcQTextBrowser_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextBrowser_virtualbase_metacall".}
proc fcQTextBrowser_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QTextBrowser_virtualbase_loadResource".}
proc fcQTextBrowser_virtualbase_backward(self: pointer): void {.importc: "QTextBrowser_virtualbase_backward".}
proc fcQTextBrowser_virtualbase_forward(self: pointer): void {.importc: "QTextBrowser_virtualbase_forward".}
proc fcQTextBrowser_virtualbase_home(self: pointer): void {.importc: "QTextBrowser_virtualbase_home".}
proc fcQTextBrowser_virtualbase_reload(self: pointer): void {.importc: "QTextBrowser_virtualbase_reload".}
proc fcQTextBrowser_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QTextBrowser_virtualbase_event".}
proc fcQTextBrowser_virtualbase_keyPressEvent(self: pointer, ev: pointer): void {.importc: "QTextBrowser_virtualbase_keyPressEvent".}
proc fcQTextBrowser_virtualbase_mouseMoveEvent(self: pointer, ev: pointer): void {.importc: "QTextBrowser_virtualbase_mouseMoveEvent".}
proc fcQTextBrowser_virtualbase_mousePressEvent(self: pointer, ev: pointer): void {.importc: "QTextBrowser_virtualbase_mousePressEvent".}
proc fcQTextBrowser_virtualbase_mouseReleaseEvent(self: pointer, ev: pointer): void {.importc: "QTextBrowser_virtualbase_mouseReleaseEvent".}
proc fcQTextBrowser_virtualbase_focusOutEvent(self: pointer, ev: pointer): void {.importc: "QTextBrowser_virtualbase_focusOutEvent".}
proc fcQTextBrowser_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTextBrowser_virtualbase_focusNextPrevChild".}
proc fcQTextBrowser_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_paintEvent".}
proc fcQTextBrowser_virtualbase_doSetSource(self: pointer, name: pointer, typeVal: cint): void {.importc: "QTextBrowser_virtualbase_doSetSource".}
proc fcQTextBrowser_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QTextBrowser_virtualbase_inputMethodQuery".}
proc fcQTextBrowser_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_timerEvent".}
proc fcQTextBrowser_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_keyReleaseEvent".}
proc fcQTextBrowser_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_resizeEvent".}
proc fcQTextBrowser_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_mouseDoubleClickEvent".}
proc fcQTextBrowser_virtualbase_contextMenuEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_contextMenuEvent".}
proc fcQTextBrowser_virtualbase_dragEnterEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_dragEnterEvent".}
proc fcQTextBrowser_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_dragLeaveEvent".}
proc fcQTextBrowser_virtualbase_dragMoveEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_dragMoveEvent".}
proc fcQTextBrowser_virtualbase_dropEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_dropEvent".}
proc fcQTextBrowser_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_focusInEvent".}
proc fcQTextBrowser_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QTextBrowser_virtualbase_showEvent".}
proc fcQTextBrowser_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_changeEvent".}
proc fcQTextBrowser_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_wheelEvent".}
proc fcQTextBrowser_virtualbase_createMimeDataFromSelection(self: pointer): pointer {.importc: "QTextBrowser_virtualbase_createMimeDataFromSelection".}
proc fcQTextBrowser_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool {.importc: "QTextBrowser_virtualbase_canInsertFromMimeData".}
proc fcQTextBrowser_virtualbase_insertFromMimeData(self: pointer, source: pointer): void {.importc: "QTextBrowser_virtualbase_insertFromMimeData".}
proc fcQTextBrowser_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QTextBrowser_virtualbase_inputMethodEvent".}
proc fcQTextBrowser_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QTextBrowser_virtualbase_scrollContentsBy".}
proc fcQTextBrowser_virtualbase_doSetTextCursor(self: pointer, cursor: pointer): void {.importc: "QTextBrowser_virtualbase_doSetTextCursor".}
proc fcQTextBrowser_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QTextBrowser_virtualbase_minimumSizeHint".}
proc fcQTextBrowser_virtualbase_sizeHint(self: pointer): pointer {.importc: "QTextBrowser_virtualbase_sizeHint".}
proc fcQTextBrowser_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QTextBrowser_virtualbase_setupViewport".}
proc fcQTextBrowser_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QTextBrowser_virtualbase_eventFilter".}
proc fcQTextBrowser_virtualbase_viewportEvent(self: pointer, param1: pointer): bool {.importc: "QTextBrowser_virtualbase_viewportEvent".}
proc fcQTextBrowser_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QTextBrowser_virtualbase_viewportSizeHint".}
proc fcQTextBrowser_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QTextBrowser_virtualbase_initStyleOption".}
proc fcQTextBrowser_virtualbase_devType(self: pointer): cint {.importc: "QTextBrowser_virtualbase_devType".}
proc fcQTextBrowser_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTextBrowser_virtualbase_setVisible".}
proc fcQTextBrowser_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTextBrowser_virtualbase_heightForWidth".}
proc fcQTextBrowser_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QTextBrowser_virtualbase_hasHeightForWidth".}
proc fcQTextBrowser_virtualbase_paintEngine(self: pointer): pointer {.importc: "QTextBrowser_virtualbase_paintEngine".}
proc fcQTextBrowser_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_enterEvent".}
proc fcQTextBrowser_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_leaveEvent".}
proc fcQTextBrowser_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_moveEvent".}
proc fcQTextBrowser_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_closeEvent".}
proc fcQTextBrowser_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_tabletEvent".}
proc fcQTextBrowser_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_actionEvent".}
proc fcQTextBrowser_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_hideEvent".}
proc fcQTextBrowser_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QTextBrowser_virtualbase_nativeEvent".}
proc fcQTextBrowser_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QTextBrowser_virtualbase_metric".}
proc fcQTextBrowser_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QTextBrowser_virtualbase_initPainter".}
proc fcQTextBrowser_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QTextBrowser_virtualbase_redirected".}
proc fcQTextBrowser_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QTextBrowser_virtualbase_sharedPainter".}
proc fcQTextBrowser_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_childEvent".}
proc fcQTextBrowser_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_customEvent".}
proc fcQTextBrowser_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTextBrowser_virtualbase_connectNotify".}
proc fcQTextBrowser_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTextBrowser_virtualbase_disconnectNotify".}
proc fcQTextBrowser_protectedbase_zoomInF(self: pointer, range: float32): void {.importc: "QTextBrowser_protectedbase_zoomInF".}
proc fcQTextBrowser_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QTextBrowser_protectedbase_setViewportMargins".}
proc fcQTextBrowser_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QTextBrowser_protectedbase_viewportMargins".}
proc fcQTextBrowser_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QTextBrowser_protectedbase_drawFrame".}
proc fcQTextBrowser_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QTextBrowser_protectedbase_updateMicroFocus".}
proc fcQTextBrowser_protectedbase_create(self: pointer): void {.importc: "QTextBrowser_protectedbase_create".}
proc fcQTextBrowser_protectedbase_destroy(self: pointer): void {.importc: "QTextBrowser_protectedbase_destroy".}
proc fcQTextBrowser_protectedbase_focusNextChild(self: pointer): bool {.importc: "QTextBrowser_protectedbase_focusNextChild".}
proc fcQTextBrowser_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QTextBrowser_protectedbase_focusPreviousChild".}
proc fcQTextBrowser_protectedbase_sender(self: pointer): pointer {.importc: "QTextBrowser_protectedbase_sender".}
proc fcQTextBrowser_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTextBrowser_protectedbase_senderSignalIndex".}
proc fcQTextBrowser_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTextBrowser_protectedbase_receivers".}
proc fcQTextBrowser_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTextBrowser_protectedbase_isSignalConnected".}
proc fcQTextBrowser_new(vtbl, vdata: pointer, parent: pointer): ptr cQTextBrowser {.importc: "QTextBrowser_new".}
proc fcQTextBrowser_new2(vtbl, vdata: pointer): ptr cQTextBrowser {.importc: "QTextBrowser_new2".}
proc fcQTextBrowser_staticMetaObject(): pointer {.importc: "QTextBrowser_staticMetaObject".}

proc metaObject*(self: gen_qtextbrowser_types.QTextBrowser): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextBrowser_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtextbrowser_types.QTextBrowser, param1: cstring): pointer =
  fcQTextBrowser_metacast(self.h, param1)

proc metacall*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextBrowser_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtextbrowser_types.QTextBrowser, s: cstring): string =
  let v_ms = fcQTextBrowser_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc source*(self: gen_qtextbrowser_types.QTextBrowser): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQTextBrowser_source(self.h), owned: true)

proc sourceType*(self: gen_qtextbrowser_types.QTextBrowser): cint =
  cint(fcQTextBrowser_sourceType(self.h))

proc searchPaths*(self: gen_qtextbrowser_types.QTextBrowser): seq[string] =
  var v_ma = fcQTextBrowser_searchPaths(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setSearchPaths*(self: gen_qtextbrowser_types.QTextBrowser, paths: openArray[string]): void =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: if len(paths[i]) > 0: addr paths[i][0] else: nil, len: csize_t(len(paths[i])))

  fcQTextBrowser_setSearchPaths(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc loadResource*(self: gen_qtextbrowser_types.QTextBrowser, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextBrowser_loadResource(self.h, typeVal, name.h), owned: true)

proc isBackwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser): bool =
  fcQTextBrowser_isBackwardAvailable(self.h)

proc isForwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser): bool =
  fcQTextBrowser_isForwardAvailable(self.h)

proc clearHistory*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_clearHistory(self.h)

proc historyTitle*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint): string =
  let v_ms = fcQTextBrowser_historyTitle(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc historyUrl*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQTextBrowser_historyUrl(self.h, param1), owned: true)

proc backwardHistoryCount*(self: gen_qtextbrowser_types.QTextBrowser): cint =
  fcQTextBrowser_backwardHistoryCount(self.h)

proc forwardHistoryCount*(self: gen_qtextbrowser_types.QTextBrowser): cint =
  fcQTextBrowser_forwardHistoryCount(self.h)

proc openExternalLinks*(self: gen_qtextbrowser_types.QTextBrowser): bool =
  fcQTextBrowser_openExternalLinks(self.h)

proc setOpenExternalLinks*(self: gen_qtextbrowser_types.QTextBrowser, open: bool): void =
  fcQTextBrowser_setOpenExternalLinks(self.h, open)

proc openLinks*(self: gen_qtextbrowser_types.QTextBrowser): bool =
  fcQTextBrowser_openLinks(self.h)

proc setOpenLinks*(self: gen_qtextbrowser_types.QTextBrowser, open: bool): void =
  fcQTextBrowser_setOpenLinks(self.h, open)

proc setSource*(self: gen_qtextbrowser_types.QTextBrowser, name: gen_qurl_types.QUrl): void =
  fcQTextBrowser_setSource(self.h, name.h)

proc backward*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_backward(self.h)

proc forward*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_forward(self.h)

proc home*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_home(self.h)

proc reload*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_reload(self.h)

proc backwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, param1: bool): void =
  fcQTextBrowser_backwardAvailable(self.h, param1)

type QTextBrowserbackwardAvailableSlot* = proc(param1: bool)
proc fcQTextBrowser_slot_callback_backwardAvailable(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowserbackwardAvailableSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQTextBrowser_slot_callback_backwardAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowserbackwardAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBackwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserbackwardAvailableSlot) =
  var tmp = new QTextBrowserbackwardAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_backwardAvailable(self.h, cast[int](addr tmp[]), fcQTextBrowser_slot_callback_backwardAvailable, fcQTextBrowser_slot_callback_backwardAvailable_release)

proc forwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, param1: bool): void =
  fcQTextBrowser_forwardAvailable(self.h, param1)

type QTextBrowserforwardAvailableSlot* = proc(param1: bool)
proc fcQTextBrowser_slot_callback_forwardAvailable(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowserforwardAvailableSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQTextBrowser_slot_callback_forwardAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowserforwardAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onForwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserforwardAvailableSlot) =
  var tmp = new QTextBrowserforwardAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_forwardAvailable(self.h, cast[int](addr tmp[]), fcQTextBrowser_slot_callback_forwardAvailable, fcQTextBrowser_slot_callback_forwardAvailable_release)

proc historyChanged*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_historyChanged(self.h)

type QTextBrowserhistoryChangedSlot* = proc()
proc fcQTextBrowser_slot_callback_historyChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowserhistoryChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQTextBrowser_slot_callback_historyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowserhistoryChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHistoryChanged*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserhistoryChangedSlot) =
  var tmp = new QTextBrowserhistoryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_historyChanged(self.h, cast[int](addr tmp[]), fcQTextBrowser_slot_callback_historyChanged, fcQTextBrowser_slot_callback_historyChanged_release)

proc sourceChanged*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qurl_types.QUrl): void =
  fcQTextBrowser_sourceChanged(self.h, param1.h)

type QTextBrowsersourceChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc fcQTextBrowser_slot_callback_sourceChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowsersourceChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1, owned: false)

  nimfunc[](slotval1)

proc fcQTextBrowser_slot_callback_sourceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowsersourceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSourceChanged*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsersourceChangedSlot) =
  var tmp = new QTextBrowsersourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_sourceChanged(self.h, cast[int](addr tmp[]), fcQTextBrowser_slot_callback_sourceChanged, fcQTextBrowser_slot_callback_sourceChanged_release)

proc highlighted*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qurl_types.QUrl): void =
  fcQTextBrowser_highlighted(self.h, param1.h)

type QTextBrowserhighlightedSlot* = proc(param1: gen_qurl_types.QUrl)
proc fcQTextBrowser_slot_callback_highlighted(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowserhighlightedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1, owned: false)

  nimfunc[](slotval1)

proc fcQTextBrowser_slot_callback_highlighted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowserhighlightedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHighlighted*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserhighlightedSlot) =
  var tmp = new QTextBrowserhighlightedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_highlighted(self.h, cast[int](addr tmp[]), fcQTextBrowser_slot_callback_highlighted, fcQTextBrowser_slot_callback_highlighted_release)

proc anchorClicked*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qurl_types.QUrl): void =
  fcQTextBrowser_anchorClicked(self.h, param1.h)

type QTextBrowseranchorClickedSlot* = proc(param1: gen_qurl_types.QUrl)
proc fcQTextBrowser_slot_callback_anchorClicked(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowseranchorClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1, owned: false)

  nimfunc[](slotval1)

proc fcQTextBrowser_slot_callback_anchorClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowseranchorClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAnchorClicked*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowseranchorClickedSlot) =
  var tmp = new QTextBrowseranchorClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_anchorClicked(self.h, cast[int](addr tmp[]), fcQTextBrowser_slot_callback_anchorClicked, fcQTextBrowser_slot_callback_anchorClicked_release)

proc tr*(_: type gen_qtextbrowser_types.QTextBrowser, s: cstring, c: cstring): string =
  let v_ms = fcQTextBrowser_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtextbrowser_types.QTextBrowser, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextBrowser_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: gen_qtextbrowser_types.QTextBrowser, name: gen_qurl_types.QUrl, typeVal: cint): void =
  fcQTextBrowser_setSource2(self.h, name.h, cint(typeVal))

type QTextBrowsermetaObjectProc* = proc(self: QTextBrowser): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTextBrowsermetacastProc* = proc(self: QTextBrowser, param1: cstring): pointer {.raises: [], gcsafe.}
type QTextBrowsermetacallProc* = proc(self: QTextBrowser, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTextBrowserloadResourceProc* = proc(self: QTextBrowser, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTextBrowserbackwardProc* = proc(self: QTextBrowser): void {.raises: [], gcsafe.}
type QTextBrowserforwardProc* = proc(self: QTextBrowser): void {.raises: [], gcsafe.}
type QTextBrowserhomeProc* = proc(self: QTextBrowser): void {.raises: [], gcsafe.}
type QTextBrowserreloadProc* = proc(self: QTextBrowser): void {.raises: [], gcsafe.}
type QTextBrowsereventProc* = proc(self: QTextBrowser, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextBrowserkeyPressEventProc* = proc(self: QTextBrowser, ev: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTextBrowsermouseMoveEventProc* = proc(self: QTextBrowser, ev: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTextBrowsermousePressEventProc* = proc(self: QTextBrowser, ev: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTextBrowsermouseReleaseEventProc* = proc(self: QTextBrowser, ev: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTextBrowserfocusOutEventProc* = proc(self: QTextBrowser, ev: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTextBrowserfocusNextPrevChildProc* = proc(self: QTextBrowser, next: bool): bool {.raises: [], gcsafe.}
type QTextBrowserpaintEventProc* = proc(self: QTextBrowser, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QTextBrowserdoSetSourceProc* = proc(self: QTextBrowser, name: gen_qurl_types.QUrl, typeVal: cint): void {.raises: [], gcsafe.}
type QTextBrowserinputMethodQueryProc* = proc(self: QTextBrowser, property: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTextBrowsertimerEventProc* = proc(self: QTextBrowser, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTextBrowserkeyReleaseEventProc* = proc(self: QTextBrowser, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTextBrowserresizeEventProc* = proc(self: QTextBrowser, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QTextBrowsermouseDoubleClickEventProc* = proc(self: QTextBrowser, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTextBrowsercontextMenuEventProc* = proc(self: QTextBrowser, e: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QTextBrowserdragEnterEventProc* = proc(self: QTextBrowser, e: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QTextBrowserdragLeaveEventProc* = proc(self: QTextBrowser, e: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QTextBrowserdragMoveEventProc* = proc(self: QTextBrowser, e: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QTextBrowserdropEventProc* = proc(self: QTextBrowser, e: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QTextBrowserfocusInEventProc* = proc(self: QTextBrowser, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTextBrowsershowEventProc* = proc(self: QTextBrowser, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QTextBrowserchangeEventProc* = proc(self: QTextBrowser, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextBrowserwheelEventProc* = proc(self: QTextBrowser, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QTextBrowsercreateMimeDataFromSelectionProc* = proc(self: QTextBrowser): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QTextBrowsercanInsertFromMimeDataProc* = proc(self: QTextBrowser, source: gen_qmimedata_types.QMimeData): bool {.raises: [], gcsafe.}
type QTextBrowserinsertFromMimeDataProc* = proc(self: QTextBrowser, source: gen_qmimedata_types.QMimeData): void {.raises: [], gcsafe.}
type QTextBrowserinputMethodEventProc* = proc(self: QTextBrowser, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QTextBrowserscrollContentsByProc* = proc(self: QTextBrowser, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QTextBrowserdoSetTextCursorProc* = proc(self: QTextBrowser, cursor: gen_qtextcursor_types.QTextCursor): void {.raises: [], gcsafe.}
type QTextBrowserminimumSizeHintProc* = proc(self: QTextBrowser): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTextBrowsersizeHintProc* = proc(self: QTextBrowser): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTextBrowsersetupViewportProc* = proc(self: QTextBrowser, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QTextBrowsereventFilterProc* = proc(self: QTextBrowser, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextBrowserviewportEventProc* = proc(self: QTextBrowser, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextBrowserviewportSizeHintProc* = proc(self: QTextBrowser): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTextBrowserinitStyleOptionProc* = proc(self: QTextBrowser, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QTextBrowserdevTypeProc* = proc(self: QTextBrowser): cint {.raises: [], gcsafe.}
type QTextBrowsersetVisibleProc* = proc(self: QTextBrowser, visible: bool): void {.raises: [], gcsafe.}
type QTextBrowserheightForWidthProc* = proc(self: QTextBrowser, param1: cint): cint {.raises: [], gcsafe.}
type QTextBrowserhasHeightForWidthProc* = proc(self: QTextBrowser): bool {.raises: [], gcsafe.}
type QTextBrowserpaintEngineProc* = proc(self: QTextBrowser): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QTextBrowserenterEventProc* = proc(self: QTextBrowser, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QTextBrowserleaveEventProc* = proc(self: QTextBrowser, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextBrowsermoveEventProc* = proc(self: QTextBrowser, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QTextBrowsercloseEventProc* = proc(self: QTextBrowser, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QTextBrowsertabletEventProc* = proc(self: QTextBrowser, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QTextBrowseractionEventProc* = proc(self: QTextBrowser, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QTextBrowserhideEventProc* = proc(self: QTextBrowser, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QTextBrowsernativeEventProc* = proc(self: QTextBrowser, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QTextBrowsermetricProc* = proc(self: QTextBrowser, param1: cint): cint {.raises: [], gcsafe.}
type QTextBrowserinitPainterProc* = proc(self: QTextBrowser, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTextBrowserredirectedProc* = proc(self: QTextBrowser, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTextBrowsersharedPainterProc* = proc(self: QTextBrowser): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTextBrowserchildEventProc* = proc(self: QTextBrowser, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTextBrowsercustomEventProc* = proc(self: QTextBrowser, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextBrowserconnectNotifyProc* = proc(self: QTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextBrowserdisconnectNotifyProc* = proc(self: QTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QTextBrowserVTable* {.inheritable, pure.} = object
  vtbl: cQTextBrowserVTable
  metaObject*: QTextBrowsermetaObjectProc
  metacast*: QTextBrowsermetacastProc
  metacall*: QTextBrowsermetacallProc
  loadResource*: QTextBrowserloadResourceProc
  backward*: QTextBrowserbackwardProc
  forward*: QTextBrowserforwardProc
  home*: QTextBrowserhomeProc
  reload*: QTextBrowserreloadProc
  event*: QTextBrowsereventProc
  keyPressEvent*: QTextBrowserkeyPressEventProc
  mouseMoveEvent*: QTextBrowsermouseMoveEventProc
  mousePressEvent*: QTextBrowsermousePressEventProc
  mouseReleaseEvent*: QTextBrowsermouseReleaseEventProc
  focusOutEvent*: QTextBrowserfocusOutEventProc
  focusNextPrevChild*: QTextBrowserfocusNextPrevChildProc
  paintEvent*: QTextBrowserpaintEventProc
  doSetSource*: QTextBrowserdoSetSourceProc
  inputMethodQuery*: QTextBrowserinputMethodQueryProc
  timerEvent*: QTextBrowsertimerEventProc
  keyReleaseEvent*: QTextBrowserkeyReleaseEventProc
  resizeEvent*: QTextBrowserresizeEventProc
  mouseDoubleClickEvent*: QTextBrowsermouseDoubleClickEventProc
  contextMenuEvent*: QTextBrowsercontextMenuEventProc
  dragEnterEvent*: QTextBrowserdragEnterEventProc
  dragLeaveEvent*: QTextBrowserdragLeaveEventProc
  dragMoveEvent*: QTextBrowserdragMoveEventProc
  dropEvent*: QTextBrowserdropEventProc
  focusInEvent*: QTextBrowserfocusInEventProc
  showEvent*: QTextBrowsershowEventProc
  changeEvent*: QTextBrowserchangeEventProc
  wheelEvent*: QTextBrowserwheelEventProc
  createMimeDataFromSelection*: QTextBrowsercreateMimeDataFromSelectionProc
  canInsertFromMimeData*: QTextBrowsercanInsertFromMimeDataProc
  insertFromMimeData*: QTextBrowserinsertFromMimeDataProc
  inputMethodEvent*: QTextBrowserinputMethodEventProc
  scrollContentsBy*: QTextBrowserscrollContentsByProc
  doSetTextCursor*: QTextBrowserdoSetTextCursorProc
  minimumSizeHint*: QTextBrowserminimumSizeHintProc
  sizeHint*: QTextBrowsersizeHintProc
  setupViewport*: QTextBrowsersetupViewportProc
  eventFilter*: QTextBrowsereventFilterProc
  viewportEvent*: QTextBrowserviewportEventProc
  viewportSizeHint*: QTextBrowserviewportSizeHintProc
  initStyleOption*: QTextBrowserinitStyleOptionProc
  devType*: QTextBrowserdevTypeProc
  setVisible*: QTextBrowsersetVisibleProc
  heightForWidth*: QTextBrowserheightForWidthProc
  hasHeightForWidth*: QTextBrowserhasHeightForWidthProc
  paintEngine*: QTextBrowserpaintEngineProc
  enterEvent*: QTextBrowserenterEventProc
  leaveEvent*: QTextBrowserleaveEventProc
  moveEvent*: QTextBrowsermoveEventProc
  closeEvent*: QTextBrowsercloseEventProc
  tabletEvent*: QTextBrowsertabletEventProc
  actionEvent*: QTextBrowseractionEventProc
  hideEvent*: QTextBrowserhideEventProc
  nativeEvent*: QTextBrowsernativeEventProc
  metric*: QTextBrowsermetricProc
  initPainter*: QTextBrowserinitPainterProc
  redirected*: QTextBrowserredirectedProc
  sharedPainter*: QTextBrowsersharedPainterProc
  childEvent*: QTextBrowserchildEventProc
  customEvent*: QTextBrowsercustomEventProc
  connectNotify*: QTextBrowserconnectNotifyProc
  disconnectNotify*: QTextBrowserdisconnectNotifyProc

proc QTextBrowsermetaObject*(self: gen_qtextbrowser_types.QTextBrowser): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextBrowser_virtualbase_metaObject(self.h), owned: false)

proc QTextBrowsermetacast*(self: gen_qtextbrowser_types.QTextBrowser, param1: cstring): pointer =
  fcQTextBrowser_virtualbase_metacast(self.h, param1)

proc QTextBrowsermetacall*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextBrowser_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QTextBrowserloadResource*(self: gen_qtextbrowser_types.QTextBrowser, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextBrowser_virtualbase_loadResource(self.h, typeVal, name.h), owned: true)

proc QTextBrowserbackward*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_virtualbase_backward(self.h)

proc QTextBrowserforward*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_virtualbase_forward(self.h)

proc QTextBrowserhome*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_virtualbase_home(self.h)

proc QTextBrowserreload*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_virtualbase_reload(self.h)

proc QTextBrowserevent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qcoreevent_types.QEvent): bool =
  fcQTextBrowser_virtualbase_event(self.h, e.h)

proc QTextBrowserkeyPressEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QKeyEvent): void =
  fcQTextBrowser_virtualbase_keyPressEvent(self.h, ev.h)

proc QTextBrowsermouseMoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QMouseEvent): void =
  fcQTextBrowser_virtualbase_mouseMoveEvent(self.h, ev.h)

proc QTextBrowsermousePressEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QMouseEvent): void =
  fcQTextBrowser_virtualbase_mousePressEvent(self.h, ev.h)

proc QTextBrowsermouseReleaseEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QMouseEvent): void =
  fcQTextBrowser_virtualbase_mouseReleaseEvent(self.h, ev.h)

proc QTextBrowserfocusOutEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QFocusEvent): void =
  fcQTextBrowser_virtualbase_focusOutEvent(self.h, ev.h)

proc QTextBrowserfocusNextPrevChild*(self: gen_qtextbrowser_types.QTextBrowser, next: bool): bool =
  fcQTextBrowser_virtualbase_focusNextPrevChild(self.h, next)

proc QTextBrowserpaintEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QPaintEvent): void =
  fcQTextBrowser_virtualbase_paintEvent(self.h, e.h)

proc QTextBrowserdoSetSource*(self: gen_qtextbrowser_types.QTextBrowser, name: gen_qurl_types.QUrl, typeVal: cint): void =
  fcQTextBrowser_virtualbase_doSetSource(self.h, name.h, cint(typeVal))

proc QTextBrowserinputMethodQuery*(self: gen_qtextbrowser_types.QTextBrowser, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextBrowser_virtualbase_inputMethodQuery(self.h, cint(property)), owned: true)

proc QTextBrowsertimerEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQTextBrowser_virtualbase_timerEvent(self.h, e.h)

proc QTextBrowserkeyReleaseEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QKeyEvent): void =
  fcQTextBrowser_virtualbase_keyReleaseEvent(self.h, e.h)

proc QTextBrowserresizeEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QResizeEvent): void =
  fcQTextBrowser_virtualbase_resizeEvent(self.h, e.h)

proc QTextBrowsermouseDoubleClickEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QMouseEvent): void =
  fcQTextBrowser_virtualbase_mouseDoubleClickEvent(self.h, e.h)

proc QTextBrowsercontextMenuEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QContextMenuEvent): void =
  fcQTextBrowser_virtualbase_contextMenuEvent(self.h, e.h)

proc QTextBrowserdragEnterEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDragEnterEvent): void =
  fcQTextBrowser_virtualbase_dragEnterEvent(self.h, e.h)

proc QTextBrowserdragLeaveEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQTextBrowser_virtualbase_dragLeaveEvent(self.h, e.h)

proc QTextBrowserdragMoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDragMoveEvent): void =
  fcQTextBrowser_virtualbase_dragMoveEvent(self.h, e.h)

proc QTextBrowserdropEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDropEvent): void =
  fcQTextBrowser_virtualbase_dropEvent(self.h, e.h)

proc QTextBrowserfocusInEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QFocusEvent): void =
  fcQTextBrowser_virtualbase_focusInEvent(self.h, e.h)

proc QTextBrowsershowEvent*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qevent_types.QShowEvent): void =
  fcQTextBrowser_virtualbase_showEvent(self.h, param1.h)

proc QTextBrowserchangeEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qcoreevent_types.QEvent): void =
  fcQTextBrowser_virtualbase_changeEvent(self.h, e.h)

proc QTextBrowserwheelEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QWheelEvent): void =
  fcQTextBrowser_virtualbase_wheelEvent(self.h, e.h)

proc QTextBrowsercreateMimeDataFromSelection*(self: gen_qtextbrowser_types.QTextBrowser): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQTextBrowser_virtualbase_createMimeDataFromSelection(self.h), owned: false)

proc QTextBrowsercanInsertFromMimeData*(self: gen_qtextbrowser_types.QTextBrowser, source: gen_qmimedata_types.QMimeData): bool =
  fcQTextBrowser_virtualbase_canInsertFromMimeData(self.h, source.h)

proc QTextBrowserinsertFromMimeData*(self: gen_qtextbrowser_types.QTextBrowser, source: gen_qmimedata_types.QMimeData): void =
  fcQTextBrowser_virtualbase_insertFromMimeData(self.h, source.h)

proc QTextBrowserinputMethodEvent*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQTextBrowser_virtualbase_inputMethodEvent(self.h, param1.h)

proc QTextBrowserscrollContentsBy*(self: gen_qtextbrowser_types.QTextBrowser, dx: cint, dy: cint): void =
  fcQTextBrowser_virtualbase_scrollContentsBy(self.h, dx, dy)

proc QTextBrowserdoSetTextCursor*(self: gen_qtextbrowser_types.QTextBrowser, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQTextBrowser_virtualbase_doSetTextCursor(self.h, cursor.h)

proc QTextBrowserminimumSizeHint*(self: gen_qtextbrowser_types.QTextBrowser): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTextBrowser_virtualbase_minimumSizeHint(self.h), owned: true)

proc QTextBrowsersizeHint*(self: gen_qtextbrowser_types.QTextBrowser): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTextBrowser_virtualbase_sizeHint(self.h), owned: true)

proc QTextBrowsersetupViewport*(self: gen_qtextbrowser_types.QTextBrowser, viewport: gen_qwidget_types.QWidget): void =
  fcQTextBrowser_virtualbase_setupViewport(self.h, viewport.h)

proc QTextBrowsereventFilter*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQTextBrowser_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc QTextBrowserviewportEvent*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qcoreevent_types.QEvent): bool =
  fcQTextBrowser_virtualbase_viewportEvent(self.h, param1.h)

proc QTextBrowserviewportSizeHint*(self: gen_qtextbrowser_types.QTextBrowser): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTextBrowser_virtualbase_viewportSizeHint(self.h), owned: true)

proc QTextBrowserinitStyleOption*(self: gen_qtextbrowser_types.QTextBrowser, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQTextBrowser_virtualbase_initStyleOption(self.h, option.h)

proc QTextBrowserdevType*(self: gen_qtextbrowser_types.QTextBrowser): cint =
  fcQTextBrowser_virtualbase_devType(self.h)

proc QTextBrowsersetVisible*(self: gen_qtextbrowser_types.QTextBrowser, visible: bool): void =
  fcQTextBrowser_virtualbase_setVisible(self.h, visible)

proc QTextBrowserheightForWidth*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint): cint =
  fcQTextBrowser_virtualbase_heightForWidth(self.h, param1)

proc QTextBrowserhasHeightForWidth*(self: gen_qtextbrowser_types.QTextBrowser): bool =
  fcQTextBrowser_virtualbase_hasHeightForWidth(self.h)

proc QTextBrowserpaintEngine*(self: gen_qtextbrowser_types.QTextBrowser): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTextBrowser_virtualbase_paintEngine(self.h), owned: false)

proc QTextBrowserenterEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QEnterEvent): void =
  fcQTextBrowser_virtualbase_enterEvent(self.h, event.h)

proc QTextBrowserleaveEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qcoreevent_types.QEvent): void =
  fcQTextBrowser_virtualbase_leaveEvent(self.h, event.h)

proc QTextBrowsermoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QMoveEvent): void =
  fcQTextBrowser_virtualbase_moveEvent(self.h, event.h)

proc QTextBrowsercloseEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QCloseEvent): void =
  fcQTextBrowser_virtualbase_closeEvent(self.h, event.h)

proc QTextBrowsertabletEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QTabletEvent): void =
  fcQTextBrowser_virtualbase_tabletEvent(self.h, event.h)

proc QTextBrowseractionEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QActionEvent): void =
  fcQTextBrowser_virtualbase_actionEvent(self.h, event.h)

proc QTextBrowserhideEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QHideEvent): void =
  fcQTextBrowser_virtualbase_hideEvent(self.h, event.h)

proc QTextBrowsernativeEvent*(self: gen_qtextbrowser_types.QTextBrowser, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQTextBrowser_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QTextBrowsermetric*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint): cint =
  fcQTextBrowser_virtualbase_metric(self.h, cint(param1))

proc QTextBrowserinitPainter*(self: gen_qtextbrowser_types.QTextBrowser, painter: gen_qpainter_types.QPainter): void =
  fcQTextBrowser_virtualbase_initPainter(self.h, painter.h)

proc QTextBrowserredirected*(self: gen_qtextbrowser_types.QTextBrowser, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTextBrowser_virtualbase_redirected(self.h, offset.h), owned: false)

proc QTextBrowsersharedPainter*(self: gen_qtextbrowser_types.QTextBrowser): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTextBrowser_virtualbase_sharedPainter(self.h), owned: false)

proc QTextBrowserchildEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTextBrowser_virtualbase_childEvent(self.h, event.h)

proc QTextBrowsercustomEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qcoreevent_types.QEvent): void =
  fcQTextBrowser_virtualbase_customEvent(self.h, event.h)

proc QTextBrowserconnectNotify*(self: gen_qtextbrowser_types.QTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextBrowser_virtualbase_connectNotify(self.h, signal.h)

proc QTextBrowserdisconnectNotify*(self: gen_qtextbrowser_types.QTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextBrowser_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQTextBrowser_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQTextBrowser_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTextBrowser_vtable_callback_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = typeVal
  let slotval2 = gen_qurl_types.QUrl(h: name, owned: false)
  var virtualReturn = vtbl[].loadResource(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_vtable_callback_backward(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  vtbl[].backward(self)

proc fcQTextBrowser_vtable_callback_forward(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  vtbl[].forward(self)

proc fcQTextBrowser_vtable_callback_home(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  vtbl[].home(self)

proc fcQTextBrowser_vtable_callback_reload(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  vtbl[].reload(self)

proc fcQTextBrowser_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQTextBrowser_vtable_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_mouseMoveEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_mousePressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_mouseReleaseEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_focusOutEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: ev, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQTextBrowser_vtable_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_doSetSource(self: pointer, name: pointer, typeVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: name, owned: false)
  let slotval2 = cint(typeVal)
  vtbl[].doSetSource(self, slotval1, slotval2)

proc fcQTextBrowser_vtable_callback_inputMethodQuery(self: pointer, property: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = cint(property)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_vtable_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_mouseDoubleClickEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_contextMenuEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_dragEnterEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_dropEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: e, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_createMimeDataFromSelection(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].createMimeDataFromSelection(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_vtable_callback_canInsertFromMimeData(self: pointer, source: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source, owned: false)
  var virtualReturn = vtbl[].canInsertFromMimeData(self, slotval1)
  virtualReturn

proc fcQTextBrowser_vtable_callback_insertFromMimeData(self: pointer, source: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source, owned: false)
  vtbl[].insertFromMimeData(self, slotval1)

proc fcQTextBrowser_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc fcQTextBrowser_vtable_callback_doSetTextCursor(self: pointer, cursor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qtextcursor_types.QTextCursor(h: cursor, owned: false)
  vtbl[].doSetTextCursor(self, slotval1)

proc fcQTextBrowser_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_vtable_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc fcQTextBrowser_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQTextBrowser_vtable_callback_viewportEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc fcQTextBrowser_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc fcQTextBrowser_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQTextBrowser_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQTextBrowser_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQTextBrowser_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQTextBrowser_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTextBrowser_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQTextBrowser_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQTextBrowser_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQTextBrowser_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQTextBrowser_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](fcQTextBrowser_vdata(self))
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTextBrowser* {.inheritable.} = ref object of QTextBrowser
  vtbl*: cQTextBrowserVTable

method metaObject*(self: VirtualQTextBrowser): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTextBrowsermetaObject(self[])
method metacast*(self: VirtualQTextBrowser, param1: cstring): pointer {.base.} =
  QTextBrowsermetacast(self[], param1)
method metacall*(self: VirtualQTextBrowser, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTextBrowsermetacall(self[], param1, param2, param3)
method loadResource*(self: VirtualQTextBrowser, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant {.base.} =
  QTextBrowserloadResource(self[], typeVal, name)
method backward*(self: VirtualQTextBrowser): void {.base.} =
  QTextBrowserbackward(self[])
method forward*(self: VirtualQTextBrowser): void {.base.} =
  QTextBrowserforward(self[])
method home*(self: VirtualQTextBrowser): void {.base.} =
  QTextBrowserhome(self[])
method reload*(self: VirtualQTextBrowser): void {.base.} =
  QTextBrowserreload(self[])
method event*(self: VirtualQTextBrowser, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTextBrowserevent(self[], e)
method keyPressEvent*(self: VirtualQTextBrowser, ev: gen_qevent_types.QKeyEvent): void {.base.} =
  QTextBrowserkeyPressEvent(self[], ev)
method mouseMoveEvent*(self: VirtualQTextBrowser, ev: gen_qevent_types.QMouseEvent): void {.base.} =
  QTextBrowsermouseMoveEvent(self[], ev)
method mousePressEvent*(self: VirtualQTextBrowser, ev: gen_qevent_types.QMouseEvent): void {.base.} =
  QTextBrowsermousePressEvent(self[], ev)
method mouseReleaseEvent*(self: VirtualQTextBrowser, ev: gen_qevent_types.QMouseEvent): void {.base.} =
  QTextBrowsermouseReleaseEvent(self[], ev)
method focusOutEvent*(self: VirtualQTextBrowser, ev: gen_qevent_types.QFocusEvent): void {.base.} =
  QTextBrowserfocusOutEvent(self[], ev)
method focusNextPrevChild*(self: VirtualQTextBrowser, next: bool): bool {.base.} =
  QTextBrowserfocusNextPrevChild(self[], next)
method paintEvent*(self: VirtualQTextBrowser, e: gen_qevent_types.QPaintEvent): void {.base.} =
  QTextBrowserpaintEvent(self[], e)
method doSetSource*(self: VirtualQTextBrowser, name: gen_qurl_types.QUrl, typeVal: cint): void {.base.} =
  QTextBrowserdoSetSource(self[], name, typeVal)
method inputMethodQuery*(self: VirtualQTextBrowser, property: cint): gen_qvariant_types.QVariant {.base.} =
  QTextBrowserinputMethodQuery(self[], property)
method timerEvent*(self: VirtualQTextBrowser, e: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTextBrowsertimerEvent(self[], e)
method keyReleaseEvent*(self: VirtualQTextBrowser, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QTextBrowserkeyReleaseEvent(self[], e)
method resizeEvent*(self: VirtualQTextBrowser, e: gen_qevent_types.QResizeEvent): void {.base.} =
  QTextBrowserresizeEvent(self[], e)
method mouseDoubleClickEvent*(self: VirtualQTextBrowser, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QTextBrowsermouseDoubleClickEvent(self[], e)
method contextMenuEvent*(self: VirtualQTextBrowser, e: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QTextBrowsercontextMenuEvent(self[], e)
method dragEnterEvent*(self: VirtualQTextBrowser, e: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QTextBrowserdragEnterEvent(self[], e)
method dragLeaveEvent*(self: VirtualQTextBrowser, e: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QTextBrowserdragLeaveEvent(self[], e)
method dragMoveEvent*(self: VirtualQTextBrowser, e: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QTextBrowserdragMoveEvent(self[], e)
method dropEvent*(self: VirtualQTextBrowser, e: gen_qevent_types.QDropEvent): void {.base.} =
  QTextBrowserdropEvent(self[], e)
method focusInEvent*(self: VirtualQTextBrowser, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QTextBrowserfocusInEvent(self[], e)
method showEvent*(self: VirtualQTextBrowser, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QTextBrowsershowEvent(self[], param1)
method changeEvent*(self: VirtualQTextBrowser, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QTextBrowserchangeEvent(self[], e)
method wheelEvent*(self: VirtualQTextBrowser, e: gen_qevent_types.QWheelEvent): void {.base.} =
  QTextBrowserwheelEvent(self[], e)
method createMimeDataFromSelection*(self: VirtualQTextBrowser): gen_qmimedata_types.QMimeData {.base.} =
  QTextBrowsercreateMimeDataFromSelection(self[])
method canInsertFromMimeData*(self: VirtualQTextBrowser, source: gen_qmimedata_types.QMimeData): bool {.base.} =
  QTextBrowsercanInsertFromMimeData(self[], source)
method insertFromMimeData*(self: VirtualQTextBrowser, source: gen_qmimedata_types.QMimeData): void {.base.} =
  QTextBrowserinsertFromMimeData(self[], source)
method inputMethodEvent*(self: VirtualQTextBrowser, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QTextBrowserinputMethodEvent(self[], param1)
method scrollContentsBy*(self: VirtualQTextBrowser, dx: cint, dy: cint): void {.base.} =
  QTextBrowserscrollContentsBy(self[], dx, dy)
method doSetTextCursor*(self: VirtualQTextBrowser, cursor: gen_qtextcursor_types.QTextCursor): void {.base.} =
  QTextBrowserdoSetTextCursor(self[], cursor)
method minimumSizeHint*(self: VirtualQTextBrowser): gen_qsize_types.QSize {.base.} =
  QTextBrowserminimumSizeHint(self[])
method sizeHint*(self: VirtualQTextBrowser): gen_qsize_types.QSize {.base.} =
  QTextBrowsersizeHint(self[])
method setupViewport*(self: VirtualQTextBrowser, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QTextBrowsersetupViewport(self[], viewport)
method eventFilter*(self: VirtualQTextBrowser, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTextBrowsereventFilter(self[], param1, param2)
method viewportEvent*(self: VirtualQTextBrowser, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTextBrowserviewportEvent(self[], param1)
method viewportSizeHint*(self: VirtualQTextBrowser): gen_qsize_types.QSize {.base.} =
  QTextBrowserviewportSizeHint(self[])
method initStyleOption*(self: VirtualQTextBrowser, option: gen_qstyleoption_types.QStyleOptionFrame): void {.base.} =
  QTextBrowserinitStyleOption(self[], option)
method devType*(self: VirtualQTextBrowser): cint {.base.} =
  QTextBrowserdevType(self[])
method setVisible*(self: VirtualQTextBrowser, visible: bool): void {.base.} =
  QTextBrowsersetVisible(self[], visible)
method heightForWidth*(self: VirtualQTextBrowser, param1: cint): cint {.base.} =
  QTextBrowserheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQTextBrowser): bool {.base.} =
  QTextBrowserhasHeightForWidth(self[])
method paintEngine*(self: VirtualQTextBrowser): gen_qpaintengine_types.QPaintEngine {.base.} =
  QTextBrowserpaintEngine(self[])
method enterEvent*(self: VirtualQTextBrowser, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QTextBrowserenterEvent(self[], event)
method leaveEvent*(self: VirtualQTextBrowser, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTextBrowserleaveEvent(self[], event)
method moveEvent*(self: VirtualQTextBrowser, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QTextBrowsermoveEvent(self[], event)
method closeEvent*(self: VirtualQTextBrowser, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QTextBrowsercloseEvent(self[], event)
method tabletEvent*(self: VirtualQTextBrowser, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QTextBrowsertabletEvent(self[], event)
method actionEvent*(self: VirtualQTextBrowser, event: gen_qevent_types.QActionEvent): void {.base.} =
  QTextBrowseractionEvent(self[], event)
method hideEvent*(self: VirtualQTextBrowser, event: gen_qevent_types.QHideEvent): void {.base.} =
  QTextBrowserhideEvent(self[], event)
method nativeEvent*(self: VirtualQTextBrowser, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QTextBrowsernativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQTextBrowser, param1: cint): cint {.base.} =
  QTextBrowsermetric(self[], param1)
method initPainter*(self: VirtualQTextBrowser, painter: gen_qpainter_types.QPainter): void {.base.} =
  QTextBrowserinitPainter(self[], painter)
method redirected*(self: VirtualQTextBrowser, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QTextBrowserredirected(self[], offset)
method sharedPainter*(self: VirtualQTextBrowser): gen_qpainter_types.QPainter {.base.} =
  QTextBrowsersharedPainter(self[])
method childEvent*(self: VirtualQTextBrowser, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTextBrowserchildEvent(self[], event)
method customEvent*(self: VirtualQTextBrowser, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTextBrowsercustomEvent(self[], event)
method connectNotify*(self: VirtualQTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTextBrowserconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTextBrowserdisconnectNotify(self[], signal)

proc fcQTextBrowser_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQTextBrowser_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTextBrowser_method_callback_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = typeVal
  let slotval2 = gen_qurl_types.QUrl(h: name, owned: false)
  var virtualReturn = inst.loadResource(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_method_callback_backward(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  inst.backward()

proc fcQTextBrowser_method_callback_forward(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  inst.forward()

proc fcQTextBrowser_method_callback_home(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  inst.home()

proc fcQTextBrowser_method_callback_reload(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  inst.reload()

proc fcQTextBrowser_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQTextBrowser_method_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQTextBrowser_method_callback_mouseMoveEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQTextBrowser_method_callback_mousePressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQTextBrowser_method_callback_mouseReleaseEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQTextBrowser_method_callback_focusOutEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: ev, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQTextBrowser_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQTextBrowser_method_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  inst.paintEvent(slotval1)

proc fcQTextBrowser_method_callback_doSetSource(self: pointer, name: pointer, typeVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qurl_types.QUrl(h: name, owned: false)
  let slotval2 = cint(typeVal)
  inst.doSetSource(slotval1, slotval2)

proc fcQTextBrowser_method_callback_inputMethodQuery(self: pointer, property: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = cint(property)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_method_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  inst.timerEvent(slotval1)

proc fcQTextBrowser_method_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQTextBrowser_method_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  inst.resizeEvent(slotval1)

proc fcQTextBrowser_method_callback_mouseDoubleClickEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQTextBrowser_method_callback_contextMenuEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQTextBrowser_method_callback_dragEnterEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQTextBrowser_method_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQTextBrowser_method_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQTextBrowser_method_callback_dropEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: e, owned: false)
  inst.dropEvent(slotval1)

proc fcQTextBrowser_method_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusInEvent(slotval1)

proc fcQTextBrowser_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

proc fcQTextBrowser_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

proc fcQTextBrowser_method_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  inst.wheelEvent(slotval1)

proc fcQTextBrowser_method_callback_createMimeDataFromSelection(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  var virtualReturn = inst.createMimeDataFromSelection()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_method_callback_canInsertFromMimeData(self: pointer, source: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: source, owned: false)
  var virtualReturn = inst.canInsertFromMimeData(slotval1)
  virtualReturn

proc fcQTextBrowser_method_callback_insertFromMimeData(self: pointer, source: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: source, owned: false)
  inst.insertFromMimeData(slotval1)

proc fcQTextBrowser_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQTextBrowser_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

proc fcQTextBrowser_method_callback_doSetTextCursor(self: pointer, cursor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qtextcursor_types.QTextCursor(h: cursor, owned: false)
  inst.doSetTextCursor(slotval1)

proc fcQTextBrowser_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_method_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  inst.setupViewport(slotval1)

proc fcQTextBrowser_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQTextBrowser_method_callback_viewportEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

proc fcQTextBrowser_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  inst.initStyleOption(slotval1)

proc fcQTextBrowser_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQTextBrowser_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQTextBrowser_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQTextBrowser_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQTextBrowser_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQTextBrowser_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQTextBrowser_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQTextBrowser_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQTextBrowser_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQTextBrowser_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQTextBrowser_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQTextBrowser_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTextBrowser_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQTextBrowser_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQTextBrowser_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTextBrowser_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQTextBrowser_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQTextBrowser_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQTextBrowser_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTextBrowser](fcQTextBrowser_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc zoomInF*(self: gen_qtextbrowser_types.QTextBrowser, range: float32): void =
  fcQTextBrowser_protectedbase_zoomInF(self.h, range)

proc setViewportMargins*(self: gen_qtextbrowser_types.QTextBrowser, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQTextBrowser_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qtextbrowser_types.QTextBrowser): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQTextBrowser_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qpainter_types.QPainter): void =
  fcQTextBrowser_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_protectedbase_create(self.h)

proc destroy*(self: gen_qtextbrowser_types.QTextBrowser): void =
  fcQTextBrowser_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtextbrowser_types.QTextBrowser): bool =
  fcQTextBrowser_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtextbrowser_types.QTextBrowser): bool =
  fcQTextBrowser_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtextbrowser_types.QTextBrowser): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTextBrowser_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtextbrowser_types.QTextBrowser): cint =
  fcQTextBrowser_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtextbrowser_types.QTextBrowser, signal: cstring): cint =
  fcQTextBrowser_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtextbrowser_types.QTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTextBrowser_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtextbrowser_types.QTextBrowser,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QTextBrowserVTable = nil): gen_qtextbrowser_types.QTextBrowser =
  let vtbl = if vtbl == nil: new QTextBrowserVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTextBrowserVTable](fcQTextBrowser_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTextBrowser_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTextBrowser_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTextBrowser_vtable_callback_metacall
  if not isNil(vtbl[].loadResource):
    vtbl[].vtbl.loadResource = fcQTextBrowser_vtable_callback_loadResource
  if not isNil(vtbl[].backward):
    vtbl[].vtbl.backward = fcQTextBrowser_vtable_callback_backward
  if not isNil(vtbl[].forward):
    vtbl[].vtbl.forward = fcQTextBrowser_vtable_callback_forward
  if not isNil(vtbl[].home):
    vtbl[].vtbl.home = fcQTextBrowser_vtable_callback_home
  if not isNil(vtbl[].reload):
    vtbl[].vtbl.reload = fcQTextBrowser_vtable_callback_reload
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTextBrowser_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQTextBrowser_vtable_callback_keyPressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQTextBrowser_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQTextBrowser_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQTextBrowser_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQTextBrowser_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQTextBrowser_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQTextBrowser_vtable_callback_paintEvent
  if not isNil(vtbl[].doSetSource):
    vtbl[].vtbl.doSetSource = fcQTextBrowser_vtable_callback_doSetSource
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQTextBrowser_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTextBrowser_vtable_callback_timerEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQTextBrowser_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQTextBrowser_vtable_callback_resizeEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQTextBrowser_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQTextBrowser_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQTextBrowser_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQTextBrowser_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQTextBrowser_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQTextBrowser_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQTextBrowser_vtable_callback_focusInEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQTextBrowser_vtable_callback_showEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQTextBrowser_vtable_callback_changeEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQTextBrowser_vtable_callback_wheelEvent
  if not isNil(vtbl[].createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = fcQTextBrowser_vtable_callback_createMimeDataFromSelection
  if not isNil(vtbl[].canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = fcQTextBrowser_vtable_callback_canInsertFromMimeData
  if not isNil(vtbl[].insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = fcQTextBrowser_vtable_callback_insertFromMimeData
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQTextBrowser_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = fcQTextBrowser_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = fcQTextBrowser_vtable_callback_doSetTextCursor
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQTextBrowser_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQTextBrowser_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = fcQTextBrowser_vtable_callback_setupViewport
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTextBrowser_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = fcQTextBrowser_vtable_callback_viewportEvent
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = fcQTextBrowser_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQTextBrowser_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQTextBrowser_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQTextBrowser_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQTextBrowser_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQTextBrowser_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQTextBrowser_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQTextBrowser_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQTextBrowser_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQTextBrowser_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQTextBrowser_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQTextBrowser_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQTextBrowser_vtable_callback_actionEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQTextBrowser_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQTextBrowser_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQTextBrowser_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQTextBrowser_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQTextBrowser_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQTextBrowser_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTextBrowser_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTextBrowser_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTextBrowser_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTextBrowser_vtable_callback_disconnectNotify
  gen_qtextbrowser_types.QTextBrowser(h: fcQTextBrowser_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qtextbrowser_types.QTextBrowser,
    vtbl: ref QTextBrowserVTable = nil): gen_qtextbrowser_types.QTextBrowser =
  let vtbl = if vtbl == nil: new QTextBrowserVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTextBrowserVTable](fcQTextBrowser_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTextBrowser_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTextBrowser_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTextBrowser_vtable_callback_metacall
  if not isNil(vtbl[].loadResource):
    vtbl[].vtbl.loadResource = fcQTextBrowser_vtable_callback_loadResource
  if not isNil(vtbl[].backward):
    vtbl[].vtbl.backward = fcQTextBrowser_vtable_callback_backward
  if not isNil(vtbl[].forward):
    vtbl[].vtbl.forward = fcQTextBrowser_vtable_callback_forward
  if not isNil(vtbl[].home):
    vtbl[].vtbl.home = fcQTextBrowser_vtable_callback_home
  if not isNil(vtbl[].reload):
    vtbl[].vtbl.reload = fcQTextBrowser_vtable_callback_reload
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTextBrowser_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQTextBrowser_vtable_callback_keyPressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQTextBrowser_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQTextBrowser_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQTextBrowser_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQTextBrowser_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQTextBrowser_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQTextBrowser_vtable_callback_paintEvent
  if not isNil(vtbl[].doSetSource):
    vtbl[].vtbl.doSetSource = fcQTextBrowser_vtable_callback_doSetSource
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQTextBrowser_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTextBrowser_vtable_callback_timerEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQTextBrowser_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQTextBrowser_vtable_callback_resizeEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQTextBrowser_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQTextBrowser_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQTextBrowser_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQTextBrowser_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQTextBrowser_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQTextBrowser_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQTextBrowser_vtable_callback_focusInEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQTextBrowser_vtable_callback_showEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQTextBrowser_vtable_callback_changeEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQTextBrowser_vtable_callback_wheelEvent
  if not isNil(vtbl[].createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = fcQTextBrowser_vtable_callback_createMimeDataFromSelection
  if not isNil(vtbl[].canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = fcQTextBrowser_vtable_callback_canInsertFromMimeData
  if not isNil(vtbl[].insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = fcQTextBrowser_vtable_callback_insertFromMimeData
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQTextBrowser_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = fcQTextBrowser_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = fcQTextBrowser_vtable_callback_doSetTextCursor
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQTextBrowser_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQTextBrowser_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = fcQTextBrowser_vtable_callback_setupViewport
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTextBrowser_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = fcQTextBrowser_vtable_callback_viewportEvent
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = fcQTextBrowser_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQTextBrowser_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQTextBrowser_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQTextBrowser_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQTextBrowser_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQTextBrowser_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQTextBrowser_vtable_callback_paintEngine
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQTextBrowser_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQTextBrowser_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQTextBrowser_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQTextBrowser_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQTextBrowser_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQTextBrowser_vtable_callback_actionEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQTextBrowser_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQTextBrowser_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQTextBrowser_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQTextBrowser_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQTextBrowser_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQTextBrowser_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTextBrowser_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTextBrowser_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTextBrowser_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTextBrowser_vtable_callback_disconnectNotify
  gen_qtextbrowser_types.QTextBrowser(h: fcQTextBrowser_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQTextBrowser_mvtbl = cQTextBrowserVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTextBrowser()[])](self.fcQTextBrowser_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQTextBrowser_method_callback_metaObject,
  metacast: fcQTextBrowser_method_callback_metacast,
  metacall: fcQTextBrowser_method_callback_metacall,
  loadResource: fcQTextBrowser_method_callback_loadResource,
  backward: fcQTextBrowser_method_callback_backward,
  forward: fcQTextBrowser_method_callback_forward,
  home: fcQTextBrowser_method_callback_home,
  reload: fcQTextBrowser_method_callback_reload,
  event: fcQTextBrowser_method_callback_event,
  keyPressEvent: fcQTextBrowser_method_callback_keyPressEvent,
  mouseMoveEvent: fcQTextBrowser_method_callback_mouseMoveEvent,
  mousePressEvent: fcQTextBrowser_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQTextBrowser_method_callback_mouseReleaseEvent,
  focusOutEvent: fcQTextBrowser_method_callback_focusOutEvent,
  focusNextPrevChild: fcQTextBrowser_method_callback_focusNextPrevChild,
  paintEvent: fcQTextBrowser_method_callback_paintEvent,
  doSetSource: fcQTextBrowser_method_callback_doSetSource,
  inputMethodQuery: fcQTextBrowser_method_callback_inputMethodQuery,
  timerEvent: fcQTextBrowser_method_callback_timerEvent,
  keyReleaseEvent: fcQTextBrowser_method_callback_keyReleaseEvent,
  resizeEvent: fcQTextBrowser_method_callback_resizeEvent,
  mouseDoubleClickEvent: fcQTextBrowser_method_callback_mouseDoubleClickEvent,
  contextMenuEvent: fcQTextBrowser_method_callback_contextMenuEvent,
  dragEnterEvent: fcQTextBrowser_method_callback_dragEnterEvent,
  dragLeaveEvent: fcQTextBrowser_method_callback_dragLeaveEvent,
  dragMoveEvent: fcQTextBrowser_method_callback_dragMoveEvent,
  dropEvent: fcQTextBrowser_method_callback_dropEvent,
  focusInEvent: fcQTextBrowser_method_callback_focusInEvent,
  showEvent: fcQTextBrowser_method_callback_showEvent,
  changeEvent: fcQTextBrowser_method_callback_changeEvent,
  wheelEvent: fcQTextBrowser_method_callback_wheelEvent,
  createMimeDataFromSelection: fcQTextBrowser_method_callback_createMimeDataFromSelection,
  canInsertFromMimeData: fcQTextBrowser_method_callback_canInsertFromMimeData,
  insertFromMimeData: fcQTextBrowser_method_callback_insertFromMimeData,
  inputMethodEvent: fcQTextBrowser_method_callback_inputMethodEvent,
  scrollContentsBy: fcQTextBrowser_method_callback_scrollContentsBy,
  doSetTextCursor: fcQTextBrowser_method_callback_doSetTextCursor,
  minimumSizeHint: fcQTextBrowser_method_callback_minimumSizeHint,
  sizeHint: fcQTextBrowser_method_callback_sizeHint,
  setupViewport: fcQTextBrowser_method_callback_setupViewport,
  eventFilter: fcQTextBrowser_method_callback_eventFilter,
  viewportEvent: fcQTextBrowser_method_callback_viewportEvent,
  viewportSizeHint: fcQTextBrowser_method_callback_viewportSizeHint,
  initStyleOption: fcQTextBrowser_method_callback_initStyleOption,
  devType: fcQTextBrowser_method_callback_devType,
  setVisible: fcQTextBrowser_method_callback_setVisible,
  heightForWidth: fcQTextBrowser_method_callback_heightForWidth,
  hasHeightForWidth: fcQTextBrowser_method_callback_hasHeightForWidth,
  paintEngine: fcQTextBrowser_method_callback_paintEngine,
  enterEvent: fcQTextBrowser_method_callback_enterEvent,
  leaveEvent: fcQTextBrowser_method_callback_leaveEvent,
  moveEvent: fcQTextBrowser_method_callback_moveEvent,
  closeEvent: fcQTextBrowser_method_callback_closeEvent,
  tabletEvent: fcQTextBrowser_method_callback_tabletEvent,
  actionEvent: fcQTextBrowser_method_callback_actionEvent,
  hideEvent: fcQTextBrowser_method_callback_hideEvent,
  nativeEvent: fcQTextBrowser_method_callback_nativeEvent,
  metric: fcQTextBrowser_method_callback_metric,
  initPainter: fcQTextBrowser_method_callback_initPainter,
  redirected: fcQTextBrowser_method_callback_redirected,
  sharedPainter: fcQTextBrowser_method_callback_sharedPainter,
  childEvent: fcQTextBrowser_method_callback_childEvent,
  customEvent: fcQTextBrowser_method_callback_customEvent,
  connectNotify: fcQTextBrowser_method_callback_connectNotify,
  disconnectNotify: fcQTextBrowser_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtextbrowser_types.QTextBrowser,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQTextBrowser) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTextBrowser_new(addr(cQTextBrowser_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qtextbrowser_types.QTextBrowser,
    inst: VirtualQTextBrowser) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTextBrowser_new2(addr(cQTextBrowser_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtextbrowser_types.QTextBrowser): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextBrowser_staticMetaObject())
