import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qmainwindow.cpp", cflags).}


type QMainWindowDockOptionEnum* = distinct cint
template AnimatedDocks*(_: type QMainWindowDockOptionEnum): untyped = 1
template AllowNestedDocks*(_: type QMainWindowDockOptionEnum): untyped = 2
template AllowTabbedDocks*(_: type QMainWindowDockOptionEnum): untyped = 4
template ForceTabbedDocks*(_: type QMainWindowDockOptionEnum): untyped = 8
template VerticalTabs*(_: type QMainWindowDockOptionEnum): untyped = 16
template GroupedDragging*(_: type QMainWindowDockOptionEnum): untyped = 32


import ./gen_qmainwindow_types
export gen_qmainwindow_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qdockwidget_types,
  ./gen_qmenu_types,
  ./gen_qmenubar_types,
  ./gen_qstatusbar_types,
  ./gen_qtoolbar_types,
  ./gen_qwidget
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qdockwidget_types,
  gen_qmenu_types,
  gen_qmenubar_types,
  gen_qstatusbar_types,
  gen_qtoolbar_types,
  gen_qwidget

type cQMainWindow*{.exportc: "QMainWindow", incompleteStruct.} = object

proc fcQMainWindow_metaObject(self: pointer): pointer {.importc: "QMainWindow_metaObject".}
proc fcQMainWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QMainWindow_metacast".}
proc fcQMainWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMainWindow_metacall".}
proc fcQMainWindow_tr(s: cstring): struct_miqt_string {.importc: "QMainWindow_tr".}
proc fcQMainWindow_trUtf8(s: cstring): struct_miqt_string {.importc: "QMainWindow_trUtf8".}
proc fcQMainWindow_iconSize(self: pointer): pointer {.importc: "QMainWindow_iconSize".}
proc fcQMainWindow_setIconSize(self: pointer, iconSize: pointer): void {.importc: "QMainWindow_setIconSize".}
proc fcQMainWindow_toolButtonStyle(self: pointer): cint {.importc: "QMainWindow_toolButtonStyle".}
proc fcQMainWindow_setToolButtonStyle(self: pointer, toolButtonStyle: cint): void {.importc: "QMainWindow_setToolButtonStyle".}
proc fcQMainWindow_isAnimated(self: pointer): bool {.importc: "QMainWindow_isAnimated".}
proc fcQMainWindow_isDockNestingEnabled(self: pointer): bool {.importc: "QMainWindow_isDockNestingEnabled".}
proc fcQMainWindow_documentMode(self: pointer): bool {.importc: "QMainWindow_documentMode".}
proc fcQMainWindow_setDocumentMode(self: pointer, enabled: bool): void {.importc: "QMainWindow_setDocumentMode".}
proc fcQMainWindow_tabShape(self: pointer): cint {.importc: "QMainWindow_tabShape".}
proc fcQMainWindow_setTabShape(self: pointer, tabShape: cint): void {.importc: "QMainWindow_setTabShape".}
proc fcQMainWindow_tabPosition(self: pointer, area: cint): cint {.importc: "QMainWindow_tabPosition".}
proc fcQMainWindow_setTabPosition(self: pointer, areas: cint, tabPosition: cint): void {.importc: "QMainWindow_setTabPosition".}
proc fcQMainWindow_setDockOptions(self: pointer, options: cint): void {.importc: "QMainWindow_setDockOptions".}
proc fcQMainWindow_dockOptions(self: pointer): cint {.importc: "QMainWindow_dockOptions".}
proc fcQMainWindow_isSeparator(self: pointer, pos: pointer): bool {.importc: "QMainWindow_isSeparator".}
proc fcQMainWindow_menuBar(self: pointer): pointer {.importc: "QMainWindow_menuBar".}
proc fcQMainWindow_setMenuBar(self: pointer, menubar: pointer): void {.importc: "QMainWindow_setMenuBar".}
proc fcQMainWindow_menuWidget(self: pointer): pointer {.importc: "QMainWindow_menuWidget".}
proc fcQMainWindow_setMenuWidget(self: pointer, menubar: pointer): void {.importc: "QMainWindow_setMenuWidget".}
proc fcQMainWindow_statusBar(self: pointer): pointer {.importc: "QMainWindow_statusBar".}
proc fcQMainWindow_setStatusBar(self: pointer, statusbar: pointer): void {.importc: "QMainWindow_setStatusBar".}
proc fcQMainWindow_centralWidget(self: pointer): pointer {.importc: "QMainWindow_centralWidget".}
proc fcQMainWindow_setCentralWidget(self: pointer, widget: pointer): void {.importc: "QMainWindow_setCentralWidget".}
proc fcQMainWindow_takeCentralWidget(self: pointer): pointer {.importc: "QMainWindow_takeCentralWidget".}
proc fcQMainWindow_setCorner(self: pointer, corner: cint, area: cint): void {.importc: "QMainWindow_setCorner".}
proc fcQMainWindow_corner(self: pointer, corner: cint): cint {.importc: "QMainWindow_corner".}
proc fcQMainWindow_addToolBarBreak(self: pointer): void {.importc: "QMainWindow_addToolBarBreak".}
proc fcQMainWindow_insertToolBarBreak(self: pointer, before: pointer): void {.importc: "QMainWindow_insertToolBarBreak".}
proc fcQMainWindow_addToolBar(self: pointer, area: cint, toolbar: pointer): void {.importc: "QMainWindow_addToolBar".}
proc fcQMainWindow_addToolBarWithToolbar(self: pointer, toolbar: pointer): void {.importc: "QMainWindow_addToolBarWithToolbar".}
proc fcQMainWindow_addToolBarWithTitle(self: pointer, title: struct_miqt_string): pointer {.importc: "QMainWindow_addToolBarWithTitle".}
proc fcQMainWindow_insertToolBar(self: pointer, before: pointer, toolbar: pointer): void {.importc: "QMainWindow_insertToolBar".}
proc fcQMainWindow_removeToolBar(self: pointer, toolbar: pointer): void {.importc: "QMainWindow_removeToolBar".}
proc fcQMainWindow_removeToolBarBreak(self: pointer, before: pointer): void {.importc: "QMainWindow_removeToolBarBreak".}
proc fcQMainWindow_unifiedTitleAndToolBarOnMac(self: pointer): bool {.importc: "QMainWindow_unifiedTitleAndToolBarOnMac".}
proc fcQMainWindow_toolBarArea(self: pointer, toolbar: pointer): cint {.importc: "QMainWindow_toolBarArea".}
proc fcQMainWindow_toolBarBreak(self: pointer, toolbar: pointer): bool {.importc: "QMainWindow_toolBarBreak".}
proc fcQMainWindow_addDockWidget(self: pointer, area: cint, dockwidget: pointer): void {.importc: "QMainWindow_addDockWidget".}
proc fcQMainWindow_addDockWidget2(self: pointer, area: cint, dockwidget: pointer, orientation: cint): void {.importc: "QMainWindow_addDockWidget2".}
proc fcQMainWindow_splitDockWidget(self: pointer, after: pointer, dockwidget: pointer, orientation: cint): void {.importc: "QMainWindow_splitDockWidget".}
proc fcQMainWindow_tabifyDockWidget(self: pointer, first: pointer, second: pointer): void {.importc: "QMainWindow_tabifyDockWidget".}
proc fcQMainWindow_tabifiedDockWidgets(self: pointer, dockwidget: pointer): struct_miqt_array {.importc: "QMainWindow_tabifiedDockWidgets".}
proc fcQMainWindow_removeDockWidget(self: pointer, dockwidget: pointer): void {.importc: "QMainWindow_removeDockWidget".}
proc fcQMainWindow_restoreDockWidget(self: pointer, dockwidget: pointer): bool {.importc: "QMainWindow_restoreDockWidget".}
proc fcQMainWindow_dockWidgetArea(self: pointer, dockwidget: pointer): cint {.importc: "QMainWindow_dockWidgetArea".}
proc fcQMainWindow_resizeDocks(self: pointer, docks: struct_miqt_array, sizes: struct_miqt_array, orientation: cint): void {.importc: "QMainWindow_resizeDocks".}
proc fcQMainWindow_saveState(self: pointer): struct_miqt_string {.importc: "QMainWindow_saveState".}
proc fcQMainWindow_restoreState(self: pointer, state: struct_miqt_string): bool {.importc: "QMainWindow_restoreState".}
proc fcQMainWindow_createPopupMenu(self: pointer): pointer {.importc: "QMainWindow_createPopupMenu".}
proc fcQMainWindow_setAnimated(self: pointer, enabled: bool): void {.importc: "QMainWindow_setAnimated".}
proc fcQMainWindow_setDockNestingEnabled(self: pointer, enabled: bool): void {.importc: "QMainWindow_setDockNestingEnabled".}
proc fcQMainWindow_setUnifiedTitleAndToolBarOnMac(self: pointer, set: bool): void {.importc: "QMainWindow_setUnifiedTitleAndToolBarOnMac".}
proc fcQMainWindow_iconSizeChanged(self: pointer, iconSize: pointer): void {.importc: "QMainWindow_iconSizeChanged".}
proc fcQMainWindow_connect_iconSizeChanged(self: pointer, slot: int, callback: proc (slot: int, iconSize: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMainWindow_connect_iconSizeChanged".}
proc fcQMainWindow_toolButtonStyleChanged(self: pointer, toolButtonStyle: cint): void {.importc: "QMainWindow_toolButtonStyleChanged".}
proc fcQMainWindow_connect_toolButtonStyleChanged(self: pointer, slot: int, callback: proc (slot: int, toolButtonStyle: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMainWindow_connect_toolButtonStyleChanged".}
proc fcQMainWindow_tabifiedDockWidgetActivated(self: pointer, dockWidget: pointer): void {.importc: "QMainWindow_tabifiedDockWidgetActivated".}
proc fcQMainWindow_connect_tabifiedDockWidgetActivated(self: pointer, slot: int, callback: proc (slot: int, dockWidget: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMainWindow_connect_tabifiedDockWidgetActivated".}
proc fcQMainWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMainWindow_tr2".}
proc fcQMainWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMainWindow_tr3".}
proc fcQMainWindow_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMainWindow_trUtf82".}
proc fcQMainWindow_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMainWindow_trUtf83".}
proc fcQMainWindow_addToolBarBreak1(self: pointer, area: cint): void {.importc: "QMainWindow_addToolBarBreak1".}
proc fcQMainWindow_saveState1(self: pointer, version: cint): struct_miqt_string {.importc: "QMainWindow_saveState1".}
proc fcQMainWindow_restoreState2(self: pointer, state: struct_miqt_string, version: cint): bool {.importc: "QMainWindow_restoreState2".}
proc fcQMainWindow_vtbl(self: pointer): pointer {.importc: "QMainWindow_vtbl".}
proc fcQMainWindow_vdata(self: pointer): pointer {.importc: "QMainWindow_vdata".}
type cQMainWindowVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  createPopupMenu*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
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
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQMainWindow_virtualbase_metaObject(self: pointer): pointer {.importc: "QMainWindow_virtualbase_metaObject".}
proc fcQMainWindow_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMainWindow_virtualbase_metacast".}
proc fcQMainWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMainWindow_virtualbase_metacall".}
proc fcQMainWindow_virtualbase_createPopupMenu(self: pointer): pointer {.importc: "QMainWindow_virtualbase_createPopupMenu".}
proc fcQMainWindow_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_contextMenuEvent".}
proc fcQMainWindow_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMainWindow_virtualbase_event".}
proc fcQMainWindow_virtualbase_devType(self: pointer): cint {.importc: "QMainWindow_virtualbase_devType".}
proc fcQMainWindow_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QMainWindow_virtualbase_setVisible".}
proc fcQMainWindow_virtualbase_sizeHint(self: pointer): pointer {.importc: "QMainWindow_virtualbase_sizeHint".}
proc fcQMainWindow_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QMainWindow_virtualbase_minimumSizeHint".}
proc fcQMainWindow_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QMainWindow_virtualbase_heightForWidth".}
proc fcQMainWindow_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QMainWindow_virtualbase_hasHeightForWidth".}
proc fcQMainWindow_virtualbase_paintEngine(self: pointer): pointer {.importc: "QMainWindow_virtualbase_paintEngine".}
proc fcQMainWindow_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_mousePressEvent".}
proc fcQMainWindow_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_mouseReleaseEvent".}
proc fcQMainWindow_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQMainWindow_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_mouseMoveEvent".}
proc fcQMainWindow_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_wheelEvent".}
proc fcQMainWindow_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_keyPressEvent".}
proc fcQMainWindow_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_keyReleaseEvent".}
proc fcQMainWindow_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_focusInEvent".}
proc fcQMainWindow_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_focusOutEvent".}
proc fcQMainWindow_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_enterEvent".}
proc fcQMainWindow_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_leaveEvent".}
proc fcQMainWindow_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_paintEvent".}
proc fcQMainWindow_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_moveEvent".}
proc fcQMainWindow_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_resizeEvent".}
proc fcQMainWindow_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_closeEvent".}
proc fcQMainWindow_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_tabletEvent".}
proc fcQMainWindow_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_actionEvent".}
proc fcQMainWindow_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_dragEnterEvent".}
proc fcQMainWindow_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_dragMoveEvent".}
proc fcQMainWindow_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_dragLeaveEvent".}
proc fcQMainWindow_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_dropEvent".}
proc fcQMainWindow_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_showEvent".}
proc fcQMainWindow_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_hideEvent".}
proc fcQMainWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QMainWindow_virtualbase_nativeEvent".}
proc fcQMainWindow_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QMainWindow_virtualbase_changeEvent".}
proc fcQMainWindow_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QMainWindow_virtualbase_metric".}
proc fcQMainWindow_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QMainWindow_virtualbase_initPainter".}
proc fcQMainWindow_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QMainWindow_virtualbase_redirected".}
proc fcQMainWindow_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QMainWindow_virtualbase_sharedPainter".}
proc fcQMainWindow_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QMainWindow_virtualbase_inputMethodEvent".}
proc fcQMainWindow_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QMainWindow_virtualbase_inputMethodQuery".}
proc fcQMainWindow_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QMainWindow_virtualbase_focusNextPrevChild".}
proc fcQMainWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMainWindow_virtualbase_eventFilter".}
proc fcQMainWindow_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_timerEvent".}
proc fcQMainWindow_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_childEvent".}
proc fcQMainWindow_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMainWindow_virtualbase_customEvent".}
proc fcQMainWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMainWindow_virtualbase_connectNotify".}
proc fcQMainWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMainWindow_virtualbase_disconnectNotify".}
proc fcQMainWindow_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QMainWindow_protectedbase_updateMicroFocus".}
proc fcQMainWindow_protectedbase_create(self: pointer): void {.importc: "QMainWindow_protectedbase_create".}
proc fcQMainWindow_protectedbase_destroy(self: pointer): void {.importc: "QMainWindow_protectedbase_destroy".}
proc fcQMainWindow_protectedbase_focusNextChild(self: pointer): bool {.importc: "QMainWindow_protectedbase_focusNextChild".}
proc fcQMainWindow_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QMainWindow_protectedbase_focusPreviousChild".}
proc fcQMainWindow_protectedbase_sender(self: pointer): pointer {.importc: "QMainWindow_protectedbase_sender".}
proc fcQMainWindow_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMainWindow_protectedbase_senderSignalIndex".}
proc fcQMainWindow_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMainWindow_protectedbase_receivers".}
proc fcQMainWindow_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMainWindow_protectedbase_isSignalConnected".}
proc fcQMainWindow_new(vtbl, vdata: pointer, parent: pointer): ptr cQMainWindow {.importc: "QMainWindow_new".}
proc fcQMainWindow_new2(vtbl, vdata: pointer): ptr cQMainWindow {.importc: "QMainWindow_new2".}
proc fcQMainWindow_new3(vtbl, vdata: pointer, parent: pointer, flags: cint): ptr cQMainWindow {.importc: "QMainWindow_new3".}
proc fcQMainWindow_staticMetaObject(): pointer {.importc: "QMainWindow_staticMetaObject".}

proc metaObject*(self: gen_qmainwindow_types.QMainWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMainWindow_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmainwindow_types.QMainWindow, param1: cstring): pointer =
  fcQMainWindow_metacast(self.h, param1)

proc metacall*(self: gen_qmainwindow_types.QMainWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQMainWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmainwindow_types.QMainWindow, s: cstring): string =
  let v_ms = fcQMainWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmainwindow_types.QMainWindow, s: cstring): string =
  let v_ms = fcQMainWindow_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc iconSize*(self: gen_qmainwindow_types.QMainWindow): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMainWindow_iconSize(self.h), owned: true)

proc setIconSize*(self: gen_qmainwindow_types.QMainWindow, iconSize: gen_qsize_types.QSize): void =
  fcQMainWindow_setIconSize(self.h, iconSize.h)

proc toolButtonStyle*(self: gen_qmainwindow_types.QMainWindow): cint =
  cint(fcQMainWindow_toolButtonStyle(self.h))

proc setToolButtonStyle*(self: gen_qmainwindow_types.QMainWindow, toolButtonStyle: cint): void =
  fcQMainWindow_setToolButtonStyle(self.h, cint(toolButtonStyle))

proc isAnimated*(self: gen_qmainwindow_types.QMainWindow): bool =
  fcQMainWindow_isAnimated(self.h)

proc isDockNestingEnabled*(self: gen_qmainwindow_types.QMainWindow): bool =
  fcQMainWindow_isDockNestingEnabled(self.h)

proc documentMode*(self: gen_qmainwindow_types.QMainWindow): bool =
  fcQMainWindow_documentMode(self.h)

proc setDocumentMode*(self: gen_qmainwindow_types.QMainWindow, enabled: bool): void =
  fcQMainWindow_setDocumentMode(self.h, enabled)

proc tabShape*(self: gen_qmainwindow_types.QMainWindow): cint =
  cint(fcQMainWindow_tabShape(self.h))

proc setTabShape*(self: gen_qmainwindow_types.QMainWindow, tabShape: cint): void =
  fcQMainWindow_setTabShape(self.h, cint(tabShape))

proc tabPosition*(self: gen_qmainwindow_types.QMainWindow, area: cint): cint =
  cint(fcQMainWindow_tabPosition(self.h, cint(area)))

proc setTabPosition*(self: gen_qmainwindow_types.QMainWindow, areas: cint, tabPosition: cint): void =
  fcQMainWindow_setTabPosition(self.h, cint(areas), cint(tabPosition))

proc setDockOptions*(self: gen_qmainwindow_types.QMainWindow, options: cint): void =
  fcQMainWindow_setDockOptions(self.h, cint(options))

proc dockOptions*(self: gen_qmainwindow_types.QMainWindow): cint =
  cint(fcQMainWindow_dockOptions(self.h))

proc isSeparator*(self: gen_qmainwindow_types.QMainWindow, pos: gen_qpoint_types.QPoint): bool =
  fcQMainWindow_isSeparator(self.h, pos.h)

proc menuBar*(self: gen_qmainwindow_types.QMainWindow): gen_qmenubar_types.QMenuBar =
  gen_qmenubar_types.QMenuBar(h: fcQMainWindow_menuBar(self.h), owned: false)

proc setMenuBar*(self: gen_qmainwindow_types.QMainWindow, menubar: gen_qmenubar_types.QMenuBar): void =
  fcQMainWindow_setMenuBar(self.h, menubar.h)

proc menuWidget*(self: gen_qmainwindow_types.QMainWindow): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMainWindow_menuWidget(self.h), owned: false)

proc setMenuWidget*(self: gen_qmainwindow_types.QMainWindow, menubar: gen_qwidget_types.QWidget): void =
  fcQMainWindow_setMenuWidget(self.h, menubar.h)

proc statusBar*(self: gen_qmainwindow_types.QMainWindow): gen_qstatusbar_types.QStatusBar =
  gen_qstatusbar_types.QStatusBar(h: fcQMainWindow_statusBar(self.h), owned: false)

proc setStatusBar*(self: gen_qmainwindow_types.QMainWindow, statusbar: gen_qstatusbar_types.QStatusBar): void =
  fcQMainWindow_setStatusBar(self.h, statusbar.h)

proc centralWidget*(self: gen_qmainwindow_types.QMainWindow): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMainWindow_centralWidget(self.h), owned: false)

proc setCentralWidget*(self: gen_qmainwindow_types.QMainWindow, widget: gen_qwidget_types.QWidget): void =
  fcQMainWindow_setCentralWidget(self.h, widget.h)

proc takeCentralWidget*(self: gen_qmainwindow_types.QMainWindow): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMainWindow_takeCentralWidget(self.h), owned: false)

proc setCorner*(self: gen_qmainwindow_types.QMainWindow, corner: cint, area: cint): void =
  fcQMainWindow_setCorner(self.h, cint(corner), cint(area))

proc corner*(self: gen_qmainwindow_types.QMainWindow, corner: cint): cint =
  cint(fcQMainWindow_corner(self.h, cint(corner)))

proc addToolBarBreak*(self: gen_qmainwindow_types.QMainWindow): void =
  fcQMainWindow_addToolBarBreak(self.h)

proc insertToolBarBreak*(self: gen_qmainwindow_types.QMainWindow, before: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_insertToolBarBreak(self.h, before.h)

proc addToolBar*(self: gen_qmainwindow_types.QMainWindow, area: cint, toolbar: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_addToolBar(self.h, cint(area), toolbar.h)

proc addToolBar*(self: gen_qmainwindow_types.QMainWindow, toolbar: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_addToolBarWithToolbar(self.h, toolbar.h)

proc addToolBar*(self: gen_qmainwindow_types.QMainWindow, title: string): gen_qtoolbar_types.QToolBar =
  gen_qtoolbar_types.QToolBar(h: fcQMainWindow_addToolBarWithTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title)))), owned: false)

