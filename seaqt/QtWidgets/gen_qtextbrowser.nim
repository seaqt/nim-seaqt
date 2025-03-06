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
proc fcQTextBrowser_connect_backwardAvailable(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_backwardAvailable".}
proc fcQTextBrowser_forwardAvailable(self: pointer, param1: bool): void {.importc: "QTextBrowser_forwardAvailable".}
proc fcQTextBrowser_connect_forwardAvailable(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_forwardAvailable".}
proc fcQTextBrowser_historyChanged(self: pointer, ): void {.importc: "QTextBrowser_historyChanged".}
proc fcQTextBrowser_connect_historyChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_historyChanged".}
proc fcQTextBrowser_sourceChanged(self: pointer, param1: pointer): void {.importc: "QTextBrowser_sourceChanged".}
proc fcQTextBrowser_connect_sourceChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_sourceChanged".}
proc fcQTextBrowser_highlighted(self: pointer, param1: pointer): void {.importc: "QTextBrowser_highlighted".}
proc fcQTextBrowser_connect_highlighted(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_highlighted".}
proc fcQTextBrowser_highlightedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QTextBrowser_highlightedWithQString".}
proc fcQTextBrowser_connect_highlightedWithQString(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_highlightedWithQString".}
proc fcQTextBrowser_anchorClicked(self: pointer, param1: pointer): void {.importc: "QTextBrowser_anchorClicked".}
proc fcQTextBrowser_connect_anchorClicked(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextBrowser_connect_anchorClicked".}
proc fcQTextBrowser_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextBrowser_tr2".}
proc fcQTextBrowser_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextBrowser_tr3".}
proc fcQTextBrowser_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextBrowser_trUtf82".}
proc fcQTextBrowser_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextBrowser_trUtf83".}
type cQTextBrowserVTable = object
  destructor*: proc(vtbl: ptr cQTextBrowserVTable, self: ptr cQTextBrowser) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  loadResource*: proc(vtbl, self: pointer, typeVal: cint, name: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setSource*: proc(vtbl, self: pointer, name: pointer): void {.cdecl, raises: [], gcsafe.}
  backward*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  forward*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  home*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reload*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, property: cint): pointer {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  createMimeDataFromSelection*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  canInsertFromMimeData*: proc(vtbl, self: pointer, source: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertFromMimeData*: proc(vtbl, self: pointer, source: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  doSetTextCursor*: proc(vtbl, self: pointer, cursor: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTextBrowser_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTextBrowser_virtualbase_metaObject".}
proc fcQTextBrowser_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextBrowser_virtualbase_metacast".}
proc fcQTextBrowser_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextBrowser_virtualbase_metacall".}
proc fcQTextBrowser_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QTextBrowser_virtualbase_loadResource".}
proc fcQTextBrowser_virtualbase_setSource(self: pointer, name: pointer): void {.importc: "QTextBrowser_virtualbase_setSource".}
proc fcQTextBrowser_virtualbase_backward(self: pointer, ): void {.importc: "QTextBrowser_virtualbase_backward".}
proc fcQTextBrowser_virtualbase_forward(self: pointer, ): void {.importc: "QTextBrowser_virtualbase_forward".}
proc fcQTextBrowser_virtualbase_home(self: pointer, ): void {.importc: "QTextBrowser_virtualbase_home".}
proc fcQTextBrowser_virtualbase_reload(self: pointer, ): void {.importc: "QTextBrowser_virtualbase_reload".}
proc fcQTextBrowser_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QTextBrowser_virtualbase_event".}
proc fcQTextBrowser_virtualbase_keyPressEvent(self: pointer, ev: pointer): void {.importc: "QTextBrowser_virtualbase_keyPressEvent".}
proc fcQTextBrowser_virtualbase_mouseMoveEvent(self: pointer, ev: pointer): void {.importc: "QTextBrowser_virtualbase_mouseMoveEvent".}
proc fcQTextBrowser_virtualbase_mousePressEvent(self: pointer, ev: pointer): void {.importc: "QTextBrowser_virtualbase_mousePressEvent".}
proc fcQTextBrowser_virtualbase_mouseReleaseEvent(self: pointer, ev: pointer): void {.importc: "QTextBrowser_virtualbase_mouseReleaseEvent".}
proc fcQTextBrowser_virtualbase_focusOutEvent(self: pointer, ev: pointer): void {.importc: "QTextBrowser_virtualbase_focusOutEvent".}
proc fcQTextBrowser_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTextBrowser_virtualbase_focusNextPrevChild".}
proc fcQTextBrowser_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QTextBrowser_virtualbase_paintEvent".}
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
proc fcQTextBrowser_virtualbase_createMimeDataFromSelection(self: pointer, ): pointer {.importc: "QTextBrowser_virtualbase_createMimeDataFromSelection".}
proc fcQTextBrowser_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool {.importc: "QTextBrowser_virtualbase_canInsertFromMimeData".}
proc fcQTextBrowser_virtualbase_insertFromMimeData(self: pointer, source: pointer): void {.importc: "QTextBrowser_virtualbase_insertFromMimeData".}
proc fcQTextBrowser_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QTextBrowser_virtualbase_inputMethodEvent".}
proc fcQTextBrowser_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QTextBrowser_virtualbase_scrollContentsBy".}
proc fcQTextBrowser_virtualbase_doSetTextCursor(self: pointer, cursor: pointer): void {.importc: "QTextBrowser_virtualbase_doSetTextCursor".}
proc fcQTextBrowser_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QTextBrowser_virtualbase_minimumSizeHint".}
proc fcQTextBrowser_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QTextBrowser_virtualbase_sizeHint".}
proc fcQTextBrowser_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QTextBrowser_virtualbase_setupViewport".}
proc fcQTextBrowser_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QTextBrowser_virtualbase_eventFilter".}
proc fcQTextBrowser_virtualbase_viewportEvent(self: pointer, param1: pointer): bool {.importc: "QTextBrowser_virtualbase_viewportEvent".}
proc fcQTextBrowser_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QTextBrowser_virtualbase_viewportSizeHint".}
proc fcQTextBrowser_virtualbase_devType(self: pointer, ): cint {.importc: "QTextBrowser_virtualbase_devType".}
proc fcQTextBrowser_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTextBrowser_virtualbase_setVisible".}
proc fcQTextBrowser_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTextBrowser_virtualbase_heightForWidth".}
proc fcQTextBrowser_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QTextBrowser_virtualbase_hasHeightForWidth".}
proc fcQTextBrowser_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QTextBrowser_virtualbase_paintEngine".}
proc fcQTextBrowser_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_enterEvent".}
proc fcQTextBrowser_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_leaveEvent".}
proc fcQTextBrowser_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_moveEvent".}
proc fcQTextBrowser_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_closeEvent".}
proc fcQTextBrowser_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_tabletEvent".}
proc fcQTextBrowser_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_actionEvent".}
proc fcQTextBrowser_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_hideEvent".}
proc fcQTextBrowser_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QTextBrowser_virtualbase_nativeEvent".}
proc fcQTextBrowser_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QTextBrowser_virtualbase_metric".}
proc fcQTextBrowser_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QTextBrowser_virtualbase_initPainter".}
proc fcQTextBrowser_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QTextBrowser_virtualbase_redirected".}
proc fcQTextBrowser_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QTextBrowser_virtualbase_sharedPainter".}
proc fcQTextBrowser_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_childEvent".}
proc fcQTextBrowser_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTextBrowser_virtualbase_customEvent".}
proc fcQTextBrowser_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTextBrowser_virtualbase_connectNotify".}
proc fcQTextBrowser_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTextBrowser_virtualbase_disconnectNotify".}
proc fcQTextBrowser_new(vtbl: pointer, parent: pointer): ptr cQTextBrowser {.importc: "QTextBrowser_new".}
proc fcQTextBrowser_new2(vtbl: pointer, ): ptr cQTextBrowser {.importc: "QTextBrowser_new2".}
proc fcQTextBrowser_staticMetaObject(): pointer {.importc: "QTextBrowser_staticMetaObject".}
proc fcQTextBrowser_delete(self: pointer) {.importc: "QTextBrowser_delete".}

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
proc miqt_exec_callback_cQTextBrowser_backwardAvailable(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowserbackwardAvailableSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextBrowser_backwardAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowserbackwardAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbackwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserbackwardAvailableSlot) =
  var tmp = new QTextBrowserbackwardAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_backwardAvailable(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextBrowser_backwardAvailable, miqt_exec_callback_cQTextBrowser_backwardAvailable_release)

proc forwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, param1: bool): void =
  fcQTextBrowser_forwardAvailable(self.h, param1)

type QTextBrowserforwardAvailableSlot* = proc(param1: bool)
proc miqt_exec_callback_cQTextBrowser_forwardAvailable(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowserforwardAvailableSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextBrowser_forwardAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowserforwardAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onforwardAvailable*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserforwardAvailableSlot) =
  var tmp = new QTextBrowserforwardAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_forwardAvailable(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextBrowser_forwardAvailable, miqt_exec_callback_cQTextBrowser_forwardAvailable_release)

proc historyChanged*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fcQTextBrowser_historyChanged(self.h)

type QTextBrowserhistoryChangedSlot* = proc()
proc miqt_exec_callback_cQTextBrowser_historyChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowserhistoryChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQTextBrowser_historyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowserhistoryChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhistoryChanged*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserhistoryChangedSlot) =
  var tmp = new QTextBrowserhistoryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_historyChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextBrowser_historyChanged, miqt_exec_callback_cQTextBrowser_historyChanged_release)

proc sourceChanged*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qurl_types.QUrl): void =
  fcQTextBrowser_sourceChanged(self.h, param1.h)

type QTextBrowsersourceChangedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQTextBrowser_sourceChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowsersourceChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextBrowser_sourceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowsersourceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsourceChanged*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowsersourceChangedSlot) =
  var tmp = new QTextBrowsersourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_sourceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextBrowser_sourceChanged, miqt_exec_callback_cQTextBrowser_sourceChanged_release)

proc highlighted*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qurl_types.QUrl): void =
  fcQTextBrowser_highlighted(self.h, param1.h)

type QTextBrowserhighlightedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQTextBrowser_highlighted(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowserhighlightedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextBrowser_highlighted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowserhighlightedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhighlighted*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserhighlightedSlot) =
  var tmp = new QTextBrowserhighlightedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_highlighted(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextBrowser_highlighted, miqt_exec_callback_cQTextBrowser_highlighted_release)

proc highlighted*(self: gen_qtextbrowser_types.QTextBrowser, param1: string): void =
  fcQTextBrowser_highlightedWithQString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QTextBrowserhighlightedWithQStringSlot* = proc(param1: string)
proc miqt_exec_callback_cQTextBrowser_highlightedWithQString(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowserhighlightedWithQStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextBrowser_highlightedWithQString_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowserhighlightedWithQStringSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhighlighted*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowserhighlightedWithQStringSlot) =
  var tmp = new QTextBrowserhighlightedWithQStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_highlightedWithQString(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextBrowser_highlightedWithQString, miqt_exec_callback_cQTextBrowser_highlightedWithQString_release)

proc anchorClicked*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qurl_types.QUrl): void =
  fcQTextBrowser_anchorClicked(self.h, param1.h)

type QTextBrowseranchorClickedSlot* = proc(param1: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQTextBrowser_anchorClicked(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTextBrowseranchorClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextBrowser_anchorClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextBrowseranchorClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onanchorClicked*(self: gen_qtextbrowser_types.QTextBrowser, slot: QTextBrowseranchorClickedSlot) =
  var tmp = new QTextBrowseranchorClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_connect_anchorClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextBrowser_anchorClicked, miqt_exec_callback_cQTextBrowser_anchorClicked_release)

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

type QTextBrowsermetaObjectProc* = proc(self: QTextBrowser): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTextBrowsermetacastProc* = proc(self: QTextBrowser, param1: cstring): pointer {.raises: [], gcsafe.}
type QTextBrowsermetacallProc* = proc(self: QTextBrowser, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTextBrowserloadResourceProc* = proc(self: QTextBrowser, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTextBrowsersetSourceProc* = proc(self: QTextBrowser, name: gen_qurl_types.QUrl): void {.raises: [], gcsafe.}
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
type QTextBrowserdevTypeProc* = proc(self: QTextBrowser): cint {.raises: [], gcsafe.}
type QTextBrowsersetVisibleProc* = proc(self: QTextBrowser, visible: bool): void {.raises: [], gcsafe.}
type QTextBrowserheightForWidthProc* = proc(self: QTextBrowser, param1: cint): cint {.raises: [], gcsafe.}
type QTextBrowserhasHeightForWidthProc* = proc(self: QTextBrowser): bool {.raises: [], gcsafe.}
type QTextBrowserpaintEngineProc* = proc(self: QTextBrowser): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QTextBrowserenterEventProc* = proc(self: QTextBrowser, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextBrowserleaveEventProc* = proc(self: QTextBrowser, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextBrowsermoveEventProc* = proc(self: QTextBrowser, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QTextBrowsercloseEventProc* = proc(self: QTextBrowser, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QTextBrowsertabletEventProc* = proc(self: QTextBrowser, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QTextBrowseractionEventProc* = proc(self: QTextBrowser, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QTextBrowserhideEventProc* = proc(self: QTextBrowser, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QTextBrowsernativeEventProc* = proc(self: QTextBrowser, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QTextBrowsermetricProc* = proc(self: QTextBrowser, param1: cint): cint {.raises: [], gcsafe.}
type QTextBrowserinitPainterProc* = proc(self: QTextBrowser, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTextBrowserredirectedProc* = proc(self: QTextBrowser, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTextBrowsersharedPainterProc* = proc(self: QTextBrowser): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTextBrowserchildEventProc* = proc(self: QTextBrowser, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTextBrowsercustomEventProc* = proc(self: QTextBrowser, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextBrowserconnectNotifyProc* = proc(self: QTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextBrowserdisconnectNotifyProc* = proc(self: QTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextBrowserVTable* = object
  vtbl: cQTextBrowserVTable
  metaObject*: QTextBrowsermetaObjectProc
  metacast*: QTextBrowsermetacastProc
  metacall*: QTextBrowsermetacallProc
  loadResource*: QTextBrowserloadResourceProc
  setSource*: QTextBrowsersetSourceProc
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
proc QTextBrowsermetaObject*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextBrowser_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTextBrowser_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTextBrowsermetacast*(self: gen_qtextbrowser_types.QTextBrowser, param1: cstring): pointer =
  fcQTextBrowser_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTextBrowser_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTextBrowsermetacall*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextBrowser_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTextBrowser_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTextBrowserloadResource*(self: gen_qtextbrowser_types.QTextBrowser, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextBrowser_virtualbase_loadResource(self.h, typeVal, name.h))

proc miqt_exec_callback_cQTextBrowser_loadResource(vtbl: pointer, self: pointer, typeVal: cint, name: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = typeVal
  let slotval2 = gen_qurl_types.QUrl(h: name)
  var virtualReturn = vtbl[].loadResource(self, slotval1, slotval2)
  virtualReturn.h

proc QTextBrowsersetSource*(self: gen_qtextbrowser_types.QTextBrowser, name: gen_qurl_types.QUrl): void =
  fcQTextBrowser_virtualbase_setSource(self.h, name.h)

proc miqt_exec_callback_cQTextBrowser_setSource(vtbl: pointer, self: pointer, name: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: name)
  vtbl[].setSource(self, slotval1)

proc QTextBrowserbackward*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fcQTextBrowser_virtualbase_backward(self.h)

proc miqt_exec_callback_cQTextBrowser_backward(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  vtbl[].backward(self)

proc QTextBrowserforward*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fcQTextBrowser_virtualbase_forward(self.h)

proc miqt_exec_callback_cQTextBrowser_forward(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  vtbl[].forward(self)

proc QTextBrowserhome*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fcQTextBrowser_virtualbase_home(self.h)

proc miqt_exec_callback_cQTextBrowser_home(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  vtbl[].home(self)

proc QTextBrowserreload*(self: gen_qtextbrowser_types.QTextBrowser, ): void =
  fcQTextBrowser_virtualbase_reload(self.h)

proc miqt_exec_callback_cQTextBrowser_reload(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  vtbl[].reload(self)

proc QTextBrowserevent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qcoreevent_types.QEvent): bool =
  fcQTextBrowser_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTextBrowserkeyPressEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QKeyEvent): void =
  fcQTextBrowser_virtualbase_keyPressEvent(self.h, ev.h)

proc miqt_exec_callback_cQTextBrowser_keyPressEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev)
  vtbl[].keyPressEvent(self, slotval1)

proc QTextBrowsermouseMoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QMouseEvent): void =
  fcQTextBrowser_virtualbase_mouseMoveEvent(self.h, ev.h)

proc miqt_exec_callback_cQTextBrowser_mouseMoveEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QTextBrowsermousePressEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QMouseEvent): void =
  fcQTextBrowser_virtualbase_mousePressEvent(self.h, ev.h)

proc miqt_exec_callback_cQTextBrowser_mousePressEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)
  vtbl[].mousePressEvent(self, slotval1)

proc QTextBrowsermouseReleaseEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QMouseEvent): void =
  fcQTextBrowser_virtualbase_mouseReleaseEvent(self.h, ev.h)

proc miqt_exec_callback_cQTextBrowser_mouseReleaseEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QTextBrowserfocusOutEvent*(self: gen_qtextbrowser_types.QTextBrowser, ev: gen_qevent_types.QFocusEvent): void =
  fcQTextBrowser_virtualbase_focusOutEvent(self.h, ev.h)

proc miqt_exec_callback_cQTextBrowser_focusOutEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: ev)
  vtbl[].focusOutEvent(self, slotval1)

proc QTextBrowserfocusNextPrevChild*(self: gen_qtextbrowser_types.QTextBrowser, next: bool): bool =
  fcQTextBrowser_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQTextBrowser_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QTextBrowserpaintEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QPaintEvent): void =
  fcQTextBrowser_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QTextBrowserinputMethodQuery*(self: gen_qtextbrowser_types.QTextBrowser, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextBrowser_virtualbase_inputMethodQuery(self.h, cint(property)))

proc miqt_exec_callback_cQTextBrowser_inputMethodQuery(vtbl: pointer, self: pointer, property: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = cint(property)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QTextBrowsertimerEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQTextBrowser_virtualbase_timerEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_timerEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)
  vtbl[].timerEvent(self, slotval1)

proc QTextBrowserkeyReleaseEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QKeyEvent): void =
  fcQTextBrowser_virtualbase_keyReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_keyReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QTextBrowserresizeEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QResizeEvent): void =
  fcQTextBrowser_virtualbase_resizeEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_resizeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)
  vtbl[].resizeEvent(self, slotval1)

proc QTextBrowsermouseDoubleClickEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QMouseEvent): void =
  fcQTextBrowser_virtualbase_mouseDoubleClickEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_mouseDoubleClickEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QTextBrowsercontextMenuEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QContextMenuEvent): void =
  fcQTextBrowser_virtualbase_contextMenuEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_contextMenuEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e)
  vtbl[].contextMenuEvent(self, slotval1)

proc QTextBrowserdragEnterEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDragEnterEvent): void =
  fcQTextBrowser_virtualbase_dragEnterEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_dragEnterEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e)
  vtbl[].dragEnterEvent(self, slotval1)

proc QTextBrowserdragLeaveEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQTextBrowser_virtualbase_dragLeaveEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_dragLeaveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QTextBrowserdragMoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDragMoveEvent): void =
  fcQTextBrowser_virtualbase_dragMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_dragMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)
  vtbl[].dragMoveEvent(self, slotval1)

proc QTextBrowserdropEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QDropEvent): void =
  fcQTextBrowser_virtualbase_dropEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_dropEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: e)
  vtbl[].dropEvent(self, slotval1)

proc QTextBrowserfocusInEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QFocusEvent): void =
  fcQTextBrowser_virtualbase_focusInEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_focusInEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusInEvent(self, slotval1)

proc QTextBrowsershowEvent*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qevent_types.QShowEvent): void =
  fcQTextBrowser_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQTextBrowser_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QTextBrowserchangeEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qcoreevent_types.QEvent): void =
  fcQTextBrowser_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QTextBrowserwheelEvent*(self: gen_qtextbrowser_types.QTextBrowser, e: gen_qevent_types.QWheelEvent): void =
  fcQTextBrowser_virtualbase_wheelEvent(self.h, e.h)

