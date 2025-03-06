import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
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

proc fcQMainWindow_new(parent: pointer): ptr cQMainWindow {.importc: "QMainWindow_new".}
proc fcQMainWindow_new2(): ptr cQMainWindow {.importc: "QMainWindow_new2".}
proc fcQMainWindow_new3(parent: pointer, flags: cint): ptr cQMainWindow {.importc: "QMainWindow_new3".}
proc fcQMainWindow_metaObject(self: pointer, ): pointer {.importc: "QMainWindow_metaObject".}
proc fcQMainWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QMainWindow_metacast".}
proc fcQMainWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMainWindow_metacall".}
proc fcQMainWindow_tr(s: cstring): struct_miqt_string {.importc: "QMainWindow_tr".}
proc fcQMainWindow_iconSize(self: pointer, ): pointer {.importc: "QMainWindow_iconSize".}
proc fcQMainWindow_setIconSize(self: pointer, iconSize: pointer): void {.importc: "QMainWindow_setIconSize".}
proc fcQMainWindow_toolButtonStyle(self: pointer, ): cint {.importc: "QMainWindow_toolButtonStyle".}
proc fcQMainWindow_setToolButtonStyle(self: pointer, toolButtonStyle: cint): void {.importc: "QMainWindow_setToolButtonStyle".}
proc fcQMainWindow_isAnimated(self: pointer, ): bool {.importc: "QMainWindow_isAnimated".}
proc fcQMainWindow_isDockNestingEnabled(self: pointer, ): bool {.importc: "QMainWindow_isDockNestingEnabled".}
proc fcQMainWindow_documentMode(self: pointer, ): bool {.importc: "QMainWindow_documentMode".}
proc fcQMainWindow_setDocumentMode(self: pointer, enabled: bool): void {.importc: "QMainWindow_setDocumentMode".}
proc fcQMainWindow_tabShape(self: pointer, ): cint {.importc: "QMainWindow_tabShape".}
proc fcQMainWindow_setTabShape(self: pointer, tabShape: cint): void {.importc: "QMainWindow_setTabShape".}
proc fcQMainWindow_tabPosition(self: pointer, area: cint): cint {.importc: "QMainWindow_tabPosition".}
proc fcQMainWindow_setTabPosition(self: pointer, areas: cint, tabPosition: cint): void {.importc: "QMainWindow_setTabPosition".}
proc fcQMainWindow_setDockOptions(self: pointer, options: cint): void {.importc: "QMainWindow_setDockOptions".}
proc fcQMainWindow_dockOptions(self: pointer, ): cint {.importc: "QMainWindow_dockOptions".}
proc fcQMainWindow_isSeparator(self: pointer, pos: pointer): bool {.importc: "QMainWindow_isSeparator".}
proc fcQMainWindow_menuBar(self: pointer, ): pointer {.importc: "QMainWindow_menuBar".}
proc fcQMainWindow_setMenuBar(self: pointer, menubar: pointer): void {.importc: "QMainWindow_setMenuBar".}
proc fcQMainWindow_menuWidget(self: pointer, ): pointer {.importc: "QMainWindow_menuWidget".}
proc fcQMainWindow_setMenuWidget(self: pointer, menubar: pointer): void {.importc: "QMainWindow_setMenuWidget".}
proc fcQMainWindow_statusBar(self: pointer, ): pointer {.importc: "QMainWindow_statusBar".}
proc fcQMainWindow_setStatusBar(self: pointer, statusbar: pointer): void {.importc: "QMainWindow_setStatusBar".}
proc fcQMainWindow_centralWidget(self: pointer, ): pointer {.importc: "QMainWindow_centralWidget".}
proc fcQMainWindow_setCentralWidget(self: pointer, widget: pointer): void {.importc: "QMainWindow_setCentralWidget".}
proc fcQMainWindow_takeCentralWidget(self: pointer, ): pointer {.importc: "QMainWindow_takeCentralWidget".}
proc fcQMainWindow_setCorner(self: pointer, corner: cint, area: cint): void {.importc: "QMainWindow_setCorner".}
proc fcQMainWindow_corner(self: pointer, corner: cint): cint {.importc: "QMainWindow_corner".}
proc fcQMainWindow_addToolBarBreak(self: pointer, ): void {.importc: "QMainWindow_addToolBarBreak".}
proc fcQMainWindow_insertToolBarBreak(self: pointer, before: pointer): void {.importc: "QMainWindow_insertToolBarBreak".}
proc fcQMainWindow_addToolBar(self: pointer, area: cint, toolbar: pointer): void {.importc: "QMainWindow_addToolBar".}
proc fcQMainWindow_addToolBarWithToolbar(self: pointer, toolbar: pointer): void {.importc: "QMainWindow_addToolBarWithToolbar".}
proc fcQMainWindow_addToolBarWithTitle(self: pointer, title: struct_miqt_string): pointer {.importc: "QMainWindow_addToolBarWithTitle".}
proc fcQMainWindow_insertToolBar(self: pointer, before: pointer, toolbar: pointer): void {.importc: "QMainWindow_insertToolBar".}
proc fcQMainWindow_removeToolBar(self: pointer, toolbar: pointer): void {.importc: "QMainWindow_removeToolBar".}
proc fcQMainWindow_removeToolBarBreak(self: pointer, before: pointer): void {.importc: "QMainWindow_removeToolBarBreak".}
proc fcQMainWindow_unifiedTitleAndToolBarOnMac(self: pointer, ): bool {.importc: "QMainWindow_unifiedTitleAndToolBarOnMac".}
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
proc fcQMainWindow_saveState(self: pointer, ): struct_miqt_string {.importc: "QMainWindow_saveState".}
proc fcQMainWindow_restoreState(self: pointer, state: struct_miqt_string): bool {.importc: "QMainWindow_restoreState".}
proc fcQMainWindow_createPopupMenu(self: pointer, ): pointer {.importc: "QMainWindow_createPopupMenu".}
proc fcQMainWindow_setAnimated(self: pointer, enabled: bool): void {.importc: "QMainWindow_setAnimated".}
proc fcQMainWindow_setDockNestingEnabled(self: pointer, enabled: bool): void {.importc: "QMainWindow_setDockNestingEnabled".}
proc fcQMainWindow_setUnifiedTitleAndToolBarOnMac(self: pointer, set: bool): void {.importc: "QMainWindow_setUnifiedTitleAndToolBarOnMac".}
proc fcQMainWindow_iconSizeChanged(self: pointer, iconSize: pointer): void {.importc: "QMainWindow_iconSizeChanged".}
proc fcQMainWindow_connect_iconSizeChanged(self: pointer, slot: int) {.importc: "QMainWindow_connect_iconSizeChanged".}
proc fcQMainWindow_toolButtonStyleChanged(self: pointer, toolButtonStyle: cint): void {.importc: "QMainWindow_toolButtonStyleChanged".}
proc fcQMainWindow_connect_toolButtonStyleChanged(self: pointer, slot: int) {.importc: "QMainWindow_connect_toolButtonStyleChanged".}
proc fcQMainWindow_tabifiedDockWidgetActivated(self: pointer, dockWidget: pointer): void {.importc: "QMainWindow_tabifiedDockWidgetActivated".}
proc fcQMainWindow_connect_tabifiedDockWidgetActivated(self: pointer, slot: int) {.importc: "QMainWindow_connect_tabifiedDockWidgetActivated".}
proc fcQMainWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMainWindow_tr2".}
proc fcQMainWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMainWindow_tr3".}
proc fcQMainWindow_addToolBarBreak1(self: pointer, area: cint): void {.importc: "QMainWindow_addToolBarBreak1".}
proc fcQMainWindow_saveState1(self: pointer, version: cint): struct_miqt_string {.importc: "QMainWindow_saveState1".}
proc fcQMainWindow_restoreState2(self: pointer, state: struct_miqt_string, version: cint): bool {.importc: "QMainWindow_restoreState2".}
proc fQMainWindow_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMainWindow_virtualbase_metaObject".}
proc fcQMainWindow_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_metaObject".}
proc fQMainWindow_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMainWindow_virtualbase_metacast".}
proc fcQMainWindow_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_metacast".}
proc fQMainWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMainWindow_virtualbase_metacall".}
proc fcQMainWindow_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_metacall".}
proc fQMainWindow_virtualbase_createPopupMenu(self: pointer, ): pointer{.importc: "QMainWindow_virtualbase_createPopupMenu".}
proc fcQMainWindow_override_virtual_createPopupMenu(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_createPopupMenu".}
proc fQMainWindow_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_contextMenuEvent".}
proc fcQMainWindow_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_contextMenuEvent".}
proc fQMainWindow_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMainWindow_virtualbase_event".}
proc fcQMainWindow_override_virtual_event(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_event".}
proc fQMainWindow_virtualbase_devType(self: pointer, ): cint{.importc: "QMainWindow_virtualbase_devType".}
proc fcQMainWindow_override_virtual_devType(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_devType".}
proc fQMainWindow_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMainWindow_virtualbase_setVisible".}
proc fcQMainWindow_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_setVisible".}
proc fQMainWindow_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMainWindow_virtualbase_sizeHint".}
proc fcQMainWindow_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_sizeHint".}
proc fQMainWindow_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMainWindow_virtualbase_minimumSizeHint".}
proc fcQMainWindow_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_minimumSizeHint".}
proc fQMainWindow_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMainWindow_virtualbase_heightForWidth".}
proc fcQMainWindow_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_heightForWidth".}
proc fQMainWindow_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMainWindow_virtualbase_hasHeightForWidth".}
proc fcQMainWindow_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_hasHeightForWidth".}
proc fQMainWindow_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMainWindow_virtualbase_paintEngine".}
proc fcQMainWindow_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_paintEngine".}
proc fQMainWindow_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_mousePressEvent".}
proc fcQMainWindow_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_mousePressEvent".}
proc fQMainWindow_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_mouseReleaseEvent".}
proc fcQMainWindow_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_mouseReleaseEvent".}
proc fQMainWindow_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQMainWindow_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_mouseDoubleClickEvent".}
proc fQMainWindow_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_mouseMoveEvent".}
proc fcQMainWindow_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_mouseMoveEvent".}
proc fQMainWindow_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_wheelEvent".}
proc fcQMainWindow_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_wheelEvent".}
proc fQMainWindow_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_keyPressEvent".}
proc fcQMainWindow_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_keyPressEvent".}
proc fQMainWindow_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_keyReleaseEvent".}
proc fcQMainWindow_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_keyReleaseEvent".}
proc fQMainWindow_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_focusInEvent".}
proc fcQMainWindow_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_focusInEvent".}
proc fQMainWindow_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_focusOutEvent".}
proc fcQMainWindow_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_focusOutEvent".}
proc fQMainWindow_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_enterEvent".}
proc fcQMainWindow_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_enterEvent".}
proc fQMainWindow_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_leaveEvent".}
proc fcQMainWindow_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_leaveEvent".}
proc fQMainWindow_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_paintEvent".}
proc fcQMainWindow_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_paintEvent".}
proc fQMainWindow_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_moveEvent".}
proc fcQMainWindow_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_moveEvent".}
proc fQMainWindow_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_resizeEvent".}
proc fcQMainWindow_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_resizeEvent".}
proc fQMainWindow_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_closeEvent".}
proc fcQMainWindow_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_closeEvent".}
proc fQMainWindow_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_tabletEvent".}
proc fcQMainWindow_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_tabletEvent".}
proc fQMainWindow_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_actionEvent".}
proc fcQMainWindow_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_actionEvent".}
proc fQMainWindow_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_dragEnterEvent".}
proc fcQMainWindow_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_dragEnterEvent".}
proc fQMainWindow_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_dragMoveEvent".}
proc fcQMainWindow_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_dragMoveEvent".}
proc fQMainWindow_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_dragLeaveEvent".}
proc fcQMainWindow_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_dragLeaveEvent".}
proc fQMainWindow_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_dropEvent".}
proc fcQMainWindow_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_dropEvent".}
proc fQMainWindow_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_showEvent".}
proc fcQMainWindow_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_showEvent".}
proc fQMainWindow_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_hideEvent".}
proc fcQMainWindow_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_hideEvent".}
proc fQMainWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QMainWindow_virtualbase_nativeEvent".}
proc fcQMainWindow_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_nativeEvent".}
proc fQMainWindow_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QMainWindow_virtualbase_changeEvent".}
proc fcQMainWindow_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_changeEvent".}
proc fQMainWindow_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMainWindow_virtualbase_metric".}
proc fcQMainWindow_override_virtual_metric(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_metric".}
proc fQMainWindow_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMainWindow_virtualbase_initPainter".}
proc fcQMainWindow_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_initPainter".}
proc fQMainWindow_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMainWindow_virtualbase_redirected".}
proc fcQMainWindow_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_redirected".}
proc fQMainWindow_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMainWindow_virtualbase_sharedPainter".}
proc fcQMainWindow_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_sharedPainter".}
proc fQMainWindow_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMainWindow_virtualbase_inputMethodEvent".}
proc fcQMainWindow_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_inputMethodEvent".}
proc fQMainWindow_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMainWindow_virtualbase_inputMethodQuery".}
proc fcQMainWindow_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_inputMethodQuery".}
proc fQMainWindow_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMainWindow_virtualbase_focusNextPrevChild".}
proc fcQMainWindow_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_focusNextPrevChild".}
proc fQMainWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMainWindow_virtualbase_eventFilter".}
proc fcQMainWindow_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_eventFilter".}
proc fQMainWindow_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_timerEvent".}
proc fcQMainWindow_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_timerEvent".}
proc fQMainWindow_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_childEvent".}
proc fcQMainWindow_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_childEvent".}
proc fQMainWindow_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMainWindow_virtualbase_customEvent".}
proc fcQMainWindow_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_customEvent".}
proc fQMainWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMainWindow_virtualbase_connectNotify".}
proc fcQMainWindow_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_connectNotify".}
proc fQMainWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMainWindow_virtualbase_disconnectNotify".}
proc fcQMainWindow_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMainWindow_override_virtual_disconnectNotify".}
proc fcQMainWindow_staticMetaObject(): pointer {.importc: "QMainWindow_staticMetaObject".}
proc fcQMainWindow_delete(self: pointer) {.importc: "QMainWindow_delete".}


func init*(T: type gen_qmainwindow_types.QMainWindow, h: ptr cQMainWindow): gen_qmainwindow_types.QMainWindow =
  T(h: h)
proc create*(T: type gen_qmainwindow_types.QMainWindow, parent: gen_qwidget_types.QWidget): gen_qmainwindow_types.QMainWindow =
  gen_qmainwindow_types.QMainWindow.init(fcQMainWindow_new(parent.h))

proc create*(T: type gen_qmainwindow_types.QMainWindow, ): gen_qmainwindow_types.QMainWindow =
  gen_qmainwindow_types.QMainWindow.init(fcQMainWindow_new2())

proc create*(T: type gen_qmainwindow_types.QMainWindow, parent: gen_qwidget_types.QWidget, flags: cint): gen_qmainwindow_types.QMainWindow =
  gen_qmainwindow_types.QMainWindow.init(fcQMainWindow_new3(parent.h, cint(flags)))

proc metaObject*(self: gen_qmainwindow_types.QMainWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMainWindow_metaObject(self.h))

proc metacast*(self: gen_qmainwindow_types.QMainWindow, param1: cstring): pointer =
  fcQMainWindow_metacast(self.h, param1)

proc metacall*(self: gen_qmainwindow_types.QMainWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQMainWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmainwindow_types.QMainWindow, s: cstring): string =
  let v_ms = fcQMainWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc iconSize*(self: gen_qmainwindow_types.QMainWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMainWindow_iconSize(self.h))

proc setIconSize*(self: gen_qmainwindow_types.QMainWindow, iconSize: gen_qsize_types.QSize): void =
  fcQMainWindow_setIconSize(self.h, iconSize.h)

proc toolButtonStyle*(self: gen_qmainwindow_types.QMainWindow, ): cint =
  cint(fcQMainWindow_toolButtonStyle(self.h))

proc setToolButtonStyle*(self: gen_qmainwindow_types.QMainWindow, toolButtonStyle: cint): void =
  fcQMainWindow_setToolButtonStyle(self.h, cint(toolButtonStyle))

proc isAnimated*(self: gen_qmainwindow_types.QMainWindow, ): bool =
  fcQMainWindow_isAnimated(self.h)

proc isDockNestingEnabled*(self: gen_qmainwindow_types.QMainWindow, ): bool =
  fcQMainWindow_isDockNestingEnabled(self.h)

proc documentMode*(self: gen_qmainwindow_types.QMainWindow, ): bool =
  fcQMainWindow_documentMode(self.h)

proc setDocumentMode*(self: gen_qmainwindow_types.QMainWindow, enabled: bool): void =
  fcQMainWindow_setDocumentMode(self.h, enabled)

proc tabShape*(self: gen_qmainwindow_types.QMainWindow, ): cint =
  cint(fcQMainWindow_tabShape(self.h))

proc setTabShape*(self: gen_qmainwindow_types.QMainWindow, tabShape: cint): void =
  fcQMainWindow_setTabShape(self.h, cint(tabShape))

proc tabPosition*(self: gen_qmainwindow_types.QMainWindow, area: cint): cint =
  cint(fcQMainWindow_tabPosition(self.h, cint(area)))

proc setTabPosition*(self: gen_qmainwindow_types.QMainWindow, areas: cint, tabPosition: cint): void =
  fcQMainWindow_setTabPosition(self.h, cint(areas), cint(tabPosition))

proc setDockOptions*(self: gen_qmainwindow_types.QMainWindow, options: cint): void =
  fcQMainWindow_setDockOptions(self.h, cint(options))

proc dockOptions*(self: gen_qmainwindow_types.QMainWindow, ): cint =
  cint(fcQMainWindow_dockOptions(self.h))

proc isSeparator*(self: gen_qmainwindow_types.QMainWindow, pos: gen_qpoint_types.QPoint): bool =
  fcQMainWindow_isSeparator(self.h, pos.h)

proc menuBar*(self: gen_qmainwindow_types.QMainWindow, ): gen_qmenubar_types.QMenuBar =
  gen_qmenubar_types.QMenuBar(h: fcQMainWindow_menuBar(self.h))

proc setMenuBar*(self: gen_qmainwindow_types.QMainWindow, menubar: gen_qmenubar_types.QMenuBar): void =
  fcQMainWindow_setMenuBar(self.h, menubar.h)

proc menuWidget*(self: gen_qmainwindow_types.QMainWindow, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMainWindow_menuWidget(self.h))

proc setMenuWidget*(self: gen_qmainwindow_types.QMainWindow, menubar: gen_qwidget_types.QWidget): void =
  fcQMainWindow_setMenuWidget(self.h, menubar.h)

proc statusBar*(self: gen_qmainwindow_types.QMainWindow, ): gen_qstatusbar_types.QStatusBar =
  gen_qstatusbar_types.QStatusBar(h: fcQMainWindow_statusBar(self.h))

proc setStatusBar*(self: gen_qmainwindow_types.QMainWindow, statusbar: gen_qstatusbar_types.QStatusBar): void =
  fcQMainWindow_setStatusBar(self.h, statusbar.h)

proc centralWidget*(self: gen_qmainwindow_types.QMainWindow, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMainWindow_centralWidget(self.h))

proc setCentralWidget*(self: gen_qmainwindow_types.QMainWindow, widget: gen_qwidget_types.QWidget): void =
  fcQMainWindow_setCentralWidget(self.h, widget.h)

proc takeCentralWidget*(self: gen_qmainwindow_types.QMainWindow, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMainWindow_takeCentralWidget(self.h))

proc setCorner*(self: gen_qmainwindow_types.QMainWindow, corner: cint, area: cint): void =
  fcQMainWindow_setCorner(self.h, cint(corner), cint(area))

proc corner*(self: gen_qmainwindow_types.QMainWindow, corner: cint): cint =
  cint(fcQMainWindow_corner(self.h, cint(corner)))

proc addToolBarBreak*(self: gen_qmainwindow_types.QMainWindow, ): void =
  fcQMainWindow_addToolBarBreak(self.h)

proc insertToolBarBreak*(self: gen_qmainwindow_types.QMainWindow, before: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_insertToolBarBreak(self.h, before.h)

proc addToolBar*(self: gen_qmainwindow_types.QMainWindow, area: cint, toolbar: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_addToolBar(self.h, cint(area), toolbar.h)

proc addToolBar*(self: gen_qmainwindow_types.QMainWindow, toolbar: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_addToolBarWithToolbar(self.h, toolbar.h)

proc addToolBar*(self: gen_qmainwindow_types.QMainWindow, title: string): gen_qtoolbar_types.QToolBar =
  gen_qtoolbar_types.QToolBar(h: fcQMainWindow_addToolBarWithTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc insertToolBar*(self: gen_qmainwindow_types.QMainWindow, before: gen_qtoolbar_types.QToolBar, toolbar: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_insertToolBar(self.h, before.h, toolbar.h)

proc removeToolBar*(self: gen_qmainwindow_types.QMainWindow, toolbar: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_removeToolBar(self.h, toolbar.h)

proc removeToolBarBreak*(self: gen_qmainwindow_types.QMainWindow, before: gen_qtoolbar_types.QToolBar): void =
  fcQMainWindow_removeToolBarBreak(self.h, before.h)

proc unifiedTitleAndToolBarOnMac*(self: gen_qmainwindow_types.QMainWindow, ): bool =
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
    vx_ret[i] = gen_qdockwidget_types.QDockWidget(h: v_outCast[i])
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

proc saveState*(self: gen_qmainwindow_types.QMainWindow, ): seq[byte] =
  var v_bytearray = fcQMainWindow_saveState(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: gen_qmainwindow_types.QMainWindow, state: seq[byte]): bool =
  fcQMainWindow_restoreState(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))))

proc createPopupMenu*(self: gen_qmainwindow_types.QMainWindow, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMainWindow_createPopupMenu(self.h))

proc setAnimated*(self: gen_qmainwindow_types.QMainWindow, enabled: bool): void =
  fcQMainWindow_setAnimated(self.h, enabled)

proc setDockNestingEnabled*(self: gen_qmainwindow_types.QMainWindow, enabled: bool): void =
  fcQMainWindow_setDockNestingEnabled(self.h, enabled)

proc setUnifiedTitleAndToolBarOnMac*(self: gen_qmainwindow_types.QMainWindow, set: bool): void =
  fcQMainWindow_setUnifiedTitleAndToolBarOnMac(self.h, set)

proc iconSizeChanged*(self: gen_qmainwindow_types.QMainWindow, iconSize: gen_qsize_types.QSize): void =
  fcQMainWindow_iconSizeChanged(self.h, iconSize.h)

type QMainWindowiconSizeChangedSlot* = proc(iconSize: gen_qsize_types.QSize)
proc miqt_exec_callback_QMainWindow_iconSizeChanged(slot: int, iconSize: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMainWindowiconSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: iconSize)

  nimfunc[](slotval1)

proc oniconSizeChanged*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowiconSizeChangedSlot) =
  var tmp = new QMainWindowiconSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_connect_iconSizeChanged(self.h, cast[int](addr tmp[]))

proc toolButtonStyleChanged*(self: gen_qmainwindow_types.QMainWindow, toolButtonStyle: cint): void =
  fcQMainWindow_toolButtonStyleChanged(self.h, cint(toolButtonStyle))

type QMainWindowtoolButtonStyleChangedSlot* = proc(toolButtonStyle: cint)
proc miqt_exec_callback_QMainWindow_toolButtonStyleChanged(slot: int, toolButtonStyle: cint) {.exportc.} =
  let nimfunc = cast[ptr QMainWindowtoolButtonStyleChangedSlot](cast[pointer](slot))
  let slotval1 = cint(toolButtonStyle)

  nimfunc[](slotval1)

proc ontoolButtonStyleChanged*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowtoolButtonStyleChangedSlot) =
  var tmp = new QMainWindowtoolButtonStyleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_connect_toolButtonStyleChanged(self.h, cast[int](addr tmp[]))

proc tabifiedDockWidgetActivated*(self: gen_qmainwindow_types.QMainWindow, dockWidget: gen_qdockwidget_types.QDockWidget): void =
  fcQMainWindow_tabifiedDockWidgetActivated(self.h, dockWidget.h)

type QMainWindowtabifiedDockWidgetActivatedSlot* = proc(dockWidget: gen_qdockwidget_types.QDockWidget)
proc miqt_exec_callback_QMainWindow_tabifiedDockWidgetActivated(slot: int, dockWidget: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMainWindowtabifiedDockWidgetActivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qdockwidget_types.QDockWidget(h: dockWidget)

  nimfunc[](slotval1)

proc ontabifiedDockWidgetActivated*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowtabifiedDockWidgetActivatedSlot) =
  var tmp = new QMainWindowtabifiedDockWidgetActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_connect_tabifiedDockWidgetActivated(self.h, cast[int](addr tmp[]))

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

proc addToolBarBreak*(self: gen_qmainwindow_types.QMainWindow, area: cint): void =
  fcQMainWindow_addToolBarBreak1(self.h, cint(area))

proc saveState*(self: gen_qmainwindow_types.QMainWindow, version: cint): seq[byte] =
  var v_bytearray = fcQMainWindow_saveState1(self.h, version)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: gen_qmainwindow_types.QMainWindow, state: seq[byte], version: cint): bool =
  fcQMainWindow_restoreState2(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))), version)

proc QMainWindowmetaObject*(self: gen_qmainwindow_types.QMainWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQMainWindow_virtualbase_metaObject(self.h))

type QMainWindowmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowmetaObjectProc) =
  # TODO check subclass
  var tmp = new QMainWindowmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_metaObject(self: ptr cQMainWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMainWindow_metaObject ".} =
  var nimfunc = cast[ptr QMainWindowmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMainWindowmetacast*(self: gen_qmainwindow_types.QMainWindow, param1: cstring): pointer =
  fQMainWindow_virtualbase_metacast(self.h, param1)

type QMainWindowmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowmetacastProc) =
  # TODO check subclass
  var tmp = new QMainWindowmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_metacast(self: ptr cQMainWindow, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMainWindow_metacast ".} =
  var nimfunc = cast[ptr QMainWindowmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMainWindowmetacall*(self: gen_qmainwindow_types.QMainWindow, param1: cint, param2: cint, param3: pointer): cint =
  fQMainWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMainWindowmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowmetacallProc) =
  # TODO check subclass
  var tmp = new QMainWindowmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_metacall(self: ptr cQMainWindow, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMainWindow_metacall ".} =
  var nimfunc = cast[ptr QMainWindowmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMainWindowcreatePopupMenu*(self: gen_qmainwindow_types.QMainWindow, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fQMainWindow_virtualbase_createPopupMenu(self.h))

type QMainWindowcreatePopupMenuProc* = proc(): gen_qmenu_types.QMenu
proc oncreatePopupMenu*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowcreatePopupMenuProc) =
  # TODO check subclass
  var tmp = new QMainWindowcreatePopupMenuProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_createPopupMenu(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_createPopupMenu(self: ptr cQMainWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMainWindow_createPopupMenu ".} =
  var nimfunc = cast[ptr QMainWindowcreatePopupMenuProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMainWindowcontextMenuEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QContextMenuEvent): void =
  fQMainWindow_virtualbase_contextMenuEvent(self.h, event.h)

type QMainWindowcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_contextMenuEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_contextMenuEvent ".} =
  var nimfunc = cast[ptr QMainWindowcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowevent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qcoreevent_types.QEvent): bool =
  fQMainWindow_virtualbase_event(self.h, event.h)

type QMainWindoweventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindoweventProc) =
  # TODO check subclass
  var tmp = new QMainWindoweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_event(self: ptr cQMainWindow, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMainWindow_event ".} =
  var nimfunc = cast[ptr QMainWindoweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMainWindowdevType*(self: gen_qmainwindow_types.QMainWindow, ): cint =
  fQMainWindow_virtualbase_devType(self.h)

type QMainWindowdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowdevTypeProc) =
  # TODO check subclass
  var tmp = new QMainWindowdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_devType(self: ptr cQMainWindow, slot: int): cint {.exportc: "miqt_exec_callback_QMainWindow_devType ".} =
  var nimfunc = cast[ptr QMainWindowdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMainWindowsetVisible*(self: gen_qmainwindow_types.QMainWindow, visible: bool): void =
  fQMainWindow_virtualbase_setVisible(self.h, visible)

type QMainWindowsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowsetVisibleProc) =
  # TODO check subclass
  var tmp = new QMainWindowsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_setVisible(self: ptr cQMainWindow, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMainWindow_setVisible ".} =
  var nimfunc = cast[ptr QMainWindowsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QMainWindowsizeHint*(self: gen_qmainwindow_types.QMainWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMainWindow_virtualbase_sizeHint(self.h))

type QMainWindowsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowsizeHintProc) =
  # TODO check subclass
  var tmp = new QMainWindowsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_sizeHint(self: ptr cQMainWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMainWindow_sizeHint ".} =
  var nimfunc = cast[ptr QMainWindowsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMainWindowminimumSizeHint*(self: gen_qmainwindow_types.QMainWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMainWindow_virtualbase_minimumSizeHint(self.h))

type QMainWindowminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QMainWindowminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_minimumSizeHint(self: ptr cQMainWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMainWindow_minimumSizeHint ".} =
  var nimfunc = cast[ptr QMainWindowminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMainWindowheightForWidth*(self: gen_qmainwindow_types.QMainWindow, param1: cint): cint =
  fQMainWindow_virtualbase_heightForWidth(self.h, param1)

type QMainWindowheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowheightForWidthProc) =
  # TODO check subclass
  var tmp = new QMainWindowheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_heightForWidth(self: ptr cQMainWindow, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMainWindow_heightForWidth ".} =
  var nimfunc = cast[ptr QMainWindowheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMainWindowhasHeightForWidth*(self: gen_qmainwindow_types.QMainWindow, ): bool =
  fQMainWindow_virtualbase_hasHeightForWidth(self.h)

type QMainWindowhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QMainWindowhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_hasHeightForWidth(self: ptr cQMainWindow, slot: int): bool {.exportc: "miqt_exec_callback_QMainWindow_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QMainWindowhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMainWindowpaintEngine*(self: gen_qmainwindow_types.QMainWindow, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQMainWindow_virtualbase_paintEngine(self.h))

type QMainWindowpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowpaintEngineProc) =
  # TODO check subclass
  var tmp = new QMainWindowpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_paintEngine(self: ptr cQMainWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMainWindow_paintEngine ".} =
  var nimfunc = cast[ptr QMainWindowpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMainWindowmousePressEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QMouseEvent): void =
  fQMainWindow_virtualbase_mousePressEvent(self.h, event.h)

type QMainWindowmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowmousePressEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_mousePressEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_mousePressEvent ".} =
  var nimfunc = cast[ptr QMainWindowmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowmouseReleaseEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QMouseEvent): void =
  fQMainWindow_virtualbase_mouseReleaseEvent(self.h, event.h)

type QMainWindowmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_mouseReleaseEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QMainWindowmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowmouseDoubleClickEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QMouseEvent): void =
  fQMainWindow_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QMainWindowmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_mouseDoubleClickEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QMainWindowmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowmouseMoveEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QMouseEvent): void =
  fQMainWindow_virtualbase_mouseMoveEvent(self.h, event.h)

type QMainWindowmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_mouseMoveEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QMainWindowmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowwheelEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QWheelEvent): void =
  fQMainWindow_virtualbase_wheelEvent(self.h, event.h)

type QMainWindowwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowwheelEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_wheelEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_wheelEvent ".} =
  var nimfunc = cast[ptr QMainWindowwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowkeyPressEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QKeyEvent): void =
  fQMainWindow_virtualbase_keyPressEvent(self.h, event.h)

type QMainWindowkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_keyPressEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_keyPressEvent ".} =
  var nimfunc = cast[ptr QMainWindowkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowkeyReleaseEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QKeyEvent): void =
  fQMainWindow_virtualbase_keyReleaseEvent(self.h, event.h)

type QMainWindowkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_keyReleaseEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QMainWindowkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowfocusInEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QFocusEvent): void =
  fQMainWindow_virtualbase_focusInEvent(self.h, event.h)

type QMainWindowfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowfocusInEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_focusInEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_focusInEvent ".} =
  var nimfunc = cast[ptr QMainWindowfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowfocusOutEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QFocusEvent): void =
  fQMainWindow_virtualbase_focusOutEvent(self.h, event.h)

type QMainWindowfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_focusOutEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_focusOutEvent ".} =
  var nimfunc = cast[ptr QMainWindowfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowenterEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QEnterEvent): void =
  fQMainWindow_virtualbase_enterEvent(self.h, event.h)

type QMainWindowenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowenterEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_enterEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_enterEvent ".} =
  var nimfunc = cast[ptr QMainWindowenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowleaveEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qcoreevent_types.QEvent): void =
  fQMainWindow_virtualbase_leaveEvent(self.h, event.h)

type QMainWindowleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowleaveEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_leaveEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_leaveEvent ".} =
  var nimfunc = cast[ptr QMainWindowleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowpaintEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QPaintEvent): void =
  fQMainWindow_virtualbase_paintEvent(self.h, event.h)

type QMainWindowpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowpaintEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_paintEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_paintEvent ".} =
  var nimfunc = cast[ptr QMainWindowpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowmoveEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QMoveEvent): void =
  fQMainWindow_virtualbase_moveEvent(self.h, event.h)

type QMainWindowmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowmoveEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_moveEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_moveEvent ".} =
  var nimfunc = cast[ptr QMainWindowmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowresizeEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QResizeEvent): void =
  fQMainWindow_virtualbase_resizeEvent(self.h, event.h)

type QMainWindowresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowresizeEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_resizeEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_resizeEvent ".} =
  var nimfunc = cast[ptr QMainWindowresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowcloseEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QCloseEvent): void =
  fQMainWindow_virtualbase_closeEvent(self.h, event.h)

type QMainWindowcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowcloseEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_closeEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_closeEvent ".} =
  var nimfunc = cast[ptr QMainWindowcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowtabletEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QTabletEvent): void =
  fQMainWindow_virtualbase_tabletEvent(self.h, event.h)

type QMainWindowtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowtabletEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_tabletEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_tabletEvent ".} =
  var nimfunc = cast[ptr QMainWindowtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowactionEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QActionEvent): void =
  fQMainWindow_virtualbase_actionEvent(self.h, event.h)

type QMainWindowactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowactionEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_actionEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_actionEvent ".} =
  var nimfunc = cast[ptr QMainWindowactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowdragEnterEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QDragEnterEvent): void =
  fQMainWindow_virtualbase_dragEnterEvent(self.h, event.h)

type QMainWindowdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_dragEnterEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_dragEnterEvent ".} =
  var nimfunc = cast[ptr QMainWindowdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowdragMoveEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QDragMoveEvent): void =
  fQMainWindow_virtualbase_dragMoveEvent(self.h, event.h)

type QMainWindowdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_dragMoveEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_dragMoveEvent ".} =
  var nimfunc = cast[ptr QMainWindowdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowdragLeaveEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QDragLeaveEvent): void =
  fQMainWindow_virtualbase_dragLeaveEvent(self.h, event.h)

type QMainWindowdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_dragLeaveEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QMainWindowdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowdropEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QDropEvent): void =
  fQMainWindow_virtualbase_dropEvent(self.h, event.h)

type QMainWindowdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowdropEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_dropEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_dropEvent ".} =
  var nimfunc = cast[ptr QMainWindowdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowshowEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QShowEvent): void =
  fQMainWindow_virtualbase_showEvent(self.h, event.h)

type QMainWindowshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowshowEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_showEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_showEvent ".} =
  var nimfunc = cast[ptr QMainWindowshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowhideEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qevent_types.QHideEvent): void =
  fQMainWindow_virtualbase_hideEvent(self.h, event.h)

type QMainWindowhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowhideEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_hideEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_hideEvent ".} =
  var nimfunc = cast[ptr QMainWindowhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindownativeEvent*(self: gen_qmainwindow_types.QMainWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQMainWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMainWindownativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindownativeEventProc) =
  # TODO check subclass
  var tmp = new QMainWindownativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_nativeEvent(self: ptr cQMainWindow, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QMainWindow_nativeEvent ".} =
  var nimfunc = cast[ptr QMainWindownativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMainWindowchangeEvent*(self: gen_qmainwindow_types.QMainWindow, param1: gen_qcoreevent_types.QEvent): void =
  fQMainWindow_virtualbase_changeEvent(self.h, param1.h)

type QMainWindowchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowchangeEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_changeEvent(self: ptr cQMainWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_changeEvent ".} =
  var nimfunc = cast[ptr QMainWindowchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QMainWindowmetric*(self: gen_qmainwindow_types.QMainWindow, param1: cint): cint =
  fQMainWindow_virtualbase_metric(self.h, cint(param1))

type QMainWindowmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowmetricProc) =
  # TODO check subclass
  var tmp = new QMainWindowmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_metric(self: ptr cQMainWindow, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMainWindow_metric ".} =
  var nimfunc = cast[ptr QMainWindowmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMainWindowinitPainter*(self: gen_qmainwindow_types.QMainWindow, painter: gen_qpainter_types.QPainter): void =
  fQMainWindow_virtualbase_initPainter(self.h, painter.h)

type QMainWindowinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowinitPainterProc) =
  # TODO check subclass
  var tmp = new QMainWindowinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_initPainter(self: ptr cQMainWindow, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_initPainter ".} =
  var nimfunc = cast[ptr QMainWindowinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QMainWindowredirected*(self: gen_qmainwindow_types.QMainWindow, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQMainWindow_virtualbase_redirected(self.h, offset.h))

type QMainWindowredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowredirectedProc) =
  # TODO check subclass
  var tmp = new QMainWindowredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_redirected(self: ptr cQMainWindow, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMainWindow_redirected ".} =
  var nimfunc = cast[ptr QMainWindowredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMainWindowsharedPainter*(self: gen_qmainwindow_types.QMainWindow, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQMainWindow_virtualbase_sharedPainter(self.h))

type QMainWindowsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowsharedPainterProc) =
  # TODO check subclass
  var tmp = new QMainWindowsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_sharedPainter(self: ptr cQMainWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMainWindow_sharedPainter ".} =
  var nimfunc = cast[ptr QMainWindowsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMainWindowinputMethodEvent*(self: gen_qmainwindow_types.QMainWindow, param1: gen_qevent_types.QInputMethodEvent): void =
  fQMainWindow_virtualbase_inputMethodEvent(self.h, param1.h)

type QMainWindowinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_inputMethodEvent(self: ptr cQMainWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_inputMethodEvent ".} =
  var nimfunc = cast[ptr QMainWindowinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QMainWindowinputMethodQuery*(self: gen_qmainwindow_types.QMainWindow, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQMainWindow_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMainWindowinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QMainWindowinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_inputMethodQuery(self: ptr cQMainWindow, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMainWindow_inputMethodQuery ".} =
  var nimfunc = cast[ptr QMainWindowinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMainWindowfocusNextPrevChild*(self: gen_qmainwindow_types.QMainWindow, next: bool): bool =
  fQMainWindow_virtualbase_focusNextPrevChild(self.h, next)

type QMainWindowfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QMainWindowfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_focusNextPrevChild(self: ptr cQMainWindow, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMainWindow_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QMainWindowfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMainWindoweventFilter*(self: gen_qmainwindow_types.QMainWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQMainWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMainWindoweventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindoweventFilterProc) =
  # TODO check subclass
  var tmp = new QMainWindoweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_eventFilter(self: ptr cQMainWindow, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMainWindow_eventFilter ".} =
  var nimfunc = cast[ptr QMainWindoweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMainWindowtimerEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qcoreevent_types.QTimerEvent): void =
  fQMainWindow_virtualbase_timerEvent(self.h, event.h)

type QMainWindowtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowtimerEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_timerEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_timerEvent ".} =
  var nimfunc = cast[ptr QMainWindowtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowchildEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qcoreevent_types.QChildEvent): void =
  fQMainWindow_virtualbase_childEvent(self.h, event.h)

type QMainWindowchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowchildEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_childEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_childEvent ".} =
  var nimfunc = cast[ptr QMainWindowchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowcustomEvent*(self: gen_qmainwindow_types.QMainWindow, event: gen_qcoreevent_types.QEvent): void =
  fQMainWindow_virtualbase_customEvent(self.h, event.h)

type QMainWindowcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowcustomEventProc) =
  # TODO check subclass
  var tmp = new QMainWindowcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_customEvent(self: ptr cQMainWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_customEvent ".} =
  var nimfunc = cast[ptr QMainWindowcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMainWindowconnectNotify*(self: gen_qmainwindow_types.QMainWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMainWindow_virtualbase_connectNotify(self.h, signal.h)

type QMainWindowconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMainWindowconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_connectNotify(self: ptr cQMainWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_connectNotify ".} =
  var nimfunc = cast[ptr QMainWindowconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMainWindowdisconnectNotify*(self: gen_qmainwindow_types.QMainWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMainWindow_virtualbase_disconnectNotify(self.h, signal.h)

type QMainWindowdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmainwindow_types.QMainWindow, slot: QMainWindowdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMainWindowdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMainWindow_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMainWindow_disconnectNotify(self: ptr cQMainWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMainWindow_disconnectNotify ".} =
  var nimfunc = cast[ptr QMainWindowdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmainwindow_types.QMainWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMainWindow_staticMetaObject())
proc delete*(self: gen_qmainwindow_types.QMainWindow) =
  fcQMainWindow_delete(self.h)