proc insertToolBar*(self: gen_qmainwindow_types.QMainWindow, before: gen_qtoolbar_types.QToolBar, toolbar: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_insertToolBar(self.h, before.h, toolbar.h)

proc removeToolBar*(self: gen_qmainwindow_types.QMainWindow, toolbar: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_removeToolBar(self.h, toolbar.h)

proc removeToolBarBreak*(self: gen_qmainwindow_types.QMainWindow, before: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_removeToolBarBreak(self.h, before.h)

proc unifiedTitleAndToolBarOnMac*(self: gen_qmainwindow_types.QMainWindow): bool =
  fcQMainWindow_unifiedTitleAndToolBarOnMac(self.h)

proc toolBarArea*(self: gen_qmainwindow_types.QMainWindow, toolbar: gen_qtoolbar_types.QToolBar): cint =
  cint(fcQMainWindow_toolBarArea(self.h, toolbar.h))

proc toolBarBreak*(self: gen_qmainwindow_types.QMainWindow, toolbar: gen_qtoolbar_types.QToolBar): bool =
  fcQMainWindow_toolBarBreak(self.h, toolbar.h)

proc addDockWidget*(self: gen_qmainwindow_types.QMainWindow, area: cint, dockwidget: gen_qdockwidget_types.QDockWidget): void =
  fcQMainWindow_addDockWidget(self.h, cint(area), dockwidget.h)

proc addDockWidget*(self: gen_qmainwindow_types.QMainWindow, area: cint, dockwidget: gen_qdockwidget_types.QDockWidget, orientation: cint): void =
  fcQMainWindow_addDockWidget2(self.h, cint(area), dockwidget.h, cint(orientation))

proc splitDockWidget*(self: gen_qmainwindow_types.QMainWindow, after: gen_qdockwidget_types.QDockWidget, dockwidget: gen_qdockwidget_types.QDockWidget, orientation: cint): void =
  fcQMainWindow_splitDockWidget(self.h, after.h, dockwidget.h, cint(orientation))

proc tabifyDockWidget*(self: gen_qmainwindow_types.QMainWindow, first: gen_qdockwidget_types.QDockWidget, second: gen_qdockwidget_types.QDockWidget): void =
  fcQMainWindow_tabifyDockWidget(self.h, first.h, second.h)

proc tabifiedDockWidgets*(self: gen_qmainwindow_types.QMainWindow, dockwidget: gen_qdockwidget_types.QDockWidget): seq[gen_qdockwidget_types.QDockWidget] =
  var v_ma = fcQMainWindow_tabifiedDockWidgets(self.h, dockwidget.h)
  var vx_ret = newSeq[gen_qdockwidget_types.QDockWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qdockwidget_types.QDockWidget(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc removeDockWidget*(self: gen_qmainwindow_types.QMainWindow, dockwidget: gen_qdockwidget_types.QDockWidget): void =
  fcQMainWindow_removeDockWidget(self.h, dockwidget.h)

proc restoreDockWidget*(self: gen_qmainwindow_types.QMainWindow, dockwidget: gen_qdockwidget_types.QDockWidget): bool =
  fcQMainWindow_restoreDockWidget(self.h, dockwidget.h)

proc dockWidgetArea*(self: gen_qmainwindow_types.QMainWindow, dockwidget: gen_qdockwidget_types.QDockWidget): cint =
  cint(fcQMainWindow_dockWidgetArea(self.h, dockwidget.h))

proc resizeDocks*(self: gen_qmainwindow_types.QMainWindow, docks: seq[gen_qdockwidget_types.QDockWidget], sizes: seq[cint], orientation: cint): void =
  var docks_CArray = newSeq[pointer](len(docks))
  for i in 0..<len(docks):
    docks_CArray[i] = docks[i].h

  var sizes_CArray = newSeq[cint](len(sizes))
  for i in 0..<len(sizes):
    sizes_CArray[i] = sizes[i]

  fcQMainWindow_resizeDocks(self.h, struct_miqt_array(len: csize_t(len(docks)), data: if len(docks) == 0: nil else: addr(docks_CArray[0])), struct_miqt_array(len: csize_t(len(sizes)), data: if len(sizes) == 0: nil else: addr(sizes_CArray[0])), cint(orientation))

proc saveState*(self: gen_qmainwindow_types.QMainWindow): seq[byte] =
  var v_bytearray = fcQMainWindow_saveState(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: gen_qmainwindow_types.QMainWindow, state: seq[byte]): bool =
  fcQMainWindow_restoreState(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))))

proc createPopupMenu*(self: gen_qmainwindow_types.QMainWindow): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMainWindow_createPopupMenu(self.h), owned: false)

proc setAnimated*(self: gen_qmainwindow_types.QMainWindow, enabled: bool): void =
  fcQMainWindow_setAnimated(self.h, enabled)

proc setDockNestingEnabled*(self: gen_qmainwindow_types.QMainWindow, enabled: bool): void =
  fcQMainWindow_setDockNestingEnabled(self.h, enabled)

proc setUnifiedTitleAndToolBarOnMac*(self: gen_qmainwindow_types.QMainWindow, set: bool): void =
  fcQMainWindow_setUnifiedTitleAndToolBarOnMac(self.h, set)

proc iconSizeChanged*(self: gen_qmainwindow_types.QMainWindow, iconSize: gen_qsize_types.QSize): void =
  fcQMainWindow_iconSizeChanged(self.h, iconSize.h)

type QMainWindowiconSizeChangedSlot* = proc(iconSize: gen_qsize_types.QSize)
proc cQMainWindow_slot_callback_iconSizeChanged(slot: int, iconSize: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMainWindowiconSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: iconSize, owned: false)

  nimfunc[](slotval1)

proc cQMainWindow_slot_callback_iconSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMainWindowiconSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconSizeChanged*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowiconSizeChangedSlot) =
  var tmp = new QMainWindowiconSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_connect_iconSizeChanged(self.h, cast[int](addr tmp[]), cQMainWindow_slot_callback_iconSizeChanged, cQMainWindow_slot_callback_iconSizeChanged_release)