proc miqt_exec_callback_cQTextBrowser_wheelEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)
  vtbl[].wheelEvent(self, slotval1)

proc QTextBrowsercreateMimeDataFromSelection*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQTextBrowser_virtualbase_createMimeDataFromSelection(self.h))

proc miqt_exec_callback_cQTextBrowser_createMimeDataFromSelection(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].createMimeDataFromSelection(self)
  virtualReturn.h

proc QTextBrowsercanInsertFromMimeData*(self: gen_qtextbrowser_types.QTextBrowser, source: gen_qmimedata_types.QMimeData): bool =
  fcQTextBrowser_virtualbase_canInsertFromMimeData(self.h, source.h)

proc miqt_exec_callback_cQTextBrowser_canInsertFromMimeData(vtbl: pointer, self: pointer, source: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)
  var virtualReturn = vtbl[].canInsertFromMimeData(self, slotval1)
  virtualReturn

proc QTextBrowserinsertFromMimeData*(self: gen_qtextbrowser_types.QTextBrowser, source: gen_qmimedata_types.QMimeData): void =
  fcQTextBrowser_virtualbase_insertFromMimeData(self.h, source.h)

proc miqt_exec_callback_cQTextBrowser_insertFromMimeData(vtbl: pointer, self: pointer, source: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)
  vtbl[].insertFromMimeData(self, slotval1)

