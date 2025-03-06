import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qtabwidget.cpp", cflags).}


type QTabWidgetTabPositionEnum* = distinct cint
template North*(_: type QTabWidgetTabPositionEnum): untyped = 0
template South*(_: type QTabWidgetTabPositionEnum): untyped = 1
template West*(_: type QTabWidgetTabPositionEnum): untyped = 2
template East*(_: type QTabWidgetTabPositionEnum): untyped = 3


type QTabWidgetTabShapeEnum* = distinct cint
template Rounded*(_: type QTabWidgetTabShapeEnum): untyped = 0
template Triangular*(_: type QTabWidgetTabShapeEnum): untyped = 1


import ./gen_qtabwidget_types
export gen_qtabwidget_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qstyleoption_types,
  ./gen_qtabbar_types,
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
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qstyleoption_types,
  gen_qtabbar_types,
  gen_qwidget

type cQTabWidget*{.exportc: "QTabWidget", incompleteStruct.} = object

proc fcQTabWidget_metaObject(self: pointer, ): pointer {.importc: "QTabWidget_metaObject".}
proc fcQTabWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QTabWidget_metacast".}
proc fcQTabWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTabWidget_metacall".}
proc fcQTabWidget_tr(s: cstring): struct_miqt_string {.importc: "QTabWidget_tr".}
proc fcQTabWidget_addTab(self: pointer, widget: pointer, param2: struct_miqt_string): cint {.importc: "QTabWidget_addTab".}
proc fcQTabWidget_addTab2(self: pointer, widget: pointer, icon: pointer, label: struct_miqt_string): cint {.importc: "QTabWidget_addTab2".}
proc fcQTabWidget_insertTab(self: pointer, index: cint, widget: pointer, param3: struct_miqt_string): cint {.importc: "QTabWidget_insertTab".}
proc fcQTabWidget_insertTab2(self: pointer, index: cint, widget: pointer, icon: pointer, label: struct_miqt_string): cint {.importc: "QTabWidget_insertTab2".}
proc fcQTabWidget_removeTab(self: pointer, index: cint): void {.importc: "QTabWidget_removeTab".}
proc fcQTabWidget_isTabEnabled(self: pointer, index: cint): bool {.importc: "QTabWidget_isTabEnabled".}
proc fcQTabWidget_setTabEnabled(self: pointer, index: cint, enabled: bool): void {.importc: "QTabWidget_setTabEnabled".}
proc fcQTabWidget_isTabVisible(self: pointer, index: cint): bool {.importc: "QTabWidget_isTabVisible".}
proc fcQTabWidget_setTabVisible(self: pointer, index: cint, visible: bool): void {.importc: "QTabWidget_setTabVisible".}
proc fcQTabWidget_tabText(self: pointer, index: cint): struct_miqt_string {.importc: "QTabWidget_tabText".}
proc fcQTabWidget_setTabText(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QTabWidget_setTabText".}
proc fcQTabWidget_tabIcon(self: pointer, index: cint): pointer {.importc: "QTabWidget_tabIcon".}
proc fcQTabWidget_setTabIcon(self: pointer, index: cint, icon: pointer): void {.importc: "QTabWidget_setTabIcon".}
proc fcQTabWidget_setTabToolTip(self: pointer, index: cint, tip: struct_miqt_string): void {.importc: "QTabWidget_setTabToolTip".}
proc fcQTabWidget_tabToolTip(self: pointer, index: cint): struct_miqt_string {.importc: "QTabWidget_tabToolTip".}
proc fcQTabWidget_setTabWhatsThis(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QTabWidget_setTabWhatsThis".}
proc fcQTabWidget_tabWhatsThis(self: pointer, index: cint): struct_miqt_string {.importc: "QTabWidget_tabWhatsThis".}
proc fcQTabWidget_currentIndex(self: pointer, ): cint {.importc: "QTabWidget_currentIndex".}
proc fcQTabWidget_currentWidget(self: pointer, ): pointer {.importc: "QTabWidget_currentWidget".}
proc fcQTabWidget_widget(self: pointer, index: cint): pointer {.importc: "QTabWidget_widget".}
proc fcQTabWidget_indexOf(self: pointer, widget: pointer): cint {.importc: "QTabWidget_indexOf".}
proc fcQTabWidget_count(self: pointer, ): cint {.importc: "QTabWidget_count".}
proc fcQTabWidget_tabPosition(self: pointer, ): cint {.importc: "QTabWidget_tabPosition".}
proc fcQTabWidget_setTabPosition(self: pointer, position: cint): void {.importc: "QTabWidget_setTabPosition".}
proc fcQTabWidget_tabsClosable(self: pointer, ): bool {.importc: "QTabWidget_tabsClosable".}
proc fcQTabWidget_setTabsClosable(self: pointer, closeable: bool): void {.importc: "QTabWidget_setTabsClosable".}
proc fcQTabWidget_isMovable(self: pointer, ): bool {.importc: "QTabWidget_isMovable".}
proc fcQTabWidget_setMovable(self: pointer, movable: bool): void {.importc: "QTabWidget_setMovable".}
proc fcQTabWidget_tabShape(self: pointer, ): cint {.importc: "QTabWidget_tabShape".}
proc fcQTabWidget_setTabShape(self: pointer, s: cint): void {.importc: "QTabWidget_setTabShape".}
proc fcQTabWidget_sizeHint(self: pointer, ): pointer {.importc: "QTabWidget_sizeHint".}
proc fcQTabWidget_minimumSizeHint(self: pointer, ): pointer {.importc: "QTabWidget_minimumSizeHint".}
proc fcQTabWidget_heightForWidth(self: pointer, width: cint): cint {.importc: "QTabWidget_heightForWidth".}
proc fcQTabWidget_hasHeightForWidth(self: pointer, ): bool {.importc: "QTabWidget_hasHeightForWidth".}
proc fcQTabWidget_setCornerWidget(self: pointer, w: pointer): void {.importc: "QTabWidget_setCornerWidget".}
proc fcQTabWidget_cornerWidget(self: pointer, ): pointer {.importc: "QTabWidget_cornerWidget".}
proc fcQTabWidget_elideMode(self: pointer, ): cint {.importc: "QTabWidget_elideMode".}
proc fcQTabWidget_setElideMode(self: pointer, mode: cint): void {.importc: "QTabWidget_setElideMode".}
proc fcQTabWidget_iconSize(self: pointer, ): pointer {.importc: "QTabWidget_iconSize".}
proc fcQTabWidget_setIconSize(self: pointer, size: pointer): void {.importc: "QTabWidget_setIconSize".}
proc fcQTabWidget_usesScrollButtons(self: pointer, ): bool {.importc: "QTabWidget_usesScrollButtons".}
proc fcQTabWidget_setUsesScrollButtons(self: pointer, useButtons: bool): void {.importc: "QTabWidget_setUsesScrollButtons".}
proc fcQTabWidget_documentMode(self: pointer, ): bool {.importc: "QTabWidget_documentMode".}
proc fcQTabWidget_setDocumentMode(self: pointer, set: bool): void {.importc: "QTabWidget_setDocumentMode".}
proc fcQTabWidget_tabBarAutoHide(self: pointer, ): bool {.importc: "QTabWidget_tabBarAutoHide".}
proc fcQTabWidget_setTabBarAutoHide(self: pointer, enabled: bool): void {.importc: "QTabWidget_setTabBarAutoHide".}
proc fcQTabWidget_clear(self: pointer, ): void {.importc: "QTabWidget_clear".}
proc fcQTabWidget_tabBar(self: pointer, ): pointer {.importc: "QTabWidget_tabBar".}
proc fcQTabWidget_setCurrentIndex(self: pointer, index: cint): void {.importc: "QTabWidget_setCurrentIndex".}
proc fcQTabWidget_setCurrentWidget(self: pointer, widget: pointer): void {.importc: "QTabWidget_setCurrentWidget".}
proc fcQTabWidget_currentChanged(self: pointer, index: cint): void {.importc: "QTabWidget_currentChanged".}
proc fcQTabWidget_connect_currentChanged(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTabWidget_connect_currentChanged".}
proc fcQTabWidget_tabCloseRequested(self: pointer, index: cint): void {.importc: "QTabWidget_tabCloseRequested".}
proc fcQTabWidget_connect_tabCloseRequested(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTabWidget_connect_tabCloseRequested".}
proc fcQTabWidget_tabBarClicked(self: pointer, index: cint): void {.importc: "QTabWidget_tabBarClicked".}
proc fcQTabWidget_connect_tabBarClicked(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTabWidget_connect_tabBarClicked".}
proc fcQTabWidget_tabBarDoubleClicked(self: pointer, index: cint): void {.importc: "QTabWidget_tabBarDoubleClicked".}
proc fcQTabWidget_connect_tabBarDoubleClicked(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTabWidget_connect_tabBarDoubleClicked".}
proc fcQTabWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTabWidget_tr2".}
proc fcQTabWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTabWidget_tr3".}
proc fcQTabWidget_setCornerWidget2(self: pointer, w: pointer, corner: cint): void {.importc: "QTabWidget_setCornerWidget2".}
proc fcQTabWidget_cornerWidget1(self: pointer, corner: cint): pointer {.importc: "QTabWidget_cornerWidget1".}
type cQTabWidgetVTable = object
  destructor*: proc(vtbl: ptr cQTabWidgetVTable, self: ptr cQTabWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, width: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  tabInserted*: proc(vtbl, self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  tabRemoved*: proc(vtbl, self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQTabWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTabWidget_virtualbase_metaObject".}
proc fcQTabWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTabWidget_virtualbase_metacast".}
proc fcQTabWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTabWidget_virtualbase_metacall".}
proc fcQTabWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QTabWidget_virtualbase_sizeHint".}
proc fcQTabWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QTabWidget_virtualbase_minimumSizeHint".}
proc fcQTabWidget_virtualbase_heightForWidth(self: pointer, width: cint): cint {.importc: "QTabWidget_virtualbase_heightForWidth".}
proc fcQTabWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QTabWidget_virtualbase_hasHeightForWidth".}
proc fcQTabWidget_virtualbase_tabInserted(self: pointer, index: cint): void {.importc: "QTabWidget_virtualbase_tabInserted".}
proc fcQTabWidget_virtualbase_tabRemoved(self: pointer, index: cint): void {.importc: "QTabWidget_virtualbase_tabRemoved".}
proc fcQTabWidget_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QTabWidget_virtualbase_showEvent".}
proc fcQTabWidget_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QTabWidget_virtualbase_resizeEvent".}
proc fcQTabWidget_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QTabWidget_virtualbase_keyPressEvent".}
proc fcQTabWidget_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QTabWidget_virtualbase_paintEvent".}
proc fcQTabWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QTabWidget_virtualbase_changeEvent".}
proc fcQTabWidget_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QTabWidget_virtualbase_event".}
proc fcQTabWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QTabWidget_virtualbase_initStyleOption".}
proc fcQTabWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QTabWidget_virtualbase_devType".}
proc fcQTabWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTabWidget_virtualbase_setVisible".}
proc fcQTabWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QTabWidget_virtualbase_paintEngine".}
proc fcQTabWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_mousePressEvent".}
proc fcQTabWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_mouseReleaseEvent".}
proc fcQTabWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQTabWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_mouseMoveEvent".}
proc fcQTabWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_wheelEvent".}
proc fcQTabWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_keyReleaseEvent".}
proc fcQTabWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_focusInEvent".}
proc fcQTabWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_focusOutEvent".}
proc fcQTabWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_enterEvent".}
proc fcQTabWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_leaveEvent".}
proc fcQTabWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_moveEvent".}
proc fcQTabWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_closeEvent".}
proc fcQTabWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_contextMenuEvent".}
proc fcQTabWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_tabletEvent".}
proc fcQTabWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_actionEvent".}
proc fcQTabWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_dragEnterEvent".}
proc fcQTabWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_dragMoveEvent".}
proc fcQTabWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_dragLeaveEvent".}
proc fcQTabWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_dropEvent".}
proc fcQTabWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_hideEvent".}
proc fcQTabWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QTabWidget_virtualbase_nativeEvent".}
proc fcQTabWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QTabWidget_virtualbase_metric".}
proc fcQTabWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QTabWidget_virtualbase_initPainter".}
proc fcQTabWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QTabWidget_virtualbase_redirected".}
proc fcQTabWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QTabWidget_virtualbase_sharedPainter".}
proc fcQTabWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QTabWidget_virtualbase_inputMethodEvent".}
proc fcQTabWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QTabWidget_virtualbase_inputMethodQuery".}
proc fcQTabWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTabWidget_virtualbase_focusNextPrevChild".}
proc fcQTabWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTabWidget_virtualbase_eventFilter".}
proc fcQTabWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_timerEvent".}
proc fcQTabWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_childEvent".}
proc fcQTabWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTabWidget_virtualbase_customEvent".}
proc fcQTabWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTabWidget_virtualbase_connectNotify".}
proc fcQTabWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTabWidget_virtualbase_disconnectNotify".}
proc fcQTabWidget_protectedbase_setTabBar(self: pointer, tabBar: pointer): void {.importc: "QTabWidget_protectedbase_setTabBar".}
proc fcQTabWidget_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QTabWidget_protectedbase_updateMicroFocus".}
proc fcQTabWidget_protectedbase_create(self: pointer, ): void {.importc: "QTabWidget_protectedbase_create".}
proc fcQTabWidget_protectedbase_destroy(self: pointer, ): void {.importc: "QTabWidget_protectedbase_destroy".}
proc fcQTabWidget_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QTabWidget_protectedbase_focusNextChild".}
proc fcQTabWidget_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QTabWidget_protectedbase_focusPreviousChild".}
proc fcQTabWidget_protectedbase_sender(self: pointer, ): pointer {.importc: "QTabWidget_protectedbase_sender".}
proc fcQTabWidget_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTabWidget_protectedbase_senderSignalIndex".}
proc fcQTabWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTabWidget_protectedbase_receivers".}
proc fcQTabWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTabWidget_protectedbase_isSignalConnected".}
proc fcQTabWidget_new(vtbl: pointer, parent: pointer): ptr cQTabWidget {.importc: "QTabWidget_new".}
proc fcQTabWidget_new2(vtbl: pointer, ): ptr cQTabWidget {.importc: "QTabWidget_new2".}
proc fcQTabWidget_staticMetaObject(): pointer {.importc: "QTabWidget_staticMetaObject".}
proc fcQTabWidget_delete(self: pointer) {.importc: "QTabWidget_delete".}

proc metaObject*(self: gen_qtabwidget_types.QTabWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabWidget_metaObject(self.h))

proc metacast*(self: gen_qtabwidget_types.QTabWidget, param1: cstring): pointer =
  fcQTabWidget_metacast(self.h, param1)

proc metacall*(self: gen_qtabwidget_types.QTabWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQTabWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtabwidget_types.QTabWidget, s: cstring): string =
  let v_ms = fcQTabWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addTab*(self: gen_qtabwidget_types.QTabWidget, widget: gen_qwidget_types.QWidget, param2: string): cint =
  fcQTabWidget_addTab(self.h, widget.h, struct_miqt_string(data: param2, len: csize_t(len(param2))))

proc addTab*(self: gen_qtabwidget_types.QTabWidget, widget: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon, label: string): cint =
  fcQTabWidget_addTab2(self.h, widget.h, icon.h, struct_miqt_string(data: label, len: csize_t(len(label))))

proc insertTab*(self: gen_qtabwidget_types.QTabWidget, index: cint, widget: gen_qwidget_types.QWidget, param3: string): cint =
  fcQTabWidget_insertTab(self.h, index, widget.h, struct_miqt_string(data: param3, len: csize_t(len(param3))))

proc insertTab*(self: gen_qtabwidget_types.QTabWidget, index: cint, widget: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon, label: string): cint =
  fcQTabWidget_insertTab2(self.h, index, widget.h, icon.h, struct_miqt_string(data: label, len: csize_t(len(label))))

proc removeTab*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fcQTabWidget_removeTab(self.h, index)

proc isTabEnabled*(self: gen_qtabwidget_types.QTabWidget, index: cint): bool =
  fcQTabWidget_isTabEnabled(self.h, index)

proc setTabEnabled*(self: gen_qtabwidget_types.QTabWidget, index: cint, enabled: bool): void =
  fcQTabWidget_setTabEnabled(self.h, index, enabled)

proc isTabVisible*(self: gen_qtabwidget_types.QTabWidget, index: cint): bool =
  fcQTabWidget_isTabVisible(self.h, index)

proc setTabVisible*(self: gen_qtabwidget_types.QTabWidget, index: cint, visible: bool): void =
  fcQTabWidget_setTabVisible(self.h, index, visible)

proc tabText*(self: gen_qtabwidget_types.QTabWidget, index: cint): string =
  let v_ms = fcQTabWidget_tabText(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTabText*(self: gen_qtabwidget_types.QTabWidget, index: cint, text: string): void =
  fcQTabWidget_setTabText(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc tabIcon*(self: gen_qtabwidget_types.QTabWidget, index: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQTabWidget_tabIcon(self.h, index))

proc setTabIcon*(self: gen_qtabwidget_types.QTabWidget, index: cint, icon: gen_qicon_types.QIcon): void =
  fcQTabWidget_setTabIcon(self.h, index, icon.h)

proc setTabToolTip*(self: gen_qtabwidget_types.QTabWidget, index: cint, tip: string): void =
  fcQTabWidget_setTabToolTip(self.h, index, struct_miqt_string(data: tip, len: csize_t(len(tip))))

proc tabToolTip*(self: gen_qtabwidget_types.QTabWidget, index: cint): string =
  let v_ms = fcQTabWidget_tabToolTip(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTabWhatsThis*(self: gen_qtabwidget_types.QTabWidget, index: cint, text: string): void =
  fcQTabWidget_setTabWhatsThis(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc tabWhatsThis*(self: gen_qtabwidget_types.QTabWidget, index: cint): string =
  let v_ms = fcQTabWidget_tabWhatsThis(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentIndex*(self: gen_qtabwidget_types.QTabWidget, ): cint =
  fcQTabWidget_currentIndex(self.h)

proc currentWidget*(self: gen_qtabwidget_types.QTabWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQTabWidget_currentWidget(self.h))

proc widget*(self: gen_qtabwidget_types.QTabWidget, index: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQTabWidget_widget(self.h, index))

proc indexOf*(self: gen_qtabwidget_types.QTabWidget, widget: gen_qwidget_types.QWidget): cint =
  fcQTabWidget_indexOf(self.h, widget.h)

proc count*(self: gen_qtabwidget_types.QTabWidget, ): cint =
  fcQTabWidget_count(self.h)

proc tabPosition*(self: gen_qtabwidget_types.QTabWidget, ): cint =
  cint(fcQTabWidget_tabPosition(self.h))

proc setTabPosition*(self: gen_qtabwidget_types.QTabWidget, position: cint): void =
  fcQTabWidget_setTabPosition(self.h, cint(position))

proc tabsClosable*(self: gen_qtabwidget_types.QTabWidget, ): bool =
  fcQTabWidget_tabsClosable(self.h)

proc setTabsClosable*(self: gen_qtabwidget_types.QTabWidget, closeable: bool): void =
  fcQTabWidget_setTabsClosable(self.h, closeable)

proc isMovable*(self: gen_qtabwidget_types.QTabWidget, ): bool =
  fcQTabWidget_isMovable(self.h)

proc setMovable*(self: gen_qtabwidget_types.QTabWidget, movable: bool): void =
  fcQTabWidget_setMovable(self.h, movable)

proc tabShape*(self: gen_qtabwidget_types.QTabWidget, ): cint =
  cint(fcQTabWidget_tabShape(self.h))

proc setTabShape*(self: gen_qtabwidget_types.QTabWidget, s: cint): void =
  fcQTabWidget_setTabShape(self.h, cint(s))

proc sizeHint*(self: gen_qtabwidget_types.QTabWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabWidget_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qtabwidget_types.QTabWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabWidget_minimumSizeHint(self.h))

proc heightForWidth*(self: gen_qtabwidget_types.QTabWidget, width: cint): cint =
  fcQTabWidget_heightForWidth(self.h, width)

proc hasHeightForWidth*(self: gen_qtabwidget_types.QTabWidget, ): bool =
  fcQTabWidget_hasHeightForWidth(self.h)

proc setCornerWidget*(self: gen_qtabwidget_types.QTabWidget, w: gen_qwidget_types.QWidget): void =
  fcQTabWidget_setCornerWidget(self.h, w.h)

proc cornerWidget*(self: gen_qtabwidget_types.QTabWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQTabWidget_cornerWidget(self.h))

proc elideMode*(self: gen_qtabwidget_types.QTabWidget, ): cint =
  cint(fcQTabWidget_elideMode(self.h))

proc setElideMode*(self: gen_qtabwidget_types.QTabWidget, mode: cint): void =
  fcQTabWidget_setElideMode(self.h, cint(mode))

proc iconSize*(self: gen_qtabwidget_types.QTabWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabWidget_iconSize(self.h))

proc setIconSize*(self: gen_qtabwidget_types.QTabWidget, size: gen_qsize_types.QSize): void =
  fcQTabWidget_setIconSize(self.h, size.h)

proc usesScrollButtons*(self: gen_qtabwidget_types.QTabWidget, ): bool =
  fcQTabWidget_usesScrollButtons(self.h)

proc setUsesScrollButtons*(self: gen_qtabwidget_types.QTabWidget, useButtons: bool): void =
  fcQTabWidget_setUsesScrollButtons(self.h, useButtons)

proc documentMode*(self: gen_qtabwidget_types.QTabWidget, ): bool =
  fcQTabWidget_documentMode(self.h)

proc setDocumentMode*(self: gen_qtabwidget_types.QTabWidget, set: bool): void =
  fcQTabWidget_setDocumentMode(self.h, set)

proc tabBarAutoHide*(self: gen_qtabwidget_types.QTabWidget, ): bool =
  fcQTabWidget_tabBarAutoHide(self.h)

proc setTabBarAutoHide*(self: gen_qtabwidget_types.QTabWidget, enabled: bool): void =
  fcQTabWidget_setTabBarAutoHide(self.h, enabled)

proc clear*(self: gen_qtabwidget_types.QTabWidget, ): void =
  fcQTabWidget_clear(self.h)

proc tabBar*(self: gen_qtabwidget_types.QTabWidget, ): gen_qtabbar_types.QTabBar =
  gen_qtabbar_types.QTabBar(h: fcQTabWidget_tabBar(self.h))

proc setCurrentIndex*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fcQTabWidget_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: gen_qtabwidget_types.QTabWidget, widget: gen_qwidget_types.QWidget): void =
  fcQTabWidget_setCurrentWidget(self.h, widget.h)

proc currentChanged*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fcQTabWidget_currentChanged(self.h, index)

type QTabWidgetcurrentChangedSlot* = proc(index: cint)
proc miqt_exec_callback_cQTabWidget_currentChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabWidgetcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTabWidget_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabWidgetcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentChanged*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetcurrentChangedSlot) =
  var tmp = new QTabWidgetcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_connect_currentChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTabWidget_currentChanged, miqt_exec_callback_cQTabWidget_currentChanged_release)

proc tabCloseRequested*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fcQTabWidget_tabCloseRequested(self.h, index)

type QTabWidgettabCloseRequestedSlot* = proc(index: cint)
proc miqt_exec_callback_cQTabWidget_tabCloseRequested(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabWidgettabCloseRequestedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTabWidget_tabCloseRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabWidgettabCloseRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontabCloseRequested*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgettabCloseRequestedSlot) =
  var tmp = new QTabWidgettabCloseRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_connect_tabCloseRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTabWidget_tabCloseRequested, miqt_exec_callback_cQTabWidget_tabCloseRequested_release)

proc tabBarClicked*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fcQTabWidget_tabBarClicked(self.h, index)

type QTabWidgettabBarClickedSlot* = proc(index: cint)
proc miqt_exec_callback_cQTabWidget_tabBarClicked(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabWidgettabBarClickedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTabWidget_tabBarClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabWidgettabBarClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontabBarClicked*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgettabBarClickedSlot) =
  var tmp = new QTabWidgettabBarClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_connect_tabBarClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTabWidget_tabBarClicked, miqt_exec_callback_cQTabWidget_tabBarClicked_release)

proc tabBarDoubleClicked*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fcQTabWidget_tabBarDoubleClicked(self.h, index)

type QTabWidgettabBarDoubleClickedSlot* = proc(index: cint)
proc miqt_exec_callback_cQTabWidget_tabBarDoubleClicked(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabWidgettabBarDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTabWidget_tabBarDoubleClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabWidgettabBarDoubleClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontabBarDoubleClicked*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgettabBarDoubleClickedSlot) =
  var tmp = new QTabWidgettabBarDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_connect_tabBarDoubleClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTabWidget_tabBarDoubleClicked, miqt_exec_callback_cQTabWidget_tabBarDoubleClicked_release)

proc tr*(_: type gen_qtabwidget_types.QTabWidget, s: cstring, c: cstring): string =
  let v_ms = fcQTabWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtabwidget_types.QTabWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTabWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCornerWidget*(self: gen_qtabwidget_types.QTabWidget, w: gen_qwidget_types.QWidget, corner: cint): void =
  fcQTabWidget_setCornerWidget2(self.h, w.h, cint(corner))

proc cornerWidget*(self: gen_qtabwidget_types.QTabWidget, corner: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQTabWidget_cornerWidget1(self.h, cint(corner)))

type QTabWidgetmetaObjectProc* = proc(self: QTabWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTabWidgetmetacastProc* = proc(self: QTabWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QTabWidgetmetacallProc* = proc(self: QTabWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTabWidgetsizeHintProc* = proc(self: QTabWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTabWidgetminimumSizeHintProc* = proc(self: QTabWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTabWidgetheightForWidthProc* = proc(self: QTabWidget, width: cint): cint {.raises: [], gcsafe.}
type QTabWidgethasHeightForWidthProc* = proc(self: QTabWidget): bool {.raises: [], gcsafe.}
type QTabWidgettabInsertedProc* = proc(self: QTabWidget, index: cint): void {.raises: [], gcsafe.}
type QTabWidgettabRemovedProc* = proc(self: QTabWidget, index: cint): void {.raises: [], gcsafe.}
type QTabWidgetshowEventProc* = proc(self: QTabWidget, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QTabWidgetresizeEventProc* = proc(self: QTabWidget, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QTabWidgetkeyPressEventProc* = proc(self: QTabWidget, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTabWidgetpaintEventProc* = proc(self: QTabWidget, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QTabWidgetchangeEventProc* = proc(self: QTabWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTabWidgeteventProc* = proc(self: QTabWidget, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTabWidgetinitStyleOptionProc* = proc(self: QTabWidget, option: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): void {.raises: [], gcsafe.}
type QTabWidgetdevTypeProc* = proc(self: QTabWidget): cint {.raises: [], gcsafe.}
type QTabWidgetsetVisibleProc* = proc(self: QTabWidget, visible: bool): void {.raises: [], gcsafe.}
type QTabWidgetpaintEngineProc* = proc(self: QTabWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QTabWidgetmousePressEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTabWidgetmouseReleaseEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTabWidgetmouseDoubleClickEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTabWidgetmouseMoveEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTabWidgetwheelEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QTabWidgetkeyReleaseEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTabWidgetfocusInEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTabWidgetfocusOutEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTabWidgetenterEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QTabWidgetleaveEventProc* = proc(self: QTabWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTabWidgetmoveEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QTabWidgetcloseEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QTabWidgetcontextMenuEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QTabWidgettabletEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QTabWidgetactionEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QTabWidgetdragEnterEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QTabWidgetdragMoveEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QTabWidgetdragLeaveEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QTabWidgetdropEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QTabWidgethideEventProc* = proc(self: QTabWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QTabWidgetnativeEventProc* = proc(self: QTabWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QTabWidgetmetricProc* = proc(self: QTabWidget, param1: cint): cint {.raises: [], gcsafe.}
type QTabWidgetinitPainterProc* = proc(self: QTabWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTabWidgetredirectedProc* = proc(self: QTabWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTabWidgetsharedPainterProc* = proc(self: QTabWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTabWidgetinputMethodEventProc* = proc(self: QTabWidget, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QTabWidgetinputMethodQueryProc* = proc(self: QTabWidget, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTabWidgetfocusNextPrevChildProc* = proc(self: QTabWidget, next: bool): bool {.raises: [], gcsafe.}
type QTabWidgeteventFilterProc* = proc(self: QTabWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTabWidgettimerEventProc* = proc(self: QTabWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTabWidgetchildEventProc* = proc(self: QTabWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTabWidgetcustomEventProc* = proc(self: QTabWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTabWidgetconnectNotifyProc* = proc(self: QTabWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTabWidgetdisconnectNotifyProc* = proc(self: QTabWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTabWidgetVTable* = object
  vtbl: cQTabWidgetVTable
  metaObject*: QTabWidgetmetaObjectProc
  metacast*: QTabWidgetmetacastProc
  metacall*: QTabWidgetmetacallProc
  sizeHint*: QTabWidgetsizeHintProc
  minimumSizeHint*: QTabWidgetminimumSizeHintProc
  heightForWidth*: QTabWidgetheightForWidthProc
  hasHeightForWidth*: QTabWidgethasHeightForWidthProc
  tabInserted*: QTabWidgettabInsertedProc
  tabRemoved*: QTabWidgettabRemovedProc
  showEvent*: QTabWidgetshowEventProc
  resizeEvent*: QTabWidgetresizeEventProc
  keyPressEvent*: QTabWidgetkeyPressEventProc
  paintEvent*: QTabWidgetpaintEventProc
  changeEvent*: QTabWidgetchangeEventProc
  event*: QTabWidgeteventProc
  initStyleOption*: QTabWidgetinitStyleOptionProc
  devType*: QTabWidgetdevTypeProc
  setVisible*: QTabWidgetsetVisibleProc
  paintEngine*: QTabWidgetpaintEngineProc
  mousePressEvent*: QTabWidgetmousePressEventProc
  mouseReleaseEvent*: QTabWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QTabWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QTabWidgetmouseMoveEventProc
  wheelEvent*: QTabWidgetwheelEventProc
  keyReleaseEvent*: QTabWidgetkeyReleaseEventProc
  focusInEvent*: QTabWidgetfocusInEventProc
  focusOutEvent*: QTabWidgetfocusOutEventProc
  enterEvent*: QTabWidgetenterEventProc
  leaveEvent*: QTabWidgetleaveEventProc
  moveEvent*: QTabWidgetmoveEventProc
  closeEvent*: QTabWidgetcloseEventProc
  contextMenuEvent*: QTabWidgetcontextMenuEventProc
  tabletEvent*: QTabWidgettabletEventProc
  actionEvent*: QTabWidgetactionEventProc
  dragEnterEvent*: QTabWidgetdragEnterEventProc
  dragMoveEvent*: QTabWidgetdragMoveEventProc
  dragLeaveEvent*: QTabWidgetdragLeaveEventProc
  dropEvent*: QTabWidgetdropEventProc
  hideEvent*: QTabWidgethideEventProc
  nativeEvent*: QTabWidgetnativeEventProc
  metric*: QTabWidgetmetricProc
  initPainter*: QTabWidgetinitPainterProc
  redirected*: QTabWidgetredirectedProc
  sharedPainter*: QTabWidgetsharedPainterProc
  inputMethodEvent*: QTabWidgetinputMethodEventProc
  inputMethodQuery*: QTabWidgetinputMethodQueryProc
  focusNextPrevChild*: QTabWidgetfocusNextPrevChildProc
  eventFilter*: QTabWidgeteventFilterProc
  timerEvent*: QTabWidgettimerEventProc
  childEvent*: QTabWidgetchildEventProc
  customEvent*: QTabWidgetcustomEventProc
  connectNotify*: QTabWidgetconnectNotifyProc
  disconnectNotify*: QTabWidgetdisconnectNotifyProc
proc QTabWidgetmetaObject*(self: gen_qtabwidget_types.QTabWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabWidget_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTabWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTabWidgetmetacast*(self: gen_qtabwidget_types.QTabWidget, param1: cstring): pointer =
  fcQTabWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTabWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTabWidgetmetacall*(self: gen_qtabwidget_types.QTabWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQTabWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTabWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTabWidgetsizeHint*(self: gen_qtabwidget_types.QTabWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabWidget_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQTabWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QTabWidgetminimumSizeHint*(self: gen_qtabwidget_types.QTabWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabWidget_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQTabWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QTabWidgetheightForWidth*(self: gen_qtabwidget_types.QTabWidget, width: cint): cint =
  fcQTabWidget_virtualbase_heightForWidth(self.h, width)

proc miqt_exec_callback_cQTabWidget_heightForWidth(vtbl: pointer, self: pointer, width: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = width
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QTabWidgethasHeightForWidth*(self: gen_qtabwidget_types.QTabWidget, ): bool =
  fcQTabWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQTabWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QTabWidgettabInserted*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fcQTabWidget_virtualbase_tabInserted(self.h, index)

proc miqt_exec_callback_cQTabWidget_tabInserted(vtbl: pointer, self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = index
  vtbl[].tabInserted(self, slotval1)

proc QTabWidgettabRemoved*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fcQTabWidget_virtualbase_tabRemoved(self.h, index)

proc miqt_exec_callback_cQTabWidget_tabRemoved(vtbl: pointer, self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = index
  vtbl[].tabRemoved(self, slotval1)

proc QTabWidgetshowEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qevent_types.QShowEvent): void =
  fcQTabWidget_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabWidget_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QTabWidgetresizeEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qevent_types.QResizeEvent): void =
  fcQTabWidget_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabWidget_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QTabWidgetkeyPressEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qevent_types.QKeyEvent): void =
  fcQTabWidget_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabWidget_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QTabWidgetpaintEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qevent_types.QPaintEvent): void =
  fcQTabWidget_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabWidget_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QTabWidgetchangeEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQTabWidget_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabWidget_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QTabWidgetevent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qcoreevent_types.QEvent): bool =
  fcQTabWidget_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQTabWidget_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTabWidgetinitStyleOption*(self: gen_qtabwidget_types.QTabWidget, option: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): void =
  fcQTabWidget_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQTabWidget_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionTabWidgetFrame(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QTabWidgetdevType*(self: gen_qtabwidget_types.QTabWidget, ): cint =
  fcQTabWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQTabWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QTabWidgetsetVisible*(self: gen_qtabwidget_types.QTabWidget, visible: bool): void =
  fcQTabWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQTabWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QTabWidgetpaintEngine*(self: gen_qtabwidget_types.QTabWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTabWidget_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQTabWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QTabWidgetmousePressEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTabWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QTabWidgetmouseReleaseEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTabWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QTabWidgetmouseDoubleClickEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTabWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QTabWidgetmouseMoveEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTabWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QTabWidgetwheelEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQTabWidget_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QTabWidgetkeyReleaseEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQTabWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QTabWidgetfocusInEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQTabWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QTabWidgetfocusOutEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQTabWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QTabWidgetenterEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QEnterEvent): void =
  fcQTabWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QTabWidgetleaveEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQTabWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QTabWidgetmoveEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQTabWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QTabWidgetcloseEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQTabWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QTabWidgetcontextMenuEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQTabWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QTabWidgettabletEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQTabWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QTabWidgetactionEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QActionEvent): void =
  fcQTabWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QTabWidgetdragEnterEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQTabWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QTabWidgetdragMoveEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQTabWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QTabWidgetdragLeaveEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQTabWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QTabWidgetdropEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QDropEvent): void =
  fcQTabWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QTabWidgethideEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QHideEvent): void =
  fcQTabWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QTabWidgetnativeEvent*(self: gen_qtabwidget_types.QTabWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQTabWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQTabWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTabWidgetmetric*(self: gen_qtabwidget_types.QTabWidget, param1: cint): cint =
  fcQTabWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQTabWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QTabWidgetinitPainter*(self: gen_qtabwidget_types.QTabWidget, painter: gen_qpainter_types.QPainter): void =
  fcQTabWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQTabWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QTabWidgetredirected*(self: gen_qtabwidget_types.QTabWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTabWidget_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQTabWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QTabWidgetsharedPainter*(self: gen_qtabwidget_types.QTabWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTabWidget_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQTabWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QTabWidgetinputMethodEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQTabWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabWidget_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QTabWidgetinputMethodQuery*(self: gen_qtabwidget_types.QTabWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTabWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQTabWidget_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QTabWidgetfocusNextPrevChild*(self: gen_qtabwidget_types.QTabWidget, next: bool): bool =
  fcQTabWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQTabWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QTabWidgeteventFilter*(self: gen_qtabwidget_types.QTabWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTabWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTabWidget_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTabWidgettimerEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTabWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QTabWidgetchildEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTabWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTabWidgetcustomEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQTabWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTabWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTabWidgetconnectNotify*(self: gen_qtabwidget_types.QTabWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTabWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTabWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTabWidgetdisconnectNotify*(self: gen_qtabwidget_types.QTabWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTabWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTabWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabWidgetVTable](vtbl)
  let self = QTabWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc setTabBar*(self: gen_qtabwidget_types.QTabWidget, tabBar: gen_qtabbar_types.QTabBar): void =
  fcQTabWidget_protectedbase_setTabBar(self.h, tabBar.h)

proc updateMicroFocus*(self: gen_qtabwidget_types.QTabWidget, ): void =
  fcQTabWidget_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qtabwidget_types.QTabWidget, ): void =
  fcQTabWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qtabwidget_types.QTabWidget, ): void =
  fcQTabWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtabwidget_types.QTabWidget, ): bool =
  fcQTabWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtabwidget_types.QTabWidget, ): bool =
  fcQTabWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtabwidget_types.QTabWidget, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTabWidget_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qtabwidget_types.QTabWidget, ): cint =
  fcQTabWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtabwidget_types.QTabWidget, signal: cstring): cint =
  fcQTabWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtabwidget_types.QTabWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTabWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtabwidget_types.QTabWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QTabWidgetVTable = nil): gen_qtabwidget_types.QTabWidget =
  let vtbl = if vtbl == nil: new QTabWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTabWidgetVTable, _: ptr cQTabWidget) {.cdecl.} =
    let vtbl = cast[ref QTabWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTabWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTabWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTabWidget_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTabWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTabWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTabWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTabWidget_hasHeightForWidth
  if not isNil(vtbl.tabInserted):
    vtbl[].vtbl.tabInserted = miqt_exec_callback_cQTabWidget_tabInserted
  if not isNil(vtbl.tabRemoved):
    vtbl[].vtbl.tabRemoved = miqt_exec_callback_cQTabWidget_tabRemoved
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTabWidget_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTabWidget_resizeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTabWidget_keyPressEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTabWidget_paintEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTabWidget_changeEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTabWidget_event
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQTabWidget_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTabWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTabWidget_setVisible
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTabWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTabWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTabWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTabWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTabWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTabWidget_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTabWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTabWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTabWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTabWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTabWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTabWidget_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTabWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTabWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTabWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTabWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTabWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTabWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTabWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTabWidget_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTabWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTabWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTabWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTabWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTabWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTabWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTabWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTabWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTabWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTabWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTabWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTabWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTabWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTabWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTabWidget_disconnectNotify
  gen_qtabwidget_types.QTabWidget(h: fcQTabWidget_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qtabwidget_types.QTabWidget,
    vtbl: ref QTabWidgetVTable = nil): gen_qtabwidget_types.QTabWidget =
  let vtbl = if vtbl == nil: new QTabWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTabWidgetVTable, _: ptr cQTabWidget) {.cdecl.} =
    let vtbl = cast[ref QTabWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTabWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTabWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTabWidget_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTabWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTabWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTabWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTabWidget_hasHeightForWidth
  if not isNil(vtbl.tabInserted):
    vtbl[].vtbl.tabInserted = miqt_exec_callback_cQTabWidget_tabInserted
  if not isNil(vtbl.tabRemoved):
    vtbl[].vtbl.tabRemoved = miqt_exec_callback_cQTabWidget_tabRemoved
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTabWidget_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTabWidget_resizeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTabWidget_keyPressEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTabWidget_paintEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTabWidget_changeEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTabWidget_event
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQTabWidget_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTabWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTabWidget_setVisible
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTabWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTabWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTabWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTabWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTabWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTabWidget_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTabWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTabWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTabWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTabWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTabWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTabWidget_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTabWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTabWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTabWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTabWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTabWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTabWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTabWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTabWidget_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTabWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTabWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTabWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTabWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTabWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTabWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTabWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTabWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTabWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTabWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTabWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTabWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTabWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTabWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTabWidget_disconnectNotify
  gen_qtabwidget_types.QTabWidget(h: fcQTabWidget_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qtabwidget_types.QTabWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabWidget_staticMetaObject())
proc delete*(self: gen_qtabwidget_types.QTabWidget) =
  fcQTabWidget_delete(self.h)