proc toolButtonStyleChanged*(self: gen_qmainwindow_types.QMainWindow, toolButtonStyle: cint): void =
  fcQMainWindow_toolButtonStyleChanged(self.h, cint(toolButtonStyle))

type QMainWindowtoolButtonStyleChangedSlot* = proc(toolButtonStyle: cint)
proc cQMainWindow_slot_callback_toolButtonStyleChanged(slot: int, toolButtonStyle: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMainWindowtoolButtonStyleChangedSlot](cast[pointer](slot))
  let slotval1 = cint(toolButtonStyle)

  nimfunc[](slotval1)

proc cQMainWindow_slot_callback_toolButtonStyleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMainWindowtoolButtonStyleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontoolButtonStyleChanged*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowtoolButtonStyleChangedSlot) =
  var tmp = new QMainWindowtoolButtonStyleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_connect_toolButtonStyleChanged(self.h, cast[int](addr tmp[]), cQMainWindow_slot_callback_toolButtonStyleChanged, cQMainWindow_slot_callback_toolButtonStyleChanged_release)

proc tabifiedDockWidgetActivated*(self: gen_qmainwindow_types.QMainWindow, dockWidget: gen_qdockwidget_types.QDockWidget): void =
  fcQMainWindow_tabifiedDockWidgetActivated(self.h, dockWidget.h)