proc QTextBrowserinputMethodEvent*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQTextBrowser_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQTextBrowser_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QTextBrowserscrollContentsBy*(self: gen_qtextbrowser_types.QTextBrowser, dx: cint, dy: cint): void =
  fcQTextBrowser_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQTextBrowser_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QTextBrowserdoSetTextCursor*(self: gen_qtextbrowser_types.QTextBrowser, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQTextBrowser_virtualbase_doSetTextCursor(self.h, cursor.h)

proc miqt_exec_callback_cQTextBrowser_doSetTextCursor(vtbl: pointer, self: pointer, cursor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qtextcursor_types.QTextCursor(h: cursor)
  vtbl[].doSetTextCursor(self, slotval1)

proc QTextBrowserminimumSizeHint*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTextBrowser_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQTextBrowser_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QTextBrowsersizeHint*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTextBrowser_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQTextBrowser_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QTextBrowsersetupViewport*(self: gen_qtextbrowser_types.QTextBrowser, viewport: gen_qwidget_types.QWidget): void =
  fcQTextBrowser_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQTextBrowser_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QTextBrowsereventFilter*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQTextBrowser_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQTextBrowser_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTextBrowserviewportEvent*(self: gen_qtextbrowser_types.QTextBrowser, param1: gen_qcoreevent_types.QEvent): bool =
  fcQTextBrowser_virtualbase_viewportEvent(self.h, param1.h)

proc miqt_exec_callback_cQTextBrowser_viewportEvent(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QTextBrowserviewportSizeHint*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTextBrowser_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQTextBrowser_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QTextBrowserdevType*(self: gen_qtextbrowser_types.QTextBrowser, ): cint =
  fcQTextBrowser_virtualbase_devType(self.h)

proc miqt_exec_callback_cQTextBrowser_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QTextBrowsersetVisible*(self: gen_qtextbrowser_types.QTextBrowser, visible: bool): void =
  fcQTextBrowser_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQTextBrowser_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QTextBrowserheightForWidth*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint): cint =
  fcQTextBrowser_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQTextBrowser_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QTextBrowserhasHeightForWidth*(self: gen_qtextbrowser_types.QTextBrowser, ): bool =
  fcQTextBrowser_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQTextBrowser_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QTextBrowserpaintEngine*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTextBrowser_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQTextBrowser_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QTextBrowserenterEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qcoreevent_types.QEvent): void =
  fcQTextBrowser_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQTextBrowser_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QTextBrowserleaveEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qcoreevent_types.QEvent): void =
  fcQTextBrowser_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTextBrowser_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QTextBrowsermoveEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QMoveEvent): void =
  fcQTextBrowser_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQTextBrowser_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QTextBrowsercloseEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QCloseEvent): void =
  fcQTextBrowser_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQTextBrowser_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QTextBrowsertabletEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QTabletEvent): void =
  fcQTextBrowser_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQTextBrowser_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QTextBrowseractionEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QActionEvent): void =
  fcQTextBrowser_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQTextBrowser_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QTextBrowserhideEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qevent_types.QHideEvent): void =
  fcQTextBrowser_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQTextBrowser_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QTextBrowsernativeEvent*(self: gen_qtextbrowser_types.QTextBrowser, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQTextBrowser_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQTextBrowser_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTextBrowsermetric*(self: gen_qtextbrowser_types.QTextBrowser, param1: cint): cint =
  fcQTextBrowser_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQTextBrowser_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QTextBrowserinitPainter*(self: gen_qtextbrowser_types.QTextBrowser, painter: gen_qpainter_types.QPainter): void =
  fcQTextBrowser_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQTextBrowser_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QTextBrowserredirected*(self: gen_qtextbrowser_types.QTextBrowser, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTextBrowser_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQTextBrowser_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QTextBrowsersharedPainter*(self: gen_qtextbrowser_types.QTextBrowser, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTextBrowser_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQTextBrowser_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QTextBrowserchildEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTextBrowser_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTextBrowser_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTextBrowsercustomEvent*(self: gen_qtextbrowser_types.QTextBrowser, event: gen_qcoreevent_types.QEvent): void =
  fcQTextBrowser_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTextBrowser_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTextBrowserconnectNotify*(self: gen_qtextbrowser_types.QTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextBrowser_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTextBrowser_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTextBrowserdisconnectNotify*(self: gen_qtextbrowser_types.QTextBrowser, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextBrowser_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTextBrowser_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextBrowserVTable](vtbl)
  let self = QTextBrowser(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qtextbrowser_types.QTextBrowser,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QTextBrowserVTable = nil): gen_qtextbrowser_types.QTextBrowser =
  let vtbl = if vtbl == nil: new QTextBrowserVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTextBrowserVTable, _: ptr cQTextBrowser) {.cdecl.} =
    let vtbl = cast[ref QTextBrowserVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextBrowser_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextBrowser_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextBrowser_metacall
  if not isNil(vtbl.loadResource):
    vtbl[].vtbl.loadResource = miqt_exec_callback_cQTextBrowser_loadResource
  if not isNil(vtbl.setSource):
    vtbl[].vtbl.setSource = miqt_exec_callback_cQTextBrowser_setSource
  if not isNil(vtbl.backward):
    vtbl[].vtbl.backward = miqt_exec_callback_cQTextBrowser_backward
  if not isNil(vtbl.forward):
    vtbl[].vtbl.forward = miqt_exec_callback_cQTextBrowser_forward
  if not isNil(vtbl.home):
    vtbl[].vtbl.home = miqt_exec_callback_cQTextBrowser_home
  if not isNil(vtbl.reload):
    vtbl[].vtbl.reload = miqt_exec_callback_cQTextBrowser_reload
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextBrowser_event
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTextBrowser_keyPressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTextBrowser_mouseMoveEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTextBrowser_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTextBrowser_mouseReleaseEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTextBrowser_focusOutEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTextBrowser_focusNextPrevChild
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTextBrowser_paintEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTextBrowser_inputMethodQuery
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextBrowser_timerEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTextBrowser_keyReleaseEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTextBrowser_resizeEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTextBrowser_mouseDoubleClickEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTextBrowser_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTextBrowser_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTextBrowser_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTextBrowser_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTextBrowser_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTextBrowser_focusInEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTextBrowser_showEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTextBrowser_changeEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTextBrowser_wheelEvent
  if not isNil(vtbl.createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = miqt_exec_callback_cQTextBrowser_createMimeDataFromSelection
  if not isNil(vtbl.canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = miqt_exec_callback_cQTextBrowser_canInsertFromMimeData
  if not isNil(vtbl.insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = miqt_exec_callback_cQTextBrowser_insertFromMimeData
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTextBrowser_inputMethodEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTextBrowser_scrollContentsBy
  if not isNil(vtbl.doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = miqt_exec_callback_cQTextBrowser_doSetTextCursor
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTextBrowser_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTextBrowser_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTextBrowser_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextBrowser_eventFilter
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTextBrowser_viewportEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTextBrowser_viewportSizeHint
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTextBrowser_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTextBrowser_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTextBrowser_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTextBrowser_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTextBrowser_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTextBrowser_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTextBrowser_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTextBrowser_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTextBrowser_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTextBrowser_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTextBrowser_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTextBrowser_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTextBrowser_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTextBrowser_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTextBrowser_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTextBrowser_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTextBrowser_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextBrowser_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextBrowser_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextBrowser_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextBrowser_disconnectNotify
  gen_qtextbrowser_types.QTextBrowser(h: fcQTextBrowser_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qtextbrowser_types.QTextBrowser,
    vtbl: ref QTextBrowserVTable = nil): gen_qtextbrowser_types.QTextBrowser =
  let vtbl = if vtbl == nil: new QTextBrowserVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTextBrowserVTable, _: ptr cQTextBrowser) {.cdecl.} =
    let vtbl = cast[ref QTextBrowserVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextBrowser_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextBrowser_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextBrowser_metacall
  if not isNil(vtbl.loadResource):
    vtbl[].vtbl.loadResource = miqt_exec_callback_cQTextBrowser_loadResource
  if not isNil(vtbl.setSource):
    vtbl[].vtbl.setSource = miqt_exec_callback_cQTextBrowser_setSource
  if not isNil(vtbl.backward):
    vtbl[].vtbl.backward = miqt_exec_callback_cQTextBrowser_backward
  if not isNil(vtbl.forward):
    vtbl[].vtbl.forward = miqt_exec_callback_cQTextBrowser_forward
  if not isNil(vtbl.home):
    vtbl[].vtbl.home = miqt_exec_callback_cQTextBrowser_home
  if not isNil(vtbl.reload):
    vtbl[].vtbl.reload = miqt_exec_callback_cQTextBrowser_reload
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextBrowser_event
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTextBrowser_keyPressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTextBrowser_mouseMoveEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTextBrowser_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTextBrowser_mouseReleaseEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTextBrowser_focusOutEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTextBrowser_focusNextPrevChild
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTextBrowser_paintEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTextBrowser_inputMethodQuery
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextBrowser_timerEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTextBrowser_keyReleaseEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTextBrowser_resizeEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTextBrowser_mouseDoubleClickEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTextBrowser_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTextBrowser_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTextBrowser_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTextBrowser_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTextBrowser_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTextBrowser_focusInEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTextBrowser_showEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTextBrowser_changeEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTextBrowser_wheelEvent
  if not isNil(vtbl.createMimeDataFromSelection):
    vtbl[].vtbl.createMimeDataFromSelection = miqt_exec_callback_cQTextBrowser_createMimeDataFromSelection
  if not isNil(vtbl.canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = miqt_exec_callback_cQTextBrowser_canInsertFromMimeData
  if not isNil(vtbl.insertFromMimeData):
    vtbl[].vtbl.insertFromMimeData = miqt_exec_callback_cQTextBrowser_insertFromMimeData
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTextBrowser_inputMethodEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTextBrowser_scrollContentsBy
  if not isNil(vtbl.doSetTextCursor):
    vtbl[].vtbl.doSetTextCursor = miqt_exec_callback_cQTextBrowser_doSetTextCursor
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTextBrowser_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTextBrowser_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTextBrowser_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextBrowser_eventFilter
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTextBrowser_viewportEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTextBrowser_viewportSizeHint
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTextBrowser_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTextBrowser_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTextBrowser_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTextBrowser_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTextBrowser_paintEngine
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTextBrowser_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTextBrowser_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTextBrowser_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTextBrowser_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTextBrowser_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTextBrowser_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTextBrowser_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTextBrowser_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTextBrowser_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTextBrowser_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTextBrowser_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTextBrowser_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextBrowser_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextBrowser_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextBrowser_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextBrowser_disconnectNotify
  gen_qtextbrowser_types.QTextBrowser(h: fcQTextBrowser_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qtextbrowser_types.QTextBrowser): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextBrowser_staticMetaObject())
proc delete*(self: gen_qtextbrowser_types.QTextBrowser) =
  fcQTextBrowser_delete(self.h)