type QMainWindowtabifiedDockWidgetActivatedSlot* = proc(dockWidget: gen_qdockwidget_types.QDockWidget)
proc cQMainWindow_slot_callback_tabifiedDockWidgetActivated(slot: int, dockWidget: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMainWindowtabifiedDockWidgetActivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qdockwidget_types.QDockWidget(h: dockWidget, owned: false)

  nimfunc[](slotval1)

proc cQMainWindow_slot_callback_tabifiedDockWidgetActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMainWindowtabifiedDockWidgetActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontabifiedDockWidgetActivated*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowtabifiedDockWidgetActivatedSlot) =
  var tmp = new QMainWindowtabifiedDockWidgetActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_connect_tabifiedDockWidgetActivated(self.h, cast[int](addr tmp[]), cQMainWindow_slot_callback_tabifiedDockWidgetActivated, cQMainWindow_slot_callback_tabifiedDockWidgetActivated_release)

proc tr*(_: type gen_qmainwindow_types.QMainWindow, s: cstring, c: cstring): string =
  let v_ms = fcQMainWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmainwindow_types.QMainWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMainWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmainwindow_types.QMainWindow, s: cstring, c: cstring): string =
  let v_ms = fcQMainWindow_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmainwindow_types.QMainWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMainWindow_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addToolBarBreak*(self: gen_qmainwindow_types.QMainWindow, area: cint): void =
  fcQMainWindow_addToolBarBreak1(self.h, cint(area))

proc saveState*(self: gen_qmainwindow_types.QMainWindow, version: cint): seq[byte] =
  var v_bytearray = fcQMainWindow_saveState1(self.h, version)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: gen_qmainwindow_types.QMainWindow, state: seq[byte], version: cint): bool =
  fcQMainWindow_restoreState2(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))), version)

type QMainWindowmetaObjectProc* = proc(self: QMainWindow): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMainWindowmetacastProc* = proc(self: QMainWindow, param1: cstring): pointer {.raises: [], gcsafe.}
type QMainWindowmetacallProc* = proc(self: QMainWindow, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMainWindowcreatePopupMenuProc* = proc(self: QMainWindow): gen_qmenu_types.QMenu {.raises: [], gcsafe.}
type QMainWindowcontextMenuEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QMainWindoweventProc* = proc(self: QMainWindow, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMainWindowdevTypeProc* = proc(self: QMainWindow): cint {.raises: [], gcsafe.}
type QMainWindowsetVisibleProc* = proc(self: QMainWindow, visible: bool): void {.raises: [], gcsafe.}
type QMainWindowsizeHintProc* = proc(self: QMainWindow): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMainWindowminimumSizeHintProc* = proc(self: QMainWindow): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMainWindowheightForWidthProc* = proc(self: QMainWindow, param1: cint): cint {.raises: [], gcsafe.}
type QMainWindowhasHeightForWidthProc* = proc(self: QMainWindow): bool {.raises: [], gcsafe.}
type QMainWindowpaintEngineProc* = proc(self: QMainWindow): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QMainWindowmousePressEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMainWindowmouseReleaseEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMainWindowmouseDoubleClickEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMainWindowmouseMoveEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMainWindowwheelEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QMainWindowkeyPressEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMainWindowkeyReleaseEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMainWindowfocusInEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMainWindowfocusOutEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMainWindowenterEventProc* = proc(self: QMainWindow, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMainWindowleaveEventProc* = proc(self: QMainWindow, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMainWindowpaintEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QMainWindowmoveEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QMainWindowresizeEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QMainWindowcloseEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QMainWindowtabletEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QMainWindowactionEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QMainWindowdragEnterEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QMainWindowdragMoveEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QMainWindowdragLeaveEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QMainWindowdropEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QMainWindowshowEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QMainWindowhideEventProc* = proc(self: QMainWindow, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QMainWindownativeEventProc* = proc(self: QMainWindow, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QMainWindowchangeEventProc* = proc(self: QMainWindow, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMainWindowmetricProc* = proc(self: QMainWindow, param1: cint): cint {.raises: [], gcsafe.}
type QMainWindowinitPainterProc* = proc(self: QMainWindow, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QMainWindowredirectedProc* = proc(self: QMainWindow, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QMainWindowsharedPainterProc* = proc(self: QMainWindow): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QMainWindowinputMethodEventProc* = proc(self: QMainWindow, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QMainWindowinputMethodQueryProc* = proc(self: QMainWindow, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QMainWindowfocusNextPrevChildProc* = proc(self: QMainWindow, next: bool): bool {.raises: [], gcsafe.}
type QMainWindoweventFilterProc* = proc(self: QMainWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMainWindowtimerEventProc* = proc(self: QMainWindow, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMainWindowchildEventProc* = proc(self: QMainWindow, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMainWindowcustomEventProc* = proc(self: QMainWindow, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMainWindowconnectNotifyProc* = proc(self: QMainWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMainWindowdisconnectNotifyProc* = proc(self: QMainWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMainWindowVTable* {.inheritable, pure.} = object
  vtbl: cQMainWindowVTable
  metaObject*: QMainWindowmetaObjectProc
  metacast*: QMainWindowmetacastProc
  metacall*: QMainWindowmetacallProc
  createPopupMenu*: QMainWindowcreatePopupMenuProc
  contextMenuEvent*: QMainWindowcontextMenuEventProc
  event*: QMainWindoweventProc
  devType*: QMainWindowdevTypeProc
  setVisible*: QMainWindowsetVisibleProc
  sizeHint*: QMainWindowsizeHintProc
  minimumSizeHint*: QMainWindowminimumSizeHintProc
  heightForWidth*: QMainWindowheightForWidthProc
  hasHeightForWidth*: QMainWindowhasHeightForWidthProc
  paintEngine*: QMainWindowpaintEngineProc
  mousePressEvent*: QMainWindowmousePressEventProc
  mouseReleaseEvent*: QMainWindowmouseReleaseEventProc
  mouseDoubleClickEvent*: QMainWindowmouseDoubleClickEventProc
  mouseMoveEvent*: QMainWindowmouseMoveEventProc
  wheelEvent*: QMainWindowwheelEventProc
  keyPressEvent*: QMainWindowkeyPressEventProc
  keyReleaseEvent*: QMainWindowkeyReleaseEventProc
  focusInEvent*: QMainWindowfocusInEventProc
  focusOutEvent*: QMainWindowfocusOutEventProc
  enterEvent*: QMainWindowenterEventProc
  leaveEvent*: QMainWindowleaveEventProc
  paintEvent*: QMainWindowpaintEventProc
  moveEvent*: QMainWindowmoveEventProc
  resizeEvent*: QMainWindowresizeEventProc
  closeEvent*: QMainWindowcloseEventProc
  tabletEvent*: QMainWindowtabletEventProc
  actionEvent*: QMainWindowactionEventProc
  dragEnterEvent*: QMainWindowdragEnterEventProc
  dragMoveEvent*: QMainWindowdragMoveEventProc
  dragLeaveEvent*: QMainWindowdragLeaveEventProc
  dropEvent*: QMainWindowdropEventProc
  showEvent*: QMainWindowshowEventProc
  hideEvent*: QMainWindowhideEventProc
  nativeEvent*: QMainWindownativeEventProc
  changeEvent*: QMainWindowchangeEventProc
  metric*: QMainWindowmetricProc
  initPainter*: QMainWindowinitPainterProc
  redirected*: QMainWindowredirectedProc
  sharedPainter*: QMainWindowsharedPainterProc
  inputMethodEvent*: QMainWindowinputMethodEventProc
  inputMethodQuery*: QMainWindowinputMethodQueryProc
  focusNextPrevChild*: QMainWindowfocusNextPrevChildProc
  eventFilter*: QMainWindoweventFilterProc
  timerEvent*: QMainWindowtimerEventProc
  childEvent*: QMainWindowchildEventProc
  customEvent*: QMainWindowcustomEventProc
  connectNotify*: QMainWindowconnectNotifyProc
  disconnectNotify*: QMainWindowdisconnectNotifyProc
proc QMainWindowmetaObject*(self: gen_qmainwindow_types.QMainWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMainWindow_virtualbase_metaObject(self.h), owned: false)

proc cQMainWindow_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMainWindowmetacast*(self: gen_qmainwindow_types.QMainWindow, param1: cstring): pointer =
  fcQMainWindow_virtualbase_metacast(self.h, param1)

proc cQMainWindow_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMainWindowmetacall*(self: gen_qmainwindow_types.QMainWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQMainWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQMainWindow_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMainWindowcreatePopupMenu*(self: gen_qmainwindow_types.QMainWindow): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMainWindow_virtualbase_createPopupMenu(self.h), owned: false)

proc cQMainWindow_vtable_callback_createPopupMenu(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  var virtualReturn = vtbl[].createPopupMenu(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMainWindowcontextMenuEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QContextMenuEvent): void =
  fcQMainWindow_virtualbase_contextMenuEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QMainWindowevent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qcoreevent_types.QEvent): bool =
  fcQMainWindow_virtualbase_event(self.h, event.h)

proc cQMainWindow_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMainWindowdevType*(self: gen_qmainwindow_types.QMainWindow): cint =
  fcQMainWindow_virtualbase_devType(self.h)

proc cQMainWindow_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QMainWindowsetVisible*(self: gen_qmainwindow_types.QMainWindow, visible: bool): void =
  fcQMainWindow_virtualbase_setVisible(self.h, visible)

proc cQMainWindow_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QMainWindowsizeHint*(self: gen_qmainwindow_types.QMainWindow): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMainWindow_virtualbase_sizeHint(self.h), owned: true)

proc cQMainWindow_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMainWindowminimumSizeHint*(self: gen_qmainwindow_types.QMainWindow): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMainWindow_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQMainWindow_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMainWindowheightForWidth*(self: gen_qmainwindow_types.QMainWindow, param1: cint): cint =
  fcQMainWindow_virtualbase_heightForWidth(self.h, param1)

proc cQMainWindow_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QMainWindowhasHeightForWidth*(self: gen_qmainwindow_types.QMainWindow): bool =
  fcQMainWindow_virtualbase_hasHeightForWidth(self.h)

proc cQMainWindow_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QMainWindowpaintEngine*(self: gen_qmainwindow_types.QMainWindow): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQMainWindow_virtualbase_paintEngine(self.h), owned: false)

proc cQMainWindow_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMainWindowmousePressEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QMouseEvent): void =
  fcQMainWindow_virtualbase_mousePressEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QMainWindowmouseReleaseEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QMouseEvent): void =
  fcQMainWindow_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QMainWindowmouseDoubleClickEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QMouseEvent): void =
  fcQMainWindow_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QMainWindowmouseMoveEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QMouseEvent): void =
  fcQMainWindow_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QMainWindowwheelEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QWheelEvent): void =
  fcQMainWindow_virtualbase_wheelEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QMainWindowkeyPressEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QKeyEvent): void =
  fcQMainWindow_virtualbase_keyPressEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QMainWindowkeyReleaseEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QKeyEvent): void =
  fcQMainWindow_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QMainWindowfocusInEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QFocusEvent): void =
  fcQMainWindow_virtualbase_focusInEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QMainWindowfocusOutEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QFocusEvent): void =
  fcQMainWindow_virtualbase_focusOutEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QMainWindowenterEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qcoreevent_types.QEvent): void =
  fcQMainWindow_virtualbase_enterEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QMainWindowleaveEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qcoreevent_types.QEvent): void =
  fcQMainWindow_virtualbase_leaveEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QMainWindowpaintEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QPaintEvent): void =
  fcQMainWindow_virtualbase_paintEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QMainWindowmoveEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QMoveEvent): void =
  fcQMainWindow_virtualbase_moveEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QMainWindowresizeEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QResizeEvent): void =
  fcQMainWindow_virtualbase_resizeEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QMainWindowcloseEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QCloseEvent): void =
  fcQMainWindow_virtualbase_closeEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QMainWindowtabletEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QTabletEvent): void =
  fcQMainWindow_virtualbase_tabletEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QMainWindowactionEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QActionEvent): void =
  fcQMainWindow_virtualbase_actionEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QMainWindowdragEnterEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QDragEnterEvent): void =
  fcQMainWindow_virtualbase_dragEnterEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QMainWindowdragMoveEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QDragMoveEvent): void =
  fcQMainWindow_virtualbase_dragMoveEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QMainWindowdragLeaveEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQMainWindow_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QMainWindowdropEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QDropEvent): void =
  fcQMainWindow_virtualbase_dropEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QMainWindowshowEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QShowEvent): void =
  fcQMainWindow_virtualbase_showEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QMainWindowhideEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QHideEvent): void =
  fcQMainWindow_virtualbase_hideEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QMainWindownativeEvent*(self: gen_qmainwindow_types.QMainWindow, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQMainWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQMainWindow_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMainWindowchangeEvent*(self: gen_qmainwindow_types.QMainWindow, param1: gen_qcoreevent_types.QEvent): void =
  fcQMainWindow_virtualbase_changeEvent(self.h, param1.h)

proc cQMainWindow_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QMainWindowmetric*(self: gen_qmainwindow_types.QMainWindow, param1: cint): cint =
  fcQMainWindow_virtualbase_metric(self.h, cint(param1))

proc cQMainWindow_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QMainWindowinitPainter*(self: gen_qmainwindow_types.QMainWindow, painter: gen_qpainter_types.QPainter): void =
  fcQMainWindow_virtualbase_initPainter(self.h, painter.h)

proc cQMainWindow_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QMainWindowredirected*(self: gen_qmainwindow_types.QMainWindow, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQMainWindow_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQMainWindow_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMainWindowsharedPainter*(self: gen_qmainwindow_types.QMainWindow): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQMainWindow_virtualbase_sharedPainter(self.h), owned: false)

proc cQMainWindow_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMainWindowinputMethodEvent*(self: gen_qmainwindow_types.QMainWindow, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQMainWindow_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQMainWindow_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QMainWindowinputMethodQuery*(self: gen_qmainwindow_types.QMainWindow, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMainWindow_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQMainWindow_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMainWindowfocusNextPrevChild*(self: gen_qmainwindow_types.QMainWindow, next: bool): bool =
  fcQMainWindow_virtualbase_focusNextPrevChild(self.h, next)

proc cQMainWindow_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QMainWindoweventFilter*(self: gen_qmainwindow_types.QMainWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMainWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQMainWindow_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMainWindowtimerEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMainWindow_virtualbase_timerEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QMainWindowchildEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMainWindow_virtualbase_childEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QMainWindowcustomEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qcoreevent_types.QEvent): void =
  fcQMainWindow_virtualbase_customEvent(self.h, event.h)

proc cQMainWindow_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QMainWindowconnectNotify*(self: gen_qmainwindow_types.QMainWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMainWindow_virtualbase_connectNotify(self.h, signal.h)

proc cQMainWindow_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QMainWindowdisconnectNotify*(self: gen_qmainwindow_types.QMainWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMainWindow_virtualbase_disconnectNotify(self.h, signal.h)

proc cQMainWindow_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMainWindowVTable](fcQMainWindow_vdata(self))
  let self = QMainWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMainWindow* {.inheritable.} = ref object of QMainWindow
  vtbl*: cQMainWindowVTable
method metaObject*(self: VirtualQMainWindow): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMainWindowmetaObject(self[])
proc cQMainWindow_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQMainWindow, param1: cstring): pointer {.base.} =
  QMainWindowmetacast(self[], param1)
proc cQMainWindow_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQMainWindow, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMainWindowmetacall(self[], param1, param2, param3)
proc cQMainWindow_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method createPopupMenu*(self: VirtualQMainWindow): gen_qmenu_types.QMenu {.base.} =
  QMainWindowcreatePopupMenu(self[])
proc cQMainWindow_method_callback_createPopupMenu(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  var virtualReturn = inst.createPopupMenu()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method contextMenuEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QMainWindowcontextMenuEvent(self[], event)
proc cQMainWindow_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method event*(self: VirtualQMainWindow, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMainWindowevent(self[], event)
proc cQMainWindow_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method devType*(self: VirtualQMainWindow): cint {.base.} =
  QMainWindowdevType(self[])
proc cQMainWindow_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQMainWindow, visible: bool): void {.base.} =
  QMainWindowsetVisible(self[], visible)
proc cQMainWindow_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQMainWindow): gen_qsize_types.QSize {.base.} =
  QMainWindowsizeHint(self[])
proc cQMainWindow_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQMainWindow): gen_qsize_types.QSize {.base.} =
  QMainWindowminimumSizeHint(self[])
proc cQMainWindow_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQMainWindow, param1: cint): cint {.base.} =
  QMainWindowheightForWidth(self[], param1)
proc cQMainWindow_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQMainWindow): bool {.base.} =
  QMainWindowhasHeightForWidth(self[])
proc cQMainWindow_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQMainWindow): gen_qpaintengine_types.QPaintEngine {.base.} =
  QMainWindowpaintEngine(self[])
proc cQMainWindow_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QMainWindowmousePressEvent(self[], event)
proc cQMainWindow_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QMainWindowmouseReleaseEvent(self[], event)
proc cQMainWindow_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QMainWindowmouseDoubleClickEvent(self[], event)
proc cQMainWindow_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QMainWindowmouseMoveEvent(self[], event)
proc cQMainWindow_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QMainWindowwheelEvent(self[], event)
proc cQMainWindow_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QMainWindowkeyPressEvent(self[], event)
proc cQMainWindow_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QMainWindowkeyReleaseEvent(self[], event)
proc cQMainWindow_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QMainWindowfocusInEvent(self[], event)
proc cQMainWindow_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QMainWindowfocusOutEvent(self[], event)
proc cQMainWindow_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQMainWindow, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMainWindowenterEvent(self[], event)
proc cQMainWindow_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQMainWindow, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMainWindowleaveEvent(self[], event)
proc cQMainWindow_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QMainWindowpaintEvent(self[], event)
proc cQMainWindow_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QMainWindowmoveEvent(self[], event)
proc cQMainWindow_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QMainWindowresizeEvent(self[], event)
proc cQMainWindow_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QMainWindowcloseEvent(self[], event)
proc cQMainWindow_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QMainWindowtabletEvent(self[], event)
proc cQMainWindow_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QActionEvent): void {.base.} =
  QMainWindowactionEvent(self[], event)
proc cQMainWindow_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QMainWindowdragEnterEvent(self[], event)
proc cQMainWindow_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QMainWindowdragMoveEvent(self[], event)
proc cQMainWindow_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QMainWindowdragLeaveEvent(self[], event)
proc cQMainWindow_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QDropEvent): void {.base.} =
  QMainWindowdropEvent(self[], event)
proc cQMainWindow_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QShowEvent): void {.base.} =
  QMainWindowshowEvent(self[], event)
proc cQMainWindow_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQMainWindow, event: gen_qevent_types.QHideEvent): void {.base.} =
  QMainWindowhideEvent(self[], event)
proc cQMainWindow_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQMainWindow, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QMainWindownativeEvent(self[], eventType, message, resultVal)
proc cQMainWindow_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQMainWindow, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QMainWindowchangeEvent(self[], param1)
proc cQMainWindow_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQMainWindow, param1: cint): cint {.base.} =
  QMainWindowmetric(self[], param1)
proc cQMainWindow_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQMainWindow, painter: gen_qpainter_types.QPainter): void {.base.} =
  QMainWindowinitPainter(self[], painter)
proc cQMainWindow_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQMainWindow, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QMainWindowredirected(self[], offset)
proc cQMainWindow_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQMainWindow): gen_qpainter_types.QPainter {.base.} =
  QMainWindowsharedPainter(self[])
proc cQMainWindow_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQMainWindow, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QMainWindowinputMethodEvent(self[], param1)
proc cQMainWindow_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQMainWindow, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QMainWindowinputMethodQuery(self[], param1)
proc cQMainWindow_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQMainWindow, next: bool): bool {.base.} =
  QMainWindowfocusNextPrevChild(self[], next)
proc cQMainWindow_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQMainWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMainWindoweventFilter(self[], watched, event)
proc cQMainWindow_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQMainWindow, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMainWindowtimerEvent(self[], event)
proc cQMainWindow_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQMainWindow, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMainWindowchildEvent(self[], event)
proc cQMainWindow_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQMainWindow, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMainWindowcustomEvent(self[], event)
proc cQMainWindow_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQMainWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMainWindowconnectNotify(self[], signal)
proc cQMainWindow_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQMainWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMainWindowdisconnectNotify(self[], signal)
proc cQMainWindow_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMainWindow](fcQMainWindow_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qmainwindow_types.QMainWindow): void =
  fcQMainWindow_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qmainwindow_types.QMainWindow): void =
  fcQMainWindow_protectedbase_create(self.h)

proc destroy*(self: gen_qmainwindow_types.QMainWindow): void =
  fcQMainWindow_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qmainwindow_types.QMainWindow): bool =
  fcQMainWindow_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qmainwindow_types.QMainWindow): bool =
  fcQMainWindow_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qmainwindow_types.QMainWindow): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMainWindow_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmainwindow_types.QMainWindow): cint =
  fcQMainWindow_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmainwindow_types.QMainWindow, signal: cstring): cint =
  fcQMainWindow_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmainwindow_types.QMainWindow, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMainWindow_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmainwindow_types.QMainWindow,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QMainWindowVTable = nil): gen_qmainwindow_types.QMainWindow =
  let vtbl = if vtbl == nil: new QMainWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMainWindowVTable](fcQMainWindow_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMainWindow_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMainWindow_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMainWindow_vtable_callback_metacall
  if not isNil(vtbl[].createPopupMenu):
    vtbl[].vtbl.createPopupMenu = cQMainWindow_vtable_callback_createPopupMenu
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMainWindow_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMainWindow_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMainWindow_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMainWindow_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMainWindow_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMainWindow_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMainWindow_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMainWindow_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMainWindow_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMainWindow_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMainWindow_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMainWindow_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMainWindow_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMainWindow_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMainWindow_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMainWindow_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMainWindow_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMainWindow_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMainWindow_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMainWindow_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMainWindow_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMainWindow_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMainWindow_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMainWindow_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMainWindow_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMainWindow_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMainWindow_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMainWindow_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMainWindow_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMainWindow_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMainWindow_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMainWindow_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMainWindow_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMainWindow_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMainWindow_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMainWindow_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMainWindow_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMainWindow_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMainWindow_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMainWindow_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMainWindow_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMainWindow_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMainWindow_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMainWindow_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMainWindow_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMainWindow_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMainWindow_vtable_callback_disconnectNotify
  gen_qmainwindow_types.QMainWindow(h: fcQMainWindow_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qmainwindow_types.QMainWindow,
    vtbl: ref QMainWindowVTable = nil): gen_qmainwindow_types.QMainWindow =
  let vtbl = if vtbl == nil: new QMainWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMainWindowVTable](fcQMainWindow_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMainWindow_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMainWindow_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMainWindow_vtable_callback_metacall
  if not isNil(vtbl[].createPopupMenu):
    vtbl[].vtbl.createPopupMenu = cQMainWindow_vtable_callback_createPopupMenu
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMainWindow_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMainWindow_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMainWindow_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMainWindow_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMainWindow_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMainWindow_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMainWindow_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMainWindow_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMainWindow_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMainWindow_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMainWindow_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMainWindow_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMainWindow_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMainWindow_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMainWindow_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMainWindow_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMainWindow_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMainWindow_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMainWindow_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMainWindow_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMainWindow_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMainWindow_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMainWindow_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMainWindow_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMainWindow_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMainWindow_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMainWindow_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMainWindow_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMainWindow_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMainWindow_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMainWindow_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMainWindow_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMainWindow_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMainWindow_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMainWindow_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMainWindow_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMainWindow_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMainWindow_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMainWindow_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMainWindow_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMainWindow_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMainWindow_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMainWindow_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMainWindow_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMainWindow_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMainWindow_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMainWindow_vtable_callback_disconnectNotify
  gen_qmainwindow_types.QMainWindow(h: fcQMainWindow_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qmainwindow_types.QMainWindow,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QMainWindowVTable = nil): gen_qmainwindow_types.QMainWindow =
  let vtbl = if vtbl == nil: new QMainWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMainWindowVTable](fcQMainWindow_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMainWindow_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMainWindow_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMainWindow_vtable_callback_metacall
  if not isNil(vtbl[].createPopupMenu):
    vtbl[].vtbl.createPopupMenu = cQMainWindow_vtable_callback_createPopupMenu
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMainWindow_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMainWindow_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMainWindow_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMainWindow_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMainWindow_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMainWindow_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMainWindow_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMainWindow_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMainWindow_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMainWindow_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMainWindow_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMainWindow_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMainWindow_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMainWindow_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMainWindow_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMainWindow_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMainWindow_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMainWindow_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMainWindow_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMainWindow_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMainWindow_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMainWindow_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMainWindow_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMainWindow_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMainWindow_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMainWindow_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMainWindow_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMainWindow_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMainWindow_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMainWindow_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMainWindow_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMainWindow_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMainWindow_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMainWindow_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMainWindow_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMainWindow_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMainWindow_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMainWindow_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMainWindow_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMainWindow_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMainWindow_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMainWindow_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMainWindow_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMainWindow_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMainWindow_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMainWindow_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMainWindow_vtable_callback_disconnectNotify
  gen_qmainwindow_types.QMainWindow(h: fcQMainWindow_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(flags)), owned: true)

const cQMainWindow_mvtbl = cQMainWindowVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMainWindow()[])](self.fcQMainWindow_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQMainWindow_method_callback_metaObject,
  metacast: cQMainWindow_method_callback_metacast,
  metacall: cQMainWindow_method_callback_metacall,
  createPopupMenu: cQMainWindow_method_callback_createPopupMenu,
  contextMenuEvent: cQMainWindow_method_callback_contextMenuEvent,
  event: cQMainWindow_method_callback_event,
  devType: cQMainWindow_method_callback_devType,
  setVisible: cQMainWindow_method_callback_setVisible,
  sizeHint: cQMainWindow_method_callback_sizeHint,
  minimumSizeHint: cQMainWindow_method_callback_minimumSizeHint,
  heightForWidth: cQMainWindow_method_callback_heightForWidth,
  hasHeightForWidth: cQMainWindow_method_callback_hasHeightForWidth,
  paintEngine: cQMainWindow_method_callback_paintEngine,
  mousePressEvent: cQMainWindow_method_callback_mousePressEvent,
  mouseReleaseEvent: cQMainWindow_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQMainWindow_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQMainWindow_method_callback_mouseMoveEvent,
  wheelEvent: cQMainWindow_method_callback_wheelEvent,
  keyPressEvent: cQMainWindow_method_callback_keyPressEvent,
  keyReleaseEvent: cQMainWindow_method_callback_keyReleaseEvent,
  focusInEvent: cQMainWindow_method_callback_focusInEvent,
  focusOutEvent: cQMainWindow_method_callback_focusOutEvent,
  enterEvent: cQMainWindow_method_callback_enterEvent,
  leaveEvent: cQMainWindow_method_callback_leaveEvent,
  paintEvent: cQMainWindow_method_callback_paintEvent,
  moveEvent: cQMainWindow_method_callback_moveEvent,
  resizeEvent: cQMainWindow_method_callback_resizeEvent,
  closeEvent: cQMainWindow_method_callback_closeEvent,
  tabletEvent: cQMainWindow_method_callback_tabletEvent,
  actionEvent: cQMainWindow_method_callback_actionEvent,
  dragEnterEvent: cQMainWindow_method_callback_dragEnterEvent,
  dragMoveEvent: cQMainWindow_method_callback_dragMoveEvent,
  dragLeaveEvent: cQMainWindow_method_callback_dragLeaveEvent,
  dropEvent: cQMainWindow_method_callback_dropEvent,
  showEvent: cQMainWindow_method_callback_showEvent,
  hideEvent: cQMainWindow_method_callback_hideEvent,
  nativeEvent: cQMainWindow_method_callback_nativeEvent,
  changeEvent: cQMainWindow_method_callback_changeEvent,
  metric: cQMainWindow_method_callback_metric,
  initPainter: cQMainWindow_method_callback_initPainter,
  redirected: cQMainWindow_method_callback_redirected,
  sharedPainter: cQMainWindow_method_callback_sharedPainter,
  inputMethodEvent: cQMainWindow_method_callback_inputMethodEvent,
  inputMethodQuery: cQMainWindow_method_callback_inputMethodQuery,
  focusNextPrevChild: cQMainWindow_method_callback_focusNextPrevChild,
  eventFilter: cQMainWindow_method_callback_eventFilter,
  timerEvent: cQMainWindow_method_callback_timerEvent,
  childEvent: cQMainWindow_method_callback_childEvent,
  customEvent: cQMainWindow_method_callback_customEvent,
  connectNotify: cQMainWindow_method_callback_connectNotify,
  disconnectNotify: cQMainWindow_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmainwindow_types.QMainWindow,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQMainWindow) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMainWindow_new(addr(cQMainWindow_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qmainwindow_types.QMainWindow,
    inst: VirtualQMainWindow) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMainWindow_new2(addr(cQMainWindow_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qmainwindow_types.QMainWindow,
    parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQMainWindow) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMainWindow_new3(addr(cQMainWindow_mvtbl), addr(inst[]), parent.h, cint(flags))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qmainwindow_types.QMainWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMainWindow_staticMetaObject())
